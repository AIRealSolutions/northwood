import { NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

export async function GET() {
  try {
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('committee_members')
      .select('id, full_name, title, bio, photo_url, email, phone, term_start, term_end, display_order')
      .eq('is_active', true)
      .order('display_order', { ascending: true })
      .order('full_name', { ascending: true });

    if (error) throw error;

    return NextResponse.json({ members: data || [] });
  } catch (error) {
    console.error('Error fetching committee members:', error);
    return NextResponse.json({ members: [] });
  }
}
