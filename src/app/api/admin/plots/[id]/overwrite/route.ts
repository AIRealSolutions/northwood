import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

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
  const { destination_plot_id } = body;

  if (!destination_plot_id) {
    return NextResponse.json({ error: 'destination_plot_id is required' }, { status: 400 });
  }

  if (sourcePlotId === destination_plot_id) {
    return NextResponse.json({ error: 'Source and destination cannot be the same plot' }, { status: 400 });
  }

  const supabase = getSupabase();

  // 1. Verify both plots exist
  const { data: sourcePlot, error: srcErr } = await supabase
    .from('plots')
    .select('id, plot_number, section, row_number, plot_position, status')
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

  // 2. Move all deceased_records from source to destination
  const { error: decErr } = await supabase
    .from('deceased_records')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (decErr) {
    return NextResponse.json({ error: `Failed to move deceased records: ${decErr.message}` }, { status: 500 });
  }

  // 3. Move all burial_services from source to destination
  const { error: burErr } = await supabase
    .from('burial_services')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (burErr) {
    console.error('burial_services move error (non-fatal):', burErr.message);
  }

  // 4. Move all plot_reservations from source to destination
  const { error: resErr } = await supabase
    .from('plot_reservations')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (resErr) {
    console.error('plot_reservations move error (non-fatal):', resErr.message);
  }

  // 5. Move all plot_connections from source to destination
  const { error: conErr } = await supabase
    .from('plot_connections')
    .update({ plot_id: destination_plot_id })
    .eq('plot_id', sourcePlotId);

  if (conErr) {
    console.error('plot_connections move error (non-fatal):', conErr.message);
  }

  // 6. Update source plot status to 'available' (it's now empty)
  await supabase
    .from('plots')
    .update({ status: 'available', owner_name: null, owner_contact: null, purchase_date: null })
    .eq('id', sourcePlotId);

  // 7. Update destination plot status to 'occupied'
  await supabase
    .from('plots')
    .update({ status: 'occupied' })
    .eq('id', destination_plot_id);

  return NextResponse.json({
    success: true,
    message: `All data moved from plot ${sourcePlot.plot_number} to plot ${destPlot.plot_number}`,
    source: sourcePlot.plot_number,
    destination: destPlot.plot_number,
  });
}
