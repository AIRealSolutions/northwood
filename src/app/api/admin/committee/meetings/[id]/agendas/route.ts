import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { id: meeting_id } = await params;
  const body = await request.json();
  const { title, description, item_number, notes } = body;

  if (!title) return NextResponse.json({ error: 'Title is required' }, { status: 400 });

  const supabase = getSupabase();

  // Auto-assign item number if not provided
  let itemNum = item_number;
  if (!itemNum) {
    const { data: existing } = await supabase
      .from('meeting_agendas')
      .select('item_number')
      .eq('meeting_id', meeting_id)
      .order('item_number', { ascending: false })
      .limit(1);
    itemNum = existing && existing.length > 0 ? existing[0].item_number + 1 : 1;
  }

  const { data, error } = await supabase
    .from('meeting_agendas')
    .insert({ meeting_id, title, description, item_number: itemNum, notes, status: 'approved' })
    .select()
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ agenda: data }, { status: 201 });
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const agendaId = searchParams.get('agendaId');
  if (!agendaId) return NextResponse.json({ error: 'agendaId required' }, { status: 400 });

  const supabase = getSupabase();
  const { error } = await supabase.from('meeting_agendas').delete().eq('id', agendaId);

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true });
}
