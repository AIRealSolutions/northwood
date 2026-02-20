import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

const ADMIN_ROLES = ['admin'];

// PUT /api/admin/deceased/[id] — Update a deceased record
export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const body = await request.json();
  const supabase = getSupabase();

  // Fetch old record for audit log
  const { data: oldRecord } = await supabase
    .from('deceased_records')
    .select('first_name, last_name, plot_id')
    .eq('id', id)
    .single();

  const updateData: Record<string, unknown> = {};
  const fields = [
    'first_name', 'last_name', 'middle_name', 'maiden_name',
    'birth_date', 'death_date', 'burial_date', 'age_at_death',
    'gender', 'veteran_status', 'military_branch',
    'obituary', 'epitaph', 'next_of_kin', 'funeral_home',
    'burial_permit_number', 'death_certificate_number', 'notes',
  ];

  for (const field of fields) {
    if (body[field] !== undefined) {
      if (field === 'age_at_death') {
        updateData[field] = body[field] ? parseInt(body[field]) : null;
      } else if (field === 'veteran_status') {
        updateData[field] = body[field] === true || body[field] === 'true';
      } else if (['birth_date', 'death_date', 'burial_date'].includes(field)) {
        updateData[field] = body[field] || null;
      } else {
        updateData[field] = typeof body[field] === 'string' ? (body[field].trim() || null) : body[field];
      }
    }
  }

  updateData.updated_at = new Date().toISOString();

  const { data: record, error } = await supabase
    .from('deceased_records')
    .update(updateData)
    .eq('id', id)
    .select()
    .single();

  if (error) {
    return NextResponse.json({ error: error.message || 'Failed to update record' }, { status: 500 });
  }

  // Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'deceased_records',
    record_id: id,
    action: 'UPDATE',
    old_values: oldRecord as Record<string, unknown>,
    new_values: updateData,
    summary: `Deceased record updated: ${oldRecord?.first_name} ${oldRecord?.last_name}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ data: record });
}

// DELETE /api/admin/deceased/[id] — Delete a deceased record
export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const supabase = getSupabase();

  // Fetch record info before deletion
  const { data: record } = await supabase
    .from('deceased_records')
    .select('first_name, last_name, plot_id')
    .eq('id', id)
    .single();

  const { error } = await supabase
    .from('deceased_records')
    .delete()
    .eq('id', id);

  if (error) {
    return NextResponse.json({ error: error.message || 'Failed to delete record' }, { status: 500 });
  }

  // If the plot now has no remaining deceased records, mark it available
  if (record?.plot_id) {
    const { data: remaining } = await supabase
      .from('deceased_records')
      .select('id')
      .eq('plot_id', record.plot_id)
      .limit(1);

    if (!remaining || remaining.length === 0) {
      await supabase
        .from('plots')
        .update({ status: 'available' })
        .eq('id', record.plot_id);
    }
  }

  // Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'deceased_records',
    record_id: id,
    action: 'DELETE',
    old_values: record as Record<string, unknown>,
    summary: `Deceased record deleted: ${record?.first_name} ${record?.last_name}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ message: 'Record deleted successfully' });
}
