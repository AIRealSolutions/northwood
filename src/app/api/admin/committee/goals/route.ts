import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const status = searchParams.get('status') || '';

  const supabase = getSupabase();
  let query = supabase.from('committee_goals').select('*', { count: 'exact' });
  if (status) query = query.eq('status', status);

  const { data, error, count } = await query.order('created_at', { ascending: false });

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ goals: data, total: count });
}

export async function POST(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session || !ALLOWED_ROLES.includes(session.user?.role || '')) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const body = await request.json();
  const { title, description, priority, due_date } = body;

  if (!title) return NextResponse.json({ error: 'Title is required' }, { status: 400 });

  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('committee_goals')
    .insert({ title, description, priority: priority || 'medium', due_date, created_by: session.user?.id })
    .select()
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ goal: data }, { status: 201 });
}
