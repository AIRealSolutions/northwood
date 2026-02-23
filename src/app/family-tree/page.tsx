'use client';
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback, useRef, Suspense } from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';

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
const H_GAP  = 56;   // horizontal gap between sibling nodes
const V_GAP  = 120;  // vertical gap between generations

// ─── Relationship classification ─────────────────────────────────────────
// DOWNWARD: person_a is the ANCESTOR, person_b is the DESCENDANT
// i.e. person_a sits ABOVE person_b in the tree
const DOWNWARD_RELS = new Set([
  // Generic
  'parent', 'grandparent', 'great_grandparent', 'great_great_grandparent',
  'step_parent', 'adoptive_parent', 'parent_in_law', 'godparent', 'ancestor',
  // Specific paternal upline
  'father',
  'paternal_grandfather', 'paternal_grandmother',
  'paternal_great_grandfather', 'paternal_great_grandmother',
  'paternal_2x_great_grandfather', 'paternal_2x_great_grandmother',
  // Specific maternal upline
  'mother',
  'maternal_grandfather', 'maternal_grandmother',
  'maternal_great_grandfather', 'maternal_great_grandmother',
  'maternal_2x_great_grandfather', 'maternal_2x_great_grandmother',
]);
// UPWARD: person_a is the DESCENDANT, person_b is the ANCESTOR
// i.e. person_b sits ABOVE person_a in the tree
const UPWARD_RELS = new Set([
  // Generic
  'child', 'grandchild', 'great_grandchild', 'great_great_grandchild',
  'step_child', 'adoptive_child', 'child_in_law', 'godchild', 'descendant',
]);
const SPOUSE_RELS = new Set(['spouse', 'partner', 'in_law', 'sibling_in_law']);

// ─── Build parent→children and child→parents maps ────────────────────────────
function buildAdjacency(nodes: TreeNode[], relationships: TreeRelationship[]) {
  const nodeIds = new Set(nodes.map(n => n.id));
  // childrenOf[parentId] = [childId, ...]
  const childrenOf = new Map<string, string[]>();
  // parentsOf[childId]  = [parentId, ...]
  const parentsOf  = new Map<string, string[]>();
  for (const n of nodes) { childrenOf.set(n.id, []); parentsOf.set(n.id, []); }

  for (const rel of relationships) {
    if (SPOUSE_RELS.has(rel.relationship_type)) continue;
    let parentId: string | null = null;
    let childId:  string | null = null;

    if (DOWNWARD_RELS.has(rel.relationship_type)) {
      parentId = rel.person_a_id; childId = rel.person_b_id;
    } else if (UPWARD_RELS.has(rel.relationship_type)) {
      childId = rel.person_a_id; parentId = rel.person_b_id;
    }

    if (parentId && childId && nodeIds.has(parentId) && nodeIds.has(childId)) {
      if (!childrenOf.get(parentId)!.includes(childId))
        childrenOf.get(parentId)!.push(childId);
      if (!parentsOf.get(childId)!.includes(parentId))
        parentsOf.get(childId)!.push(parentId);
    }
  }
  return { childrenOf, parentsOf };
}

// ─── Spouse map: spouseOf[id] = [spouseId, ...] ───────────────────────────────
function buildSpouseMap(nodes: TreeNode[], relationships: TreeRelationship[]) {
  const spouseOf = new Map<string, string[]>();
  for (const n of nodes) spouseOf.set(n.id, []);
  for (const rel of relationships) {
    if (!SPOUSE_RELS.has(rel.relationship_type)) continue;
    const a = rel.person_a_id, b = rel.person_b_id;
    if (!spouseOf.get(a)!.includes(b)) spouseOf.get(a)!.push(b);
    if (!spouseOf.get(b)!.includes(a)) spouseOf.get(b)!.push(a);
  }
  return spouseOf;
}

/**
 * Full top-down hierarchical layout with dual-parent support.
 *
 * Strategy:
 *  1. Find the true root(s): nodes that have NO parents in the tree.
 *     If the user has pinned a rootId, use that; otherwise pick the node
 *     with the most descendants as the primary root.
 *  2. BFS to assign generation depths (row numbers).
 *  3. Post-order recursive x-positioning so each parent is centred over
 *     its children.  When two spouses share children, they are placed
 *     side-by-side and their children are centred under the couple.
 *  4. Orphan nodes (disconnected) go in a row below the main tree.
 */
function buildLayout(
  nodes: TreeNode[],
  relationships: TreeRelationship[],
  rootId?: string,
): LayoutNode[] {
  if (nodes.length === 0) return [];

  const nodeMap = new Map(nodes.map(n => [n.id, n]));
  const { childrenOf, parentsOf } = buildAdjacency(nodes, relationships);
  const spouseOf = buildSpouseMap(nodes, relationships);

  // ── Step 1: Choose root ───────────────────────────────────────────────────
  // Prefer the pinned rootId; otherwise use the node with no parents that
  // has the most descendants (i.e. the oldest known ancestor).
  let rootNodeId: string;
  if (rootId && nodeMap.has(rootId)) {
    rootNodeId = rootId;
  } else {
    // Find all nodes with no parents
    const roots = nodes.filter(n => (parentsOf.get(n.id) ?? []).length === 0);
    if (roots.length === 0) {
      rootNodeId = nodes[0].id;
    } else if (roots.length === 1) {
      rootNodeId = roots[0].id;
    } else {
      // Pick the root with the most descendants
      function countDesc(id: string, seen = new Set<string>()): number {
        if (seen.has(id)) return 0;
        seen.add(id);
        return (childrenOf.get(id) ?? []).reduce((s, c) => s + 1 + countDesc(c, seen), 0);
      }
      rootNodeId = roots.reduce((best, n) =>
        countDesc(n.id) >= countDesc(best.id) ? n : best
      ).id;
    }
  }

  // ── Step 2: BFS to assign depths ─────────────────────────────────────────
  // Spouses of a node share the same depth.
  const depth   = new Map<string, number>();
  const visited = new Set<string>();
  const bfsQueue: string[] = [rootNodeId];
  depth.set(rootNodeId, 0);
  visited.add(rootNodeId);

  while (bfsQueue.length > 0) {
    const cur = bfsQueue.shift()!;
    const d   = depth.get(cur)!;

    // Spread depth to spouses (same generation)
    for (const sp of spouseOf.get(cur) ?? []) {
      if (!visited.has(sp)) {
        visited.add(sp);
        depth.set(sp, d);
        bfsQueue.push(sp);
      }
    }
    // Spread depth to children (next generation)
    for (const child of childrenOf.get(cur) ?? []) {
      if (!visited.has(child)) {
        visited.add(child);
        depth.set(child, d + 1);
        bfsQueue.push(child);
      }
    }
  }

  // ── Step 3: Recursive x-positioning ──────────────────────────────────────
  // We build a "couple unit" concept: if two spouses share children, they
  // are treated as a single unit and their children are centred under them.
  let leafCounter = 0;
  const xPos = new Map<string, number>();
  const placed = new Set<string>();

  // Returns all children of a couple (union of both parents' children)
  function coupleChildren(aId: string, bId: string | null): string[] {
    const ac = childrenOf.get(aId) ?? [];
    if (!bId) return ac;
    const bc = childrenOf.get(bId) ?? [];
    return [...new Set([...ac, ...bc])];
  }

  function assignX(nodeId: string): void {
    if (placed.has(nodeId)) return;
    placed.add(nodeId);

    // Find this node's spouse (first spouse only for layout purposes)
    const spouses = spouseOf.get(nodeId) ?? [];
    const spouseId = spouses.length > 0 ? spouses[0] : null;

    // Mark spouse as placed too so we don't double-process
    if (spouseId) placed.add(spouseId);

    const children = coupleChildren(nodeId, spouseId);

    if (children.length === 0) {
      // Leaf couple (or single leaf)
      if (spouseId) {
        // Place as a pair side-by-side
        xPos.set(nodeId,   leafCounter * (NODE_W + H_GAP));
        xPos.set(spouseId, leafCounter * (NODE_W + H_GAP) + NODE_W + H_GAP);
        leafCounter += 2;
      } else {
        xPos.set(nodeId, leafCounter * (NODE_W + H_GAP));
        leafCounter++;
      }
    } else {
      // Recurse into children first
      for (const c of children) assignX(c);

      const firstX = xPos.get(children[0])!;
      const lastX  = xPos.get(children[children.length - 1])!;
      const midX   = (firstX + lastX) / 2;

      if (spouseId) {
        // Centre the couple over their children
        const coupleSpan = NODE_W + H_GAP; // space between the two parents
        xPos.set(nodeId,   midX - coupleSpan / 2);
        xPos.set(spouseId, midX + coupleSpan / 2);
      } else {
        xPos.set(nodeId, midX);
      }
    }
  }

  assignX(rootNodeId);

  // ── Step 4: Build LayoutNode list ─────────────────────────────────────────
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

  // ── Step 5: Orphan nodes below the main tree ──────────────────────────────
  const maxDepth = layout.reduce((m, n) => Math.max(m, n.generation), 0);
  let orphanCol = 0;
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

// ─── Compute dual-parent connectors ──────────────────────────────────────────
// Returns SVG path strings for the "marriage bar + drop to child" connectors.
// Each entry: { pathD, labelX, labelY, label, isSpouse }
interface EdgePath {
  key: string;
  pathD: string;
  labelX: number;
  labelY: number;
  label: string;
  isSpouse: boolean;
}

function buildEdgePaths(
  layout: LayoutNode[],
  relationships: TreeRelationship[],
): EdgePath[] {
  const layoutMap = new Map(layout.map(n => [n.id, n]));
  const { childrenOf, parentsOf } = buildAdjacency(layout as TreeNode[], relationships);
  const spouseOf = buildSpouseMap(layout as TreeNode[], relationships);

  const edges: EdgePath[] = [];
  const drawnChildren = new Set<string>(); // avoid duplicate child connectors

  // ── Spouse bars ───────────────────────────────────────────────────────────
  const drawnSpousePairs = new Set<string>();
  for (const rel of relationships) {
    if (!SPOUSE_RELS.has(rel.relationship_type)) continue;
    const pairKey = [rel.person_a_id, rel.person_b_id].sort().join('|');
    if (drawnSpousePairs.has(pairKey)) continue;
    drawnSpousePairs.add(pairKey);

    const a = layoutMap.get(rel.person_a_id);
    const b = layoutMap.get(rel.person_b_id);
    if (!a || !b) continue;

    // Draw horizontal dashed line between the two spouses at mid-card height
    const leftNode  = a.x <= b.x ? a : b;
    const rightNode = a.x <= b.x ? b : a;
    const midY = leftNode.y + NODE_H / 2;
    const x1   = leftNode.x  + NODE_W;
    const x2   = rightNode.x;

    edges.push({
      key: `spouse-${pairKey}`,
      pathD: `M ${x1} ${midY} L ${x2} ${midY}`,
      labelX: (x1 + x2) / 2,
      labelY: midY - 6,
      label: rel.relationship_type.replace(/_/g, ' '),
      isSpouse: true,
    });
  }

  // ── Parent→child connectors ───────────────────────────────────────────────
  for (const [childId, parents] of parentsOf.entries()) {
    if (parents.length === 0) continue;
    if (drawnChildren.has(childId)) continue;
    drawnChildren.add(childId);

    const childNode = layoutMap.get(childId);
    if (!childNode) continue;

    const childTopX = childNode.x + NODE_W / 2;
    const childTopY = childNode.y;

    if (parents.length === 1) {
      // Single parent: simple elbow connector
      const parentNode = layoutMap.get(parents[0]);
      if (!parentNode) continue;

      const pBotX = parentNode.x + NODE_W / 2;
      const pBotY = parentNode.y + NODE_H;
      const elbowY = pBotY + (childTopY - pBotY) * 0.5;

      edges.push({
        key: `child-${childId}-single`,
        pathD: `M ${pBotX} ${pBotY} L ${pBotX} ${elbowY} L ${childTopX} ${elbowY} L ${childTopX} ${childTopY}`,
        labelX: (pBotX + childTopX) / 2,
        labelY: elbowY - 4,
        label: '',
        isSpouse: false,
      });
    } else {
      // Two parents: find the marriage bar midpoint, then drop a line to child
      // The marriage bar is already drawn above; we just need the vertical drop.
      const p1 = layoutMap.get(parents[0]);
      const p2 = layoutMap.get(parents[1]);
      if (!p1 || !p2) continue;

      // Midpoint between the two parents at their bottom edge
      const p1BotX = p1.x + NODE_W / 2;
      const p2BotX = p2.x + NODE_W / 2;
      const barMidX = (p1BotX + p2BotX) / 2;
      // Use the marriage bar Y (mid-card) as the starting horizontal reference
      const barY    = p1.y + NODE_H / 2;
      const dropStartY = p1.y + NODE_H; // drop from bottom of parent cards
      const elbowY  = dropStartY + (childTopY - dropStartY) * 0.5;

      // Path: from marriage bar midpoint down to elbow, then to child top
      edges.push({
        key: `child-${childId}-dual`,
        pathD: `M ${barMidX} ${barY} L ${barMidX} ${elbowY} L ${childTopX} ${elbowY} L ${childTopX} ${childTopY}`,
        labelX: barMidX,
        labelY: elbowY - 4,
        label: '',
        isSpouse: false,
      });
      void dropStartY;
    }
  }

  return edges;
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
function FamilyTreeInner() {
  const searchParams = useSearchParams();
  const deceasedIdParam = searchParams.get('deceased_id');

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

  // Auto-select and center on the node matching deceased_id from URL param
  useEffect(() => {
    if (!deceasedIdParam || loading || nodes.length === 0) return;
    const match = nodes.find(n => n.deceased_id === deceasedIdParam);
    if (match) {
      setSelectedNode(match);
      setRootId(match.id);
    }
  }, [deceasedIdParam, loading, nodes]);

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    setSearch(searchInput);
    loadTree(searchInput);
  };

  // Build layout and edges
  const layout = buildLayout(nodes, relationships, rootId);
  const edgePaths = buildEdgePaths(layout, relationships);

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
                {/* Relationship edges — rendered below nodes */}
                {edgePaths.map(edge => (
                  <g key={edge.key}>
                    <path
                      d={edge.pathD}
                      fill="none"
                      stroke={edge.isSpouse ? '#f472b6' : '#6ee7b7'}
                      strokeWidth={edge.isSpouse ? 2 : 1.5}
                      strokeDasharray={edge.isSpouse ? '6,4' : undefined}
                      opacity={0.75}
                    />
                    {edge.label && (
                      <text
                        x={edge.labelX}
                        y={edge.labelY}
                        textAnchor="middle"
                        fontSize={9}
                        fill="#9ca3af"
                        fontFamily="system-ui, sans-serif"
                      >
                        {edge.label}
                      </text>
                    )}
                  </g>
                ))}

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

export default function FamilyTreePage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center min-h-screen text-gray-500">Loading family tree…</div>}>
      <FamilyTreeInner />
    </Suspense>
  );
}
