import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

const ADMIN_ROLES = ['admin', 'superintendent'];

// GET /api/admin/deceased — List deceased records with pagination and search
export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);

  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const { searchParams } = new URL(request.url);
  const page = parseInt(searchParams.get('page') || '1');
  const pageSize = parseInt(searchParams.get('pageSize') || '25');
  const search = searchParams.get('search') || '';

  const supabase = getSupabase();

  try {
    let query = supabase
      .from('deceased_records')
      .select('*, plots(id, plot_number, section, row_number, plot_position)', { count: 'exact' })
      .order('last_name', { ascending: true })
      .order('first_name', { ascending: true });

    if (search.trim()) {
      query = query.or(
        `first_name.ilike.%${search}%,last_name.ilike.%${search}%,middle_name.ilike.%${search}%`
      );
    }

    const from = (page - 1) * pageSize;
    const to = from + pageSize - 1;

    const { data, count, error } = await query.range(from, to);

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    // Transform the data to flatten the plot relationship
    const transformedData = data?.map((record: any) => ({
      ...record,
      plot: record.plots,
      plots: undefined,
    })) || [];

    return NextResponse.json({
      data: transformedData,
      count: count || 0,
      page,
      pageSize,
    });
  } catch (error) {
    console.error('Error fetching deceased records:', error);
    return NextResponse.json(
      { error: 'Failed to fetch records' },
      { status: 500 }
    );
  }
}

// POST /api/admin/deceased — Create a new deceased record linked to a plot
export async function POST(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  if (!ADMIN_ROLES.includes(session.user.role || '')) {
    return NextResponse.json({ error: 'Forbidden — admin only' }, { status: 403 });
  }

  const body = await request.json();
  const {
    plot_id,
    first_name,
    last_name,
    middle_name,
    maiden_name,
    birth_date,
    death_date,
    burial_date,
    age_at_death,
    gender,
    veteran_status,
    military_branch,
    obituary,
    epitaph,
    next_of_kin,
    funeral_home,
    burial_permit_number,
    death_certificate_number,
    notes,
  } = body;

  if (!plot_id) {
    return NextResponse.json({ error: 'plot_id is required' }, { status: 400 });
  }
  if (!first_name?.trim() || !last_name?.trim()) {
    return NextResponse.json({ error: 'first_name and last_name are required' }, { status: 400 });
  }

  const supabase = getSupabase();

  // Verify the plot exists
  const { data: plot, error: plotErr } = await supabase
    .from('plots')
    .select('id, plot_number, status')
    .eq('id', plot_id)
    .single();

  if (plotErr || !plot) {
    return NextResponse.json({ error: 'Plot not found' }, { status: 404 });
  }

  // Insert the deceased record
  const insertData: Record<string, unknown> = {
    plot_id,
    first_name: first_name.trim(),
    last_name: last_name.trim(),
    middle_name: middle_name?.trim() || null,
    maiden_name: maiden_name?.trim() || null,
    birth_date: birth_date || null,
    death_date: death_date || null,
    burial_date: burial_date || null,
    age_at_death: age_at_death ? parseInt(age_at_death) : null,
    gender: gender || null,
    veteran_status: veteran_status === true || veteran_status === 'true',
    military_branch: military_branch?.trim() || null,
    obituary: obituary?.trim() || null,
    epitaph: epitaph?.trim() || null,
    next_of_kin: next_of_kin?.trim() || null,
    funeral_home: funeral_home?.trim() || null,
    burial_permit_number: burial_permit_number?.trim() || null,
    death_certificate_number: death_certificate_number?.trim() || null,
    notes: notes?.trim() || null,
  };

  const { data: record, error: insertErr } = await supabase
    .from('deceased_records')
    .insert(insertData)
    .select()
    .single();

  if (insertErr) {
    console.error('Insert deceased record error:', insertErr);
    return NextResponse.json({ error: insertErr.message || 'Failed to create record' }, { status: 500 });
  }

  // Mark the plot as occupied if it isn't already
  if (plot.status !== 'occupied') {
    await supabase
      .from('plots')
      .update({ status: 'occupied' })
      .eq('id', plot_id);
  }

  // Write audit log
  const ctx = auditContextFromSession(session);
  await writeAuditLog({
    table_name: 'deceased_records',
    record_id: record.id,
    action: 'CREATE',
    new_values: insertData,
    summary: `Deceased record created: ${first_name} ${last_name} in plot ${plot.plot_number}`,
    changed_by_user_id: ctx.userId,
    changed_by_name: ctx.userName,
    changed_by_email: ctx.userEmail,
    changed_by_role: ctx.userRole,
  });

  return NextResponse.json({ data: record }, { status: 201 });
}
