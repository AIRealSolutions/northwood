import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';
import { writeAuditLog } from '@/lib/audit';

const ADMIN_ROLES = ['admin', 'cemetery_committee'];

// GET: List pending/all nodes and relationships for admin review
export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });

  const { searchParams } = new URL(request.url);
  const statusFilter = searchParams.get('status') || 'pending';

  try {
    const supabase = getServiceSupabase();

    let nodeQuery = supabase
      .from('family_tree_nodes')
      .select('*')
      .order('created_at', { ascending: false });

    let relQuery = supabase
      .from('family_tree_relationships')
      .select('*, person_a:person_a_id(*), person_b:person_b_id(*)')
      .order('created_at', { ascending: false });

    if (statusFilter !== 'all') {
      nodeQuery = nodeQuery.eq('status', statusFilter);
      relQuery = relQuery.eq('status', statusFilter);
    }

    const [{ data: nodes, error: nodesError }, { data: relationships, error: relError }] =
      await Promise.all([nodeQuery, relQuery]);

    if (nodesError) throw nodesError;
    if (relError) throw relError;

    return NextResponse.json({ nodes: nodes || [], relationships: relationships || [] });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

// PATCH: Approve or reject a node or relationship
export async function PATCH(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });

  try {
    const body = await request.json();
    const { type, id, status, review_notes } = body;

    if (!type || !id || !status) {
      return NextResponse.json({ error: 'type, id, and status are required' }, { status: 400 });
    }

    const supabase = getServiceSupabase();
    const table = type === 'node' ? 'family_tree_nodes' : 'family_tree_relationships';

    const { data, error } = await supabase
      .from(table)
      .update({
        status,
        review_notes: review_notes || null,
        reviewed_by: session.user.id,
        reviewed_at: new Date().toISOString(),
      })
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;
    await writeAuditLog({
      action: status === 'approved' ? 'APPROVE' : 'REJECT',
      table_name: table,
      record_id: id,
      changed_by_user_id: session.user.id,
      changed_by_name: session.user.name || null,
      changed_by_email: session.user.email || null,
      new_values: data,
      summary: `Community Family Tree: admin ${status} ${type} ${id}`,
    });
    return NextResponse.json({ data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

// PUT: Edit a node or relationship
export async function PUT(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
  try {
    const body = await request.json();
    const { type, id, updates } = body;
    if (!type || !id || !updates) {
      return NextResponse.json({ error: 'type, id, and updates are required' }, { status: 400 });
    }
    const supabase = getServiceSupabase();
    const table = type === 'node' ? 'family_tree_nodes' : 'family_tree_relationships';
    const { data: before } = await supabase.from(table).select('*').eq('id', id).maybeSingle();
    const { data, error } = await supabase.from(table).update(updates).eq('id', id).select().single();
    if (error) throw error;
    await writeAuditLog({
      action: 'UPDATE',
      table_name: table,
      record_id: id,
      changed_by_user_id: session.user.id,
      changed_by_name: session.user.name || null,
      changed_by_email: session.user.email || null,
      old_values: before,
      new_values: data,
      summary: `Community Family Tree: admin edited ${type} ${id}`,
    });
    return NextResponse.json({ data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}

// DELETE: Remove a node or relationship with safe orphan handling
export async function DELETE(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  if (!ADMIN_ROLES.includes(session.user.role))
    return NextResponse.json({ error: 'Forbidden' }, { status: 403 });
  try {
    const { searchParams } = new URL(request.url);
    const type = searchParams.get('type');
    const id = searchParams.get('id');
    const force = searchParams.get('force') === 'true';
    if (!type || !id) return NextResponse.json({ error: 'type and id are required' }, { status: 400 });
    const supabase = getServiceSupabase();

    if (type === 'relationship') {
      const { data: before } = await supabase.from('family_tree_relationships').select('*').eq('id', id).maybeSingle();
      const { error } = await supabase.from('family_tree_relationships').delete().eq('id', id);
      if (error) throw error;
      await writeAuditLog({
        action: 'DELETE', table_name: 'family_tree_relationships', record_id: id,
        changed_by_user_id: session.user.id, changed_by_name: session.user.name || null,
        changed_by_email: session.user.email || null, old_values: before,
        summary: `Community Family Tree: admin deleted relationship ${id}`,
      });
      return NextResponse.json({ success: true });
    }

    if (type === 'node') {
      const { data: nodeToDelete } = await supabase.from('family_tree_nodes').select('*').eq('id', id).maybeSingle();
      if (!nodeToDelete) return NextResponse.json({ error: 'Node not found' }, { status: 404 });

      const { data: nodeRels } = await supabase
        .from('family_tree_relationships').select('*')
        .or(`person_a_id.eq.${id},person_b_id.eq.${id}`);

      if (!force && nodeRels && nodeRels.length > 0) {
        const connectedNodeIds = new Set<string>();
        for (const rel of nodeRels) {
          if (rel.person_a_id !== id) connectedNodeIds.add(rel.person_a_id);
          if (rel.person_b_id !== id) connectedNodeIds.add(rel.person_b_id);
        }
        const wouldOrphan: string[] = [];
        for (const connectedId of connectedNodeIds) {
          const { data: otherRels } = await supabase
            .from('family_tree_relationships').select('id')
            .or(`person_a_id.eq.${connectedId},person_b_id.eq.${connectedId}`)
            .not('person_a_id', 'eq', id).not('person_b_id', 'eq', id);
          if (!otherRels || otherRels.length === 0) wouldOrphan.push(connectedId);
        }
        if (wouldOrphan.length > 0) {
          const { data: orphanNodes } = await supabase
            .from('family_tree_nodes').select('id, first_name, last_name').in('id', wouldOrphan);
          return NextResponse.json({
            error: 'Deleting this node would orphan connected family members.',
            orphans: orphanNodes || [],
            message: 'Use force=true to delete anyway, or remove the relationships first.',
          }, { status: 409 });
        }
      }

      if (nodeRels && nodeRels.length > 0) {
        const relIds = nodeRels.map((r: any) => r.id);
        await supabase.from('family_tree_relationships').delete().in('id', relIds);
        for (const rel of nodeRels) {
          await writeAuditLog({
            action: 'DELETE', table_name: 'family_tree_relationships', record_id: rel.id,
            changed_by_user_id: session.user.id, changed_by_name: session.user.name || null,
            changed_by_email: session.user.email || null, old_values: rel,
            summary: `Community Family Tree: cascade-deleted relationship when removing node ${id}`,
          });
        }
      }
      const { error: deleteError } = await supabase.from('family_tree_nodes').delete().eq('id', id);
      if (deleteError) throw deleteError;
      await writeAuditLog({
        action: 'DELETE', table_name: 'family_tree_nodes', record_id: id,
        changed_by_user_id: session.user.id, changed_by_name: session.user.name || null,
        changed_by_email: session.user.email || null, old_values: nodeToDelete,
        summary: `Community Family Tree: admin deleted node ${nodeToDelete.first_name} ${nodeToDelete.last_name}${force ? ' (forced)' : ''}`,
      });
      return NextResponse.json({ success: true, deleted_relationships: nodeRels?.length || 0 });
    }
    return NextResponse.json({ error: 'Invalid type' }, { status: 400 });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
