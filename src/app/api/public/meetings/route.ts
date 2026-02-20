import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

export async function GET() {
  try {
    const supabase = getSupabase();

    // Get upcoming meetings (next 6 months) and recent past meetings (last 3)
    const today = new Date().toISOString().split('T')[0];
    const sixMonthsOut = new Date(Date.now() + 180 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];

    const { data: upcoming, error: upcomingError } = await supabase
      .from('committee_meetings')
      .select('id, title, meeting_date, start_time, end_time, location, description, agenda_published, minutes_published')
      .gte('meeting_date', today)
      .lte('meeting_date', sixMonthsOut)
      .order('meeting_date', { ascending: true })
      .limit(10);

    if (upcomingError) throw upcomingError;

    const { data: recent, error: recentError } = await supabase
      .from('committee_meetings')
      .select('id, title, meeting_date, start_time, end_time, location, description, agenda_published, minutes_published')
      .lt('meeting_date', today)
      .order('meeting_date', { ascending: false })
      .limit(5);

    if (recentError) throw recentError;

    return NextResponse.json({
      upcoming: upcoming || [],
      recent: recent || [],
    });
  } catch (error) {
    console.error('Error fetching public meetings:', error);
    return NextResponse.json({ upcoming: [], recent: [] });
  }
}
