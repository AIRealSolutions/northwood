'use client';

/**
 * RecentConnectionsFeed
 *
 * Shows the most recent approved community connections in the cemetery's
 * family tree — last 5 by default with a "View More" option that expands
 * to show all-time activity.
 *
 * This is the dashboard-friendly version of CommunityFamilyTreeFeed.
 */

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';

interface FeedItem {
  id: string;
  type: 'new_person' | 'new_connection';
  created_at: string;
  submitted_by: string;
  // new_person
  person_name?: string;
  maiden_name?: string | null;
  birth_year?: number | null;
  death_year?: number | null;
  is_living?: boolean;
  deceased_id?: string | null;
  plot_id?: string | null;
  family_tree_node_id?: string;
  // new_connection
  person_a_name?: string;
  person_b_name?: string;
  relationship_type?: string;
  inverse_type?: string | null;
  person_a_plot_id?: string | null;
  person_b_plot_id?: string | null;
}

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

function FeedItemRow({ item }: { item: FeedItem }) {
  if (item.type === 'new_person') {
    return (
      <div className="flex items-start gap-3 py-3 border-b border-gray-100 dark:border-gray-700 last:border-0">
        <div className="mt-0.5 w-8 h-8 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 text-sm">
          👤
        </div>
        <div className="flex-1 min-w-0">
          <p className="text-sm text-gray-800 dark:text-gray-200 leading-snug">
            <span className="font-semibold">{item.person_name}</span>
            {item.maiden_name && (
              <span className="text-gray-500 dark:text-gray-400"> (née {item.maiden_name})</span>
            )}
            {(item.birth_year || item.death_year) && (
              <span className="text-gray-500 dark:text-gray-400">
                {' '}· {item.birth_year ?? '?'}–{item.death_year ?? (item.is_living ? 'Present' : '?')}
              </span>
            )}
            <span className="text-gray-500 dark:text-gray-400"> was added to the Community Tree</span>
          </p>
          <div className="flex flex-wrap items-center gap-3 mt-1">
            <span className="text-xs text-gray-400 dark:text-gray-500">
              by {item.submitted_by} · {timeAgo(item.created_at)}
            </span>
            {item.plot_id && (
              <Link href={`/plot/${item.plot_id}`}
                className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium">
                View Plot →
              </Link>
            )}
          </div>
        </div>
      </div>
    );
  }

  // new_connection
  return (
    <div className="flex items-start gap-3 py-3 border-b border-gray-100 dark:border-gray-700 last:border-0">
      <div className="mt-0.5 w-8 h-8 rounded-full bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center flex-shrink-0 text-sm">
        🔗
      </div>
      <div className="flex-1 min-w-0">
        <p className="text-sm text-gray-800 dark:text-gray-200 leading-snug">
          {item.person_a_plot_id ? (
            <Link href={`/plot/${item.person_a_plot_id}`}
              className="font-semibold text-emerald-700 dark:text-emerald-400 hover:underline">
              {item.person_a_name}
            </Link>
          ) : (
            <span className="font-semibold">{item.person_a_name}</span>
          )}
          <span className="text-gray-500 dark:text-gray-400">
            {' '}was connected as{' '}
            <em className="not-italic font-medium text-gray-700 dark:text-gray-300">
              {item.relationship_type?.replace(/_/g, ' ')}
            </em>
            {' '}of{' '}
          </span>
          {item.person_b_plot_id ? (
            <Link href={`/plot/${item.person_b_plot_id}`}
              className="font-semibold text-emerald-700 dark:text-emerald-400 hover:underline">
              {item.person_b_name}
            </Link>
          ) : (
            <span className="font-semibold">{item.person_b_name}</span>
          )}
        </p>
        <div className="flex flex-wrap items-center gap-3 mt-1">
          <span className="text-xs text-gray-400 dark:text-gray-500">
            by {item.submitted_by} · {timeAgo(item.created_at)}
          </span>
        </div>
      </div>
    </div>
  );
}

interface RecentConnectionsFeedProps {
  /** Number of items to show initially (default 5) */
  previewCount?: number;
}

export default function RecentConnectionsFeed({ previewCount = 5 }: RecentConnectionsFeedProps) {
  const [items, setItems] = useState<FeedItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(false);
  const [total, setTotal] = useState(0);
  const [expanded, setExpanded] = useState(false);

  const fetchItems = useCallback(async (nextPage: number, append: boolean, allTime: boolean) => {
    try {
      const params = new URLSearchParams({
        page: String(nextPage),
        limit: String(expanded || allTime ? 10 : previewCount),
        all_time: 'true', // always show all-time in dashboard widget
      });
      const res = await fetch(`/api/news-feed?${params}`);
      const data = await res.json();
      const newItems: FeedItem[] = data.items || [];

      if (append) {
        setItems(prev => [...prev, ...newItems]);
      } else {
        setItems(newItems);
      }
      setHasMore(data.has_more ?? false);
      setTotal(data.total ?? 0);
      setPage(nextPage);
    } catch (e) {
      console.error('Recent connections feed error:', e);
    }
  }, [expanded, previewCount]);

  useEffect(() => {
    setLoading(true);
    fetchItems(1, false, true).finally(() => setLoading(false));
  }, []);  // eslint-disable-line react-hooks/exhaustive-deps

  const handleViewMore = async () => {
    setExpanded(true);
    if (hasMore) {
      setLoadingMore(true);
      // Re-fetch with larger limit
      const params = new URLSearchParams({ page: '1', limit: '20', all_time: 'true' });
      try {
        const res = await fetch(`/api/news-feed?${params}`);
        const data = await res.json();
        setItems(data.items || []);
        setHasMore(data.has_more ?? false);
        setTotal(data.total ?? 0);
        setPage(1);
      } catch (e) {
        console.error(e);
      } finally {
        setLoadingMore(false);
      }
    }
  };

  const handleLoadMore = async () => {
    setLoadingMore(true);
    const params = new URLSearchParams({ page: String(page + 1), limit: '10', all_time: 'true' });
    try {
      const res = await fetch(`/api/news-feed?${params}`);
      const data = await res.json();
      setItems(prev => [...prev, ...(data.items || [])]);
      setHasMore(data.has_more ?? false);
      setPage(p => p + 1);
    } catch (e) {
      console.error(e);
    } finally {
      setLoadingMore(false);
    }
  };

  if (loading) {
    return (
      <div className="space-y-3">
        <div className="flex items-center gap-2 mb-3">
          <span className="inline-block w-2 h-2 rounded-full bg-purple-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-purple-700 dark:text-purple-400">
            Recent Community Connections
          </h3>
        </div>
        {[1, 2, 3].map(i => (
          <div key={i} className="h-14 bg-gray-100 dark:bg-gray-800 rounded-lg animate-pulse" />
        ))}
      </div>
    );
  }

  if (items.length === 0) {
    return (
      <div className="bg-purple-50 dark:bg-purple-950/20 border border-purple-200 dark:border-purple-800 rounded-xl p-5">
        <div className="flex items-center gap-2 mb-2">
          <span className="inline-block w-2 h-2 rounded-full bg-purple-500" />
          <h3 className="text-sm font-bold text-purple-800 dark:text-purple-200">
            Recent Community Connections
          </h3>
        </div>
        <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
          No connections have been added to the community tree yet. Be the first!
        </p>
        <Link
          href="/records"
          className="inline-block px-4 py-2 bg-purple-700 hover:bg-purple-800 text-white text-sm font-semibold rounded-lg transition-colors"
        >
          Connect to a Plot
        </Link>
      </div>
    );
  }

  const displayedItems = expanded ? items : items.slice(0, previewCount);

  return (
    <div className="bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700">
      {/* Header */}
      <div className="px-5 py-4 border-b border-gray-100 dark:border-gray-700 flex items-center justify-between flex-wrap gap-2">
        <div className="flex items-center gap-2">
          <span className="inline-block w-2 h-2 rounded-full bg-purple-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-purple-700 dark:text-purple-400">
            Recent Community Connections
          </h3>
          {total > 0 && (
            <span className="text-xs bg-purple-100 dark:bg-purple-900/50 text-purple-700 dark:text-purple-300 px-2 py-0.5 rounded-full font-medium">
              {total} total
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

      {/* Items */}
      <div className="px-5">
        {displayedItems.map(item => (
          <FeedItemRow key={item.id} item={item} />
        ))}
      </div>

      {/* Footer */}
      <div className="px-5 py-3 border-t border-gray-100 dark:border-gray-700">
        {!expanded && (items.length > previewCount || hasMore) ? (
          <button
            type="button"
            onClick={handleViewMore}
            disabled={loadingMore}
            className="w-full py-2 text-sm font-semibold text-purple-700 dark:text-purple-300 hover:text-purple-900 dark:hover:text-purple-100 transition-colors disabled:opacity-50"
          >
            {loadingMore ? 'Loading…' : `View More Recent Connections →`}
          </button>
        ) : expanded && hasMore ? (
          <button
            type="button"
            onClick={handleLoadMore}
            disabled={loadingMore}
            className="w-full py-2 text-sm font-semibold text-purple-700 dark:text-purple-300 hover:text-purple-900 dark:hover:text-purple-100 transition-colors disabled:opacity-50"
          >
            {loadingMore ? 'Loading…' : 'Load More →'}
          </button>
        ) : (
          <p className="text-xs text-center text-gray-400 dark:text-gray-500">
            All connections shown
          </p>
        )}
      </div>
    </div>
  );
}
