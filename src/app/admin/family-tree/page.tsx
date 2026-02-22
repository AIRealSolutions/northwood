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

interface EditNodeForm {
  first_name: string;
  middle_name: string;
  last_name: string;
  maiden_name: string;
  birth_year: string;
  death_year: string;
  gender: string;
  is_living: boolean;
}

interface EditRelForm {
  relationship_type: string;
  inverse_type: string;
  notes: string;
}

interface OrphanWarning {
  nodeId: string;
  nodeName: string;
  orphans: { id: string; first_name: string; last_name: string }[];
}

export default function AdminFamilyTreePage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [nodes, setNodes] = useState<TreeNode[]>([]);
  const [relationships, setRelationships] = useState<TreeRelationship[]>([]);
  const [loading, setLoading] = useState(true);
  const [statusFilter, setStatusFilter] = useState<StatusFilter>('all');
  const [activeTab, setActiveTab] = useState<'nodes' | 'relationships'>('nodes');
  const [reviewNotes, setReviewNotes] = useState<Record<string, string>>({});
  const [processing, setProcessing] = useState<string | null>(null);
  const [toast, setToast] = useState('');
  const [toastType, setToastType] = useState<'success' | 'error'>('success');

  // Edit state
  const [editingNodeId, setEditingNodeId] = useState<string | null>(null);
  const [editNodeForm, setEditNodeForm] = useState<EditNodeForm | null>(null);
  const [editingRelId, setEditingRelId] = useState<string | null>(null);
  const [editRelForm, setEditRelForm] = useState<EditRelForm | null>(null);

  // Delete / orphan state
  const [orphanWarning, setOrphanWarning] = useState<OrphanWarning | null>(null);

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

  const showToast = (msg: string, type: 'success' | 'error' = 'success') => {
    setToast(msg);
    setToastType(type);
    setTimeout(() => setToast(''), 4000);
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
      showToast('Error processing review.', 'error');
    } finally {
      setProcessing(null);
    }
  };

  const startEditNode = (node: TreeNode) => {
    setEditingNodeId(node.id);
    setEditNodeForm({
      first_name: node.first_name,
      middle_name: node.middle_name || '',
      last_name: node.last_name,
      maiden_name: node.maiden_name || '',
      birth_year: node.birth_year?.toString() || '',
      death_year: node.death_year?.toString() || '',
      gender: node.gender || 'unknown',
      is_living: node.is_living,
    });
  };

  const saveEditNode = async (id: string) => {
    if (!editNodeForm) return;
    setProcessing(id);
    try {
      const res = await fetch('/api/admin/family-tree', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          type: 'node',
          id,
          updates: {
            first_name: editNodeForm.first_name.trim(),
            middle_name: editNodeForm.middle_name.trim() || null,
            last_name: editNodeForm.last_name.trim(),
            maiden_name: editNodeForm.maiden_name.trim() || null,
            birth_year: editNodeForm.birth_year ? parseInt(editNodeForm.birth_year) : null,
            death_year: editNodeForm.death_year ? parseInt(editNodeForm.death_year) : null,
            gender: editNodeForm.gender,
            is_living: editNodeForm.is_living,
          },
        }),
      });
      if (!res.ok) throw new Error('Failed');
      showToast('Person updated.');
      setEditingNodeId(null);
      setEditNodeForm(null);
      load();
    } catch {
      showToast('Error saving changes.', 'error');
    } finally {
      setProcessing(null);
    }
  };

  const startEditRel = (rel: TreeRelationship) => {
    setEditingRelId(rel.id);
    setEditRelForm({
      relationship_type: rel.relationship_type,
      inverse_type: rel.inverse_type || '',
      notes: rel.notes || '',
    });
  };

  const saveEditRel = async (id: string) => {
    if (!editRelForm) return;
    setProcessing(id);
    try {
      const res = await fetch('/api/admin/family-tree', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          type: 'relationship',
          id,
          updates: {
            relationship_type: editRelForm.relationship_type.trim(),
            inverse_type: editRelForm.inverse_type.trim() || null,
            notes: editRelForm.notes.trim() || null,
          },
        }),
      });
      if (!res.ok) throw new Error('Failed');
      showToast('Relationship updated.');
      setEditingRelId(null);
      setEditRelForm(null);
      load();
    } catch {
      showToast('Error saving changes.', 'error');
    } finally {
      setProcessing(null);
    }
  };

  const deleteItem = async (type: 'node' | 'relationship', id: string, name: string, force = false) => {
    if (!force && !confirm(`Delete this ${type === 'node' ? 'person' : 'relationship'}? This cannot be undone.`)) return;
    setProcessing(id);
    try {
      const res = await fetch(`/api/admin/family-tree?type=${type}&id=${id}&force=${force}`, {
        method: 'DELETE',
      });
      const data = await res.json();
      if (res.status === 409 && data.orphans) {
        setOrphanWarning({ nodeId: id, nodeName: name, orphans: data.orphans });
        setProcessing(null);
        return;
      }
      if (!res.ok) throw new Error(data.error || 'Failed');
      showToast(`${type === 'node' ? 'Person' : 'Relationship'} deleted.`);
      setOrphanWarning(null);
      load();
    } catch (e: any) {
      showToast(e.message || 'Error deleting.', 'error');
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
        <div className={`fixed top-4 right-4 z-50 px-4 py-2 rounded-xl shadow-lg text-sm text-white ${toastType === 'error' ? 'bg-red-600' : 'bg-emerald-700'}`}>
          {toast}
        </div>
      )}

      {/* Orphan warning modal */}
      {orphanWarning && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50">
          <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl p-6 max-w-md w-full mx-4">
            <h3 className="text-lg font-bold text-red-700 dark:text-red-400 mb-2">⚠ Orphan Warning</h3>
            <p className="text-sm text-gray-700 dark:text-gray-300 mb-3">
              Deleting <strong>{orphanWarning.nodeName}</strong> would leave the following people with no remaining connections in the tree:
            </p>
            <ul className="mb-4 space-y-1">
              {orphanWarning.orphans.map(o => (
                <li key={o.id} className="text-sm text-gray-800 dark:text-gray-200 bg-red-50 dark:bg-red-900/20 rounded-lg px-3 py-1">
                  {o.first_name} {o.last_name}
                </li>
              ))}
            </ul>
            <p className="text-xs text-gray-500 dark:text-gray-400 mb-4">
              You can force-delete anyway (those people will remain as isolated nodes), or cancel and remove the relationships first.
            </p>
            <div className="flex gap-2">
              <button
                onClick={() => deleteItem('node', orphanWarning.nodeId, orphanWarning.nodeName, true)}
                className="flex-1 px-4 py-2 bg-red-600 hover:bg-red-700 text-white text-sm font-semibold rounded-xl"
              >
                Force Delete Anyway
              </button>
              <button
                onClick={() => setOrphanWarning(null)}
                className="flex-1 px-4 py-2 bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 text-sm font-semibold rounded-xl"
              >
                Cancel
              </button>
            </div>
          </div>
        </div>
      )}

      <header className="bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center gap-3">
          <Link href="/admin" className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-sm">
            ← Admin
          </Link>
          <span className="text-gray-300 dark:text-gray-600">|</span>
          <h1 className="text-lg font-bold text-gray-900 dark:text-white">🌳 Community Family Tree</h1>
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
                    {editingNodeId === node.id && editNodeForm ? (
                      /* ── Edit form ── */
                      <div className="space-y-3">
                        <h4 className="font-semibold text-gray-900 dark:text-white text-sm">Editing Person</h4>
                        <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
                          {(['first_name', 'middle_name', 'last_name', 'maiden_name'] as const).map(field => (
                            <div key={field}>
                              <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1 capitalize">{field.replace('_', ' ')}</label>
                              <input
                                value={editNodeForm[field] as string}
                                onChange={e => setEditNodeForm(f => f ? { ...f, [field]: e.target.value } : f)}
                                className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                              />
                            </div>
                          ))}
                          <div>
                            <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Birth Year</label>
                            <input type="number" value={editNodeForm.birth_year}
                              onChange={e => setEditNodeForm(f => f ? { ...f, birth_year: e.target.value } : f)}
                              className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                            />
                          </div>
                          <div>
                            <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Death Year</label>
                            <input type="number" value={editNodeForm.death_year}
                              onChange={e => setEditNodeForm(f => f ? { ...f, death_year: e.target.value } : f)}
                              className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                            />
                          </div>
                          <div>
                            <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Gender</label>
                            <select value={editNodeForm.gender}
                              onChange={e => setEditNodeForm(f => f ? { ...f, gender: e.target.value } : f)}
                              className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                            >
                              <option value="unknown">Unknown</option>
                              <option value="male">Male</option>
                              <option value="female">Female</option>
                              <option value="other">Other</option>
                            </select>
                          </div>
                          <div className="flex items-center gap-2 mt-4">
                            <input type="checkbox" id={`living-${node.id}`} checked={editNodeForm.is_living}
                              onChange={e => setEditNodeForm(f => f ? { ...f, is_living: e.target.checked } : f)}
                              className="rounded"
                            />
                            <label htmlFor={`living-${node.id}`} className="text-sm text-gray-700 dark:text-gray-300">Living</label>
                          </div>
                        </div>
                        <div className="flex gap-2 pt-2">
                          <button onClick={() => saveEditNode(node.id)} disabled={processing === node.id}
                            className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl">
                            {processing === node.id ? 'Saving…' : 'Save Changes'}
                          </button>
                          <button onClick={() => { setEditingNodeId(null); setEditNodeForm(null); }}
                            className="px-4 py-2 bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 text-sm font-semibold rounded-xl">
                            Cancel
                          </button>
                        </div>
                      </div>
                    ) : (
                      /* ── View mode ── */
                      <>
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
                                <Link href={`/plot/${node.deceased_id}`} target="_blank"
                                  className="text-xs text-emerald-600 dark:text-emerald-400 hover:underline">
                                  ⚰ In cemetery ↗
                                </Link>
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
                            </div>
                          </div>
                          {/* Action buttons — always visible */}
                          <div className="flex gap-2 flex-shrink-0">
                            <button onClick={() => startEditNode(node)}
                              className="px-3 py-1.5 bg-blue-600 hover:bg-blue-700 text-white text-xs font-semibold rounded-lg">
                              ✏ Edit
                            </button>
                            <button onClick={() => deleteItem('node', node.id, `${node.first_name} ${node.last_name}`)}
                              disabled={processing === node.id}
                              className="px-3 py-1.5 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-xs font-semibold rounded-lg">
                              {processing === node.id ? '…' : '🗑 Delete'}
                            </button>
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
                              <button onClick={() => review('node', node.id, 'approved')} disabled={processing === node.id}
                                className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors">
                                {processing === node.id ? '…' : '✓ Approve'}
                              </button>
                              <button onClick={() => review('node', node.id, 'rejected')} disabled={processing === node.id}
                                className="px-4 py-2 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors">
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
                      </>
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
                      {editingRelId === rel.id && editRelForm ? (
                        /* ── Edit relationship form ── */
                        <div className="space-y-3">
                          <h4 className="font-semibold text-gray-900 dark:text-white text-sm">Editing Relationship</h4>
                          <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                            <div>
                              <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Relationship Type</label>
                              <input value={editRelForm.relationship_type}
                                onChange={e => setEditRelForm(f => f ? { ...f, relationship_type: e.target.value } : f)}
                                className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                              />
                            </div>
                            <div>
                              <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Inverse Type</label>
                              <input value={editRelForm.inverse_type}
                                onChange={e => setEditRelForm(f => f ? { ...f, inverse_type: e.target.value } : f)}
                                className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                              />
                            </div>
                            <div className="sm:col-span-2">
                              <label className="block text-xs text-gray-500 dark:text-gray-400 mb-1">Notes</label>
                              <input value={editRelForm.notes}
                                onChange={e => setEditRelForm(f => f ? { ...f, notes: e.target.value } : f)}
                                className="w-full border border-gray-200 dark:border-gray-600 rounded-lg px-2 py-1.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white"
                              />
                            </div>
                          </div>
                          <div className="flex gap-2 pt-2">
                            <button onClick={() => saveEditRel(rel.id)} disabled={processing === rel.id}
                              className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl">
                              {processing === rel.id ? 'Saving…' : 'Save Changes'}
                            </button>
                            <button onClick={() => { setEditingRelId(null); setEditRelForm(null); }}
                              className="px-4 py-2 bg-gray-200 dark:bg-gray-700 hover:bg-gray-300 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 text-sm font-semibold rounded-xl">
                              Cancel
                            </button>
                          </div>
                        </div>
                      ) : (
                        /* ── View mode ── */
                        <>
                          <div className="flex flex-wrap items-start justify-between gap-3 mb-3">
                            <div>
                              <div className="flex items-center gap-2 mb-1 flex-wrap">
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
                              </div>
                            </div>
                            {/* Action buttons */}
                            <div className="flex gap-2 flex-shrink-0">
                              <button onClick={() => startEditRel(rel)}
                                className="px-3 py-1.5 bg-blue-600 hover:bg-blue-700 text-white text-xs font-semibold rounded-lg">
                                ✏ Edit
                              </button>
                              <button
                                onClick={() => deleteItem('relationship', rel.id, `${rel.relationship_type} relationship`)}
                                disabled={processing === rel.id}
                                className="px-3 py-1.5 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-xs font-semibold rounded-lg">
                                {processing === rel.id ? '…' : '🗑 Delete'}
                              </button>
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
                                <button onClick={() => review('relationship', rel.id, 'approved')} disabled={processing === rel.id}
                                  className="px-4 py-2 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors">
                                  {processing === rel.id ? '…' : '✓ Approve'}
                                </button>
                                <button onClick={() => review('relationship', rel.id, 'rejected')} disabled={processing === rel.id}
                                  className="px-4 py-2 bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white text-sm font-semibold rounded-xl transition-colors">
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
                        </>
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
