import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';
import { writeAuditLog } from '@/lib/audit';

// POST: Submit a relationship between two existing nodes (members only, auto-approved)
export async function POST(request: NextRequest) {
  try {
    const session = await getServerSession(authOptions);

    // Require authenticated member
    if (!session?.user) {
      return NextResponse.json(
        { error: 'You must be signed in to contribute to the Community Family Tree.' },
        { status: 401 }
      );
    }

    const body = await request.json();

    const {
      person_a_id,
      person_b_id,
      relationship_type,
      inverse_type,
      notes,
      submitted_by_name,
      submitted_by_email,
    } = body;

    if (!person_a_id || !person_b_id || !relationship_type) {
      return NextResponse.json(
        { error: 'person_a_id, person_b_id, and relationship_type are required' },
        { status: 400 }
      );
    }

    const supabase = getServiceSupabase();

    // Check for duplicate
    const { data: existing } = await supabase
      .from('family_tree_relationships')
      .select('id, status')
      .eq('person_a_id', person_a_id)
      .eq('person_b_id', person_b_id)
      .eq('relationship_type', relationship_type)
      .maybeSingle();

    if (existing) {
      return NextResponse.json(
        { error: 'This relationship has already been submitted.', existing },
        { status: 409 }
      );
    }

    const relData = {
      person_a_id,
      person_b_id,
      relationship_type: relationship_type.trim(),
      inverse_type: inverse_type?.trim() || null,
      notes: notes?.trim() || null,
      submitted_by_user_id: session?.user?.id || null,
      submitted_by_name: submitted_by_name?.trim() || session.user.name || null,
      submitted_by_email: submitted_by_email?.trim() || session.user.email || null,
      status: 'approved', // auto-approve member submissions
    };
    const { data: rel, error } = await supabase
      .from('family_tree_relationships')
      .insert(relData)
      .select()
      .single();

    if (error) throw error;

    // Log the relationship creation
    await writeAuditLog({
      action: 'CREATE',
      table_name: 'family_tree_relationships',
      record_id: rel.id,
      changed_by_user_id: session.user.id,
      changed_by_name: session.user.name || submitted_by_name || null,
      changed_by_email: session.user.email || submitted_by_email || null,
      new_values: relData,
      summary: `Community Family Tree: ${session.user.name || 'Member'} added relationship ${relationship_type}`,
    });

    return NextResponse.json({ relationship: rel }, { status: 201 });
  } catch (error: any) {
    console.error('Family tree relationship POST error:', error);
    return NextResponse.json({ error: error.message || 'Failed to submit relationship' }, { status: 500 });
  }
}
