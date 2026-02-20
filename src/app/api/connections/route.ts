import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

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
          id, relationship, notes, status, review_notes, created_at,
          plots ( id, plot_number, section, row_number, plot_position ),
          deceased_records ( id, first_name, middle_name, last_name, birth_date, death_date )
        `)
        .eq('user_id', session.user.id)
        .order('created_at', { ascending: false });

      if (error) throw error;
      return NextResponse.json({ connections: data || [] });
    }

    if (plotId) {
      // Public: return approved connections for a plot (only count/names, no personal user info)
      const { data, error } = await supabase
        .from('plot_connections')
        .select(`
          id, relationship,
          deceased_records ( id, first_name, last_name )
        `)
        .eq('plot_id', plotId)
        .eq('status', 'approved');

      if (error) throw error;
      return NextResponse.json({ connections: data || [] });
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
    const { plot_id, deceased_id, relationship, notes } = body;

    if (!plot_id || !relationship?.trim()) {
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
        relationship: relationship.trim(),
        notes: notes?.trim() || null,
        status: 'pending',
      })
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ connection: data }, { status: 201 });
  } catch (error) {
    console.error('Error creating connection:', error);
    return NextResponse.json({ error: 'Failed to create connection' }, { status: 500 });
  }
}
