import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ALLOWED_ROLES = ['admin', 'cemetery_committee', 'superintendent'];

async function getSession() {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return null;
  if (!ALLOWED_ROLES.includes(session.user.role)) return null;
  return session;
}

// GET — fetch the committee member record linked to the current user
export async function GET() {
  const session = await getSession();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const supabase = getSupabase();

    // Look up by user_id first
    const { data, error } = await supabase
      .from('committee_members')
      .select('*')
      .eq('user_id', session.user.id)
      .maybeSingle();

    if (error) throw error;

    if (!data) {
      // No linked record — return empty so the page can show a "not linked" state
      return NextResponse.json({ member: null });
    }

    return NextResponse.json({ member: data });
  } catch (error) {
    console.error('Error fetching committee member profile:', error);
    return NextResponse.json({ error: 'Failed to fetch profile' }, { status: 500 });
  }
}

// PUT — update only the editable fields (bio, photo, title, email, phone)
// Admin-only fields (is_active, display_order, term_start, term_end) are not editable here
export async function PUT(request: NextRequest) {
  const session = await getSession();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const body = await request.json();
    const { bio, photo_url, title, email, phone } = body;

    const supabase = getSupabase();

    // Verify the member record belongs to this user
    const { data: existing, error: fetchError } = await supabase
      .from('committee_members')
      .select('id, user_id')
      .eq('user_id', session.user.id)
      .maybeSingle();

    if (fetchError) throw fetchError;

    if (!existing) {
      return NextResponse.json({ error: 'No committee member profile linked to your account.' }, { status: 404 });
    }

    const { data, error } = await supabase
      .from('committee_members')
      .update({
        bio: bio?.trim() || null,
        photo_url: photo_url?.trim() || null,
        title: title?.trim() || null,
        email: email?.trim() || null,
        phone: phone?.trim() || null,
        updated_at: new Date().toISOString(),
      })
      .eq('id', existing.id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ member: data });
  } catch (error) {
    console.error('Error updating committee member profile:', error);
    return NextResponse.json({ error: 'Failed to update profile' }, { status: 500 });
  }
}
