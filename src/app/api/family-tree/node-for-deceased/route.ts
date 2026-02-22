import { NextRequest, NextResponse } from 'next/server';
import { getServiceSupabase } from '@/lib/supabase';

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const deceasedId = searchParams.get('deceased_id');

  if (!deceasedId) {
    return NextResponse.json({ node: null });
  }

  try {
    const supabase = getServiceSupabase();
    const { data, error } = await supabase
      .from('family_tree_nodes')
      .select('*')
      .eq('deceased_id', deceasedId)
      .in('status', ['approved', 'pending'])
      .maybeSingle();

    if (error) throw error;
    return NextResponse.json({ node: data || null });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
