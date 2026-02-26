import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

// GET /api/admin/plots - List all plots with pagination and filtering
export async function GET(request: NextRequest) {
  try {
    const session = await getServerSession(authOptions);
    if (!session || session.user?.role !== 'admin') {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { searchParams } = new URL(request.url);
    const page = parseInt(searchParams.get('page') || '1');
    const pageSize = parseInt(searchParams.get('pageSize') || '25');
    const section = searchParams.get('section') || '';
    const status = searchParams.get('status') || '';
    const search = searchParams.get('search') || '';

    let query = getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(id, first_name, last_name, death_date)
      `, { count: 'exact' });

    if (section && section !== 'all') {
      query = query.eq('section', section.toUpperCase());
    }
    if (status && status !== 'all') {
      query = query.eq('status', status);
    }
    if (search) {
      query = query.or(`plot_number.ilike.%${search}%,owner_name.ilike.%${search}%`);
    }

    const from = (page - 1) * pageSize;
    const to = from + pageSize - 1;

    const { data, error, count } = await query
      .order('section')
      .order('row_number')
      .order('plot_position')
      .range(from, to);

    if (error) throw error;

    return NextResponse.json({ data, count, page, pageSize });
  } catch (error: any) {
    console.error('Error fetching plots:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch plots' }, { status: 500 });
  }
}

// POST /api/admin/plots - Create a new plot
export async function POST(request: NextRequest) {
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

    if (!plot_number || !section || !row_number || !plot_position || !plot_type) {
      return NextResponse.json(
        { error: 'plot_number, section, row_number, plot_position, and plot_type are required' },
        { status: 400 }
      );
    }

    const { data, error } = await getSupabase()
      .from('plots')
      .insert({
        plot_number,
        section: section.toUpperCase(),
        row_number: parseInt(row_number),
        plot_position: parseInt(plot_position),
        plot_type,
        status: status || 'empty',
        size_width: size_width ? parseFloat(size_width) : null,
        size_length: size_length ? parseFloat(size_length) : null,
        price: price ? parseFloat(price) : null,
        owner_name: owner_name || null,
        owner_contact: owner_contact || null,
        purchase_date: purchase_date || null,
        notes: notes || null,
      })
      .select()
      .single();

    if (error) throw error;

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plots',
      record_id: data.id,
      action: 'CREATE',
      new_values: data as Record<string, unknown>,
      summary: `Plot ${data.plot_number} created in Section ${data.section}`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({ data }, { status: 201 });
  } catch (error: any) {
    console.error('Error creating plot:', error);
    return NextResponse.json({ error: error.message || 'Failed to create plot' }, { status: 500 });
  }
}
