'use client';

export const dynamic = 'force-dynamic';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface Connection {
  id: string;
  relationship: string;
  notes: string | null;
  status: string;
  created_at: string;
  review_notes: string | null;
  users?: { first_name: string | null; last_name: string | null; email: string } | null;
  plots?: { plot_number: string; section: string } | null;
  deceased_records?: { first_name: string; last_name: string } | null;
}

export default function AdminConnectionsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [connections, setConnections] = useState<Connection[]>([]);
  const [loading, setLoading] = useState(true);
  const [filter, setFilter] = useState<'all' | 'pending' | 'approved' | 'rejected'>('pending');
  const [actionLoading, setActionLoading] = useState<string | null>(null);
  const [reviewNotes, setReviewNotes] = useState<Record<string, string>>({});

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
  }, [status, session]);

  const loadConnections = async () => {
    try {
      const res = await fetch('/api/admin/connections');
      const data = await res.json();
      setConnections(data.connections || []);
    } catch {
      // ignore
    } finally {
      setLoading(false);
    }
  };

  const handleAction = async (id: string, action: 'approve' | 'reject') => {
    setActionLoading(id + action);
    try {
      const res = await fetch(`/api/connections/${id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          status: action === 'approve' ? 'approved' : 'rejected',
          review_notes: reviewNotes[id] || null,
        }),
      });
      if (res.ok) {
        setConnections(prev =>
          prev.map(c => c.id === id ? { ...c, status: action === 'approve' ? 'approved' : 'rejected' } : c)
        );
      }
    } catch {
      // ignore
    } finally {
      setActionLoading(null);
    }
  };

  const filtered = filter === 'all' ? connections : connections.filter(c => c.status === filter);

  const counts = {
    all: connections.length,
    pending: connections.filter(c => c.status === 'pending').length,
    approved: connections.filter(c => c.status === 'approved').length,
    rejected: connections.filter(c => c.status === 'rejected').length,
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white border-b border-gray-200 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/admin" className="text-gray-400 hover:text-gray-600 text-sm">← Admin</Link>
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
        {/* Filter Tabs */}
        <div className="flex gap-2 mb-6 bg-white border border-gray-200 rounded-xl p-1 w-fit">
          {(['pending', 'approved', 'rejected', 'all'] as const).map(f => (
            <button
              key={f}
              onClick={() => setFilter(f)}
              className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                filter === f
                  ? 'bg-emerald-600 text-white'
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

        {/* Connections Table */}
        {filtered.length === 0 ? (
          <div className="bg-white rounded-xl border border-gray-200 p-12 text-center">
            <p className="text-4xl mb-3">✓</p>
            <p className="text-gray-500">No {filter === 'all' ? '' : filter} connections to review.</p>
          </div>
        ) : (
          <div className="space-y-4">
            {filtered.map(conn => (
              <div key={conn.id} className="bg-white rounded-xl border border-gray-200 p-5">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex items-start gap-4 flex-1">
                    <div className="text-3xl">🪦</div>
                    <div className="flex-1">
                      {/* Member info */}
                      <div className="flex items-center gap-3 mb-2">
                        <div className="w-8 h-8 rounded-full bg-emerald-100 flex items-center justify-center text-sm font-bold text-emerald-700">
                          {(conn.users?.first_name || conn.users?.email || '?')[0].toUpperCase()}
                        </div>
                        <div>
                          <p className="font-semibold text-gray-900 text-sm">
                            {conn.users?.first_name && conn.users?.last_name
                              ? `${conn.users.first_name} ${conn.users.last_name}`
                              : conn.users?.email || 'Unknown member'}
                          </p>
                          <p className="text-xs text-gray-400">{conn.users?.email}</p>
                        </div>
                        <span className="text-gray-300 text-sm">claims to be</span>
                        <span className="px-2 py-0.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-lg text-sm font-medium">
                          {conn.relationship}
                        </span>
                        <span className="text-gray-300 text-sm">of</span>
                      </div>

                      {/* Occupant/Plot info */}
                      <div className="ml-11">
                        <p className="font-semibold text-gray-900">
                          {conn.deceased_records
                            ? `${conn.deceased_records.first_name} ${conn.deceased_records.last_name}`
                            : conn.plots?.plot_number
                              ? `Plot ${conn.plots.plot_number}`
                              : 'Unknown'}
                        </p>
                        {conn.plots && (
                          <p className="text-xs text-gray-500">
                            Plot {conn.plots.plot_number} · Section {conn.plots.section}
                            {' · '}
                            <Link href={`/plot/${conn.plots.plot_number}`} className="text-emerald-600 hover:underline" target="_blank">
                              View plot →
                            </Link>
                          </p>
                        )}
                        {conn.notes && (
                          <p className="mt-1 text-sm text-gray-500 italic">&quot;{conn.notes}&quot;</p>
                        )}
                        <p className="text-xs text-gray-400 mt-1">
                          Submitted {new Date(conn.created_at).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' })}
                        </p>
                      </div>
                    </div>
                  </div>

                  {/* Status badge */}
                  <div className="flex-shrink-0">
                    {conn.status === 'pending' ? (
                      <span className="px-3 py-1 bg-yellow-100 text-yellow-800 border border-yellow-200 rounded-full text-xs font-medium">
                        ⏳ Pending
                      </span>
                    ) : conn.status === 'approved' ? (
                      <span className="px-3 py-1 bg-green-100 text-green-800 border border-green-200 rounded-full text-xs font-medium">
                        ✓ Approved
                      </span>
                    ) : (
                      <span className="px-3 py-1 bg-red-100 text-red-800 border border-red-200 rounded-full text-xs font-medium">
                        ✗ Rejected
                      </span>
                    )}
                  </div>
                </div>

                {/* Action area for pending */}
                {conn.status === 'pending' && (
                  <div className="mt-4 ml-11 pt-4 border-t border-gray-100">
                    <div className="flex items-start gap-3">
                      <input
                        type="text"
                        placeholder="Optional review note (shown to member if rejected)..."
                        value={reviewNotes[conn.id] || ''}
                        onChange={e => setReviewNotes(prev => ({ ...prev, [conn.id]: e.target.value }))}
                        className="flex-1 px-3 py-2 text-sm border border-gray-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-emerald-500"
                      />
                      <button
                        onClick={() => handleAction(conn.id, 'approve')}
                        disabled={actionLoading === conn.id + 'approve'}
                        className="px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-xl text-sm font-medium transition-colors disabled:opacity-50"
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

                {conn.review_notes && conn.status !== 'pending' && (
                  <div className="mt-3 ml-11 p-3 bg-gray-50 rounded-xl">
                    <p className="text-xs text-gray-600"><strong>Review note:</strong> {conn.review_notes}</p>
                  </div>
                )}
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}
