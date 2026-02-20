import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ADMIN_ROLES = ['admin', 'cemetery_committee'];

export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role)) return NextResponse.json({ error: 'Forbidden' }, { status: 403 });

  const { searchParams } = new URL(request.url);
  const statusFilter = searchParams.get('status') || 'pending';
  const page = parseInt(searchParams.get('page') || '1');
  const pageSize = parseInt(searchParams.get('pageSize') || '25');
  const offset = (page - 1) * pageSize;

  try {
    const supabase = getSupabase();

    // Fetch connections without the problematic users join
    let query = supabase
      .from('plot_connections')
      .select(`
        id,
        relationship,
        member_relationship,
        occupant_relationship,
        relationship_category,
        notes,
        status,
        review_notes,
        created_at,
        reviewed_at,
        user_id,
        plot_id,
        deceased_id,
        plots ( id, plot_number, section ),
        deceased_records ( id, first_name, middle_name, last_name, birth_date, death_date )
      `, { count: 'exact' })
      .order('created_at', { ascending: false })
      .range(offset, offset + pageSize - 1);

    if (statusFilter !== 'all') {
      query = query.eq('status', statusFilter);
    }

    const { data: connections, error, count } = await query;
    if (error) {
      console.error('Connections query error:', error);
      throw error;
    }

    // Fetch user details separately to avoid join column naming issues
    const userIds = [...new Set((connections || []).map((c: any) => c.user_id).filter(Boolean))];
    let usersMap: Record<string, any> = {};

    if (userIds.length > 0) {
      const { data: users } = await supabase
        .from('users')
        .select('id, first_name, last_name, email, role')
        .in('id', userIds);

      (users || []).forEach((u: any) => {
        usersMap[u.id] = u;
      });
    }

    // Merge user data into connections
    const enriched = (connections || []).map((c: any) => ({
      ...c,
      user: usersMap[c.user_id] || null,
    }));

    return NextResponse.json({
      connections: enriched,
      total: count || 0,
      page,
      pageSize,
      totalPages: Math.ceil((count || 0) / pageSize),
    });
  } catch (error: any) {
    console.error('Error fetching admin connections:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch connections' }, { status: 500 });
  }
}
