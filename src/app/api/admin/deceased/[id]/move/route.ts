import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

// PUT /api/admin/deceased/[id]/move - Move a deceased record to a different plot
export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;
  try {
    const session = await getServerSession(authOptions);
    if (!session || session.user?.role !== 'admin') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const body = await request.json();
    const { new_plot_id, reason } = body;

    if (!new_plot_id) {
      return NextResponse.json({ error: 'new_plot_id is required' }, { status: 400 });
    }

    // Verify the new plot exists
    const { data: newPlot, error: plotError } = await getSupabase()
      .from('plots')
      .select('id, plot_number, section, status')
      .eq('id', new_plot_id)
      .single();

    if (plotError || !newPlot) {
      return NextResponse.json({ error: 'Target plot not found' }, { status: 404 });
    }

    // Get the current deceased record
    const { data: deceased, error: deceasedError } = await getSupabase()
      .from('deceased_records')
      .select('id, first_name, last_name, plot_id, notes')
      .eq('id', id)
      .single();

    if (deceasedError || !deceased) {
      return NextResponse.json({ error: 'Deceased record not found' }, { status: 404 });
    }

    const oldPlotId = deceased.plot_id;
    const existingNotes = (deceased as any).notes || '';

    // Update the deceased record with the new plot_id
    const { data: updatedDeceased, error: updateError } = await getSupabase()
      .from('deceased_records')
      .update({
        plot_id: new_plot_id,
        updated_at: new Date().toISOString(),
        notes: reason
          ? `[MOVED ${new Date().toLocaleDateString()}] Reason: ${reason}. ${existingNotes}`
          : existingNotes,
      })
      .eq('id', id)
      .select()
      .single();

    if (updateError) throw updateError;

    // Also update any burial_services linked to this deceased record
    await getSupabase()
      .from('burial_services')
      .update({ plot_id: new_plot_id })
      .eq('deceased_id', id);

    // Update the old plot status if it no longer has any deceased records
    if (oldPlotId) {
      const { data: remainingDeceased } = await getSupabase()
        .from('deceased_records')
        .select('id')
        .eq('plot_id', oldPlotId)
        .limit(1);

      if (!remainingDeceased || remainingDeceased.length === 0) {
        await getSupabase()
          .from('plots')
          .update({ status: 'available' })
          .eq('id', oldPlotId);
      }
    }

    // Update the new plot status to 'occupied'
    await getSupabase()
      .from('plots')
      .update({ status: 'occupied' })
      .eq('id', new_plot_id);

    return NextResponse.json({
      message: `Successfully moved ${deceased.first_name} ${deceased.last_name} to plot ${(newPlot as any).plot_number}`,
      data: updatedDeceased,
      old_plot_id: oldPlotId,
      new_plot: newPlot,
    });
  } catch (error: any) {
    console.error('Error moving deceased record:', error);
    return NextResponse.json({ error: error.message || 'Failed to move record' }, { status: 500 });
  }
}
