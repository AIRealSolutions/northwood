import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';

// GET /api/admin/audit-log - Fetch audit log entries with filtering and pagination
export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session || session.user?.role !== 'admin') {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const page = parseInt(searchParams.get('page') || '1');
  const pageSize = parseInt(searchParams.get('pageSize') || '50');
  const tableName = searchParams.get('table') || '';
  const action = searchParams.get('action') || '';
  const userId = searchParams.get('user_id') || '';

  const supabase = getSupabase();
  let query = supabase
    .from('audit_log')
    .select('*', { count: 'exact' });

  if (tableName) query = query.eq('table_name', tableName);
  if (action) query = query.eq('action', action);
  if (userId) query = query.eq('changed_by_user_id', userId);

  const from = (page - 1) * pageSize;
  const to = from + pageSize - 1;

  const { data, error, count } = await query
    .order('created_at', { ascending: false })
    .range(from, to);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ entries: data || [], count, page, pageSize });
}
