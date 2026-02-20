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

export async function GET(
  _request: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await checkAdmin();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const { id } = await params;
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('committee_members')
      .select('*')
      .eq('id', id)
      .single();

    if (error || !data) return NextResponse.json({ error: 'Member not found' }, { status: 404 });
    return NextResponse.json({ member: data });
  } catch (error) {
    console.error('Error fetching member:', error);
    return NextResponse.json({ error: 'Failed to fetch member' }, { status: 500 });
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await checkAdmin();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const { id } = await params;
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
      .update({
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
        updated_at: new Date().toISOString(),
      })
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;
    return NextResponse.json({ member: data });
  } catch (error) {
    console.error('Error updating member:', error);
    return NextResponse.json({ error: 'Failed to update member' }, { status: 500 });
  }
}

export async function DELETE(
  _request: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await checkAdmin();
  if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  try {
    const { id } = await params;
    const supabase = getSupabase();
    const { error } = await supabase
      .from('committee_members')
      .delete()
      .eq('id', id);

    if (error) throw error;
    return NextResponse.json({ success: true });
  } catch (error) {
    console.error('Error deleting member:', error);
    return NextResponse.json({ error: 'Failed to delete member' }, { status: 500 });
  }
}
