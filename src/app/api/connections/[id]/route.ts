import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getSupabase } from '@/lib/supabase';

const ADMIN_ROLES = ['admin', 'cemetery_committee'];

// DELETE — user removes their own connection request
export async function DELETE(
  _request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  const { id } = await params;

  try {
    const supabase = getSupabase();

    const { data: conn } = await supabase
      .from('plot_connections')
      .select('id, user_id')
      .eq('id', id)
      .maybeSingle();

    if (!conn) return NextResponse.json({ error: 'Not found' }, { status: 404 });

    const isAdmin = ADMIN_ROLES.includes(session.user.role);
    if (conn.user_id !== session.user.id && !isAdmin) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
    }

    const { error } = await supabase.from('plot_connections').delete().eq('id', id);
    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error: any) {
    console.error('Error deleting connection:', error);
    return NextResponse.json({ error: 'Failed to delete connection' }, { status: 500 });
  }
}

// PATCH — approve or reject a connection request
// Allowed by:
//   1. Admins / cemetery_committee members (always)
//   2. Any approved family member connected to the SAME plot (peer approval)
export async function PATCH(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> }
) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

  const { id } = await params;

  try {
    const body = await request.json();
    const { status, review_notes } = body;

    if (!['approved', 'rejected'].includes(status)) {
      return NextResponse.json({ error: 'status must be approved or rejected' }, { status: 400 });
    }

    const supabase = getSupabase();

    // Fetch the connection being reviewed
    const { data: conn, error: connError } = await supabase
      .from('plot_connections')
      .select('id, user_id, plot_id, status')
      .eq('id', id)
      .maybeSingle();

    if (connError || !conn) {
      return NextResponse.json({ error: 'Connection not found' }, { status: 404 });
    }

    // Prevent self-approval
    if (conn.user_id === session.user.id) {
      return NextResponse.json({ error: 'You cannot approve your own connection request' }, { status: 403 });
    }

    const isAdmin = ADMIN_ROLES.includes(session.user.role);

    // Check if current user is an approved family member on the same plot (peer approval)
    let isPeerApprover = false;
    if (!isAdmin) {
      const { data: peerConn } = await supabase
        .from('plot_connections')
        .select('id')
        .eq('user_id', session.user.id)
        .eq('plot_id', conn.plot_id)
        .eq('status', 'approved')
        .maybeSingle();

      isPeerApprover = !!peerConn;
    }

    if (!isAdmin && !isPeerApprover) {
      return NextResponse.json({
        error: 'You must be an admin or an approved family member of this plot to approve connections',
      }, { status: 403 });
    }

    // Update the connection — omit reviewed_at and updated_at to avoid timestamp coercion
    // Supabase will handle updated_at via triggers if configured, otherwise we skip it
    const { data: updated, error: updateError } = await supabase
      .from('plot_connections')
      .update({
        status,
        review_notes: review_notes?.trim() || null,
        reviewed_by: session.user.id,
      })
      .eq('id', id)
      .select()
      .single();

    if (updateError) {
      console.error('Connection update error:', updateError);
      throw updateError;
    }

    return NextResponse.json({
      connection: updated,
      approval_type: isAdmin ? 'admin' : 'peer_family_member',
    });

  } catch (error: any) {
    console.error('Error updating connection:', error);
    return NextResponse.json({ error: error.message || 'Failed to update connection' }, { status: 500 });
  }
}
