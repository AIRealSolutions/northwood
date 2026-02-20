import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

// GET /api/admin/plots/[id] - Get a single plot with full details
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;
  try {
    const session = await getServerSession(authOptions);
    if (!session || session.user?.role !== 'admin') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { data, error } = await getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*),
        burial_services(*),
        plot_reservations(*)
      `)
      .eq('id', id)
      .single();

    if (error) {
      if (error.code === 'PGRST116') {
        return NextResponse.json({ error: 'Plot not found' }, { status: 404 });
      }
      throw error;
    }

    return NextResponse.json({ data });
  } catch (error: any) {
    console.error('Error fetching plot:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch plot' }, { status: 500 });
  }
}

// PUT /api/admin/plots/[id] - Update a plot
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
    const {
      plot_number,
      section,
      row_number,
      plot_position,
      plot_type,
      status,
      size_width,
      size_length,
      price,
      owner_name,
      owner_contact,
      purchase_date,
      notes,
    } = body;

    const supabase = getSupabase();

    // Fetch old values for audit log
    const { data: oldPlot } = await supabase
      .from('plots')
      .select('plot_number, section, row_number, plot_position, plot_type, status, owner_name')
      .eq('id', id)
      .single();

    const updateData: Record<string, any> = {
      updated_at: new Date().toISOString(),
    };

    if (plot_number !== undefined) updateData.plot_number = plot_number;
    if (section !== undefined) updateData.section = section.toUpperCase();
    if (row_number !== undefined) updateData.row_number = parseInt(row_number);
    if (plot_position !== undefined) updateData.plot_position = parseInt(plot_position);
    if (plot_type !== undefined) updateData.plot_type = plot_type;
    if (status !== undefined) updateData.status = status;
    if (size_width !== undefined) updateData.size_width = size_width ? parseFloat(size_width) : null;
    if (size_length !== undefined) updateData.size_length = size_length ? parseFloat(size_length) : null;
    if (price !== undefined) updateData.price = price ? parseFloat(price) : null;
    if (owner_name !== undefined) updateData.owner_name = owner_name || null;
    if (owner_contact !== undefined) updateData.owner_contact = owner_contact || null;
    if (purchase_date !== undefined) updateData.purchase_date = purchase_date || null;
    if (notes !== undefined) updateData.notes = notes || null;

    const { data, error } = await supabase
      .from('plots')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plots',
      record_id: id,
      action: 'UPDATE',
      old_values: oldPlot as Record<string, unknown>,
      new_values: updateData as Record<string, unknown>,
      summary: `Plot ${data?.plot_number || id} updated`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({ data });
  } catch (error: any) {
    console.error('Error updating plot:', error);
    return NextResponse.json({ error: error.message || 'Failed to update plot' }, { status: 500 });
  }
}

// DELETE /api/admin/plots/[id] - Delete a plot
export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const { id } = await params;
  try {
    const session = await getServerSession(authOptions);
    if (!session || session.user?.role !== 'admin') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const supabase = getSupabase();

    // Check if plot has deceased records before deleting
    const { data: deceased } = await supabase
      .from('deceased_records')
      .select('id')
      .eq('plot_id', id)
      .limit(1);

    if (deceased && deceased.length > 0) {
      return NextResponse.json(
        { error: 'Cannot delete a plot that has associated deceased records. Please move or remove the records first.' },
        { status: 400 }
      );
    }

    // Fetch plot info for audit log before deletion
    const { data: plotInfo } = await supabase
      .from('plots')
      .select('plot_number, section, status')
      .eq('id', id)
      .single();

    const { error } = await supabase
      .from('plots')
      .delete()
      .eq('id', id);

    if (error) throw error;

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plots',
      record_id: id,
      action: 'DELETE',
      old_values: plotInfo as Record<string, unknown>,
      summary: `Plot ${plotInfo?.plot_number || id} deleted`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({ message: 'Plot deleted successfully' });
  } catch (error: any) {
    console.error('Error deleting plot:', error);
    return NextResponse.json({ error: error.message || 'Failed to delete plot' }, { status: 500 });
  }
}
