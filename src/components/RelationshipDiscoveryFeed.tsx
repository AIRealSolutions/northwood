'use client';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';

// ─── Types ────────────────────────────────────────────────────────────────────

interface SharedConnection {
  plot_id: string;
  plot_number: string;
  section: string;
  deceased_id: string | null;
  deceased_name: string | null;
  their_relationship: string;
  my_relationship: string;
  inferred_connection: string;
}

interface Discovery {
  user_id: string;
  first_name: string | null;
  last_name: string | null;
  shared: SharedConnection[];
  latest_connection_at: string;
}

// ─── Helpers ──────────────────────────────────────────────────────────────────

function timeAgo(dateStr: string): string {
  const diff = Date.now() - new Date(dateStr).getTime();
  const mins = Math.floor(diff / 60000);
  if (mins < 1) return 'just now';
  if (mins < 60) return `${mins}m ago`;
  const hours = Math.floor(mins / 60);
  if (hours < 24) return `${hours}h ago`;
  const days = Math.floor(hours / 24);
  if (days < 7) return `${days}d ago`;
  return new Date(dateStr).toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' });
}

function getInitials(first: string | null, last: string | null): string {
  const f = (first || '').trim()[0] || '';
  const l = (last  || '').trim()[0] || '';
  return (f + l).toUpperCase() || '?';
}

function avatarColor(userId: string): string {
  const colors = [
    'bg-emerald-200 text-emerald-800',
    'bg-blue-200 text-blue-800',
    'bg-purple-200 text-purple-800',
    'bg-amber-200 text-amber-800',
    'bg-rose-200 text-rose-800',
    'bg-teal-200 text-teal-800',
    'bg-indigo-200 text-indigo-800',
    'bg-orange-200 text-orange-800',
  ];
  let hash = 0;
  for (let i = 0; i < userId.length; i++) hash = (hash * 31 + userId.charCodeAt(i)) & 0xffffffff;
  return colors[Math.abs(hash) % colors.length];
}

// ─── Discovery Card ───────────────────────────────────────────────────────────

function DiscoveryCard({ discovery }: { discovery: Discovery }) {
  const [expanded, setExpanded] = useState(false);
  const displayName = [discovery.first_name, discovery.last_name].filter(Boolean).join(' ') || 'Community Member';
  const initials = getInitials(discovery.first_name, discovery.last_name);
  const colorClass = avatarColor(discovery.user_id);

  // Primary shared connection (most specific — prefer deceased-linked ones)
  const primary = discovery.shared.find(s => s.deceased_name) || discovery.shared[0];
  const extraCount = discovery.shared.length - 1;

  return (
    <div className="bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 overflow-hidden hover:border-emerald-300 dark:hover:border-emerald-600 transition-colors">
      <div className="p-4">
        <div className="flex items-start gap-3">
          {/* Avatar */}
          <div className={`w-11 h-11 rounded-full flex items-center justify-center flex-shrink-0 text-sm font-bold ${colorClass}`}>
            {initials}
          </div>

          {/* Main content */}
          <div className="flex-1 min-w-0">
            <div className="flex items-start justify-between gap-2 flex-wrap">
              <div>
                <p className="font-semibold text-gray-900 dark:text-white text-sm leading-tight">
                  {displayName}
                </p>
                <p className="text-xs text-emerald-700 dark:text-emerald-400 font-medium mt-0.5">
                  🔗 {primary.inferred_connection}
                </p>
              </div>
              <span className="text-xs text-gray-400 dark:text-gray-500 flex-shrink-0">
                {timeAgo(discovery.latest_connection_at)}
              </span>
            </div>

            {/* Primary shared connection detail */}
            <div className="mt-2 p-2.5 bg-gray-50 dark:bg-gray-900 rounded-lg text-xs space-y-1">
              <p className="text-gray-600 dark:text-gray-400">
                <span className="font-medium text-gray-800 dark:text-gray-200">Both connected to:</span>{' '}
                {primary.deceased_name ? (
                  <Link
                    href={`/plot/${primary.plot_id}`}
                    className="text-emerald-700 dark:text-emerald-400 font-semibold hover:underline"
                  >
                    {primary.deceased_name}
                  </Link>
                ) : (
                  <Link
                    href={`/plot/${primary.plot_id}`}
                    className="text-emerald-700 dark:text-emerald-400 font-semibold hover:underline"
                  >
                    Plot {primary.plot_number}
                    {primary.section && ` (Section ${primary.section})`}
                  </Link>
                )}
              </p>
              <div className="flex flex-wrap gap-x-4 gap-y-0.5 text-gray-500 dark:text-gray-400">
                <span>
                  <span className="font-medium text-gray-700 dark:text-gray-300">You:</span>{' '}
                  {primary.my_relationship}
                </span>
                <span>
                  <span className="font-medium text-gray-700 dark:text-gray-300">Them:</span>{' '}
                  {primary.their_relationship}
                </span>
              </div>
            </div>

            {/* Extra shared connections */}
            {extraCount > 0 && (
              <div className="mt-2">
                <button
                  type="button"
                  onClick={() => setExpanded(e => !e)}
                  className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium"
                >
                  {expanded ? 'Hide' : `+${extraCount} more shared connection${extraCount > 1 ? 's' : ''}`}
                </button>
                {expanded && (
                  <div className="mt-2 space-y-1.5">
                    {discovery.shared.slice(1).map((s, i) => (
                      <div key={i} className="p-2 bg-gray-50 dark:bg-gray-900 rounded-lg text-xs space-y-0.5">
                        <p className="text-gray-600 dark:text-gray-400">
                          <span className="font-medium text-gray-800 dark:text-gray-200">Also connected to:</span>{' '}
                          {s.deceased_name ? (
                            <Link href={`/plot/${s.plot_id}`} className="text-emerald-700 dark:text-emerald-400 hover:underline font-semibold">
                              {s.deceased_name}
                            </Link>
                          ) : (
                            <Link href={`/plot/${s.plot_id}`} className="text-emerald-700 dark:text-emerald-400 hover:underline font-semibold">
                              Plot {s.plot_number}
                            </Link>
                          )}
                        </p>
                        <p className="text-gray-500 dark:text-gray-400">
                          You: {s.my_relationship} · Them: {s.their_relationship}
                        </p>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            )}
          </div>
        </div>
      </div>

      {/* Footer action */}
      <div className="px-4 py-2.5 bg-gray-50 dark:bg-gray-900 border-t border-gray-100 dark:border-gray-700 flex items-center justify-between">
        <Link
          href={`/plot/${primary.plot_id}`}
          className="text-xs text-blue-600 dark:text-blue-400 hover:underline font-medium"
        >
          View Plot →
        </Link>
        <Link
          href="/family-tree"
          className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium"
        >
          Explore Family Tree →
        </Link>
      </div>
    </div>
  );
}

// ─── Main Feed Component ──────────────────────────────────────────────────────

interface RelationshipDiscoveryFeedProps {
  /** If true, shows a compact preview (last 5) with "View More" link */
  compact?: boolean;
  /** Max items to show in compact mode (default 5) */
  previewCount?: number;
}

export default function RelationshipDiscoveryFeed({
  compact = false,
  previewCount = 5,
}: RelationshipDiscoveryFeedProps) {
  const [discoveries, setDiscoveries] = useState<Discovery[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(false);
  const [total, setTotal] = useState(0);
  const [showAll, setShowAll] = useState(!compact);

  const LIMIT = compact ? previewCount : 20;

  const fetchDiscoveries = useCallback(async (nextPage: number, append: boolean) => {
    try {
      const params = new URLSearchParams({ page: String(nextPage), limit: String(LIMIT) });
      const res = await fetch(`/api/connections/discover?${params}`);
      if (!res.ok) throw new Error('Failed to fetch');
      const data = await res.json();
      const newItems: Discovery[] = data.discoveries || [];

      if (append) {
        setDiscoveries(prev => [...prev, ...newItems]);
      } else {
        setDiscoveries(newItems);
      }
      setHasMore(data.has_more ?? false);
      setTotal(data.total ?? 0);
      setPage(nextPage);
    } catch (e) {
      console.error('Discovery feed error:', e);
    }
  }, [LIMIT]);

  useEffect(() => {
    setLoading(true);
    fetchDiscoveries(1, false).finally(() => setLoading(false));
  }, [fetchDiscoveries]);

  const handleLoadMore = async () => {
    setLoadingMore(true);
    await fetchDiscoveries(page + 1, true);
    setLoadingMore(false);
  };

  // ── Loading skeleton ──────────────────────────────────────────────────────
  if (loading) {
    return (
      <div className="space-y-3">
        <div className="flex items-center gap-2 mb-3">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            People You May Be Related To
          </h3>
        </div>
        {[1, 2, 3].map(i => (
          <div key={i} className="h-24 bg-gray-100 dark:bg-gray-800 rounded-xl animate-pulse" />
        ))}
      </div>
    );
  }

  // ── Empty state ───────────────────────────────────────────────────────────
  if (discoveries.length === 0) {
    return (
      <div className="bg-gradient-to-br from-emerald-50 to-green-50 dark:from-emerald-950/30 dark:to-green-950/30 border border-emerald-200 dark:border-emerald-800 rounded-xl p-5">
        <div className="flex items-center gap-2 mb-3">
          <span className="text-xl">🌳</span>
          <h3 className="text-sm font-bold text-emerald-800 dark:text-emerald-200">
            People You May Be Related To
          </h3>
        </div>
        <p className="text-sm text-gray-600 dark:text-gray-400 mb-4">
          Once you connect to cemetery plots, we&apos;ll find other community members who share the same
          family connections — people you may not have known you were related to.
        </p>
        <div className="flex flex-wrap gap-2">
          <Link
            href="/records"
            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-lg transition-colors"
          >
            Search Cemetery Records
          </Link>
          <Link
            href="/family-tree"
            className="px-4 py-2 border border-emerald-600 text-emerald-700 dark:text-emerald-400 hover:bg-emerald-50 dark:hover:bg-emerald-900/30 text-sm font-semibold rounded-lg transition-colors"
          >
            Explore Family Tree
          </Link>
        </div>
      </div>
    );
  }

  // ── Compact preview (dashboard widget) ───────────────────────────────────
  const displayedItems = compact && !showAll ? discoveries.slice(0, previewCount) : discoveries;

  return (
    <div>
      {/* Header */}
      <div className="flex items-center justify-between mb-3 flex-wrap gap-2">
        <div className="flex items-center gap-2">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            People You May Be Related To
          </h3>
          {total > 0 && (
            <span className="text-xs bg-emerald-100 dark:bg-emerald-900/50 text-emerald-700 dark:text-emerald-300 px-2 py-0.5 rounded-full font-medium">
              {total}
            </span>
          )}
        </div>
        <Link
          href="/family-tree"
          className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium"
        >
          View Full Tree →
        </Link>
      </div>

      {/* Discovery cards */}
      <div className="space-y-3">
        {displayedItems.map(d => (
          <DiscoveryCard key={d.user_id} discovery={d} />
        ))}
      </div>

      {/* Compact mode: show "View More" button */}
      {compact && !showAll && (discoveries.length > previewCount || hasMore) && (
        <div className="mt-3 text-center">
          <button
            type="button"
            onClick={() => {
              setShowAll(true);
              if (hasMore) handleLoadMore();
            }}
            className="px-5 py-2 bg-emerald-50 dark:bg-emerald-900/30 hover:bg-emerald-100 dark:hover:bg-emerald-900/50 border border-emerald-200 dark:border-emerald-700 text-emerald-700 dark:text-emerald-300 text-sm font-semibold rounded-xl transition-colors"
          >
            View More Potential Relatives →
          </button>
        </div>
      )}

      {/* Full mode: load more pagination */}
      {!compact && hasMore && (
        <div className="mt-4 text-center">
          <button
            type="button"
            onClick={handleLoadMore}
            disabled={loadingMore}
            className="px-6 py-2.5 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors disabled:opacity-50"
          >
            {loadingMore ? 'Loading…' : 'Load More'}
          </button>
        </div>
      )}

      {/* Explanatory footer */}
      <p className="mt-3 text-xs text-gray-400 dark:text-gray-500 text-center">
        Connections are inferred from shared cemetery records. Verify relationships with family members.
      </p>
    </div>
  );
}
