'use client';

import Link from 'next/link';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useCallback, useEffect, useMemo, useState } from 'react';

interface MapBlock {
  id: string;
  official_section: 'G' | 'H';
  official_subsection: 'G1' | 'G2' | 'H1' | 'H2';
  working_row: 'A' | 'B' | 'C' | 'D';
  block_number: number;
  columns_count: number;
  rows_count: number;
  lower_road: string;
  upper_road: string;
  is_verified: boolean;
}

interface MapPlot {
  id: string;
  block_id: string;
  row_index: number;
  column_index: number;
  status: 'unverified' | 'available' | 'reserved' | 'occupied' | 'no_sell';
  legacy_plot_id?: string | null;
}

interface OwnershipGroup {
  id: string;
  historical_number: string;
  owner_name?: string | null;
  notes?: string | null;
}

interface OwnershipLink {
  ownership_group_id: string;
  map_plot_id: string;
}

interface LayoutPayload {
  blocks: MapBlock[];
  plots: MapPlot[];
  ownershipGroups: OwnershipGroup[];
  ownershipLinks: OwnershipLink[];
}

const ROW_ORDER: Array<'D' | 'C' | 'B' | 'A'> = ['D', 'C', 'B', 'A'];
const ROAD_AFTER: Record<string, string> = {
  D: 'Hydrangea Street',
  C: 'Heather Street',
  B: 'Gladiola Street',
  A: 'Gardenia Street',
};
const ALLOWED_ROLES = new Set(['admin', 'superintendent', 'cemetery_committee']);

export default function GHLayoutEditorPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [data, setData] = useState<LayoutPayload>({
    blocks: [],
    plots: [],
    ownershipGroups: [],
    ownershipLinks: [],
  });
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');
  const [notice, setNotice] = useState('');
  const [selectedBlockId, setSelectedBlockId] = useState<string | null>(null);
  const [selectedPlotIds, setSelectedPlotIds] = useState<Set<string>>(new Set());
  const [editingGroupId, setEditingGroupId] = useState<string | null>(null);
  const [historicalNumber, setHistoricalNumber] = useState('');
  const [ownerName, setOwnerName] = useState('');
  const [notes, setNotes] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) {
      router.push('/auth/login?callbackUrl=/admin/cemetery-layout');
      return;
    }
    if (!ALLOWED_ROLES.has(session.user?.role || '')) router.push('/admin');
  }, [router, session, status]);

  const loadLayout = useCallback(async () => {
    try {
      setLoading(true);
      setError('');
      const response = await fetch('/api/admin/gh-layout', { cache: 'no-store' });
      const payload = await response.json();
      if (!response.ok) throw new Error(payload.error || 'Unable to load the G-H layout.');
      setData(payload);
    } catch (loadError: unknown) {
      setError(loadError instanceof Error ? loadError.message : 'Unable to load the G-H layout.');
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    if (session && ALLOWED_ROLES.has(session.user?.role || '')) loadLayout();
  }, [loadLayout, session]);

  const selectedBlock = useMemo(
    () => data.blocks.find((block) => block.id === selectedBlockId) || null,
    [data.blocks, selectedBlockId],
  );

  const plotsByBlock = useMemo(() => {
    const result: Record<string, MapPlot[]> = {};
    data.plots.forEach((plot) => {
      if (!result[plot.block_id]) result[plot.block_id] = [];
      result[plot.block_id].push(plot);
    });
    Object.values(result).forEach((plots) => {
      plots.sort((a, b) => a.row_index - b.row_index || a.column_index - b.column_index);
    });
    return result;
  }, [data.plots]);

  const groupById = useMemo(
    () => Object.fromEntries(data.ownershipGroups.map((group) => [group.id, group])),
    [data.ownershipGroups],
  );

  const linkByPlotId = useMemo(
    () => Object.fromEntries(data.ownershipLinks.map((link) => [link.map_plot_id, link.ownership_group_id])),
    [data.ownershipLinks],
  );

  const groupsForSelectedBlock = useMemo(() => {
    if (!selectedBlock) return [];
    const blockPlotIds = new Set((plotsByBlock[selectedBlock.id] || []).map((plot) => plot.id));
    return data.ownershipGroups.filter((group) =>
      data.ownershipLinks.some(
        (link) => link.ownership_group_id === group.id && blockPlotIds.has(link.map_plot_id),
      ),
    );
  }, [data.ownershipGroups, data.ownershipLinks, plotsByBlock, selectedBlock]);

  const openBlock = (blockId: string) => {
    setSelectedBlockId(blockId);
    setSelectedPlotIds(new Set());
    setEditingGroupId(null);
    setHistoricalNumber('');
    setOwnerName('');
    setNotes('');
    setError('');
    setNotice('');
  };

  const closeEditor = () => {
    setSelectedBlockId(null);
    setSelectedPlotIds(new Set());
    setEditingGroupId(null);
  };

  const togglePlot = (plotId: string) => {
    setNotice('');
    setSelectedPlotIds((current) => {
      const next = new Set(current);
      if (next.has(plotId)) next.delete(plotId);
      else next.add(plotId);
      return next;
    });
    setEditingGroupId(null);
  };

  const selectOwnershipGroup = (group: OwnershipGroup) => {
    const plotIds = data.ownershipLinks
      .filter((link) => link.ownership_group_id === group.id)
      .map((link) => link.map_plot_id);
    setSelectedPlotIds(new Set(plotIds));
    setEditingGroupId(group.id);
    setHistoricalNumber(group.historical_number);
    setOwnerName(group.owner_name || '');
    setNotes(group.notes || '');
    setNotice('');
  };

  const postAction = async (body: Record<string, unknown>) => {
    const response = await fetch('/api/admin/gh-layout', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    });
    const payload = await response.json();
    if (!response.ok) throw new Error(payload.error || 'The change could not be saved.');
    return payload;
  };

  const saveOwnership = async () => {
    if (!selectedPlotIds.size || !historicalNumber.trim()) {
      setError('Select one or more plots and enter the historical ownership number.');
      return;
    }
    try {
      setSaving(true);
      setError('');
      await postAction({
        action: 'save_group',
        ownershipGroupId: editingGroupId,
        plotIds: Array.from(selectedPlotIds),
        historicalNumber: historicalNumber.trim(),
        ownerName: ownerName.trim(),
        notes: notes.trim(),
      });
      await loadLayout();
      setSelectedPlotIds(new Set());
      setEditingGroupId(null);
      setHistoricalNumber('');
      setOwnerName('');
      setNotes('');
      setNotice('Ownership section saved to the cemetery database.');
    } catch (saveError: unknown) {
      setError(saveError instanceof Error ? saveError.message : 'The ownership section could not be saved.');
    } finally {
      setSaving(false);
    }
  };

  const separatePlots = async () => {
    if (!selectedPlotIds.size) {
      setError('Select at least one plot to separate.');
      return;
    }
    try {
      setSaving(true);
      setError('');
      await postAction({ action: 'ungroup', plotIds: Array.from(selectedPlotIds) });
      await loadLayout();
      setSelectedPlotIds(new Set());
      setEditingGroupId(null);
      setHistoricalNumber('');
      setOwnerName('');
      setNotes('');
      setNotice('Selected plots were separated and saved.');
    } catch (saveError: unknown) {
      setError(saveError instanceof Error ? saveError.message : 'The plots could not be separated.');
    } finally {
      setSaving(false);
    }
  };

  const resizeBlock = async (columnsCount: number) => {
    if (!selectedBlock) return;
    try {
      setSaving(true);
      setError('');
      await postAction({
        action: 'resize_block',
        blockId: selectedBlock.id,
        columnsCount,
      });
      await loadLayout();
      setNotice(`${selectedBlock.id} was saved as ${columnsCount}×${selectedBlock.rows_count}.`);
    } catch (saveError: unknown) {
      setError(saveError instanceof Error ? saveError.message : 'The matrix could not be resized.');
    } finally {
      setSaving(false);
    }
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-gray-600">Loading G-H ownership map…</div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 text-gray-900">
      <header className="bg-white border-b border-gray-200">
        <div className="px-4 py-4 flex flex-wrap items-center justify-between gap-3">
          <div>
            <Link href="/admin" className="text-sm text-emerald-700 hover:underline">
              ← Admin Dashboard
            </Link>
            <h1 className="text-2xl font-bold mt-1">G-H Addition Ownership Map</h1>
            <p className="text-sm text-gray-500">
              A-D are working matrix rows inside official Sections G and H.
            </p>
          </div>
          <div className="text-sm text-gray-600">
            One dot = one physical burial plot
          </div>
        </div>
      </header>

      <main className="p-4">
        {error && (
          <div className="mb-4 rounded-lg border border-red-300 bg-red-50 px-4 py-3 text-red-800">
            {error}
          </div>
        )}
        {notice && (
          <div className="mb-4 rounded-lg border border-emerald-300 bg-emerald-50 px-4 py-3 text-emerald-800">
            {notice}
          </div>
        )}

        <div className="bg-white rounded-xl border border-gray-200 shadow-sm overflow-x-auto pb-3">
          <div className="min-w-max p-4">
            {ROW_ORDER.map((row) => {
              const blocks = data.blocks
                .filter((block) => block.working_row === row)
                .sort((a, b) => a.block_number - b.block_number);
              const firstBlock = blocks[0]?.block_number || 1;
              return (
                <div key={row}>
                  <div className="flex items-baseline gap-3 mb-2">
                    <h2 className="font-bold">Working row {row}</h2>
                    <span className="text-xs text-gray-500">
                      {blocks[0]?.official_subsection} · {blocks[0]?.lower_road} to {blocks[0]?.upper_road}
                    </span>
                  </div>
                  <div className="flex gap-2 items-stretch">
                    {Array.from({ length: firstBlock - 1 }, (_, index) => {
                      const alignedBlock = data.blocks.find(
                        (block) => block.working_row === 'A' && block.block_number === index + 1,
                      );
                      const width = alignedBlock ? Math.max(64, alignedBlock.columns_count * 15 + 20) : 64;
                      return <div key={`spacer-${row}-${index}`} style={{ width }} className="shrink-0" />;
                    })}
                    {blocks.map((block) => {
                      const plots = plotsByBlock[block.id] || [];
                      const width = Math.max(64, block.columns_count * 15 + 20);
                      return (
                        <button
                          key={block.id}
                          type="button"
                          onClick={() => openBlock(block.id)}
                          style={{ width }}
                          className="shrink-0 rounded-lg border border-gray-300 bg-gray-50 p-2 text-left hover:border-emerald-500 hover:bg-emerald-50"
                        >
                          <div className="flex justify-between gap-2 text-xs font-semibold mb-2">
                            <span>{block.id}</span>
                            <span className={block.is_verified ? 'text-emerald-700' : 'text-amber-700'}>
                              {block.columns_count}×{block.rows_count}
                            </span>
                          </div>
                          <div
                            className="grid gap-1 justify-end"
                            style={{ gridTemplateColumns: `repeat(${block.columns_count}, 10px)` }}
                          >
                            {plots.map((plot) => {
                              const grouped = Boolean(linkByPlotId[plot.id]);
                              return (
                                <span
                                  key={plot.id}
                                  className={[
                                    'block w-2.5 h-2.5 rounded-full',
                                    plot.status === 'no_sell'
                                      ? 'border border-dashed border-gray-500 bg-transparent'
                                      : grouped
                                        ? 'bg-violet-600 ring-2 ring-violet-200'
                                        : 'bg-emerald-500',
                                  ].join(' ')}
                                />
                              );
                            })}
                          </div>
                        </button>
                      );
                    })}
                  </div>
                  <div className="my-3 border-y border-amber-300 bg-amber-50 px-3 py-1 text-sm font-medium text-amber-900">
                    {ROAD_AFTER[row]}
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </main>

      {selectedBlock && (
        <div className="fixed inset-0 z-50 bg-black/50 p-4 flex items-center justify-center">
          <section className="w-full max-w-3xl max-h-[calc(100vh-2rem)] overflow-y-auto rounded-xl bg-white shadow-2xl">
            <header className="sticky top-0 bg-white border-b border-gray-200 p-4 flex items-center justify-between gap-3">
              <div>
                <p className="text-xs uppercase tracking-wide text-gray-500">
                  Official {selectedBlock.official_subsection} · Working matrix
                </p>
                <h2 className="text-xl font-bold">
                  {selectedBlock.id} · {selectedBlock.columns_count}×{selectedBlock.rows_count}
                </h2>
              </div>
              <button type="button" onClick={closeEditor} className="px-3 py-2 rounded-lg bg-gray-100 hover:bg-gray-200">
                Close
              </button>
            </header>

            <div className="p-4">
              <div className="flex flex-wrap items-end gap-3 mb-5">
                <label className="text-sm font-medium">
                  Plots wide
                  <select
                    value={selectedBlock.columns_count}
                    onChange={(event) => resizeBlock(Number(event.target.value))}
                    disabled={saving}
                    className="block mt-1 rounded-lg border border-gray-300 px-3 py-2"
                  >
                    {Array.from({ length: 8 }, (_, index) => index + 1).map((value) => (
                      <option key={value} value={value}>{value}</option>
                    ))}
                  </select>
                </label>
                <p className="text-sm text-gray-500">
                  Select one plot for an individual number or several plots for one ownership section.
                </p>
              </div>

              <div
                className="grid gap-2 w-max mb-5"
                style={{ gridTemplateColumns: `repeat(${selectedBlock.columns_count}, 48px)` }}
              >
                {(plotsByBlock[selectedBlock.id] || []).map((plot) => {
                  const groupId = linkByPlotId[plot.id];
                  const group = groupId ? groupById[groupId] : null;
                  const selected = selectedPlotIds.has(plot.id);
                  return (
                    <button
                      key={plot.id}
                      type="button"
                      onClick={() => togglePlot(plot.id)}
                      className={[
                        'min-h-12 rounded-md border px-1 text-xs font-semibold',
                        selected
                          ? 'bg-emerald-600 text-white border-emerald-700'
                          : group
                            ? 'bg-violet-100 text-violet-900 border-violet-400'
                            : plot.status === 'no_sell'
                              ? 'bg-white border-dashed border-gray-500 text-gray-500'
                              : 'bg-gray-50 border-gray-300 hover:bg-emerald-50',
                      ].join(' ')}
                      aria-label={`${selectedBlock.id}, row ${plot.row_index}, column ${plot.column_index}`}
                    >
                      {group?.historical_number || '•'}
                    </button>
                  );
                })}
              </div>

              <p className="mb-4 text-sm font-medium text-gray-700">
                {selectedPlotIds.size
                  ? `${selectedPlotIds.size} plot${selectedPlotIds.size === 1 ? '' : 's'} selected`
                  : 'No plots selected'}
              </p>

              <div className="grid md:grid-cols-2 gap-3">
                <label className="text-sm font-medium">
                  Historical ownership number
                  <input
                    value={historicalNumber}
                    onChange={(event) => setHistoricalNumber(event.target.value)}
                    className="block w-full mt-1 rounded-lg border border-gray-300 px-3 py-2"
                    placeholder="Example: 214"
                  />
                </label>
                <label className="text-sm font-medium">
                  Owner or family
                  <input
                    value={ownerName}
                    onChange={(event) => setOwnerName(event.target.value)}
                    className="block w-full mt-1 rounded-lg border border-gray-300 px-3 py-2"
                    placeholder="Owner or family name"
                  />
                </label>
                <label className="md:col-span-2 text-sm font-medium">
                  Source or notes
                  <textarea
                    value={notes}
                    onChange={(event) => setNotes(event.target.value)}
                    className="block w-full mt-1 rounded-lg border border-gray-300 px-3 py-2"
                    rows={2}
                    placeholder="Deed, plat notation, correction, or research note"
                  />
                </label>
              </div>

              <div className="flex flex-wrap gap-2 my-4">
                <button
                  type="button"
                  onClick={saveOwnership}
                  disabled={saving}
                  className="rounded-lg bg-emerald-600 px-4 py-2 font-medium text-white hover:bg-emerald-700 disabled:opacity-50"
                >
                  {saving
                    ? 'Saving…'
                    : selectedPlotIds.size > 1
                      ? 'Join selected plots and save'
                      : 'Save plot ownership'}
                </button>
                <button
                  type="button"
                  onClick={separatePlots}
                  disabled={saving}
                  className="rounded-lg bg-gray-100 px-4 py-2 font-medium text-gray-800 hover:bg-gray-200 disabled:opacity-50"
                >
                  Separate selected plots
                </button>
              </div>

              {groupsForSelectedBlock.length > 0 && (
                <div className="border-t border-gray-200 pt-4">
                  <h3 className="font-semibold mb-2">Saved ownership sections</h3>
                  <div className="flex flex-wrap gap-2">
                    {groupsForSelectedBlock.map((group) => {
                      const count = data.ownershipLinks.filter(
                        (link) => link.ownership_group_id === group.id,
                      ).length;
                      return (
                        <button
                          key={group.id}
                          type="button"
                          onClick={() => selectOwnershipGroup(group)}
                          className="rounded-lg border border-violet-300 bg-violet-50 px-3 py-2 text-left text-sm hover:bg-violet-100"
                        >
                          <span className="font-semibold">{group.historical_number}</span>
                          {group.owner_name ? <span> · {group.owner_name}</span> : null}
                          <span className="text-gray-500"> · {count} plot{count === 1 ? '' : 's'}</span>
                        </button>
                      );
                    })}
                  </div>
                </div>
              )}
            </div>
          </section>
        </div>
      )}
    </div>
  );
}
