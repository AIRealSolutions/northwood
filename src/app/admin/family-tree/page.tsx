'use client';
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';

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
  submitted_by_name?: string | null;
  submitted_by_email?: string | null;
  created_at: string;
  review_notes?: string | null;
}

interface TreeRelationship {
  id: string;
  person_a_id: string;
  person_b_id: string;
  relationship_type: string;
  inverse_type?: string | null;
  notes?: string | null;
  status: string;
  submitted_by_name?: string | null;
  submitted_by_email?: string | null;
  created_at: string;
  review_notes?: string | null;
  person_a?: TreeNode;
  person_b?: TreeNode;
}

type StatusFilter = 'pending' | 'approved' | 'rejected' | 'all';

export default function AdminFamilyTreePage() {
  const { data: session, status } = useSession();
  const router = useRouter();

  const [nodes, setNodes] = useState<TreeNode[]>([]);
  const [relationships, setRelationships] = useState<TreeRelationship[]>([]);
  const [loading, setLoading] = useState(true);
  const [statusFilter, setStatusFilter] = useState<StatusFilter>('pending');
  const [activeTab, setActiveTab] = useState<'nodes' | 'relationships'>('nodes');
  const [reviewNotes, setReviewNotes] = useState<Record<string, string>>({});
  const [processing, setProcessing] = useState<string | null>(null);
  const [toast, setToast] = useState('');

  useEffect(() => {
    if (status === 'unauthenticated') router.push('/auth/login');
  }, [status, router]);

  const load = useCallback(async () => {
    setLoading(true);
    try {
      const res = await fetch(`/api/admin/family-tree?status=${statusFilter}`);
      const data = await res.json();
      setNodes(data.nodes || []);
      setRelationships(data.relationships || []);
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  }, [statusFilter]);

  useEffect(() => { load(); }, [load]);

  const showToast = (msg: string) => {
    setToast(msg);
    setTimeout(() => setToast(''), 3000);
  };

  const review = async (type: 'node' | 'relationship', id: string, newStatus: 'approved' | 'rejected') => {
    setProcessing(id);
    try {
      const res = await fetch('/api/admin/family-tree', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ type, id, status: newStatus, review_notes: reviewNotes[id] || null }),
      });
      if (!res.ok) throw new Error('Failed');
      showToast(`${type === 'node' ? 'Person' : 'Relationship'} ${newStatus}.`);
      load();
    } catch {
      showToast('Error processing review.');
    } finally {
      setProcessing(null);
    }
  };

  const formatDate = (d: string) => new Date(d).toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' });

  const statusBadge = (s: string) => {
    const map: Record<string, string> = {
      pending: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900/30 dark:text-yellow-300',
      approved: 'bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300',
      rejected: 'bg-red-100 text-red-800 dark:bg-red-900/30 dark:text-red-300',
    };
    return (
      <span className={`px-2 py-0.5 rounded-full text-xs font-semibold ${map[s] || 'bg-gray-100 text-gray-700'}`}>
        {s}
      </span>
    );
  };

  if (status === 'loading') return null;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Toast */}
      {toast && (
        <div className="fixed top-4 right-4 z-50 bg-emerald-700 text-white px-4 py-2 rounded-xl shadow-lg text-sm">
          {toast}
        </div>
      )}

      <header className="bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center gap-3">
          <Link href="/admin" className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-sm">
            ← Admin
          </Link>
          <span className="text-gray-300 dark:text-gray-600">|</span>
          <h1 className="text-lg font-bold text-gray-900 dark:text-white">🌳 Family Tree Moderation</h1>
          <div className="ml-auto flex items-center gap-2">
            <Link
              href="/family-tree"
              target="_blank"
              className="px-3 py-1.5 bg-emerald-700 hover:bg-emerald-800 text-white text-sm font-semibold rounded-xl transition-colors"
            >
              View Public Tree ↗
            </Link>
          </div>
        </div>
      </header>

      <main className="max-w-6xl mx-auto px-4 py-6 space-y-5">
        {/* Filters */}
        <div className="flex flex-wrap gap-3 items-center">
          <div className="flex rounded-xl overflow-hidden border border-gray-200 dark:border-gray-700">
            {(['pending', 'approved', 'rejected', 'all'] as StatusFilter[]).map(s => (
              <button
                key={s}
                onClick={() => setStatusFilter(s)}
                className={`px-4 py-2 text-sm font-medium transition-colors capitalize ${
                  statusFilter === s
                    ? 'bg-emerald-700 text-white'
                    : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-gray-700'
                }`}
              >
                {s}
              </button>
            ))}
          </div>

          <div className="flex rounded-xl overflow-hidden border border-gray-200 dark:border-gray-700 ml-auto">
            <button
              onClick={() => setActiveTab('nodes')}
              className={`px-4 py-2 text-sm font-medium transition-colors ${
                activeTab === 'nodes'
                  ? 'bg-emerald-700 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-gray-700'
              }`}
            >
              People ({nodes.length})
            </button>
            <button
              onClick={() => setActiveTab('relationships')}
              className={`px-4 py-2 text-sm font-medium transition-colors ${
                activeTab === 'relationships'
                  ? 'bg-emerald-700 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-gray-700'
              }`}
            >
              Relationships ({relationships.length})
            </button>
          </div>
        </div>

        {loading ? (
          <div className="text-center py-12 text-gray-500 dark:text-gray-400">Loading…</div>
        ) : (
          <>
            {/* ── Nodes tab ── */}
            {activeTab === 'nodes' && (
              <div className="space-y-3">
                {nodes.length === 0 && (
                  <div className="text-center py-12 text-gray-500 dark:text-gray-400">
                    No {statusFilter === 'all' ? '' : statusFilter} person submissions.
                  </div>
                )}
                {nodes.map(node => (
                  <div
                    key={node.id}
                    className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-5 shadow-sm"
                  >
                    <div className="flex flex-wrap items-start justify-between gap-3 mb-3">
                      <div>
                        <div className="flex items-center gap-2 mb-1">
                          <h3 className="font-bold text-gray-900 dark:text-white">
                            {node.first_name} {node.middle_name ? `${node.middle_name} ` : ''}{node.last_name}
                          </h3>
                          {statusBadge(node.status)}
                          {node.is_living
                            ? <span className="text-xs text-blue-600 dark:text-blue-400">Living</span>
                            : <span className="text-xs text-gray-500 dark:text-gray-400">Deceased</span>}
                          {node.deceased_id && (
                            <span className="text-xs text-emerald-600 dark:text-emerald-400">⚰ In cemetery</span>
                          )}
                        </div>
                        <div className="flex flex-wrap gap-3 text-xs text-gray-500 dark:text-gray-400">
                          {node.maiden_name && <span>née {node.maiden_name}</span>}
                          {(node.birth_year || node.death_year) && (
                            <span>{node.birth_year ?? '?'} – {node.death_year ?? (node.is_living ? 'Present' : '?')}</span>
                          )}
                          {node.gender && node.gender !== 'unknown' && <span className="capitalize">{node.gender}</span>}
                          <span>Submitted {formatDate(node.created_at)}</span>
                          {node.submitted_by_name && <span>by {node.submitted_by_name}</span>}
                          {node.submitted_by_email && <span>({node.submitted_by_email})</span>}
                        </div>
                      </div>
                    </div>

                    {node.status === 'pending' && (
                      <div className="mt-3 space-y-2">
                        <textarea
                          value={reviewNotes[node.id] || ''}
                          onChange={e => setReviewNotes(n => ({ ...n, [node.id]: e.target.value }))}
                          placeholder="Review notes (optional)…"
                          rows={2}
                          className="w-full border border-gray-200 dark:border-gray-600 rounded-xl px-3 py-2 text-sm bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                        />
                        <div className="flex gap-2">
                          <button
                            onClick={() => review('node', node.id, 'approved')}
                            disabled={processing === node.id}
                            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors"
                          >
                            {processing === node.id ? '…' : '✓ Approve'}
                          </button>
                          <button
                            onClick={() => review('node', node.id, 'rejected')}
                            disabled={processing === node.id}
                            className="px-4 py-2 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors"
                          >
                            {processing === node.id ? '…' : '✗ Reject'}
                          </button>
                        </div>
                      </div>
                    )}
                    {node.review_notes && (
                      <p className="mt-2 text-xs text-gray-500 dark:text-gray-400 italic">
                        Review note: {node.review_notes}
                      </p>
                    )}
                  </div>
                ))}
              </div>
            )}

            {/* ── Relationships tab ── */}
            {activeTab === 'relationships' && (
              <div className="space-y-3">
                {relationships.length === 0 && (
                  <div className="text-center py-12 text-gray-500 dark:text-gray-400">
                    No {statusFilter === 'all' ? '' : statusFilter} relationship submissions.
                  </div>
                )}
                {relationships.map(rel => {
                  const personA = rel.person_a as TreeNode | undefined;
                  const personB = rel.person_b as TreeNode | undefined;
                  return (
                    <div
                      key={rel.id}
                      className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-5 shadow-sm"
                    >
                      <div className="flex flex-wrap items-start justify-between gap-3 mb-3">
                        <div>
                          <div className="flex items-center gap-2 mb-1">
                            <h3 className="font-bold text-gray-900 dark:text-white">
                              {personA ? `${personA.first_name} ${personA.last_name}` : rel.person_a_id}
                              <span className="mx-2 text-gray-400 font-normal">
                                is the <em>{rel.relationship_type.replace(/_/g, ' ')}</em> of
                              </span>
                              {personB ? `${personB.first_name} ${personB.last_name}` : rel.person_b_id}
                            </h3>
                            {statusBadge(rel.status)}
                          </div>
                          {rel.inverse_type && (
                            <p className="text-xs text-gray-500 dark:text-gray-400">
                              Inverse: {personB?.first_name} is the <em>{rel.inverse_type.replace(/_/g, ' ')}</em> of {personA?.first_name}
                            </p>
                          )}
                          {rel.notes && (
                            <p className="text-xs text-gray-500 dark:text-gray-400 mt-1">Notes: {rel.notes}</p>
                          )}
                          <div className="flex flex-wrap gap-3 text-xs text-gray-500 dark:text-gray-400 mt-1">
                            <span>Submitted {formatDate(rel.created_at)}</span>
                            {rel.submitted_by_name && <span>by {rel.submitted_by_name}</span>}
                            {rel.submitted_by_email && <span>({rel.submitted_by_email})</span>}
                          </div>
                        </div>
                      </div>

                      {rel.status === 'pending' && (
                        <div className="mt-3 space-y-2">
                          <textarea
                            value={reviewNotes[rel.id] || ''}
                            onChange={e => setReviewNotes(n => ({ ...n, [rel.id]: e.target.value }))}
                            placeholder="Review notes (optional)…"
                            rows={2}
                            className="w-full border border-gray-200 dark:border-gray-600 rounded-xl px-3 py-2 text-sm bg-gray-50 dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                          />
                          <div className="flex gap-2">
                            <button
                              onClick={() => review('relationship', rel.id, 'approved')}
                              disabled={processing === rel.id}
                              className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors"
                            >
                              {processing === rel.id ? '…' : '✓ Approve'}
                            </button>
                            <button
                              onClick={() => review('relationship', rel.id, 'rejected')}
                              disabled={processing === rel.id}
                              className="px-4 py-2 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors"
                            >
                              {processing === rel.id ? '…' : '✗ Reject'}
                            </button>
                          </div>
                        </div>
                      )}
                      {rel.review_notes && (
                        <p className="mt-2 text-xs text-gray-500 dark:text-gray-400 italic">
                          Review note: {rel.review_notes}
                        </p>
                      )}
                    </div>
                  );
                })}
              </div>
            )}
          </>
        )}
      </main>
    </div>
  );
}
