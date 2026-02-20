import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';
import bcrypt from 'bcryptjs';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || session.user?.role !== 'admin') {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { id } = await params;
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('users')
    .select('id, email, first_name, last_name, phone, role, status, email_verified, created_at, last_login')
    .eq('id', id)
    .single();

  if (error) return NextResponse.json({ error: 'User not found' }, { status: 404 });
  return NextResponse.json({ user: data });
}

export async function PATCH(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || session.user?.role !== 'admin') {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { id } = await params;
  const body = await request.json();
  const { email, first_name, last_name, phone, role, status, password } = body;

  const supabase = getSupabase();

  // Fetch old values for audit log
  const { data: oldUser } = await supabase
    .from('users')
    .select('email, first_name, last_name, role, status')
    .eq('id', id)
    .single();

  const updates: Record<string, unknown> = { updated_at: new Date().toISOString() };

  if (email !== undefined) updates.email = email;
  if (first_name !== undefined) updates.first_name = first_name;
  if (last_name !== undefined) updates.last_name = last_name;
  if (phone !== undefined) updates.phone = phone;
  if (role !== undefined) updates.role = role;
  if (status !== undefined) updates.status = status;
  if (password) updates.password_hash = await bcrypt.hash(password, 12);

  const { data, error } = await supabase
    .from('users')
    .update(updates)
    .eq('id', id)
    .select('id, email, first_name, last_name, role, status')
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  // Write audit log (exclude password hash from log)
  const { password_hash: _ph, ...safeUpdates } = updates as Record<string, unknown>;
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'users',
    record_id: id,
    action: 'UPDATE',
    old_values: oldUser as Record<string, unknown>,
    new_values: safeUpdates,
    summary: `User ${data?.email || id} updated${password ? ' (password changed)' : ''}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ user: data });
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || session.user?.role !== 'admin') {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { id } = await params;

  // Prevent self-deletion
  if (session.user?.id === id) {
    return NextResponse.json({ error: 'You cannot delete your own account' }, { status: 400 });
  }

  const supabase = getSupabase();

  // Fetch user info for audit log before deletion
  const { data: userInfo } = await supabase
    .from('users')
    .select('email, first_name, last_name, role')
    .eq('id', id)
    .single();

  const { error } = await supabase.from('users').delete().eq('id', id);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  // Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'users',
    record_id: id,
    action: 'DELETE',
    old_values: userInfo as Record<string, unknown>,
    summary: `User ${userInfo?.email || id} deleted`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ success: true });
}
