import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase } from '@/lib/supabase';
import { auditContextFromSession, writeAuditLog } from '@/lib/audit';

const EDITOR_ROLES = new Set(['admin', 'superintendent', 'cemetery_committee']);

async function requireEditor() {
  const session = await getServerSession(authOptions);
  if (!session || !EDITOR_ROLES.has(session.user?.role || '')) return null;
  return session;
}

export async function GET() {
  try {
    const session = await requireEditor();
    if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

    const db = getServiceSupabase();
    const [blocksResult, plotsResult, groupsResult, linksResult] = await Promise.all([
      db.from('gh_map_blocks').select('*').order('working_row').order('block_number'),
      db.from('gh_map_plots').select('*').order('block_id').order('row_index').order('column_index'),
      db.from('gh_ownership_groups').select('*').order('historical_number'),
      db.from('gh_ownership_group_plots').select('*'),
    ]);

    const firstError = blocksResult.error || plotsResult.error || groupsResult.error || linksResult.error;
    if (firstError) throw firstError;

    return NextResponse.json({
      blocks: blocksResult.data || [],
      plots: plotsResult.data || [],
      ownershipGroups: groupsResult.data || [],
      ownershipLinks: linksResult.data || [],
    });
  } catch (error: unknown) {
    const message = error instanceof Error ? error.message : 'Failed to load G-H layout';
    console.error('G-H layout GET failed:', error);
    return NextResponse.json({ error: message }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const session = await requireEditor();
    if (!session) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });

    const body = await request.json();
    const action = String(body.action || '');
    const db = getServiceSupabase();
    const audit = auditContextFromSession(session);

    if (action === 'save_group') {
      const plotIds = Array.isArray(body.plotIds)
        ? [...new Set(body.plotIds.map(String))]
        : [];
      const historicalNumber = String(body.historicalNumber || '').trim();
      const ownerName = String(body.ownerName || '').trim() || null;
      const notes = String(body.notes || '').trim() || null;
      const existingGroupId = body.ownershipGroupId ? String(body.ownershipGroupId) : null;

      if (!plotIds.length || !historicalNumber) {
        return NextResponse.json(
          { error: 'Select at least one plot and enter a historical number.' },
          { status: 400 },
        );
      }

      const { data: selectedPlots, error: selectedError } = await db
        .from('gh_map_plots')
        .select('id, block_id')
        .in('id', plotIds);
      if (selectedError) throw selectedError;
      if (!selectedPlots || selectedPlots.length !== plotIds.length) {
        return NextResponse.json({ error: 'One or more selected plots were not found.' }, { status: 400 });
      }
      if (new Set(selectedPlots.map((plot) => plot.block_id)).size !== 1) {
        return NextResponse.json({ error: 'An ownership group must remain inside one matrix block.' }, { status: 400 });
      }

      let ownershipGroupId = existingGroupId;
      if (ownershipGroupId) {
        const { error } = await db
          .from('gh_ownership_groups')
          .update({
            historical_number: historicalNumber,
            owner_name: ownerName,
            notes,
          })
          .eq('id', ownershipGroupId);
        if (error) throw error;

        const { error: clearError } = await db
          .from('gh_ownership_group_plots')
          .delete()
          .eq('ownership_group_id', ownershipGroupId);
        if (clearError) throw clearError;
      } else {
        const { data: created, error } = await db
          .from('gh_ownership_groups')
          .insert({
            historical_number: historicalNumber,
            owner_name: ownerName,
            notes,
            created_by: audit.userId || audit.userEmail || audit.userName,
          })
          .select()
          .single();
        if (error) throw error;
        ownershipGroupId = created.id;
      }

      const { error: detachError } = await db
        .from('gh_ownership_group_plots')
        .delete()
        .in('map_plot_id', plotIds);
      if (detachError) throw detachError;

      const { error: linkError } = await db
        .from('gh_ownership_group_plots')
        .insert(plotIds.map((mapPlotId) => ({
          ownership_group_id: ownershipGroupId,
          map_plot_id: mapPlotId,
        })));
      if (linkError) throw linkError;

      await writeAuditLog({
        table_name: 'gh_ownership_groups',
        record_id: ownershipGroupId as string,
        action: existingGroupId ? 'UPDATE' : 'CREATE',
        new_values: {
          historical_number: historicalNumber,
          owner_name: ownerName,
          plot_ids: plotIds,
        },
        summary: `G-H ownership ${historicalNumber} saved with ${plotIds.length} plot(s)`,
        changed_by_user_id: audit.userId,
        changed_by_name: audit.userName,
        changed_by_email: audit.userEmail,
        changed_by_role: audit.userRole,
      });

      return NextResponse.json({ ok: true, ownershipGroupId });
    }

    if (action === 'ungroup') {
      const plotIds = Array.isArray(body.plotIds)
        ? [...new Set(body.plotIds.map(String))]
        : [];
      if (!plotIds.length) {
        return NextResponse.json({ error: 'Select at least one plot.' }, { status: 400 });
      }

      const { error } = await db
        .from('gh_ownership_group_plots')
        .delete()
        .in('map_plot_id', plotIds);
      if (error) throw error;

      await writeAuditLog({
        table_name: 'gh_ownership_group_plots',
        record_id: plotIds[0],
        action: 'DELETE',
        old_values: { plot_ids: plotIds },
        summary: `${plotIds.length} G-H plot(s) removed from ownership grouping`,
        changed_by_user_id: audit.userId,
        changed_by_name: audit.userName,
        changed_by_email: audit.userEmail,
        changed_by_role: audit.userRole,
      });

      return NextResponse.json({ ok: true });
    }

    if (action === 'resize_block') {
      const blockId = String(body.blockId || '');
      const columnsCount = Number(body.columnsCount);
      if (!blockId || !Number.isInteger(columnsCount) || columnsCount < 1 || columnsCount > 12) {
        return NextResponse.json({ error: 'A valid block and width from 1 to 12 are required.' }, { status: 400 });
      }

      const { data: block, error: blockError } = await db
        .from('gh_map_blocks')
        .select('*')
        .eq('id', blockId)
        .single();
      if (blockError) throw blockError;

      const { data: existingPlots, error: existingError } = await db
        .from('gh_map_plots')
        .select('id, row_index, column_index, legacy_plot_id')
        .eq('block_id', blockId);
      if (existingError) throw existingError;

      const removed = (existingPlots || []).filter((plot) => plot.column_index > columnsCount);
      if (removed.length) {
        const removedIds = removed.map((plot) => plot.id);
        const { data: ownershipLinks, error: linkCheckError } = await db
          .from('gh_ownership_group_plots')
          .select('map_plot_id')
          .in('map_plot_id', removedIds);
        if (linkCheckError) throw linkCheckError;
        if ((ownershipLinks || []).length || removed.some((plot) => plot.legacy_plot_id)) {
          return NextResponse.json(
            { error: 'Remove ownership and burial links from the outside column before reducing this matrix.' },
            { status: 409 },
          );
        }
        const { error: removeError } = await db.from('gh_map_plots').delete().in('id', removedIds);
        if (removeError) throw removeError;
      }

      const additions: Array<{
        block_id: string;
        row_index: number;
        column_index: number;
        status: string;
      }> = [];
      for (let row = 1; row <= block.rows_count; row += 1) {
        for (let column = 1; column <= columnsCount; column += 1) {
          if (!(existingPlots || []).some((plot) => plot.row_index === row && plot.column_index === column)) {
            additions.push({
              block_id: blockId,
              row_index: row,
              column_index: column,
              status: blockId === 'A1' && column === 1 ? 'no_sell' : 'unverified',
            });
          }
        }
      }
      if (additions.length) {
        const { error: additionError } = await db.from('gh_map_plots').insert(additions);
        if (additionError) throw additionError;
      }

      const { error: resizeError } = await db
        .from('gh_map_blocks')
        .update({ columns_count: columnsCount, is_verified: true })
        .eq('id', blockId);
      if (resizeError) throw resizeError;

      await writeAuditLog({
        table_name: 'gh_map_blocks',
        record_id: blockId,
        action: 'UPDATE',
        new_values: { columns_count: columnsCount, is_verified: true },
        summary: `${blockId} resized to ${columnsCount}×${block.rows_count}`,
        changed_by_user_id: audit.userId,
        changed_by_name: audit.userName,
        changed_by_email: audit.userEmail,
        changed_by_role: audit.userRole,
      });

      return NextResponse.json({ ok: true });
    }

    if (action === 'link_legacy_plot') {
      const mapPlotId = String(body.mapPlotId || '');
      const legacyPlotId = body.legacyPlotId ? String(body.legacyPlotId) : null;
      if (!mapPlotId) return NextResponse.json({ error: 'mapPlotId is required.' }, { status: 400 });

      const { error } = await db
        .from('gh_map_plots')
        .update({ legacy_plot_id: legacyPlotId })
        .eq('id', mapPlotId);
      if (error) throw error;

      return NextResponse.json({ ok: true });
    }

    return NextResponse.json({ error: 'Unknown action.' }, { status: 400 });
  } catch (error: unknown) {
    const message = error instanceof Error ? error.message : 'Failed to update G-H layout';
    console.error('G-H layout POST failed:', error);
    return NextResponse.json({ error: message }, { status: 500 });
  }
}
