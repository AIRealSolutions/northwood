import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

async function checkAdmin() {
  const session = await getServerSession(authOptions);
  if (!session?.user) return null;
  const role = session.user.role;
  if (role !== 'admin' && role !== 'superintendent' && role !== 'cemetery_committee') return null;
  return session;
}

export async function GET() {
  const session = await checkAdmin();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('committee_members')
      .select('*')
      .order('display_order', { ascending: true })
      .order('full_name', { ascending: true });

    if (error) throw error;
    return NextResponse.json({ members: data || [] });
  } catch (error) {
    console.error('Error fetching committee members:', error);
    return NextResponse.json({ error: 'Failed to fetch members' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  const session = await checkAdmin();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const body = await request.json();
    const {
      full_name, title, bio, photo_url, email, phone,
      term_start, term_end, is_active, display_order, user_id,
    } = body;

    if (!full_name?.trim()) {
      return NextResponse.json({ error: 'Full name is required' }, { status: 400 });
    }

    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('committee_members')
      .insert({
        full_name: full_name.trim(),
        title: title?.trim() || null,
        bio: bio?.trim() || null,
        photo_url: photo_url?.trim() || null,
        email: email?.trim() || null,
        phone: phone?.trim() || null,
        term_start: term_start || null,
        term_end: term_end || null,
        is_active: is_active !== false,
        display_order: display_order || 99,
        user_id: user_id || null,
      })
      .select()
      .single();

    if (error) throw error;
    return NextResponse.json({ member: data }, { status: 201 });
  } catch (error) {
    console.error('Error creating committee member:', error);
    return NextResponse.json({ error: 'Failed to create member' }, { status: 500 });
  }
}
