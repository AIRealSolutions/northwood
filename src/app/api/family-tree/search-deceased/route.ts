import { NextRequest, NextResponse } from 'next/server';
import { getServiceSupabase } from '@/lib/supabase';

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const q = searchParams.get('q')?.trim();

  if (!q || q.length < 2) {
    return NextResponse.json({ records: [] });
  }

  try {
    const supabase = getServiceSupabase();
    const { data, error } = await supabase
      .from('deceased_records')
      .select('id, first_name, middle_name, last_name, birth_date, death_date, plots(plot_number, section)')
      .or(`first_name.ilike.%${q}%,last_name.ilike.%${q}%,maiden_name.ilike.%${q}%`)
      .order('last_name')
      .order('first_name')
      .limit(20);

    if (error) throw error;
    return NextResponse.json({ records: data || [] });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
