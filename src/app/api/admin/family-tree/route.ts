import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';

const ADMIN_ROLES = ['admin', 'cemetery_committee'];

// GET: List pending/all nodes and relationships for admin review
export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });

  const { searchParams } = new URL(request.url);
  const statusFilter = searchParams.get('status') || 'pending';

  try {
    const supabase = getServiceSupabase();

    let nodeQuery = supabase
      .from('family_tree_nodes')
      .select('*')
      .order('created_at', { ascending: false });

    let relQuery = supabase
      .from('family_tree_relationships')
      .select('*, person_a:person_a_id(*), person_b:person_b_id(*)')
      .order('created_at', { ascending: false });

    if (statusFilter !== 'all') {
      nodeQuery = nodeQuery.eq('status', statusFilter);
      relQuery = relQuery.eq('status', statusFilter);
    }

    const [{ data: nodes, error: nodesError }, { data: relationships, error: relError }] =
      await Promise.all([nodeQuery, relQuery]);

    if (nodesError) throw nodesError;
    if (relError) throw relError;

    return NextResponse.json({ nodes: nodes || [], relationships: relationships || [] });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

// PATCH: Approve or reject a node or relationship
export async function PATCH(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });

  try {
    const body = await request.json();
    const { type, id, status, review_notes } = body;

    if (!type || !id || !status) {
      return NextResponse.json({ error: 'type, id, and status are required' }, { status: 400 });
    }

    const supabase = getServiceSupabase();
    const table = type === 'node' ? 'family_tree_nodes' : 'family_tree_relationships';

    const { data, error } = await supabase
      .from(table)
      .update({
        status,
        review_notes: review_notes || null,
        reviewed_by: session.user.id,
        reviewed_at: new Date().toISOString(),
      })
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;
    return NextResponse.json({ data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
