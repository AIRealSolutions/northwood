'use client';
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback, Suspense } from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';

// ─── Types ────────────────────────────────────────────────────────────────────
interface TreeNode {
  id: string;
  deceased_id?: string | null;
  plot_id?: string | null;
  first_name: string;
  middle_name?: string | null;
  last_name: string;
  maiden_name?: string | null;
  birth_year?: number | null;
  death_year?: number | null;
  is_living: boolean;
  gender?: string | null;
  status: string;
  deceased_records?: { id: string; plot_id: string } | null;
}

interface TreeRelationship {
  id: string;
  person_a_id: string;
  person_b_id: string;
  relationship_type: string;
  inverse_type?: string | null;
  notes?: string | null;
}

// ─── Helpers ──────────────────────────────────────────────────────────────────
function fullName(n: TreeNode) {
  const parts = [n.first_name, n.middle_name, n.last_name].filter(Boolean).join(' ');
  return n.maiden_name ? `${parts} (née ${n.maiden_name})` : parts;
}

function lifespan(n: TreeNode) {
  if (!n.birth_year && !n.death_year) return null;
  const b = n.birth_year ?? '?';
  const d = n.is_living ? 'present' : (n.death_year ?? '?');
  return `${b} – ${d}`;
}

function genderColor(g?: string | null) {
  if (g === 'male') return 'border-blue-400 bg-blue-50 dark:bg-blue-950/30';
  if (g === 'female') return 'border-pink-400 bg-pink-50 dark:bg-pink-950/30';
  return 'border-gray-300 bg-white dark:bg-gray-800';
}

function genderDot(g?: string | null) {
  if (g === 'male') return 'bg-blue-400';
  if (g === 'female') return 'bg-pink-400';
  return 'bg-gray-400';
}

function formatRelLabel(rel: string) {
  return rel.replace(/_/g, ' ').replace(/\b\w/g, c => c.toUpperCase());
}

// ─── Relationship adjacency builder ──────────────────────────────────────────
function buildMaps(nodes: TreeNode[], rels: TreeRelationship[]) {
  const nodeMap = new Map(nodes.map(n => [n.id, n]));

  // For each node: who are their parents, children, spouses, and other connections
  const parentsOf = new Map<string, { node: TreeNode; rel: string }[]>();
  const childrenOf = new Map<string, { node: TreeNode; rel: string }[]>();
  const spousesOf = new Map<string, { node: TreeNode; rel: string }[]>();
  const othersOf = new Map<string, { node: TreeNode; rel: string }[]>();

  const SPOUSE_TYPES = new Set(['spouse', 'domestic_partner', 'partner']);
  const PARENT_TYPES = new Set([
    'parent', 'father', 'mother', 'step_parent', 'adoptive_parent', 'godparent',
    'paternal_grandfather', 'paternal_grandmother', 'maternal_grandfather', 'maternal_grandmother',
    'paternal_great_grandfather', 'paternal_great_grandmother',
    'maternal_great_grandfather', 'maternal_great_grandmother',
    'paternal_2x_great_grandfather', 'paternal_2x_great_grandmother',
    'maternal_2x_great_grandfather', 'maternal_2x_great_grandmother',
    'grandparent', 'great_grandparent', 'great_great_grandparent', 'ancestor',
    'parent_in_law',
  ]);
  const CHILD_TYPES = new Set([
    'child', 'son', 'daughter', 'step_child', 'adoptive_child', 'godchild',
    'grandchild', 'great_grandchild', 'great_great_grandchild', 'descendant',
    'child_in_law',
  ]);

  function addTo(map: Map<string, { node: TreeNode; rel: string }[]>, id: string, entry: { node: TreeNode; rel: string }) {
    if (!map.has(id)) map.set(id, []);
    map.get(id)!.push(entry);
  }

  for (const rel of rels) {
    const a = nodeMap.get(rel.person_a_id);
    const b = nodeMap.get(rel.person_b_id);
    if (!a || !b) continue;

    const rType = rel.relationship_type;
    const iType = rel.inverse_type || rel.relationship_type;

    if (SPOUSE_TYPES.has(rType)) {
      addTo(spousesOf, a.id, { node: b, rel: rType });
      addTo(spousesOf, b.id, { node: a, rel: iType });
    } else if (PARENT_TYPES.has(rType)) {
      // person_a is parent of person_b  →  b's parent is a, a's child is b
      addTo(parentsOf, b.id, { node: a, rel: rType });
      addTo(childrenOf, a.id, { node: b, rel: iType });
    } else if (CHILD_TYPES.has(rType)) {
      // person_a is child of person_b  →  a's parent is b, b's child is a
      addTo(parentsOf, a.id, { node: b, rel: rType });
      addTo(childrenOf, b.id, { node: a, rel: iType });
    } else {
      // Siblings, cousins, aunts/uncles, etc.
      addTo(othersOf, a.id, { node: b, rel: rType });
      addTo(othersOf, b.id, { node: a, rel: iType });
    }
  }

  return { nodeMap, parentsOf, childrenOf, spousesOf, othersOf };
}

// ─── PersonCard ───────────────────────────────────────────────────────────────
function PersonCard({
  node,
  onClick,
  isFocused = false,
  size = 'md',
  relLabel,
}: {
  node: TreeNode;
  onClick: () => void;
  isFocused?: boolean;
  size?: 'sm' | 'md' | 'lg';
  relLabel?: string;
}) {
  const ls = lifespan(node);
  const plotId = node.plot_id ?? (node.deceased_records?.plot_id ?? null);

  const sizeClasses = {
    sm: 'p-2 min-w-[120px] max-w-[150px]',
    md: 'p-3 min-w-[150px] max-w-[180px]',
    lg: 'p-4 min-w-[180px] max-w-[220px]',
  };

  return (
    <div className="flex flex-col items-center gap-1">
      {relLabel && (
        <span className="text-xs text-gray-400 dark:text-gray-500 font-medium capitalize">
          {formatRelLabel(relLabel)}
        </span>
      )}
      <button
        onClick={onClick}
        className={`
          rounded-xl border-2 shadow-sm transition-all text-left w-full
          ${sizeClasses[size]}
          ${isFocused
            ? 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/40 shadow-emerald-200 dark:shadow-emerald-900 shadow-md ring-2 ring-emerald-300 dark:ring-emerald-700'
            : `${genderColor(node.gender)} hover:shadow-md hover:border-emerald-400 dark:hover:border-emerald-500`
          }
        `}
      >
        <div className="flex items-start gap-2">
          <div className={`w-2 h-2 rounded-full mt-1.5 flex-shrink-0 ${genderDot(node.gender)}`} />
          <div className="min-w-0">
            <p className={`font-bold leading-tight truncate ${size === 'lg' ? 'text-base' : 'text-sm'} ${isFocused ? 'text-emerald-900 dark:text-emerald-100' : 'text-gray-900 dark:text-white'}`}>
              {node.first_name} {node.last_name}
            </p>
            {node.maiden_name && (
              <p className="text-xs text-gray-400 dark:text-gray-500 truncate">née {node.maiden_name}</p>
            )}
            {ls && (
              <p className={`text-xs mt-0.5 ${isFocused ? 'text-emerald-700 dark:text-emerald-300' : 'text-gray-500 dark:text-gray-400'}`}>{ls}</p>
            )}
            {plotId && (
              <span className="inline-block mt-1 text-xs text-gray-400 dark:text-gray-500">⚰ In cemetery</span>
            )}
          </div>
        </div>
      </button>
    </div>
  );
}

// ─── CollapsibleSection ───────────────────────────────────────────────────────
function CollapsibleSection({
  title,
  count,
  defaultOpen = true,
  children,
  accentColor = 'gray',
}: {
  title: string;
  count: number;
  defaultOpen?: boolean;
  children: React.ReactNode;
  accentColor?: 'blue' | 'purple' | 'green' | 'rose' | 'amber' | 'teal' | 'gray';
}) {
  const [open, setOpen] = useState(defaultOpen);
  if (count === 0) return null;

  const colors = {
    blue: 'text-blue-700 dark:text-blue-300 border-blue-200 dark:border-blue-800',
    purple: 'text-purple-700 dark:text-purple-300 border-purple-200 dark:border-purple-800',
    green: 'text-emerald-700 dark:text-emerald-300 border-emerald-200 dark:border-emerald-800',
    rose: 'text-rose-700 dark:text-rose-300 border-rose-200 dark:border-rose-800',
    amber: 'text-amber-700 dark:text-amber-300 border-amber-200 dark:border-amber-800',
    teal: 'text-teal-700 dark:text-teal-300 border-teal-200 dark:border-teal-800',
    gray: 'text-gray-700 dark:text-gray-300 border-gray-200 dark:border-gray-700',
  };

  return (
    <div className={`border rounded-xl overflow-hidden ${colors[accentColor]}`}>
      <button
        onClick={() => setOpen(o => !o)}
        className="w-full flex items-center justify-between px-4 py-2.5 bg-white/60 dark:bg-gray-800/60 hover:bg-white/80 dark:hover:bg-gray-700/60 transition-colors"
      >
        <span className={`text-sm font-semibold ${colors[accentColor].split(' ')[0]}`}>
          {title}
          <span className="ml-2 text-xs font-normal opacity-60">{count}</span>
        </span>
        <span className="text-gray-400 text-xs">{open ? '▲' : '▼'}</span>
      </button>
      {open && (
        <div className="px-4 py-3 bg-white/40 dark:bg-gray-800/40">
          {children}
        </div>
      )}
    </div>
  );
}

// ─── Main pedigree view ───────────────────────────────────────────────────────
function FamilyTreePageInner() {
  const searchParams = useSearchParams();
  const deceasedIdParam = searchParams.get('deceased_id');

  const [nodes, setNodes] = useState<TreeNode[]>([]);
  const [relationships, setRelationships] = useState<TreeRelationship[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const [search, setSearch] = useState('');
  const [searchResults, setSearchResults] = useState<TreeNode[]>([]);
  const [showSearch, setShowSearch] = useState(false);

  const [focusedId, setFocusedId] = useState<string | null>(null);

  // Derived maps
  const [maps, setMaps] = useState<ReturnType<typeof buildMaps> | null>(null);

  // Load all nodes + relationships once
  const loadTree = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch('/api/family-tree');
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to load');
      const mappedNodes = (data.nodes || []).map((n: TreeNode) => ({
        ...n,
        plot_id: n.deceased_records?.plot_id ?? n.plot_id ?? null,
      }));
      setNodes(mappedNodes);
      setRelationships(data.relationships || []);
      setMaps(buildMaps(mappedNodes, data.relationships || []));
    } catch (err: any) {
      setError(err.message || 'Failed to load family tree');
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { loadTree(); }, [loadTree]);

  // Auto-focus on deceased_id param
  useEffect(() => {
    if (!deceasedIdParam || nodes.length === 0) return;
    const match = nodes.find(n => n.deceased_id === deceasedIdParam);
    if (match) setFocusedId(match.id);
  }, [deceasedIdParam, nodes]);

  // Default: focus on the first node if none selected
  useEffect(() => {
    if (!focusedId && nodes.length > 0 && !loading) {
      setFocusedId(nodes[0].id);
    }
  }, [nodes, loading, focusedId]);

  // Search
  useEffect(() => {
    if (!search.trim()) { setSearchResults([]); return; }
    const q = search.toLowerCase();
    setSearchResults(
      nodes.filter(n =>
        n.first_name.toLowerCase().includes(q) ||
        n.last_name.toLowerCase().includes(q) ||
        (n.maiden_name ?? '').toLowerCase().includes(q)
      ).slice(0, 12)
    );
  }, [search, nodes]);

  const focusedNode = focusedId ? maps?.nodeMap.get(focusedId) ?? null : null;
  const parents = focusedId ? (maps?.parentsOf.get(focusedId) ?? []) : [];
  const children = focusedId ? (maps?.childrenOf.get(focusedId) ?? []) : [];
  const spouses = focusedId ? (maps?.spousesOf.get(focusedId) ?? []) : [];
  const others = focusedId ? (maps?.othersOf.get(focusedId) ?? []) : [];

  // Group parents into paternal / maternal / unknown
  const paternalParents = parents.filter(p =>
    p.rel.includes('paternal') || p.rel === 'father'
  );
  const maternalParents = parents.filter(p =>
    p.rel.includes('maternal') || p.rel === 'mother'
  );
  const unknownParents = parents.filter(p =>
    !paternalParents.includes(p) && !maternalParents.includes(p)
  );

  // Group children
  const directChildren = children.filter(c =>
    ['child', 'son', 'daughter', 'adoptive_child', 'step_child', 'godchild'].includes(c.rel)
  );
  const grandchildren = children.filter(c =>
    c.rel.includes('grandchild') || c.rel.includes('great')
  );
  const otherDescendants = children.filter(c =>
    !directChildren.includes(c) && !grandchildren.includes(c)
  );

  function navigateTo(id: string) {
    setFocusedId(id);
    setSearch('');
    setSearchResults([]);
    setShowSearch(false);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  const plotId = focusedNode?.plot_id ?? (focusedNode?.deceased_records?.plot_id ?? null);

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-950">
      {/* Header */}
      <div className="bg-white dark:bg-gray-900 border-b border-gray-200 dark:border-gray-700 sticky top-0 z-20 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-3 flex items-center gap-3">
          <Link href="/" className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-sm">← Home</Link>
          <div className="h-4 w-px bg-gray-300 dark:bg-gray-600" />
          <h1 className="text-base font-bold text-emerald-800 dark:text-emerald-300 flex-1">
            🌳 Community Family Tree
          </h1>
          <span className="text-xs text-gray-400 dark:text-gray-500 hidden sm:block">
            {nodes.length} people · {relationships.length} connections
          </span>
          {/* Search toggle */}
          <div className="relative">
            <button
              onClick={() => setShowSearch(s => !s)}
              className="px-3 py-1.5 text-sm bg-gray-100 dark:bg-gray-700 hover:bg-gray-200 dark:hover:bg-gray-600 rounded-lg text-gray-700 dark:text-gray-200 font-medium transition-colors"
            >
              🔍 Search
            </button>
            {showSearch && (
              <div className="absolute right-0 top-full mt-1 w-72 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-xl shadow-xl z-30">
                <div className="p-2">
                  <input
                    autoFocus
                    type="text"
                    placeholder="Search by name…"
                    value={search}
                    onChange={e => setSearch(e.target.value)}
                    className="w-full px-3 py-2 text-sm border border-gray-200 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-700 text-gray-900 dark:text-white placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-emerald-400"
                  />
                </div>
                {searchResults.length > 0 && (
                  <div className="border-t border-gray-100 dark:border-gray-700 max-h-64 overflow-y-auto">
                    {searchResults.map(n => (
                      <button
                        key={n.id}
                        onClick={() => navigateTo(n.id)}
                        className="w-full text-left px-4 py-2.5 hover:bg-emerald-50 dark:hover:bg-emerald-900/20 transition-colors"
                      >
                        <p className="text-sm font-semibold text-gray-900 dark:text-white">{fullName(n)}</p>
                        {lifespan(n) && <p className="text-xs text-gray-400 dark:text-gray-500">{lifespan(n)}</p>}
                      </button>
                    ))}
                  </div>
                )}
                {search && searchResults.length === 0 && (
                  <div className="px-4 py-3 text-sm text-gray-400 dark:text-gray-500 border-t border-gray-100 dark:border-gray-700">
                    No results for "{search}"
                  </div>
                )}
              </div>
            )}
          </div>
          <Link
            href="/family-tree/submit"
            className="px-3 py-1.5 text-sm bg-emerald-700 hover:bg-emerald-800 text-white font-semibold rounded-lg transition-colors"
          >
            + Add Person
          </Link>
        </div>
      </div>

      {/* Body */}
      <div className="max-w-6xl mx-auto px-4 py-6">
        {loading && (
          <div className="flex items-center justify-center py-24">
            <div className="text-center">
              <div className="w-10 h-10 border-4 border-emerald-500 border-t-transparent rounded-full animate-spin mx-auto mb-3" />
              <p className="text-sm text-gray-500 dark:text-gray-400">Loading family tree…</p>
            </div>
          </div>
        )}

        {error && (
          <div className="bg-red-50 dark:bg-red-950/30 border border-red-200 dark:border-red-800 rounded-xl p-4 text-red-700 dark:text-red-300 text-sm">
            {error}
          </div>
        )}

        {!loading && !error && nodes.length === 0 && (
          <div className="text-center py-24">
            <div className="text-6xl mb-4">🌱</div>
            <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-2">The Community Family Tree is Empty</h2>
            <p className="text-gray-500 dark:text-gray-400 text-sm mb-6">Be the first to add a family connection to Northwood Cemetery.</p>
            <Link href="/family-tree/submit" className="inline-block px-5 py-2.5 bg-emerald-700 hover:bg-emerald-800 text-white font-semibold rounded-xl text-sm transition-colors">
              Add the First Connection
            </Link>
          </div>
        )}

        {!loading && !error && focusedNode && (
          <div className="flex flex-col lg:flex-row gap-6">

            {/* ── Left: Pedigree view ── */}
            <div className="flex-1 min-w-0 space-y-4">

              {/* Paternal upline */}
              {paternalParents.length > 0 && (
                <CollapsibleSection title="Paternal Line" count={paternalParents.length} defaultOpen accentColor="blue">
                  <div className="flex flex-wrap gap-3">
                    {paternalParents.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Maternal upline */}
              {maternalParents.length > 0 && (
                <CollapsibleSection title="Maternal Line" count={maternalParents.length} defaultOpen accentColor="purple">
                  <div className="flex flex-wrap gap-3">
                    {maternalParents.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Unknown-side parents */}
              {unknownParents.length > 0 && (
                <CollapsibleSection title="Parents" count={unknownParents.length} defaultOpen accentColor="teal">
                  <div className="flex flex-wrap gap-3">
                    {unknownParents.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Connector line */}
              {(parents.length > 0 || children.length > 0 || spouses.length > 0) && (
                <div className="flex justify-center">
                  <div className="w-px h-6 bg-emerald-300 dark:bg-emerald-700" />
                </div>
              )}

              {/* ── Focused person + spouses ── */}
              <div className="flex flex-wrap items-start justify-center gap-4">
                {/* Spouse(s) on left */}
                {spouses.slice(0, Math.ceil(spouses.length / 2)).map(({ node, rel }) => (
                  <div key={node.id} className="flex items-center gap-2">
                    <PersonCard node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="md" />
                    <div className="text-rose-400 text-lg font-bold">⚭</div>
                  </div>
                ))}

                {/* Focused person */}
                <PersonCard node={focusedNode} onClick={() => {}} isFocused size="lg" />

                {/* Spouse(s) on right */}
                {spouses.slice(Math.ceil(spouses.length / 2)).map(({ node, rel }) => (
                  <div key={node.id} className="flex items-center gap-2">
                    <div className="text-rose-400 text-lg font-bold">⚭</div>
                    <PersonCard node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="md" />
                  </div>
                ))}
              </div>

              {/* Connector line */}
              {(children.length > 0) && (
                <div className="flex justify-center">
                  <div className="w-px h-6 bg-emerald-300 dark:bg-emerald-700" />
                </div>
              )}

              {/* Direct children */}
              {directChildren.length > 0 && (
                <CollapsibleSection title="Children" count={directChildren.length} defaultOpen accentColor="green">
                  <div className="flex flex-wrap gap-3">
                    {directChildren.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Grandchildren */}
              {grandchildren.length > 0 && (
                <CollapsibleSection title="Grandchildren & Beyond" count={grandchildren.length} defaultOpen={false} accentColor="green">
                  <div className="flex flex-wrap gap-3">
                    {grandchildren.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Other descendants */}
              {otherDescendants.length > 0 && (
                <CollapsibleSection title="Other Descendants" count={otherDescendants.length} defaultOpen={false} accentColor="green">
                  <div className="flex flex-wrap gap-3">
                    {otherDescendants.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* Other connections (siblings, cousins, etc.) */}
              {others.length > 0 && (
                <CollapsibleSection title="Other Connections" count={others.length} defaultOpen={false} accentColor="amber">
                  <div className="flex flex-wrap gap-3">
                    {others.map(({ node, rel }) => (
                      <PersonCard key={node.id} node={node} onClick={() => navigateTo(node.id)} relLabel={rel} size="sm" />
                    ))}
                  </div>
                </CollapsibleSection>
              )}

              {/* No connections at all */}
              {parents.length === 0 && children.length === 0 && spouses.length === 0 && others.length === 0 && (
                <div className="text-center py-6 text-sm text-gray-400 dark:text-gray-500">
                  No family connections recorded yet for this person.
                  <br />
                  <Link href={`/family-tree/submit?anchor_id=${focusedNode.id}`} className="text-emerald-600 dark:text-emerald-400 hover:underline mt-1 inline-block">
                    + Add a connection
                  </Link>
                </div>
              )}
            </div>

            {/* ── Right: Detail sidebar ── */}
            <aside className="w-full lg:w-72 flex-shrink-0 space-y-4">
              {/* Person detail card */}
              <div className="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-xl p-5 shadow-sm">
                <div className="flex items-start justify-between mb-3">
                  <div>
                    <h2 className="text-base font-bold text-gray-900 dark:text-white leading-tight">
                      {focusedNode.first_name}
                      {focusedNode.middle_name ? ` ${focusedNode.middle_name}` : ''}{' '}
                      {focusedNode.last_name}
                    </h2>
                    {focusedNode.maiden_name && (
                      <p className="text-xs text-gray-400 dark:text-gray-500">née {focusedNode.maiden_name}</p>
                    )}
                  </div>
                  <span className={`px-2 py-0.5 rounded-full text-xs font-semibold ${
                    focusedNode.is_living
                      ? 'bg-blue-100 text-blue-800 dark:bg-blue-900/30 dark:text-blue-300'
                      : 'bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300'
                  }`}>
                    {focusedNode.is_living ? 'Living' : 'Deceased'}
                  </span>
                </div>

                <div className="space-y-2 text-sm">
                  {lifespan(focusedNode) && (
                    <div className="flex justify-between">
                      <span className="text-gray-500 dark:text-gray-400">Years</span>
                      <span className="font-medium text-gray-900 dark:text-white">{lifespan(focusedNode)}</span>
                    </div>
                  )}
                  {focusedNode.gender && focusedNode.gender !== 'unknown' && (
                    <div className="flex justify-between">
                      <span className="text-gray-500 dark:text-gray-400">Gender</span>
                      <span className="font-medium text-gray-900 dark:text-white capitalize">{focusedNode.gender}</span>
                    </div>
                  )}
                  <div className="flex justify-between">
                    <span className="text-gray-500 dark:text-gray-400">Connections</span>
                    <span className="font-medium text-gray-900 dark:text-white">
                      {parents.length + children.length + spouses.length + others.length}
                    </span>
                  </div>
                </div>

                <div className="mt-4 space-y-2">
                  {plotId && (
                    <Link
                      href={`/plot/${plotId}`}
                      className="block w-full text-center px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors"
                    >
                      ⚰ View Cemetery Record
                    </Link>
                  )}
                  <Link
                    href={`/family-tree/submit?anchor_id=${focusedNode.id}`}
                    className="block w-full text-center px-4 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 hover:bg-gray-50 dark:hover:bg-gray-600 text-gray-700 dark:text-gray-200 text-sm font-semibold rounded-xl transition-colors"
                  >
                    + Add Their Relative
                  </Link>
                </div>
              </div>

              {/* Browse all people */}
              <div className="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden shadow-sm">
                <div className="px-4 py-3 border-b border-gray-100 dark:border-gray-700">
                  <h3 className="text-sm font-semibold text-gray-700 dark:text-gray-300">Browse All People</h3>
                </div>
                <div className="max-h-72 overflow-y-auto divide-y divide-gray-50 dark:divide-gray-700">
                  {nodes.map(n => (
                    <button
                      key={n.id}
                      onClick={() => navigateTo(n.id)}
                      className={`w-full text-left px-4 py-2.5 transition-colors ${
                        n.id === focusedId
                          ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-800 dark:text-emerald-300'
                          : 'hover:bg-gray-50 dark:hover:bg-gray-700/50 text-gray-900 dark:text-white'
                      }`}
                    >
                      <p className="text-sm font-medium truncate">{n.first_name} {n.last_name}</p>
                      {lifespan(n) && <p className="text-xs text-gray-400 dark:text-gray-500">{lifespan(n)}</p>}
                    </button>
                  ))}
                </div>
              </div>

              {/* Legend */}
              <div className="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-xl p-4 shadow-sm text-xs space-y-2">
                <p className="font-semibold text-gray-700 dark:text-gray-300 mb-1">Legend</p>
                <div className="flex items-center gap-2">
                  <div className="w-3 h-3 rounded-full bg-blue-400 flex-shrink-0" />
                  <span className="text-gray-500 dark:text-gray-400">Male</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-3 h-3 rounded-full bg-pink-400 flex-shrink-0" />
                  <span className="text-gray-500 dark:text-gray-400">Female</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-3 h-3 rounded-full bg-gray-400 flex-shrink-0" />
                  <span className="text-gray-500 dark:text-gray-400">Gender unknown</span>
                </div>
                <div className="flex items-center gap-2">
                  <span className="text-gray-500">⚰</span>
                  <span className="text-gray-500 dark:text-gray-400">Has cemetery record</span>
                </div>
                <div className="flex items-center gap-2">
                  <span className="text-rose-400 font-bold">⚭</span>
                  <span className="text-gray-500 dark:text-gray-400">Spouse / Partner</span>
                </div>
              </div>
            </aside>
          </div>
        )}
      </div>
    </div>
  );
}

// ─── Suspense wrapper (required for useSearchParams) ─────────────────────────
export default function FamilyTreePage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-950">
        <div className="text-center">
          <div className="w-10 h-10 border-4 border-emerald-500 border-t-transparent rounded-full animate-spin mx-auto mb-3" />
          <p className="text-sm text-gray-500 dark:text-gray-400">Loading…</p>
        </div>
      </div>
    }>
      <FamilyTreePageInner />
    </Suspense>
  );
}
