import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { id: meeting_id } = await params;
  const body = await request.json();
  const { content, approved } = body;

  if (!content) return NextResponse.json({ error: 'Content is required' }, { status: 400 });

  const supabase = getSupabase();

  // Check if minutes already exist for this meeting
  const { data: existing } = await supabase
    .from('meeting_minutes')
    .select('id')
    .eq('meeting_id', meeting_id)
    .single();

  let data, error;
  if (existing) {
    const updates: Record<string, unknown> = { content, updated_at: new Date().toISOString() };
    if (approved !== undefined) {
      updates.approved = approved;
      if (approved) {
        updates.approved_by = session.user?.id;
        updates.approved_at = new Date().toISOString();
      }
    }
    ({ data, error } = await supabase
      .from('meeting_minutes')
      .update(updates)
      .eq('meeting_id', meeting_id)
      .select()
      .single());
  } else {
    ({ data, error } = await supabase
      .from('meeting_minutes')
      .insert({ meeting_id, content, created_by: session.user?.id, approved: approved || false })
      .select()
      .single());
  }

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });

  // Update meeting minutes_published flag
  if (approved !== undefined) {
    await supabase
      .from('committee_meetings')
      .update({ minutes_published: approved, updated_at: new Date().toISOString() })
      .eq('id', meeting_id);
  }

  return NextResponse.json({ minutes: data });
}
