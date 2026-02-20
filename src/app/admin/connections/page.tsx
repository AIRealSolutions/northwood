'use client';
export const dynamic = 'force-dynamic';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface User {
  id: string;
  first_name: string | null;
  last_name: string | null;
  email: string;
  role: string;
}

interface Connection {
  id: string;
  relationship: string;
  member_relationship?: string | null;
  occupant_relationship?: string | null;
  relationship_category?: string | null;
  notes: string | null;
  status: string;
  created_at: string;
  review_notes: string | null;
  user_id: string;
  plot_id: string;
  deceased_id: string | null;
  user?: User | null;
  plots?: { id: string; plot_number: string; section: string } | null;
  deceased_records?: { id: string; first_name: string; last_name: string; birth_date?: string; death_date?: string } | null;
}

const STATUS_COLORS: Record<string, string> = {
  pending: 'bg-yellow-100 text-yellow-800 border border-yellow-200',
  approved: 'bg-green-100 text-green-800 border border-green-200',
  rejected: 'bg-red-100 text-red-800 border border-red-200',
};

export default function AdminConnectionsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [connections, setConnections] = useState<Connection[]>([]);
  const [loading, setLoading] = useState(true);
  const [fetchError, setFetchError] = useState('');
  const [filter, setFilter] = useState<'all' | 'pending' | 'approved' | 'rejected'>('pending');
  const [actionLoading, setActionLoading] = useState<string | null>(null);
  const [reviewNotes, setReviewNotes] = useState<Record<string, string>>({});
  const [actionError, setActionError] = useState<Record<string, string>>({});

  useEffect(() => {
    if (status === 'unauthenticated') {
      router.push('/auth/login');
    } else if (status === 'authenticated') {
      const role = session?.user?.role;
      if (role !== 'admin' && role !== 'cemetery_committee') {
        router.push('/dashboard');
        return;
      }
      loadConnections();
    }
  }, [status, session, filter]);

  const loadConnections = async () => {
    setLoading(true);
    setFetchError('');
    try {
      const res = await fetch(`/api/admin/connections?status=${filter}&pageSize=100`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to load connections');
      setConnections(data.connections || []);
    } catch (e: any) {
      setFetchError(e.message || 'Failed to load connections');
    } finally {
      setLoading(false);
    }
  };

  const handleAction = async (id: string, action: 'approve' | 'reject') => {
    setActionLoading(id + action);
    setActionError(prev => ({ ...prev, [id]: '' }));
    try {
      const res = await fetch(`/api/connections/${id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          status: action === 'approve' ? 'approved' : 'rejected',
          review_notes: reviewNotes[id] || null,
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error || 'Action failed');
      // Remove from pending list after action
      setConnections(prev =>
        filter === 'all'
          ? prev.map(c => c.id === id ? { ...c, status: action === 'approve' ? 'approved' : 'rejected' } : c)
          : prev.filter(c => c.id !== id)
      );
    } catch (e: any) {
      setActionError(prev => ({ ...prev, [id]: e.message }));
    } finally {
      setActionLoading(null);
    }
  };

  const getUserName = (conn: Connection) => {
    if (conn.user) {
      const name = `${conn.user.first_name || ''} ${conn.user.last_name || ''}`.trim();
      return name || conn.user.email;
    }
    return 'Unknown User';
  };

  const getUserInitial = (conn: Connection) => {
    if (conn.user?.first_name) return conn.user.first_name[0].toUpperCase();
    if (conn.user?.email) return conn.user.email[0].toUpperCase();
    return '?';
  };

  const counts = {
    all: connections.length,
    pending: connections.filter(c => c.status === 'pending').length,
    approved: connections.filter(c => c.status === 'approved').length,
    rejected: connections.filter(c => c.status === 'rejected').length,
  };

  const filtered = filter === 'all' ? connections : connections.filter(c => c.status === filter);

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-green-700 mx-auto mb-4" />
          <p className="text-gray-600">Loading connection requests...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white border-b border-gray-200 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/admin/committee" className="text-gray-400 hover:text-gray-600 text-sm">← Committee</Link>
            <span className="text-gray-300">|</span>
            <h1 className="text-lg font-bold text-gray-900">🌳 Family Connection Requests</h1>
          </div>
          {counts.pending > 0 && (
            <span className="px-3 py-1 bg-yellow-100 text-yellow-800 border border-yellow-200 rounded-full text-sm font-medium">
              {counts.pending} pending review
            </span>
          )}
        </div>
      </header>

      <main className="max-w-6xl mx-auto px-4 py-8">
        {/* Info Banner */}
        <div className="bg-blue-50 border border-blue-200 rounded-xl p-4 mb-6">
          <p className="text-sm text-blue-800">
            <strong>Peer Approval Enabled:</strong> Any approved family member connected to a plot can also approve new
            connection requests for that same plot. Admins and committee members can approve any request.
          </p>
        </div>

        {/* Filter Tabs */}
        <div className="flex gap-2 mb-6 bg-white border border-gray-200 rounded-xl p-1 w-fit">
          {(['pending', 'approved', 'rejected', 'all'] as const).map(f => (
            <button
              key={f}
              onClick={() => setFilter(f)}
              className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                filter === f
                  ? 'bg-green-700 text-white'
                  : 'text-gray-600 hover:bg-gray-100'
              }`}
            >
              {f.charAt(0).toUpperCase() + f.slice(1)}
              <span className={`ml-2 px-1.5 py-0.5 rounded-full text-xs ${
                filter === f ? 'bg-white/20 text-white' : 'bg-gray-100 text-gray-600'
              }`}>
                {counts[f]}
              </span>
            </button>
          ))}
        </div>

        {fetchError && (
          <div className="bg-red-50 border border-red-200 rounded-xl p-4 mb-6 text-red-700 text-sm">
            {fetchError}
          </div>
        )}

        {filtered.length === 0 ? (
          <div className="bg-white rounded-xl border border-gray-200 p-12 text-center">
            <p className="text-4xl mb-3">✓</p>
            <h3 className="text-lg font-semibold text-gray-900 mb-2">No {filter === 'all' ? '' : filter} requests</h3>
            <p className="text-gray-500 text-sm">
              {filter === 'pending'
                ? 'All connection requests have been reviewed.'
                : `No ${filter} connection requests found.`}
            </p>
          </div>
        ) : (
          <div className="space-y-4">
            {filtered.map(conn => (
              <div key={conn.id} className="bg-white rounded-xl border border-gray-200 p-5 shadow-sm">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex items-start gap-4 flex-1">
                    <div className="w-10 h-10 rounded-full bg-green-100 flex items-center justify-center text-sm font-bold text-green-700 flex-shrink-0">
                      {getUserInitial(conn)}
                    </div>
                    <div className="flex-1">
                      {/* Requester info */}
                      <div className="flex items-center gap-2 flex-wrap mb-2">
                        <p className="font-semibold text-gray-900 text-sm">{getUserName(conn)}</p>
                        <span className="text-gray-400 text-xs">{conn.user?.email || ''}</span>
                        {conn.user?.role && (
                          <span className="px-2 py-0.5 bg-gray-100 text-gray-600 text-xs rounded-full capitalize">
                            {conn.user.role}
                          </span>
                        )}
                      </div>

                      {/* Connection claim — bidirectional */}
                      <div className="mb-3 p-3 bg-blue-50 border border-blue-100 rounded-xl">
                        <div className="flex items-center gap-2 flex-wrap mb-1">
                          <span className="text-xs font-semibold text-blue-600 uppercase tracking-wide">Member is the occupant&apos;s:</span>
                          <span className="px-2.5 py-0.5 bg-white text-blue-700 border border-blue-200 rounded-lg text-sm font-bold">
                            {conn.member_relationship
                              ? conn.member_relationship.replace(/_/g, ' ').replace(/\b\w/g, c => c.toUpperCase())
                              : conn.relationship}
                          </span>
                        </div>
                        {conn.occupant_relationship && (
                          <div className="flex items-center gap-2 flex-wrap">
                            <span className="text-xs font-semibold text-green-600 uppercase tracking-wide">Occupant is the member&apos;s:</span>
                            <span className="px-2.5 py-0.5 bg-white text-green-700 border border-green-200 rounded-lg text-sm font-bold">
                              {conn.occupant_relationship}
                            </span>
                          </div>
                        )}
                        <div className="mt-1.5 flex items-center gap-2">
                          <span className="text-xs text-gray-500">Connected to:</span>
                          <span className="font-semibold text-gray-900 text-sm">
                            {conn.deceased_records
                              ? `${conn.deceased_records.first_name} ${conn.deceased_records.last_name}`
                              : 'General plot connection'}
                          </span>
                        </div>
                      </div>

                      {/* Plot info */}
                      {conn.plots && (
                        <p className="text-xs text-gray-500 mb-2">
                          Plot <strong>{conn.plots.plot_number}</strong> · Section {conn.plots.section}
                          {' · '}
                          <Link href={`/plot/${conn.plot_id}`} className="text-green-700 hover:underline" target="_blank">
                            View plot →
                          </Link>
                        </p>
                      )}

                      {conn.notes && (
                        <p className="text-sm text-gray-500 italic mb-2">&quot;{conn.notes}&quot;</p>
                      )}

                      <p className="text-xs text-gray-400">
                        Submitted {new Date(conn.created_at).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' })}
                      </p>

                      {actionError[conn.id] && (
                        <p className="mt-2 text-sm text-red-600">{actionError[conn.id]}</p>
                      )}

                      {/* Review notes (for reviewed connections) */}
                      {conn.review_notes && conn.status !== 'pending' && (
                        <div className="mt-3 p-3 bg-gray-50 rounded-lg">
                          <p className="text-xs text-gray-600"><strong>Review note:</strong> {conn.review_notes}</p>
                        </div>
                      )}

                      {/* Action area for pending */}
                      {conn.status === 'pending' && (
                        <div className="mt-4 pt-4 border-t border-gray-100">
                          <div className="flex items-center gap-3 flex-wrap">
                            <input
                              type="text"
                              placeholder="Optional review note..."
                              value={reviewNotes[conn.id] || ''}
                              onChange={e => setReviewNotes(prev => ({ ...prev, [conn.id]: e.target.value }))}
                              className="flex-1 min-w-48 px-3 py-2 text-sm border border-gray-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-green-500"
                            />
                            <button
                              onClick={() => handleAction(conn.id, 'approve')}
                              disabled={actionLoading === conn.id + 'approve'}
                              className="px-4 py-2 bg-green-700 hover:bg-green-800 text-white rounded-xl text-sm font-medium transition-colors disabled:opacity-50"
                            >
                              {actionLoading === conn.id + 'approve' ? '...' : '✓ Approve'}
                            </button>
                            <button
                              onClick={() => handleAction(conn.id, 'reject')}
                              disabled={actionLoading === conn.id + 'reject'}
                              className="px-4 py-2 bg-red-100 hover:bg-red-200 text-red-700 rounded-xl text-sm font-medium transition-colors disabled:opacity-50"
                            >
                              {actionLoading === conn.id + 'reject' ? '...' : '✗ Reject'}
                            </button>
                          </div>
                        </div>
                      )}
                    </div>
                  </div>

                  {/* Status badge */}
                  <div className="flex-shrink-0">
                    <span className={`px-3 py-1 rounded-full text-xs font-medium capitalize ${STATUS_COLORS[conn.status] || 'bg-gray-100 text-gray-700'}`}>
                      {conn.status === 'pending' ? '⏳ ' : conn.status === 'approved' ? '✓ ' : '✗ '}
                      {conn.status}
                    </span>
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}
