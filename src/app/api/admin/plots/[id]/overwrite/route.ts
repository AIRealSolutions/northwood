import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

const ADMIN_ROLES = ['admin'];

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const { id: sourcePlotId } = await params;
  const body = await request.json();
  const { destination_plot_id, notes: moveNotes } = body;

  if (!destination_plot_id) {
    return NextResponse.json({ error: 'destination_plot_id is required' }, { status: 400 });
  }

  if (sourcePlotId === destination_plot_id) {
    return NextResponse.json({ error: 'Source and destination cannot be the same plot' }, { status: 400 });
  }

  const supabase = getSupabase();

  // 1. Verify both plots exist — fetch full details from source to copy owner info
  const { data: sourcePlot, error: srcErr } = await supabase
    .from('plots')
    .select('id, plot_number, section, row_number, plot_position, status, owner_name, owner_contact, purchase_date, price, plot_type, notes')
    .eq('id', sourcePlotId)
    .single();

  if (srcErr || !sourcePlot) {
    return NextResponse.json({ error: 'Source plot not found' }, { status: 404 });
  }

  const { data: destPlot, error: destErr } = await supabase
    .from('plots')
    .select('id, plot_number, section, row_number, plot_position, status')
    .eq('id', destination_plot_id)
    .single();

  if (destErr || !destPlot) {
    return NextResponse.json({ error: 'Destination plot not found' }, { status: 404 });
  }

  // 2. Destination must be empty (safety check)
  if (destPlot.status !== 'empty') {
    return NextResponse.json({
      error: `Destination plot ${destPlot.plot_number} is not empty (status: ${destPlot.status}). Only empty plots can be used as a move destination.`
    }, { status: 409 });
  }

  // 3. Move all deceased_records from source to destination
  const { error: decErr } = await supabase
    .from('deceased_records')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (decErr) {
    return NextResponse.json({ error: `Failed to move deceased records: ${decErr.message}` }, { status: 500 });
  }

  // 4. Move all burial_services from source to destination
  const { error: burErr } = await supabase
    .from('burial_services')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (burErr) {
    console.error('burial_services move error (non-fatal):', burErr.message);
  }

  // 5. Move all plot_reservations from source to destination
  const { error: resErr } = await supabase
    .from('plot_reservations')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (resErr) {
    console.error('plot_reservations move error (non-fatal):', resErr.message);
  }

  // 6. Move all plot_connections from source to destination
  const { error: conErr } = await supabase
    .from('plot_connections')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (conErr) {
    console.error('plot_connections move error (non-fatal):', conErr.message);
  }

  // 7. Copy owner info and relevant metadata from source to destination
  const destUpdatePayload: Record<string, unknown> = {
    status: 'occupied',
    owner_name: sourcePlot.owner_name || null,
    owner_contact: sourcePlot.owner_contact || null,
    purchase_date: sourcePlot.purchase_date || null,
    price: sourcePlot.price || null,
    notes: [
      sourcePlot.notes,
      moveNotes ? `Move note: ${moveNotes}` : null,
    ].filter(Boolean).join('\n') || null,
  };

  const { error: destUpdateErr } = await supabase
    .from('plots')
    .update(destUpdatePayload)
    .eq('id', destination_plot_id);

  if (destUpdateErr) {
    console.error('destination plot update error (non-fatal):', destUpdateErr.message);
  }

  // 8. Clear source plot — mark empty, remove owner info
  await supabase
    .from('plots')
    .update({
      status: 'empty',
      owner_name: null,
      owner_contact: null,
      purchase_date: null,
      price: null,
      notes: moveNotes ? `Previously occupied — moved to ${destPlot.plot_number}. ${moveNotes}` : `Previously occupied — moved to ${destPlot.plot_number}.`,
    })
    .eq('id', sourcePlotId);

  // 9. Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'plots',
    record_id: sourcePlotId,
    action: 'MOVE',
    old_values: {
      plot_number: sourcePlot.plot_number,
      section: sourcePlot.section,
      row_number: sourcePlot.row_number,
      plot_position: sourcePlot.plot_position,
      owner_name: sourcePlot.owner_name,
    },
    new_values: {
      moved_to: destPlot.plot_number,
      destination_id: destination_plot_id,
      move_notes: moveNotes || null,
    },
    summary: `All data moved from plot ${sourcePlot.plot_number} to plot ${destPlot.plot_number}${moveNotes ? ` — ${moveNotes}` : ''}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({
    success: true,
    message: `All data moved from plot ${sourcePlot.plot_number} to plot ${destPlot.plot_number}`,
    source: sourcePlot.plot_number,
    destination: destPlot.plot_number,
  });
}
