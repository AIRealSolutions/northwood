import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';
import { getRelationship } from '@/lib/relationships';

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
          family_tree_node_id,
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
          family_tree_node_id,
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

// ─── Helper: ensure a family_tree_node exists for a deceased record ───────────
async function ensureDeceasedNode(
  supabase: ReturnType<typeof getSupabase>,
  deceasedId: string,
  submittedByUserId: string,
  submittedByName: string,
  submittedByEmail: string,
): Promise<string | null> {
  // Check if a node already exists for this deceased record
  const { data: existing } = await supabase
    .from('family_tree_nodes')
    .select('id, status')
    .eq('deceased_id', deceasedId)
    .maybeSingle();

  if (existing) return existing.id;

  // Fetch the deceased record to populate the node
  const { data: deceased } = await supabase
    .from('deceased_records')
    .select('id, first_name, middle_name, last_name, birth_date, death_date, gender')
    .eq('id', deceasedId)
    .maybeSingle();

  if (!deceased) return null;

  const birthYear = deceased.birth_date ? new Date(deceased.birth_date + 'T00:00:00').getFullYear() : null;
  const deathYear = deceased.death_date ? new Date(deceased.death_date + 'T00:00:00').getFullYear() : null;

  const { data: node, error } = await supabase
    .from('family_tree_nodes')
    .insert({
      deceased_id: deceasedId,
      first_name: deceased.first_name,
      middle_name: deceased.middle_name || null,
      last_name: deceased.last_name,
      birth_year: birthYear,
      death_year: deathYear,
      is_living: false,
      gender: deceased.gender || 'unknown',
      submitted_by_user_id: submittedByUserId,
      submitted_by_name: submittedByName,
      submitted_by_email: submittedByEmail,
      // Auto-approve deceased nodes since they are already in the verified cemetery records
      status: 'approved',
    })
    .select('id')
    .single();

  if (error) {
    console.error('Error creating deceased family tree node:', error);
    return null;
  }
  return node.id;
}

// ─── Helper: ensure a family_tree_node exists for the connecting member ───────
async function ensureMemberNode(
  supabase: ReturnType<typeof getSupabase>,
  userId: string,
  submittedByName: string,
  submittedByEmail: string,
): Promise<string | null> {
  // Check if a living node already exists for this user
  const { data: existing } = await supabase
    .from('family_tree_nodes')
    .select('id')
    .eq('submitted_by_user_id', userId)
    .eq('is_living', true)
    .maybeSingle();

  if (existing) return existing.id;

  // Fetch the user's name from the users table
  const { data: user } = await supabase
    .from('users')
    .select('id, first_name, last_name, email')
    .eq('id', userId)
    .maybeSingle();

  if (!user) return null;

  const firstName = user.first_name || submittedByName.split(' ')[0] || 'Unknown';
  const lastName = user.last_name || submittedByName.split(' ').slice(1).join(' ') || '';

  const { data: node, error } = await supabase
    .from('family_tree_nodes')
    .insert({
      deceased_id: null,
      first_name: firstName,
      last_name: lastName || 'Unknown',
      is_living: true,
      gender: 'unknown',
      submitted_by_user_id: userId,
      submitted_by_name: submittedByName,
      submitted_by_email: submittedByEmail,
      // Living member nodes start as pending until approved alongside the connection
      status: 'pending',
    })
    .select('id')
    .single();

  if (error) {
    console.error('Error creating member family tree node:', error);
    return null;
  }
  return node.id;
}

// POST — create a new connection request (requires auth)
// Also auto-creates matching family_tree_nodes and family_tree_relationships
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

    // ── Derive the inverse (occupant's relationship label) ────────────────────
    const relDef = getRelationship(memberRel);
    const derivedOccupantRel = relDef ? relDef.inverse : (occupant_relationship || '').trim() || null;
    const derivedCategory = relDef ? relDef.category : (relationship_category || '').trim() || null;

    // ── Determine submitter info from session ─────────────────────────────────
    const submitterName = [session.user.firstName, session.user.lastName].filter(Boolean).join(' ')
      || session.user.name
      || session.user.email
      || 'Unknown';
    const submitterEmail = session.user.email || '';

    // ── Auto-create family tree nodes ─────────────────────────────────────────
    let deceasedNodeId: string | null = null;
    let memberNodeId: string | null = null;
    let familyTreeRelationshipId: string | null = null;

    if (deceased_id) {
      deceasedNodeId = await ensureDeceasedNode(supabase, deceased_id, session.user.id, submitterName, submitterEmail);
      memberNodeId = await ensureMemberNode(supabase, session.user.id, submitterName, submitterEmail);

      // ── Create the family tree relationship edge ──────────────────────────
      if (deceasedNodeId && memberNodeId) {
        // Edge direction: member_node -[memberRel]-> deceased_node
        // e.g. "Jane (grandson) -> Joseph Spencer"
        const { data: ftRel, error: ftRelError } = await supabase
          .from('family_tree_relationships')
          .insert({
            person_a_id: memberNodeId,
            person_b_id: deceasedNodeId,
            relationship_type: memberRel,
            inverse_type: derivedOccupantRel,
            notes: notes?.trim() || null,
            submitted_by_user_id: session.user.id,
            submitted_by_name: submitterName,
            submitted_by_email: submitterEmail,
            status: 'pending',
          })
          .select('id')
          .single();

        if (ftRelError) {
          console.error('Error creating family tree relationship:', ftRelError);
        } else {
          familyTreeRelationshipId = ftRel.id;
        }
      }
    }

    // ── Insert the plot connection (with back-reference to tree node) ─────────
    const { data, error } = await supabase
      .from('plot_connections')
      .insert({
        user_id: session.user.id,
        plot_id,
        deceased_id: deceased_id || null,
        relationship: memberRel,
        member_relationship: memberRel,
        occupant_relationship: derivedOccupantRel,
        relationship_category: derivedCategory,
        notes: notes?.trim() || null,
        status: 'pending',
        // Store back-references so approval can sync both systems
        family_tree_node_id: memberNodeId,
        family_tree_relationship_id: familyTreeRelationshipId,
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
      new_values: {
        plot_id,
        deceased_id: deceased_id || null,
        member_relationship: memberRel,
        relationship_category: derivedCategory,
        family_tree_node_id: memberNodeId,
        family_tree_relationship_id: familyTreeRelationshipId,
      },
      summary: `Family connection request submitted for plot ${plot_id} (${memberRel})${familyTreeRelationshipId ? ' — family tree edge created' : ''}`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({
      connection: data,
      family_tree: {
        deceased_node_id: deceasedNodeId,
        member_node_id: memberNodeId,
        relationship_id: familyTreeRelationshipId,
      },
    }, { status: 201 });
  } catch (error) {
    console.error('Error creating connection:', error);
    return NextResponse.json({ error: 'Failed to create connection' }, { status: 500 });
  }
}
