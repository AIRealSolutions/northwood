import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';

// ─── GET: Fetch the full approved family tree ─────────────────────────────────
// Optionally scoped to a deceased_id to get just that person's tree
export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const deceasedId = searchParams.get('deceased_id');
  const search = searchParams.get('search');

  try {
    const supabase = getServiceSupabase();

    // Fetch all approved nodes
    let nodeQuery = supabase
      .from('family_tree_nodes')
      .select('*')
      .eq('status', 'approved')
      .order('last_name')
      .order('first_name');

    if (search) {
      nodeQuery = nodeQuery.or(
        `first_name.ilike.%${search}%,last_name.ilike.%${search}%,maiden_name.ilike.%${search}%`
      );
    }

    const { data: nodes, error: nodesError } = await nodeQuery;
    if (nodesError) throw nodesError;

    // Fetch all approved relationships
    const { data: relationships, error: relError } = await supabase
      .from('family_tree_relationships')
      .select('*')
      .eq('status', 'approved');
    if (relError) throw relError;

    // If scoped to a deceased_id, return only the connected subgraph
    if (deceasedId) {
      // Find the node for this deceased person
      const rootNode = (nodes || []).find((n: any) => n.deceased_id === deceasedId);
      if (!rootNode) {
        return NextResponse.json({ nodes: [], relationships: [] });
      }
      // BFS to collect all connected node IDs
      const connectedIds = new Set<string>();
      const queue = [rootNode.id];
      while (queue.length > 0) {
        const current = queue.shift()!;
        if (connectedIds.has(current)) continue;
        connectedIds.add(current);
        (relationships || []).forEach((r: any) => {
          if (r.person_a_id === current && !connectedIds.has(r.person_b_id)) {
            queue.push(r.person_b_id);
          }
          if (r.person_b_id === current && !connectedIds.has(r.person_a_id)) {
            queue.push(r.person_a_id);
          }
        });
      }
      const filteredNodes = (nodes || []).filter((n: any) => connectedIds.has(n.id));
      const filteredRels = (relationships || []).filter(
        (r: any) => connectedIds.has(r.person_a_id) && connectedIds.has(r.person_b_id)
      );
      return NextResponse.json({ nodes: filteredNodes, relationships: filteredRels });
    }

    return NextResponse.json({ nodes: nodes || [], relationships: relationships || [] });
  } catch (error: any) {
    console.error('Family tree GET error:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch family tree' }, { status: 500 });
  }
}

// ─── POST: Submit a new node + optional relationship (members only) ──────────
export async function POST(request: NextRequest) {
  try {
    const session = await getServerSession(authOptions);

    // Require authenticated member
    if (!session?.user) {
      return NextResponse.json(
        { error: 'You must be signed in to contribute to the family tree.' },
        { status: 401 }
      );
    }

    const body = await request.json();

    const {
      // Node fields
      deceased_id,
      first_name,
      middle_name,
      last_name,
      maiden_name,
      birth_year,
      death_year,
      is_living,
      gender,
      submitted_by_name,
      submitted_by_email,
      // Optional relationship to an existing node
      relate_to_node_id,
      relationship_type,
      inverse_type,
      notes,
    } = body;

    if (!first_name?.trim() || !last_name?.trim()) {
      return NextResponse.json({ error: 'first_name and last_name are required' }, { status: 400 });
    }

    const supabase = getServiceSupabase();

    // ── Insert the new node ──────────────────────────────────────────────────
    const { data: node, error: nodeError } = await supabase
      .from('family_tree_nodes')
      .insert({
        deceased_id: deceased_id || null,
        first_name: first_name.trim(),
        middle_name: middle_name?.trim() || null,
        last_name: last_name.trim(),
        maiden_name: maiden_name?.trim() || null,
        birth_year: birth_year || null,
        death_year: death_year || null,
        is_living: is_living !== false,
        gender: gender || 'unknown',
        submitted_by_user_id: session?.user?.id || null,
        submitted_by_name: submitted_by_name?.trim() || null,
        submitted_by_email: submitted_by_email?.trim() || null,
        status: 'pending',
      })
      .select()
      .single();

    if (nodeError) throw nodeError;

    // ── Insert relationship if requested ─────────────────────────────────────
    let relationship = null;
    if (relate_to_node_id && relationship_type) {
      const { data: rel, error: relError } = await supabase
        .from('family_tree_relationships')
        .insert({
          person_a_id: node.id,
          person_b_id: relate_to_node_id,
          relationship_type: relationship_type.trim(),
          inverse_type: inverse_type?.trim() || null,
          notes: notes?.trim() || null,
          submitted_by_user_id: session?.user?.id || null,
          submitted_by_name: submitted_by_name?.trim() || null,
          submitted_by_email: submitted_by_email?.trim() || null,
          status: 'pending',
        })
        .select()
        .single();

      if (relError) throw relError;
      relationship = rel;
    }

    return NextResponse.json({ node, relationship }, { status: 201 });
  } catch (error: any) {
    console.error('Family tree POST error:', error);
    return NextResponse.json({ error: error.message || 'Failed to submit' }, { status: 500 });
  }
}
