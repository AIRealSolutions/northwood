import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

// GET — list connections for a plot (public, approved only) or for the current user
export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const plotId = searchParams.get('plot_id');
  const mine = searchParams.get('mine') === 'true';

  try {
    const supabase = getSupabase();

    if (mine) {
      // Authenticated: return current user's connections
      const session = await getServerSession(authOptions);
      if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

      const { data, error } = await supabase
        .from('plot_connections')
        .select(`
          id, relationship, member_relationship, occupant_relationship, relationship_category, notes, status, review_notes, created_at,
          plots ( id, plot_number, section, row_number, plot_position ),
          deceased_records ( id, first_name, middle_name, last_name, birth_date, death_date )
        `)
        .eq('user_id', session.user.id)
        .order('created_at', { ascending: false });

      if (error) throw error;
      return NextResponse.json({ connections: data || [] });
    }

    if (plotId) {
      // Public: return approved connections for a plot
      const { data: connections, error } = await supabase
        .from('plot_connections')
        .select(`
          id, relationship, member_relationship, occupant_relationship, user_id,
          deceased_records ( id, first_name, last_name )
        `)
        .eq('plot_id', plotId)
        .eq('status', 'approved');

      if (error) throw error;

      // Fetch user names separately
      const userIds = [...new Set((connections || []).map((c: any) => c.user_id).filter(Boolean))];
      let usersMap: Record<string, { first_name: string | null; last_name: string | null }> = {};
      if (userIds.length > 0) {
        const { data: users } = await supabase
          .from('users')
          .select('id, first_name, last_name')
          .in('id', userIds);
        (users || []).forEach((u: any) => { usersMap[u.id] = u; });
      }

      const enriched = (connections || []).map((c: any) => ({
        ...c,
        user_first_name: usersMap[c.user_id]?.first_name || null,
        user_last_name: usersMap[c.user_id]?.last_name || null,
      }));

      return NextResponse.json({ connections: enriched });
    }

    return NextResponse.json({ error: 'Missing plot_id or mine=true' }, { status: 400 });
  } catch (error) {
    console.error('Error fetching connections:', error);
    return NextResponse.json({ error: 'Failed to fetch connections' }, { status: 500 });
  }
}

// POST — create a new connection request (requires auth)
export async function POST(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const body = await request.json();
    const { plot_id, deceased_id, relationship, member_relationship, occupant_relationship, relationship_category, notes } = body;

    // Accept either the new structured field or the legacy free-text field
    const memberRel = (member_relationship || relationship || '').trim();
    if (!plot_id || !memberRel) {
      return NextResponse.json({ error: 'plot_id and relationship are required' }, { status: 400 });
    }

    const supabase = getSupabase();

    // Check for duplicate
    const { data: existing } = await supabase
      .from('plot_connections')
      .select('id, status')
      .eq('user_id', session.user.id)
      .eq('plot_id', plot_id)
      .eq('deceased_id', deceased_id || null)
      .maybeSingle();

    if (existing) {
      return NextResponse.json({
        error: existing.status === 'approved'
          ? 'You already have an approved connection to this record.'
          : 'You already have a pending connection request for this record.',
        existing,
      }, { status: 409 });
    }

    const { data, error } = await supabase
      .from('plot_connections')
      .insert({
        user_id: session.user.id,
        plot_id,
        deceased_id: deceased_id || null,
        relationship: memberRel,
        member_relationship: memberRel,
        occupant_relationship: (occupant_relationship || '').trim() || null,
        relationship_category: (relationship_category || '').trim() || null,
        notes: notes?.trim() || null,
        status: 'pending',
      })
      .select()
      .single();

    if (error) throw error;

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plot_connections',
      record_id: data.id,
      action: 'CREATE',
      new_values: { plot_id, deceased_id: deceased_id || null, member_relationship: memberRel, relationship_category: (relationship_category || '').trim() || null },
      summary: `Family connection request submitted for plot ${plot_id} (${memberRel})`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({ connection: data }, { status: 201 });
  } catch (error) {
    console.error('Error creating connection:', error);
    return NextResponse.json({ error: 'Failed to create connection' }, { status: 500 });
  }
}
