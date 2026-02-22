'use client';
import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';

interface FeedItem {
  id: string;
  type: 'new_person' | 'new_connection';
  created_at: string;
  submitted_by: string;
  // new_person fields
  person_name?: string;
  maiden_name?: string | null;
  birth_year?: number | null;
  death_year?: number | null;
  is_living?: boolean;
  deceased_id?: string | null;
  plot_id?: string | null;
  family_tree_node_id?: string;
  // new_connection fields
  person_a_name?: string;
  person_b_name?: string;
  relationship_type?: string;
  inverse_type?: string | null;
  person_a_plot_id?: string | null;
  person_b_plot_id?: string | null;
  family_tree_node_a_id?: string;
  family_tree_node_b_id?: string;
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
  return new Date(dateStr).toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
}

const LIMIT = 10;

export default function CommunityFamilyTreeFeed() {
  const [items, setItems] = useState<FeedItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(false);
  const [allTime, setAllTime] = useState(false);
  const [todayEmpty, setTodayEmpty] = useState(false);

  const fetchItems = useCallback(async (nextPage: number, isAllTime: boolean, append: boolean) => {
    try {
      const params = new URLSearchParams({
        page: String(nextPage),
        limit: String(LIMIT),
        all_time: String(isAllTime),
      });
      const res = await fetch(`/api/news-feed?${params}`);
      const data = await res.json();
      const newItems: FeedItem[] = data.items || [];

      if (append) {
        setItems(prev => [...prev, ...newItems]);
      } else {
        setItems(newItems);
        // If today has no items, auto-switch to all-time silently
        if (!isAllTime && newItems.length === 0) {
          setTodayEmpty(true);
        }
      }
      setHasMore(data.has_more ?? false);
      setPage(nextPage);
    } catch (e) {
      console.error(e);
    }
  }, []);

  // Initial load — today only
  useEffect(() => {
    setLoading(true);
    fetchItems(1, false, false).finally(() => setLoading(false));
  }, [fetchItems]);

  // When user switches to all-time
  const handleShowAllTime = async () => {
    setAllTime(true);
    setTodayEmpty(false);
    setLoadingMore(true);
    await fetchItems(1, true, false);
    setLoadingMore(false);
  };

  const handleLoadMore = async () => {
    setLoadingMore(true);
    await fetchItems(page + 1, allTime, true);
    setLoadingMore(false);
  };

  if (loading) {
    return (
      <div className="w-full rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-900 p-5">
        <div className="flex items-center gap-2 mb-4">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            Community Family Tree — Today&apos;s Activity
          </h3>
        </div>
        <div className="space-y-3">
          {[1, 2, 3].map(i => (
            <div key={i} className="h-14 bg-gray-100 dark:bg-gray-800 rounded-lg animate-pulse" />
          ))}
        </div>
      </div>
    );
  }

  // No items today and not yet switched to all-time — show prompt
  if (todayEmpty && !allTime) {
    return (
      <div className="w-full rounded-xl border border-emerald-200 dark:border-emerald-800 bg-emerald-50 dark:bg-emerald-950/30 p-5">
        <div className="flex items-center gap-2 mb-3">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            Community Family Tree
          </h3>
        </div>
        <p className="text-sm text-gray-600 dark:text-gray-400 mb-4">
          No new connections have been added today yet. Be the first — or browse all-time activity below.
        </p>
        <div className="flex flex-wrap gap-2">
          <button
            onClick={handleShowAllTime}
            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-lg transition-colors"
          >
            {loadingMore ? 'Loading…' : 'View All-Time Activity'}
          </button>
          <Link href="/auth/register"
            className="px-4 py-2 border border-emerald-600 text-emerald-700 dark:text-emerald-400 hover:bg-emerald-50 dark:hover:bg-emerald-900/30 text-sm font-semibold rounded-lg transition-colors">
            Register to Contribute
          </Link>
          <Link href="/family-tree"
            className="px-4 py-2 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-gray-800 text-sm font-semibold rounded-lg transition-colors">
            View Full Tree
          </Link>
        </div>
      </div>
    );
  }

  // No items at all (all-time empty too)
  if (items.length === 0) {
    return (
      <div className="w-full rounded-xl border border-emerald-200 dark:border-emerald-800 bg-emerald-50 dark:bg-emerald-950/30 p-5">
        <div className="flex items-center gap-2 mb-3">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            Community Family Tree
          </h3>
        </div>
        <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
          Be the first to connect your family to Northwood Cemetery&apos;s history.
          Register as a member and start building the community family tree.
        </p>
        <div className="flex gap-2">
          <Link href="/auth/register"
            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-lg transition-colors">
            Register Free
          </Link>
          <Link href="/family-tree"
            className="px-4 py-2 border border-emerald-600 text-emerald-700 dark:text-emerald-400 hover:bg-emerald-50 dark:hover:bg-emerald-900/30 text-sm font-semibold rounded-lg transition-colors">
            View Tree
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="w-full rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-900 overflow-hidden">
      {/* Header */}
      <div className="px-5 py-4 border-b border-gray-100 dark:border-gray-800 flex items-center justify-between flex-wrap gap-2">
        <div className="flex items-center gap-2">
          <span className="inline-block w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
          <h3 className="text-sm font-bold uppercase tracking-wide text-emerald-700 dark:text-emerald-400">
            Community Family Tree —{' '}
            {allTime ? 'All-Time Activity' : "Today's Activity"}
          </h3>
        </div>
        <div className="flex items-center gap-3">
          {!allTime && (
            <button
              onClick={handleShowAllTime}
              className="text-xs text-gray-500 dark:text-gray-400 hover:text-emerald-600 dark:hover:text-emerald-400 font-medium transition-colors"
            >
              Show all-time →
            </button>
          )}
          <Link href="/family-tree"
            className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium">
            View Full Tree →
          </Link>
        </div>
      </div>

      {/* Feed items */}
      <div className="divide-y divide-gray-100 dark:divide-gray-800">
        {items.map(item => (
          <div key={item.id} className="px-5 py-3.5 hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors">
            {item.type === 'new_person' ? (
              <div className="flex items-start gap-3">
                <div className="mt-0.5 w-7 h-7 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 text-sm">
                  👤
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-sm text-gray-800 dark:text-gray-200">
                    <span className="font-semibold">{item.person_name}</span>
                    {item.maiden_name && (
                      <span className="text-gray-500 dark:text-gray-400"> (née {item.maiden_name})</span>
                    )}
                    {(item.birth_year || item.death_year) && (
                      <span className="text-gray-500 dark:text-gray-400">
                        {' '}· {item.birth_year ?? '?'}–{item.death_year ?? (item.is_living ? 'Present' : '?')}
                      </span>
                    )}
                    <span className="text-gray-500 dark:text-gray-400"> was added to the Community Family Tree</span>
                  </p>
                  <div className="flex flex-wrap items-center gap-3 mt-1">
                    <span className="text-xs text-gray-400 dark:text-gray-500">
                      by {item.submitted_by} · {timeAgo(item.created_at)}
                    </span>
                    {item.plot_id && (
                      <Link href={`/plot/${item.plot_id}`}
                        className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline font-medium">
                        View Cemetery Plot →
                      </Link>
                    )}
                    <Link href={`/family-tree?deceased_id=${item.deceased_id || ''}&node_id=${item.family_tree_node_id}`}
                      className="text-xs text-blue-600 dark:text-blue-400 hover:underline font-medium">
                      View in Tree →
                    </Link>
                  </div>
                </div>
              </div>
            ) : (
              <div className="flex items-start gap-3">
                <div className="mt-0.5 w-7 h-7 rounded-full bg-purple-100 dark:bg-purple-900/30 flex items-center justify-center flex-shrink-0 text-sm">
                  🔗
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-sm text-gray-800 dark:text-gray-200">
                    {item.person_a_plot_id ? (
                      <Link href={`/plot/${item.person_a_plot_id}`}
                        className="font-semibold text-emerald-700 dark:text-emerald-400 hover:underline">
                        {item.person_a_name}
                      </Link>
                    ) : (
                      <span className="font-semibold">{item.person_a_name}</span>
                    )}
                    <span className="text-gray-500 dark:text-gray-400">
                      {' '}was connected as <em>{item.relationship_type?.replace(/_/g, ' ')}</em> of{' '}
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
                    <Link href={`/family-tree?node_id=${item.family_tree_node_a_id}`}
                      className="text-xs text-blue-600 dark:text-blue-400 hover:underline font-medium">
                      View in Tree →
                    </Link>
                  </div>
                </div>
              </div>
            )}
          </div>
        ))}
      </div>

      {/* Load More */}
      {hasMore && (
        <div className="px-5 py-3 border-t border-gray-100 dark:border-gray-800 text-center">
          <button
            onClick={handleLoadMore}
            disabled={loadingMore}
            className="px-5 py-2 bg-gray-100 dark:bg-gray-800 hover:bg-gray-200 dark:hover:bg-gray-700 text-gray-700 dark:text-gray-300 text-sm font-semibold rounded-lg transition-colors disabled:opacity-50"
          >
            {loadingMore ? 'Loading…' : `Load More`}
          </button>
        </div>
      )}

      {/* CTA footer */}
      <div className="px-5 py-4 bg-emerald-50 dark:bg-emerald-950/20 border-t border-emerald-100 dark:border-emerald-900/30">
        <p className="text-sm text-emerald-800 dark:text-emerald-300 mb-2">
          🌳 Know someone buried at Northwood? Help build the community family tree.
        </p>
        <div className="flex flex-wrap gap-2">
          <Link href="/auth/register"
            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-lg transition-colors">
            Register to Contribute
          </Link>
          <Link href="/family-tree/submit"
            className="px-4 py-2 border border-emerald-600 text-emerald-700 dark:text-emerald-400 hover:bg-emerald-100 dark:hover:bg-emerald-900/30 text-sm font-semibold rounded-lg transition-colors">
            Add a Connection
          </Link>
        </div>
      </div>
    </div>
  );
}
