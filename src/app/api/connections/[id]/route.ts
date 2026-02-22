import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { writeAuditLog, auditContextFromSession } from '@/lib/audit';

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
      .select('id, user_id, plot_id, relationship')
      .eq('id', id)
      .maybeSingle();

    if (!conn) return NextResponse.json({ error: 'Not found' }, { status: 404 });

    const isAdmin = ADMIN_ROLES.includes(session.user.role);
    if (conn.user_id !== session.user.id && !isAdmin) {
      return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
    }

    const { error } = await supabase.from('plot_connections').delete().eq('id', id);
    if (error) throw error;

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plot_connections',
      record_id: id,
      action: 'DELETE',
      old_values: conn as Record<string, unknown>,
      summary: `Family connection ${id} deleted`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

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

    // Fetch the connection being reviewed (including family tree back-references)
    const { data: conn, error: connError } = await supabase
      .from('plot_connections')
      .select('id, user_id, plot_id, status, relationship, member_relationship, family_tree_node_id, family_tree_relationship_id')
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

    // Update the connection
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

    // ── Sync family tree nodes and relationship edge ─────────────────────────
    // When a connection is approved or rejected, mirror the status change
    // to the linked family_tree_nodes and family_tree_relationships records.
    const ftNodeId = (conn as any).family_tree_node_id;
    const ftRelId  = (conn as any).family_tree_relationship_id;

    if (ftNodeId) {
      // Only update the living member node status (deceased node is auto-approved)
      await supabase
        .from('family_tree_nodes')
        .update({ status, reviewed_by: session.user.id })
        .eq('id', ftNodeId)
        .eq('is_living', true);
    }

    if (ftRelId) {
      await supabase
        .from('family_tree_relationships')
        .update({ status, reviewed_by: session.user.id })
        .eq('id', ftRelId);
    }

    // Write audit log
    const ctx = auditContextFromSession(session);
    await writeAuditLog({
      table_name: 'plot_connections',
      record_id: id,
      action: status === 'approved' ? 'APPROVE' : 'REJECT',
      old_values: { status: conn.status },
      new_values: {
        status,
        review_notes: review_notes?.trim() || null,
        family_tree_node_synced: !!ftNodeId,
        family_tree_relationship_synced: !!ftRelId,
      },
      summary: `Family connection ${id} ${status} by ${isAdmin ? 'admin' : 'peer family member'}${ftRelId ? ' — family tree edge synced' : ''}`,
      changed_by_user_id: ctx.userId,
      changed_by_name: ctx.userName,
      changed_by_email: ctx.userEmail,
      changed_by_role: ctx.userRole,
    });

    return NextResponse.json({
      connection: updated,
      approval_type: isAdmin ? 'admin' : 'peer_family_member',
      family_tree_synced: !!(ftNodeId || ftRelId),
    });

  } catch (error: any) {
    console.error('Error updating connection:', error);
    return NextResponse.json({ error: error.message || 'Failed to update connection' }, { status: 500 });
  }
}
