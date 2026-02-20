import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

// PUT /api/admin/deceased/[id]/move
// Moves a deceased record to a different plot by updating plot_id only.
// This is a position correction — only the plot_id field is changed.
export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;

  try {
    const session = await getServerSession(authOptions);
    if (!session || !['admin', 'cemetery_committee'].includes(session.user?.role || '')) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const body = await request.json();
    const { new_plot_id } = body;

    if (!new_plot_id) {
      return NextResponse.json({ error: 'new_plot_id is required' }, { status: 400 });
    }

    // Verify the target plot exists
    const { data: newPlot, error: plotError } = await getSupabase()
      .from('plots')
      .select('id, plot_number, section, status')
      .eq('id', new_plot_id)
      .single();

    if (plotError || !newPlot) {
      return NextResponse.json({ error: 'Target plot not found' }, { status: 404 });
    }

    // Get the current deceased record to know the old plot
    const { data: deceased, error: deceasedError } = await getSupabase()
      .from('deceased_records')
      .select('id, first_name, last_name, plot_id')
      .eq('id', id)
      .single();

    if (deceasedError || !deceased) {
      return NextResponse.json({ error: 'Deceased record not found' }, { status: 404 });
    }

    const oldPlotId = deceased.plot_id;

    // Only update plot_id — nothing else
    const { data: updated, error: updateError } = await getSupabase()
      .from('deceased_records')
      .update({ plot_id: new_plot_id })
      .eq('id', id)
      .select('id, first_name, last_name, plot_id')
      .single();

    if (updateError) {
      console.error('Move error:', updateError);
      return NextResponse.json({ error: updateError.message || 'Failed to move record' }, { status: 500 });
    }

    // Update burial_services plot_id if any exist for this deceased record
    await getSupabase()
      .from('burial_services')
      .update({ plot_id: new_plot_id })
      .eq('deceased_id', id);

    // If old plot now has no remaining deceased records, mark it available
    if (oldPlotId && oldPlotId !== new_plot_id) {
      const { data: remaining } = await getSupabase()
        .from('deceased_records')
        .select('id')
        .eq('plot_id', oldPlotId)
        .limit(1);

      if (!remaining || remaining.length === 0) {
        await getSupabase()
          .from('plots')
          .update({ status: 'available' })
          .eq('id', oldPlotId);
      }
    }

    // Mark the new plot as occupied
    await getSupabase()
      .from('plots')
      .update({ status: 'occupied' })
      .eq('id', new_plot_id);

    return NextResponse.json({
      message: `Moved ${deceased.first_name} ${deceased.last_name} to plot ${(newPlot as any).plot_number}`,
      data: updated,
      old_plot_id: oldPlotId,
      new_plot: newPlot,
    });

  } catch (error: any) {
    console.error('Move route error:', error);
    return NextResponse.json({ error: error.message || 'Failed to move record' }, { status: 500 });
  }
}
