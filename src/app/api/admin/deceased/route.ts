import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

const ADMIN_ROLES = ['admin'];

// POST /api/admin/deceased — Create a new deceased record linked to a plot
export async function POST(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const body = await request.json();
  const {
    plot_id,
    first_name,
    last_name,
    middle_name,
    maiden_name,
    birth_date,
    death_date,
    burial_date,
    age_at_death,
    gender,
    veteran_status,
    military_branch,
    obituary,
    epitaph,
    next_of_kin,
    funeral_home,
    burial_permit_number,
    death_certificate_number,
    notes,
  } = body;

  if (!plot_id) {
    return NextResponse.json({ error: 'plot_id is required' }, { status: 400 });
  }
  if (!first_name?.trim() || !last_name?.trim()) {
    return NextResponse.json({ error: 'first_name and last_name are required' }, { status: 400 });
  }

  const supabase = getSupabase();

  // Verify the plot exists
  const { data: plot, error: plotErr } = await supabase
    .from('plots')
    .select('id, plot_number, status')
    .eq('id', plot_id)
    .single();

  if (plotErr || !plot) {
    return NextResponse.json({ error: 'Plot not found' }, { status: 404 });
  }

  // Insert the deceased record
  const insertData: Record<string, unknown> = {
    plot_id,
    first_name: first_name.trim(),
    last_name: last_name.trim(),
    middle_name: middle_name?.trim() || null,
    maiden_name: maiden_name?.trim() || null,
    birth_date: birth_date || null,
    death_date: death_date || null,
    burial_date: burial_date || null,
    age_at_death: age_at_death ? parseInt(age_at_death) : null,
    gender: gender || null,
    veteran_status: veteran_status === true || veteran_status === 'true',
    military_branch: military_branch?.trim() || null,
    obituary: obituary?.trim() || null,
    epitaph: epitaph?.trim() || null,
    next_of_kin: next_of_kin?.trim() || null,
    funeral_home: funeral_home?.trim() || null,
    burial_permit_number: burial_permit_number?.trim() || null,
    death_certificate_number: death_certificate_number?.trim() || null,
    notes: notes?.trim() || null,
  };

  const { data: record, error: insertErr } = await supabase
    .from('deceased_records')
    .insert(insertData)
    .select()
    .single();

  if (insertErr) {
    console.error('Insert deceased record error:', insertErr);
    return NextResponse.json({ error: insertErr.message || 'Failed to create record' }, { status: 500 });
  }

  // Mark the plot as occupied if it isn't already
  if (plot.status !== 'occupied') {
    await supabase
      .from('plots')
      .update({ status: 'occupied' })
      .eq('id', plot_id);
  }

  // Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'deceased_records',
    record_id: record.id,
    action: 'CREATE',
    new_values: insertData,
    summary: `Deceased record created: ${first_name} ${last_name} in plot ${plot.plot_number}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ data: record }, { status: 201 });
}
