import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

export async function GET(
  _request: Request,
  { params }: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await params;
    const supabase = getSupabase();

    const { data: meeting, error: meetingError } = await supabase
      .from('committee_meetings')
      .select('id, title, meeting_date, start_time, end_time, location, description, agenda_published, minutes_published')
      .eq('id', id)
      .single();

    if (meetingError || !meeting) {
      return NextResponse.json({ error: 'Meeting not found' }, { status: 404 });
    }

    let agendaItems: unknown[] = [];
    let minutesContent = '';

    if (meeting.agenda_published) {
      const { data: agenda } = await supabase
        .from('meeting_agendas')
        .select('id, item_number, title, description')
        .eq('meeting_id', id)
        .order('item_number', { ascending: true });
      agendaItems = agenda || [];
    }

    if (meeting.minutes_published) {
      const { data: minutes } = await supabase
        .from('meeting_minutes')
        .select('content')
        .eq('meeting_id', id)
        .single();
      minutesContent = minutes?.content || '';
    }

    return NextResponse.json({ meeting, agendaItems, minutesContent });
  } catch (error) {
    console.error('Error fetching meeting details:', error);
    return NextResponse.json({ error: 'Failed to fetch meeting' }, { status: 500 });
  }
}
