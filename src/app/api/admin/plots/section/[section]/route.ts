import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ADMIN_ROLES = ['admin', 'cemetery_committee'];

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ section: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
  }

  const { section } = await params;
  const supabase = getSupabase();

  // Fetch all plots in this section with occupant info
  const { data, error } = await supabase
    .from('plots')
    .select(`
      id,
      plot_number,
      section,
      row_number,
      plot_position,
      status,
      plot_type,
      owner_name,
      deceased_records (
        id,
        first_name,
        last_name,
        death_date
      )
    `)
    .eq('section', section.toUpperCase())
    .order('row_number', { ascending: true })
    .order('plot_position', { ascending: true });

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  // Build a grid structure: { row_number: { plot_position: plot } }
  const grid: Record<number, Record<number, any>> = {};
  let maxRow = 0;
  let maxPos = 0;

  for (const plot of data || []) {
    const row = plot.row_number;
    const pos = plot.plot_position;
    if (!grid[row]) grid[row] = {};
    grid[row][pos] = plot;
    if (row > maxRow) maxRow = row;
    if (pos > maxPos) maxPos = pos;
  }

  return NextResponse.json({
    plots: data || [],
    grid,
    maxRow,
    maxPosition: maxPos,
    section: section.toUpperCase(),
  });
}
