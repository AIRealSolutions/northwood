import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

/**
 * POST /api/family-tree/intermediate
 *
 * Submits a missing intermediate node (e.g. the parent that connects a
 * grandchild member to a deceased occupant) and creates two edges:
 *   1. occupant_node  → intermediate  (intermediate_to_occupant relationship)
 *   2. intermediate   → member_node   (member_to_intermediate relationship)
 *
 * Body:
 *   first_name, last_name, birth_year?, death_year?, is_living,
 *   gender?, cemetery_name?, cemetery_location?,
 *   deceased_id (UUID of the deceased_record),
 *   member_node_id (UUID of the member's family_tree_node),
 *   intermediate_to_occupant (e.g. "child"),
 *   member_to_intermediate   (e.g. "child")
 */
export async function POST(req: NextRequest) {
  // Auth check — must be a logged-in member
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) {
    return NextResponse.json({ error: 'Authentication required' }, { status: 401 });
  }

  try {
    const body = await req.json();
    const {
      first_name,
      last_name,
      birth_year,
      death_year,
      is_living,
      gender,
      cemetery_name,
      cemetery_location,
      deceased_id,
      member_node_id,
      intermediate_to_occupant,
      member_to_intermediate,
    } = body;

    // Validate required fields
    if (!first_name?.trim() || !last_name?.trim()) {
      return NextResponse.json({ error: 'First name and last name are required' }, { status: 400 });
    }
    if (!deceased_id) {
      return NextResponse.json({ error: 'deceased_id is required' }, { status: 400 });
    }
    if (!intermediate_to_occupant || !member_to_intermediate) {
      return NextResponse.json({ error: 'Relationship context is required' }, { status: 400 });
    }

    // ── Step 1: Find or create the occupant's family_tree_node ────────────────
    let occupantNodeId: string;
    const { data: existingOccupantNode } = await supabase
      .from('family_tree_nodes')
      .select('id')
      .eq('deceased_id', deceased_id)
      .eq('status', 'approved')
      .maybeSingle();

    if (existingOccupantNode) {
      occupantNodeId = existingOccupantNode.id;
    } else {
      // Fetch the deceased record to get their name
      const { data: deceasedRecord } = await supabase
        .from('deceased_records')
        .select('first_name, last_name, birth_date, death_date, gender')
        .eq('id', deceased_id)
        .maybeSingle();

      if (!deceasedRecord) {
        return NextResponse.json({ error: 'Deceased record not found' }, { status: 404 });
      }

      const { data: newOccupantNode, error: occupantNodeError } = await supabase
        .from('family_tree_nodes')
        .insert({
          deceased_id,
          first_name: deceasedRecord.first_name,
          last_name: deceasedRecord.last_name,
          birth_year: deceasedRecord.birth_date ? new Date(deceasedRecord.birth_date).getFullYear() : null,
          death_year: deceasedRecord.death_date ? new Date(deceasedRecord.death_date).getFullYear() : null,
          is_living: false,
          gender: deceasedRecord.gender || null,
          status: 'approved',
          submitted_by_user_id: session.user.id,
          submitted_by_name: session.user.name || null,
          submitted_by_email: session.user.email || null,
        })
        .select('id')
        .single();

      if (occupantNodeError || !newOccupantNode) {
        console.error('Error creating occupant node:', occupantNodeError);
        return NextResponse.json({ error: 'Failed to create occupant node' }, { status: 500 });
      }
      occupantNodeId = newOccupantNode.id;
    }

    // ── Step 2: Create the intermediate person's family_tree_node ─────────────
    // Build notes field with cemetery info if provided
    const notes = [
      cemetery_name ? `Cemetery: ${cemetery_name}` : null,
      cemetery_location ? `Location: ${cemetery_location}` : null,
    ].filter(Boolean).join(' | ') || null;

    const { data: intermediateNode, error: intermediateNodeError } = await supabase
      .from('family_tree_nodes')
      .insert({
        deceased_id: null,
        first_name: first_name.trim(),
        last_name: last_name.trim(),
        birth_year: birth_year || null,
        death_year: death_year || null,
        is_living: is_living ?? true,
        gender: gender || null,
        status: 'pending',
        submitted_by_user_id: session.user.id,
        submitted_by_name: session.user.name || null,
        submitted_by_email: session.user.email || null,
        review_notes: notes,
      })
      .select('id')
      .single();

    if (intermediateNodeError || !intermediateNode) {
      console.error('Error creating intermediate node:', intermediateNodeError);
      return NextResponse.json({ error: 'Failed to create intermediate node' }, { status: 500 });
    }

    const intermediateNodeId = intermediateNode.id;

    // ── Step 3: Create edge — occupant → intermediate ─────────────────────────
    // e.g. occupant is the grandparent, intermediate is their child
    const inverseOccupantToIntermediate = getInverse(intermediate_to_occupant);
    await supabase.from('family_tree_relationships').insert({
      node_a_id: occupantNodeId,
      node_b_id: intermediateNodeId,
      relationship_type: intermediate_to_occupant,   // e.g. "child" (intermediate is the occupant's child)
      inverse_type: inverseOccupantToIntermediate,    // e.g. "parent"
      status: 'pending',
      submitted_by_user_id: session.user.id,
      submitted_by_name: session.user.name || null,
      submitted_by_email: session.user.email || null,
    });

    // ── Step 4: Create edge — intermediate → member ───────────────────────────
    // e.g. intermediate is the parent, member is their child (the grandchild)
    if (member_node_id) {
      const inverseMemberToIntermediate = getInverse(member_to_intermediate);
      await supabase.from('family_tree_relationships').insert({
        node_a_id: intermediateNodeId,
        node_b_id: member_node_id,
        relationship_type: member_to_intermediate,    // e.g. "child" (member is intermediate's child)
        inverse_type: inverseMemberToIntermediate,    // e.g. "parent"
        status: 'pending',
        submitted_by_user_id: session.user.id,
        submitted_by_name: session.user.name || null,
        submitted_by_email: session.user.email || null,
      });
    }

    return NextResponse.json({
      success: true,
      intermediate_node_id: intermediateNodeId,
      message: 'Intermediate relative submitted successfully and is pending review.',
    });

  } catch (error) {
    console.error('Error in POST /api/family-tree/intermediate:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}

/**
 * Simple inverse lookup for the most common relationship types used
 * in intermediate node edge creation.
 */
function getInverse(rel: string): string {
  const inverseMap: Record<string, string> = {
    child: 'parent',
    parent: 'child',
    grandchild: 'grandparent',
    grandparent: 'grandchild',
    great_grandchild: 'great_grandparent',
    great_grandparent: 'great_grandchild',
    great_great_grandchild: 'great_great_grandparent',
    great_great_grandparent: 'great_great_grandchild',
    nephew_niece: 'aunt_uncle',
    aunt_uncle: 'nephew_niece',
    sibling: 'sibling',
    spouse: 'spouse',
  };
  return inverseMap[rel] ?? rel;
}
