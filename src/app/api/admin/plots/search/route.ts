import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';

// GET /api/admin/plots/search?q=A-001 - Search plots by plot number
export async function GET(request: NextRequest) {
  try {
    const session = await getServerSession(authOptions);
    if (!session || (session.user?.role !== 'admin' && session.user?.role !== 'superintendent')) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { searchParams } = new URL(request.url);
    const q = searchParams.get('q') || '';
    const status = searchParams.get('status');

    let query = getSupabase()
      .from('plots')
      .select('id, plot_number, section, row_number, plot_position, status, plot_type');

    if (q && q.length >= 1) {
      query = query.ilike('plot_number', `%${q}%`);
    }

    if (status) {
      query = query.eq('status', status);
    }

    const { data, error } = await query
      .order('section')
      .order('row_number')
      .order('plot_position')
      .limit(20);

    if (error) throw error;

    return NextResponse.json({ data: data || [] });
  } catch (error: any) {
    console.error('Error searching plots:', error);
    return NextResponse.json({ error: error.message || 'Failed to search plots' }, { status: 500 });
  }
}
