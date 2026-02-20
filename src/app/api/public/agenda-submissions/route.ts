import { NextRequest, NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

export async function GET() {
  // Return upcoming published meetings for the public form
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('committee_meetings')
    .select('id, title, meeting_date, location')
    .eq('agenda_published', false)
    .gte('meeting_date', new Date().toISOString().split('T')[0])
    .order('meeting_date', { ascending: true })
    .limit(5);

  if (error) return NextResponse.json({ meetings: [] });
  return NextResponse.json({ meetings: data });
}

export async function POST(request: NextRequest) {
  const body = await request.json();
  const {
    submitted_by_name,
    submitted_by_email,
    submitted_by_phone,
    subject,
    description,
    preferred_meeting_date,
  } = body;

  if (!submitted_by_name || !submitted_by_email || !subject || !description) {
    return NextResponse.json({ error: 'Name, email, subject, and description are required' }, { status: 400 });
  }

  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('public_agenda_submissions')
    .insert({
      submitted_by_name,
      submitted_by_email,
      submitted_by_phone,
      subject,
      description,
      preferred_meeting_date: preferred_meeting_date || null,
    })
    .select('id')
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true, id: data.id }, { status: 201 });
}
