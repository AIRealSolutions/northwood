'use client';
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback, useRef } from 'react';
import Link from 'next/link';

// ─── Types ────────────────────────────────────────────────────────────────────
interface TreeNode {
  id: string;
  deceased_id?: string | null;
  first_name: string;
  middle_name?: string | null;
  last_name: string;
  maiden_name?: string | null;
  birth_year?: number | null;
  death_year?: number | null;
  is_living: boolean;
  gender?: string | null;
  status: string;
}

interface TreeRelationship {
  id: string;
  person_a_id: string;
  person_b_id: string;
  relationship_type: string;
  inverse_type?: string | null;
  notes?: string | null;
}

interface LayoutNode extends TreeNode {
  x: number;
  y: number;
  generation: number;
  col: number;
}

// ─── Layout constants ─────────────────────────────────────────────────────────
const NODE_W = 160;
const NODE_H = 72;
const H_GAP  = 48;   // horizontal gap between sibling nodes
const V_GAP  = 110;  // vertical gap between generations

// ─── Relationship classification ─────────────────────────────────────────────
// "downward" means person_a is the PARENT and person_b is the CHILD
const DOWNWARD_RELS = new Set([
  'parent',           // person_a is parent of person_b
  'grandparent',
  'great_grandparent',
  'great_great_grandparent',
  'step_parent',
]);
// "upward" means person_a is the CHILD and person_b is the PARENT
const UPWARD_RELS = new Set([
  'child',
  'grandchild',
  'great_grandchild',
  'great_great_grandchild',
  'step_child',
]);
const SPOUSE_RELS = new Set(['spouse', 'in_law']);

/**
 * Returns the children (downward) of a given node id.
 * person_a -[parent]-> person_b  ⟹  person_b is child of person_a
 * person_a -[child]->  person_b  ⟹  person_b is parent of person_a  (person_a is child)
 */
function getChildren(nodeId: string, relationships: TreeRelationship[]): string[] {
  const children: string[] = [];
  for (const rel of relationships) {
    if (rel.person_a_id === nodeId && DOWNWARD_RELS.has(rel.relationship_type)) {
      // person_a is parent → person_b is child
      children.push(rel.person_b_id);
    } else if (rel.person_b_id === nodeId && UPWARD_RELS.has(rel.relationship_type)) {
      // person_a is child → person_b (=nodeId) is parent → person_a is child
      children.push(rel.person_a_id);
    } else if (rel.person_a_id === nodeId && UPWARD_RELS.has(rel.relationship_type)) {
      // person_a -[child]-> person_b means person_a IS the child, person_b is parent
      // so person_b has person_a as a child — handled by the inverse above
    } else if (rel.person_b_id === nodeId && DOWNWARD_RELS.has(rel.relationship_type)) {
      // person_a -[parent]-> person_b(=nodeId) means person_a is the parent
      // so nodeId's children are NOT here
    }
  }
  return children;
}

/**
 * Reingold-Tilford style recursive layout.
 *
 * 1. Build a spanning tree rooted at `rootId` using parent→child edges.
 * 2. Recursively assign x positions so that each subtree is centred over
 *    its children, and siblings are spaced H_GAP apart.
 * 3. Disconnected nodes (not reachable from root) are placed in a separate
 *    row below the main tree.
 */
function buildLayout(
  nodes: TreeNode[],
  relationships: TreeRelationship[],
  rootId?: string,
): LayoutNode[] {
  if (nodes.length === 0) return [];

  const nodeMap = new Map(nodes.map(n => [n.id, n]));
  const root = (rootId ? nodeMap.get(rootId) : null) ?? nodes[0];

  // ── Step 1: Build parent→children adjacency, respecting direction ──────────
  // For the spanning tree we only follow "downward" edges so the tree flows
  // top-to-bottom.  Spouse edges are drawn separately and don't affect depth.
  const childrenOf = new Map<string, string[]>();
  const hasParent   = new Set<string>();

  for (const n of nodes) childrenOf.set(n.id, []);

  for (const rel of relationships) {
    if (SPOUSE_RELS.has(rel.relationship_type)) continue;

    let parentId: string | null = null;
    let childId:  string | null = null;

    if (DOWNWARD_RELS.has(rel.relationship_type)) {
      // person_a is the parent, person_b is the child
      parentId = rel.person_a_id;
      childId  = rel.person_b_id;
    } else if (UPWARD_RELS.has(rel.relationship_type)) {
      // person_a is the child, person_b is the parent
      childId  = rel.person_a_id;
      parentId = rel.person_b_id;
    }

    if (parentId && childId && nodeMap.has(parentId) && nodeMap.has(childId)) {
      if (!hasParent.has(childId)) {
        // Only assign one parent per node to keep it a tree (first wins)
        childrenOf.get(parentId)!.push(childId);
        hasParent.add(childId);
      }
    }
  }

  // ── Step 2: BFS from root to assign depths ────────────────────────────────
  const depth  = new Map<string, number>();
  const visited = new Set<string>();
  const queue: string[] = [root.id];
  depth.set(root.id, 0);
  visited.add(root.id);

  while (queue.length > 0) {
    const cur = queue.shift()!;
    const d   = depth.get(cur)!;
    for (const child of childrenOf.get(cur) ?? []) {
      if (!visited.has(child)) {
        visited.add(child);
        depth.set(child, d + 1);
        queue.push(child);
      }
    }
  }

  // ── Step 3: Recursive x-positioning (post-order) ─────────────────────────
  // Each leaf gets a unique slot; each internal node is centred over its children.
  let leafCounter = 0;
  const xPos = new Map<string, number>();

  function assignX(nodeId: string): void {
    const children = childrenOf.get(nodeId) ?? [];
    if (children.length === 0) {
      // Leaf: assign next slot
      xPos.set(nodeId, leafCounter * (NODE_W + H_GAP));
      leafCounter++;
    } else {
      for (const c of children) assignX(c);
      const firstX = xPos.get(children[0])!;
      const lastX  = xPos.get(children[children.length - 1])!;
      xPos.set(nodeId, (firstX + lastX) / 2);
    }
  }

  assignX(root.id);

  // ── Step 4: Build LayoutNode list for reachable nodes ────────────────────
  const layout: LayoutNode[] = [];
  for (const [id, d] of depth.entries()) {
    const node = nodeMap.get(id)!;
    layout.push({
      ...node,
      generation: d,
      col: 0,
      x: xPos.get(id) ?? 0,
      y: d * (NODE_H + V_GAP),
    });
  }

  // ── Step 5: Place disconnected nodes below the main tree ─────────────────
  const maxDepth = layout.reduce((m, n) => Math.max(m, n.generation), 0);
  let orphanCol   = 0;
  for (const n of nodes) {
    if (!visited.has(n.id)) {
      layout.push({
        ...n,
        generation: maxDepth + 2,
        col: orphanCol,
        x: orphanCol * (NODE_W + H_GAP),
        y: (maxDepth + 2) * (NODE_H + V_GAP),
      });
      orphanCol++;
    }
  }

  return layout;
}

// ─── Node card component ──────────────────────────────────────────────────────
function NodeCard({
  node,
  selected,
  onClick,
}: {
  node: LayoutNode;
  selected: boolean;
  onClick: () => void;
}) {
  const isDeceased = !node.is_living;
  const years =
    node.birth_year || node.death_year
      ? `${node.birth_year ?? '?'} – ${node.death_year ?? (isDeceased ? '?' : 'Living')}`
      : isDeceased ? 'Deceased' : 'Living';

  return (
    <g
      transform={`translate(${node.x},${node.y})`}
      onClick={onClick}
      style={{ cursor: 'pointer' }}
    >
      {/* Shadow */}
      <rect
        x={2} y={3}
        width={NODE_W} height={NODE_H}
        rx={10} ry={10}
        fill="rgba(0,0,0,0.08)"
      />
      {/* Card background */}
      <rect
        x={0} y={0}
        width={NODE_W} height={NODE_H}
        rx={10} ry={10}
        fill={selected ? '#065f46' : isDeceased ? '#f0fdf4' : '#eff6ff'}
        stroke={selected ? '#059669' : isDeceased ? '#6ee7b7' : '#93c5fd'}
        strokeWidth={selected ? 2.5 : 1.5}
      />
      {/* Gender indicator stripe */}
      <rect
        x={0} y={0}
        width={6} height={NODE_H}
        rx={10} ry={0}
        fill={
          node.gender === 'male' ? '#3b82f6'
          : node.gender === 'female' ? '#ec4899'
          : '#9ca3af'
        }
      />
      {/* Cemetery icon for deceased-in-system */}
      {node.deceased_id && (
        <text x={NODE_W - 14} y={16} fontSize={11} fill="#6b7280">⚰</text>
      )}
      {/* Name */}
      <text
        x={14} y={26}
        fontSize={12}
        fontWeight="bold"
        fill={selected ? '#ffffff' : '#111827'}
        fontFamily="system-ui, sans-serif"
      >
        {`${node.first_name} ${node.last_name}`.length > 18
          ? `${node.first_name} ${node.last_name}`.slice(0, 17) + '…'
          : `${node.first_name} ${node.last_name}`}
      </text>
      {/* Maiden name */}
      {node.maiden_name && (
        <text x={14} y={40} fontSize={10} fill={selected ? '#a7f3d0' : '#6b7280'} fontFamily="system-ui, sans-serif">
          née {node.maiden_name}
        </text>
      )}
      {/* Years */}
      <text
        x={14}
        y={node.maiden_name ? 54 : 44}
        fontSize={10}
        fill={selected ? '#d1fae5' : '#6b7280'}
        fontFamily="system-ui, sans-serif"
      >
        {years}
      </text>
      {/* Living badge */}
      {node.is_living && (
        <text x={14} y={62} fontSize={9} fill={selected ? '#a7f3d0' : '#2563eb'} fontFamily="system-ui, sans-serif">
          Living
        </text>
      )}
    </g>
  );
}

// ─── Main page ────────────────────────────────────────────────────────────────
export default function FamilyTreePage() {
  const [nodes, setNodes] = useState<TreeNode[]>([]);
  const [relationships, setRelationships] = useState<TreeRelationship[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [search, setSearch] = useState('');
  const [searchInput, setSearchInput] = useState('');
  const [selectedNode, setSelectedNode] = useState<TreeNode | null>(null);
  const [rootId, setRootId] = useState<string | undefined>();
  const svgRef = useRef<SVGSVGElement>(null);

  // Pan / zoom state
  const [viewBox, setViewBox] = useState({ x: 0, y: 0, w: 1200, h: 700 });
  const isPanning = useRef(false);
  const panStart = useRef({ x: 0, y: 0, vx: 0, vy: 0 });

  const loadTree = useCallback(async (searchTerm?: string) => {
    setLoading(true);
    setError('');
    try {
      const url = searchTerm
        ? `/api/family-tree?search=${encodeURIComponent(searchTerm)}`
        : '/api/family-tree';
      const res = await fetch(url);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to load');
      setNodes(data.nodes || []);
      setRelationships(data.relationships || []);
    } catch (err: any) {
      setError(err.message || 'Failed to load family tree');
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { loadTree(); }, [loadTree]);

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    setSearch(searchInput);
    loadTree(searchInput);
  };

  // Build layout
  const layout = buildLayout(nodes, relationships, rootId);

  // Calculate SVG dimensions
  const maxX = layout.reduce((m, n) => Math.max(m, n.x + NODE_W), 0) + H_GAP;
  const maxY = layout.reduce((m, n) => Math.max(m, n.y + NODE_H), 0) + V_GAP;
  const svgW = Math.max(maxX + 80, 800);
  const svgH = Math.max(maxY + 80, 500);

  // Get relationships for a node
  const getNodeRelationships = (nodeId: string) =>
    relationships.filter(r => r.person_a_id === nodeId || r.person_b_id === nodeId);

  const getNodeById = (id: string) => nodes.find(n => n.id === id);

  // Pan handlers
  const onMouseDown = (e: React.MouseEvent<SVGSVGElement>) => {
    if ((e.target as Element).closest('g[data-node]')) return;
    isPanning.current = true;
    panStart.current = { x: e.clientX, y: e.clientY, vx: viewBox.x, vy: viewBox.y };
  };
  const onMouseMove = (e: React.MouseEvent<SVGSVGElement>) => {
    if (!isPanning.current) return;
    const dx = ((panStart.current.x - e.clientX) / (svgRef.current?.clientWidth || 1)) * viewBox.w;
    const dy = ((panStart.current.y - e.clientY) / (svgRef.current?.clientHeight || 1)) * viewBox.h;
    setViewBox(v => ({ ...v, x: panStart.current.vx + dx, y: panStart.current.vy + dy }));
  };
  const onMouseUp = () => { isPanning.current = false; };
  const onWheel = (e: React.WheelEvent<SVGSVGElement>) => {
    e.preventDefault();
    const factor = e.deltaY > 0 ? 1.1 : 0.9;
    setViewBox(v => ({
      x: v.x + (v.w * (1 - factor)) / 2,
      y: v.y + (v.h * (1 - factor)) / 2,
      w: v.w * factor,
      h: v.h * factor,
    }));
  };

  // Reset view
  const resetView = () => setViewBox({ x: -40, y: -40, w: svgW + 80, h: svgH + 80 });

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex flex-col">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 shadow-sm flex-shrink-0">
        <div className="max-w-7xl mx-auto px-4 py-3 flex flex-col sm:flex-row sm:items-center gap-3">
          <div className="flex items-center gap-3 flex-1">
            <Link href="/" className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-sm">
              ← Home
            </Link>
            <span className="text-gray-300 dark:text-gray-600">|</span>
            <h1 className="text-lg font-bold text-gray-900 dark:text-white">🌳 Northwood Family Tree</h1>
          </div>
          <div className="flex items-center gap-2">
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchInput}
                onChange={e => setSearchInput(e.target.value)}
                placeholder="Search by name…"
                className="border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent w-44"
              />
              <button
                type="submit"
                className="px-3 py-1.5 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors"
              >
                Search
              </button>
              {search && (
                <button
                  type="button"
                  onClick={() => { setSearchInput(''); setSearch(''); loadTree(); }}
                  className="px-3 py-1.5 bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 text-gray-700 dark:text-gray-200 text-sm font-semibold rounded-xl transition-colors"
                >
                  Clear
                </button>
              )}
            </form>
            <Link
              href="/family-tree/submit"
              className="px-3 py-1.5 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors whitespace-nowrap"
            >
              + Add Connection
            </Link>
          </div>
        </div>
      </header>

      <div className="flex flex-1 overflow-hidden">
        {/* Tree canvas */}
        <div className="flex-1 relative overflow-hidden">
          {loading && (
            <div className="absolute inset-0 flex items-center justify-center bg-white/80 dark:bg-gray-900/80 z-10">
              <div className="text-center">
                <div className="text-4xl mb-3 animate-pulse">🌳</div>
                <p className="text-gray-600 dark:text-gray-400 text-sm">Loading family tree…</p>
              </div>
            </div>
          )}

          {error && (
            <div className="absolute inset-0 flex items-center justify-center z-10">
              <div className="bg-red-50 dark:bg-red-900/30 border border-red-200 dark:border-red-700 rounded-xl p-6 max-w-sm text-center">
                <p className="text-red-700 dark:text-red-300 text-sm mb-3">{error}</p>
                <button onClick={() => loadTree()} className="px-4 py-2 bg-red-600 text-white text-sm rounded-lg hover:bg-red-700">
                  Retry
                </button>
              </div>
            </div>
          )}

          {!loading && !error && nodes.length === 0 && (
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="text-center max-w-md px-6">
                <div className="text-6xl mb-4">🌱</div>
                <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-2">
                  {search ? `No results for "${search}"` : 'The Family Tree is Empty'}
                </h2>
                <p className="text-gray-500 dark:text-gray-400 text-sm mb-6">
                  {search
                    ? 'Try a different name or clear the search.'
                    : 'Be the first to add a family connection to Northwood Cemetery.'}
                </p>
                <Link
                  href="/family-tree/submit"
                  className="inline-block px-5 py-2.5 bg-emerald-700 hover:bg-emerald-800 text-white font-semibold rounded-xl text-sm transition-colors"
                >
                  Add the First Connection
                </Link>
              </div>
            </div>
          )}

          {!loading && !error && nodes.length > 0 && (
            <>
              {/* Controls */}
              <div className="absolute top-3 left-3 z-10 flex flex-col gap-1.5">
                <button
                  onClick={() => setViewBox(v => ({ ...v, w: v.w * 0.85, h: v.h * 0.85 }))}
                  className="w-8 h-8 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-lg text-gray-700 dark:text-gray-200 text-lg font-bold shadow-sm hover:bg-gray-50 flex items-center justify-center"
                  title="Zoom in"
                >+</button>
                <button
                  onClick={() => setViewBox(v => ({ ...v, w: v.w * 1.15, h: v.h * 1.15 }))}
                  className="w-8 h-8 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-lg text-gray-700 dark:text-gray-200 text-lg font-bold shadow-sm hover:bg-gray-50 flex items-center justify-center"
                  title="Zoom out"
                >−</button>
                <button
                  onClick={resetView}
                  className="w-8 h-8 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-lg text-gray-700 dark:text-gray-200 text-xs shadow-sm hover:bg-gray-50 flex items-center justify-center"
                  title="Reset view"
                >⊡</button>
              </div>

              {/* Legend */}
              <div className="absolute bottom-3 left-3 z-10 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-600 rounded-xl p-3 shadow-sm text-xs space-y-1.5">
                <p className="font-semibold text-gray-700 dark:text-gray-300 mb-1">Legend</p>
                <div className="flex items-center gap-2">
                  <div className="w-4 h-4 rounded bg-green-50 border border-green-300 flex-shrink-0" />
                  <span className="text-gray-600 dark:text-gray-400">Deceased (in cemetery)</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-4 h-4 rounded bg-blue-50 border border-blue-300 flex-shrink-0" />
                  <span className="text-gray-600 dark:text-gray-400">Living family member</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-1.5 h-4 rounded bg-blue-500 flex-shrink-0" />
                  <span className="text-gray-600 dark:text-gray-400">Male</span>
                </div>
                <div className="flex items-center gap-2">
                  <div className="w-1.5 h-4 rounded bg-pink-500 flex-shrink-0" />
                  <span className="text-gray-600 dark:text-gray-400">Female</span>
                </div>
                <div className="flex items-center gap-2">
                  <span className="text-gray-500">⚰</span>
                  <span className="text-gray-600 dark:text-gray-400">Has cemetery record</span>
                </div>
              </div>

              <svg
                ref={svgRef}
                viewBox={`${viewBox.x} ${viewBox.y} ${viewBox.w} ${viewBox.h}`}
                width="100%"
                height="100%"
                style={{ cursor: isPanning.current ? 'grabbing' : 'grab', userSelect: 'none' }}
                onMouseDown={onMouseDown}
                onMouseMove={onMouseMove}
                onMouseUp={onMouseUp}
                onMouseLeave={onMouseUp}
                onWheel={onWheel}
              >
                {/* Relationship edges */}
                {relationships.map(rel => {
                  const a = layout.find(n => n.id === rel.person_a_id);
                  const b = layout.find(n => n.id === rel.person_b_id);
                  if (!a || !b) return null;

                  const isSpouse = SPOUSE_RELS.has(rel.relationship_type);
                  const sameRow  = Math.abs(a.y - b.y) < 10;

                  // Determine which node is the parent (higher up = smaller y)
                  const top    = a.y <= b.y ? a : b;
                  const bottom = a.y <= b.y ? b : a;

                  const topCx    = top.x    + NODE_W / 2;
                  const topCy    = top.y    + NODE_H;
                  const bottomCx = bottom.x + NODE_W / 2;
                  const bottomCy = bottom.y;

                  // Elbow connector: vertical down from parent, then horizontal, then vertical to child
                  const elbowY = topCy + (bottomCy - topCy) * 0.45;

                  let pathD: string;
                  if (isSpouse || sameRow) {
                    // Horizontal link between same-generation nodes
                    const leftX  = Math.min(a.x + NODE_W, b.x + NODE_W);
                    const rightX = Math.max(a.x, b.x);
                    const midX   = (leftX + rightX) / 2;
                    const midY   = a.y + NODE_H / 2;
                    pathD = `M ${a.x + NODE_W} ${midY} L ${b.x} ${midY}`;
                    void midX; // suppress unused warning
                  } else {
                    // Elbow: down from parent centre, across, then down to child centre
                    pathD = `M ${topCx} ${topCy} L ${topCx} ${elbowY} L ${bottomCx} ${elbowY} L ${bottomCx} ${bottomCy}`;
                  }

                  return (
                    <g key={rel.id}>
                      <path
                        d={pathD}
                        fill="none"
                        stroke={isSpouse ? '#f472b6' : '#6ee7b7'}
                        strokeWidth={1.5}
                        strokeDasharray={isSpouse ? '5,3' : undefined}
                        opacity={0.7}
                      />
                      {/* Relationship label near midpoint */}
                      <text
                        x={(a.x + NODE_W / 2 + b.x + NODE_W / 2) / 2}
                        y={isSpouse || sameRow ? a.y + NODE_H / 2 - 6 : elbowY - 4}
                        textAnchor="middle"
                        fontSize={9}
                        fill="#9ca3af"
                        fontFamily="system-ui, sans-serif"
                      >
                        {rel.relationship_type.replace(/_/g, ' ')}
                      </text>
                    </g>
                  );
                })}

                {/* Nodes */}
                {layout.map(node => (
                  <g key={node.id} data-node="true">
                    <NodeCard
                      node={node}
                      selected={selectedNode?.id === node.id}
                      onClick={() => setSelectedNode(prev => prev?.id === node.id ? null : node)}
                    />
                  </g>
                ))}
              </svg>
            </>
          )}
        </div>

        {/* Side panel — selected node details */}
        {selectedNode && (
          <aside className="w-72 flex-shrink-0 bg-white dark:bg-gray-800 border-l border-gray-200 dark:border-gray-700 overflow-y-auto">
            <div className="p-5">
              <div className="flex items-start justify-between mb-4">
                <div>
                  <h2 className="text-base font-bold text-gray-900 dark:text-white">
                    {selectedNode.first_name}{' '}
                    {selectedNode.middle_name ? `${selectedNode.middle_name} ` : ''}
                    {selectedNode.last_name}
                  </h2>
                  {selectedNode.maiden_name && (
                    <p className="text-xs text-gray-500 dark:text-gray-400">née {selectedNode.maiden_name}</p>
                  )}
                </div>
                <button
                  onClick={() => setSelectedNode(null)}
                  className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-lg leading-none"
                >
                  ×
                </button>
              </div>

              {/* Status badge */}
              <div className="mb-4">
                <span className={`inline-block px-2.5 py-0.5 rounded-full text-xs font-semibold ${
                  selectedNode.is_living
                    ? 'bg-blue-100 text-blue-800 dark:bg-blue-900/30 dark:text-blue-300'
                    : 'bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300'
                }`}>
                  {selectedNode.is_living ? 'Living' : 'Deceased'}
                </span>
                {selectedNode.deceased_id && (
                  <span className="ml-2 inline-block px-2.5 py-0.5 rounded-full text-xs font-semibold bg-gray-100 text-gray-700 dark:bg-gray-700 dark:text-gray-300">
                    In Cemetery
                  </span>
                )}
              </div>

              {/* Details */}
              <div className="space-y-2 text-sm mb-5">
                {(selectedNode.birth_year || selectedNode.death_year) && (
                  <div className="flex justify-between">
                    <span className="text-gray-500 dark:text-gray-400">Years</span>
                    <span className="text-gray-900 dark:text-white font-medium">
                      {selectedNode.birth_year ?? '?'} – {selectedNode.death_year ?? (selectedNode.is_living ? 'Present' : '?')}
                    </span>
                  </div>
                )}
                {selectedNode.gender && selectedNode.gender !== 'unknown' && (
                  <div className="flex justify-between">
                    <span className="text-gray-500 dark:text-gray-400">Gender</span>
                    <span className="text-gray-900 dark:text-white font-medium capitalize">{selectedNode.gender}</span>
                  </div>
                )}
              </div>

              {/* Relationships */}
              <div>
                <h3 className="text-xs font-semibold text-gray-500 dark:text-gray-400 uppercase tracking-wide mb-2">
                  Connections
                </h3>
                {getNodeRelationships(selectedNode.id).length === 0 ? (
                  <p className="text-xs text-gray-400 dark:text-gray-500">No connections yet.</p>
                ) : (
                  <div className="space-y-2">
                    {getNodeRelationships(selectedNode.id).map(rel => {
                      const isA = rel.person_a_id === selectedNode.id;
                      const otherId = isA ? rel.person_b_id : rel.person_a_id;
                      const other = getNodeById(otherId);
                      const label = isA ? rel.relationship_type : (rel.inverse_type || rel.relationship_type);
                      return (
                        <button
                          key={rel.id}
                          onClick={() => {
                            const otherNode = nodes.find(n => n.id === otherId);
                            if (otherNode) setSelectedNode(otherNode);
                          }}
                          className="w-full text-left px-3 py-2 bg-gray-50 dark:bg-gray-700 hover:bg-emerald-50 dark:hover:bg-emerald-900/20 rounded-lg transition-colors"
                        >
                          <p className="text-xs text-gray-500 dark:text-gray-400 capitalize">
                            {label.replace(/_/g, ' ')} of
                          </p>
                          <p className="text-sm font-semibold text-gray-900 dark:text-white">
                            {other ? `${other.first_name} ${other.last_name}` : 'Unknown'}
                          </p>
                        </button>
                      );
                    })}
                  </div>
                )}
              </div>

              {/* Actions */}
              <div className="mt-5 space-y-2">
                {selectedNode.deceased_id && (
                  <Link
                    href={`/plot/${selectedNode.deceased_id}`}
                    className="block w-full text-center px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors"
                  >
                    View Cemetery Record
                  </Link>
                )}
                <Link
                  href={`/family-tree/submit?anchor_id=${selectedNode.id}`}
                  className="block w-full text-center px-4 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 hover:bg-gray-50 text-gray-700 dark:text-gray-200 text-sm font-semibold rounded-xl transition-colors"
                >
                  + Add Their Relative
                </Link>
                <button
                  onClick={() => setRootId(prev => prev === selectedNode.id ? undefined : selectedNode.id)}
                  className="w-full px-4 py-2 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 hover:bg-gray-50 text-gray-700 dark:text-gray-200 text-sm font-semibold rounded-xl transition-colors"
                >
                  {rootId === selectedNode.id ? 'Reset Layout' : 'Center Tree on This Person'}
                </button>
              </div>
            </div>
          </aside>
        )}
      </div>

      {/* Stats bar */}
      {!loading && nodes.length > 0 && (
        <div className="bg-white dark:bg-gray-800 border-t border-gray-200 dark:border-gray-700 px-4 py-2 flex items-center gap-6 text-xs text-gray-500 dark:text-gray-400 flex-shrink-0">
          <span><strong className="text-gray-900 dark:text-white">{nodes.length}</strong> people</span>
          <span><strong className="text-gray-900 dark:text-white">{relationships.length}</strong> connections</span>
          <span><strong className="text-gray-900 dark:text-white">{nodes.filter(n => !n.is_living).length}</strong> deceased</span>
          <span><strong className="text-gray-900 dark:text-white">{nodes.filter(n => n.is_living).length}</strong> living</span>
          <span className="ml-auto">Scroll to zoom · Drag to pan · Click a person for details</span>
        </div>
      )}
    </div>
  );
}
