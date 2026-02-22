import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';

// POST: Submit a relationship between two existing nodes (members only)
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

    const { data: rel, error } = await supabase
      .from('family_tree_relationships')
      .insert({
        person_a_id,
        person_b_id,
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

    if (error) throw error;
    return NextResponse.json({ relationship: rel }, { status: 201 });
  } catch (error: any) {
    console.error('Family tree relationship POST error:', error);
    return NextResponse.json({ error: error.message || 'Failed to submit relationship' }, { status: 500 });
  }
}
