import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const status = searchParams.get('status') || '';
  const type = searchParams.get('type') || '';
  const page = parseInt(searchParams.get('page') || '1');
  const pageSize = parseInt(searchParams.get('pageSize') || '50');
  const offset = (page - 1) * pageSize;

  const supabase = getSupabase();
  let query = supabase
    .from('change_requests')
    .select(`
      *,
      deceased_records(first_name, last_name),
      plots(plot_number)
    `, { count: 'exact' });

  if (status) query = query.eq('status', status);
  if (type) query = query.eq('request_type', type);

  const { data, error, count } = await query
    .order('created_at', { ascending: false })
    .range(offset, offset + pageSize - 1);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ requests: data, total: count });
}
