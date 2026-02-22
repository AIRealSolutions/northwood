'use client';

export const dynamic = 'force-dynamic';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface Connection {
  id: string;
  relationship: string;
  member_relationship?: string | null;
  occupant_relationship?: string | null;
  notes: string | null;
  status: string;
  created_at: string;
  review_notes: string | null;
  plots?: { plot_number: string; section: string; row_number: string | null } | null;
  deceased_records?: { first_name: string; last_name: string; birth_date: string | null; death_date: string | null } | null;
}

export default function MyConnectionsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [connections, setConnections] = useState<Connection[]>([]);
  const [loading, setLoading] = useState(true);
  const [deleting, setDeleting] = useState<string | null>(null);
  const [filter, setFilter] = useState<'all' | 'pending' | 'approved' | 'rejected'>('all');

  useEffect(() => {
    if (status === 'unauthenticated') {
      router.push('/auth/login?callbackUrl=/my-connections');
    } else if (status === 'authenticated') {
      loadConnections();
    }
  }, [status]);

  const loadConnections = async () => {
    try {
      const res = await fetch('/api/connections?mine=true');
      const data = await res.json();
      setConnections(data.connections || []);
    } catch {
      // ignore
    } finally {
      setLoading(false);
    }
  };

  const deleteConnection = async (id: string) => {
    if (!confirm('Remove this family connection?')) return;
    setDeleting(id);
    try {
      const res = await fetch(`/api/connections/${id}`, { method: 'DELETE' });
      if (res.ok) {
        setConnections(prev => prev.filter(c => c.id !== id));
      }
    } catch {
      // ignore
    } finally {
      setDeleting(null);
    }
  };

  const statusBadge = (s: string) => {
    if (s === 'approved') return 'bg-green-100 text-green-800 border-green-200';
    if (s === 'rejected') return 'bg-red-100 text-red-800 border-red-200';
    return 'bg-yellow-100 text-yellow-800 border-yellow-200';
  };

  const statusIcon = (s: string) => {
    if (s === 'approved') return '✓';
    if (s === 'rejected') return '✗';
    return '⏳';
  };

  const filtered = filter === 'all' ? connections : connections.filter(c => c.status === filter);

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white border-b border-gray-200 shadow-sm">
        <div className="max-w-5xl mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/dashboard" className="text-gray-400 hover:text-gray-600 text-sm">← Dashboard</Link>
            <span className="text-gray-300">|</span>
            <h1 className="text-lg font-bold text-gray-900">🌳 My Family Connections</h1>
          </div>
          <Link
            href="/records"
            className="px-4 py-2 bg-emerald-600 hover:bg-emerald-700 text-white rounded-xl text-sm font-medium transition-colors"
          >
            + Add Connection
          </Link>
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 py-8">
        {/* Info Banner */}
        <div className="bg-emerald-50 border border-emerald-200 rounded-xl p-4 mb-6">
          <p className="text-sm text-emerald-800">
            <strong>How it works:</strong> Browse the cemetery records, find a plot or occupant you are related to, and click
            &quot;Connect as Descendant/Family Member.&quot; Your request will be reviewed by a committee member and approved within a few days.
          </p>
        </div>

        {/* Stats */}
        <div className="grid grid-cols-3 gap-4 mb-6">
          {(['all', 'approved', 'pending'] as const).map(s => (
            <button
              key={s}
              onClick={() => setFilter(s)}
              className={`p-4 rounded-xl border text-center transition-colors ${
                filter === s
                  ? 'bg-emerald-600 border-emerald-600 text-white'
                  : 'bg-white border-gray-200 text-gray-700 hover:bg-gray-50'
              }`}
            >
              <p className="text-2xl font-bold">
                {s === 'all' ? connections.length : connections.filter(c => c.status === s).length}
              </p>
              <p className="text-xs mt-1 capitalize">{s === 'all' ? 'Total' : s}</p>
            </button>
          ))}
        </div>

        {/* Connections List */}
        {filtered.length === 0 ? (
          <div className="bg-white rounded-xl border border-gray-200 p-12 text-center">
            <p className="text-4xl mb-4">🌱</p>
            <h3 className="text-lg font-semibold text-gray-900 mb-2">No connections yet</h3>
            <p className="text-gray-500 text-sm mb-6">
              Find a plot in the cemetery records and connect your family to the Northwood legacy.
            </p>
            <Link
              href="/records"
              className="inline-flex items-center gap-2 px-6 py-3 bg-emerald-600 hover:bg-emerald-700 text-white rounded-xl text-sm font-semibold transition-colors"
            >
              🔍 Search Cemetery Records
            </Link>
          </div>
        ) : (
          <div className="space-y-4">
            {filtered.map(conn => (
              <div key={conn.id} className="bg-white rounded-xl border border-gray-200 p-5 flex items-start gap-4">
                <div className="text-3xl mt-1">🪦</div>
                <div className="flex-1 min-w-0">
                  <div className="flex items-start justify-between gap-3">
                    <div>
                      <h3 className="font-semibold text-gray-900">
                        {conn.deceased_records
                          ? `${conn.deceased_records.first_name} ${conn.deceased_records.last_name}`
                          : conn.plots?.plot_number
                            ? `Plot ${conn.plots.plot_number}`
                            : 'Cemetery Connection'}
                      </h3>
                      {conn.deceased_records?.birth_date || conn.deceased_records?.death_date ? (
                        <p className="text-xs text-gray-400 mt-0.5">
                          {conn.deceased_records.birth_date
                            ? new Date(conn.deceased_records.birth_date.includes('T') ? conn.deceased_records.birth_date : conn.deceased_records.birth_date + 'T00:00:00').getFullYear()
                            : '?'}
                          {' – '}
                          {conn.deceased_records.death_date
                            ? new Date(conn.deceased_records.death_date.includes('T') ? conn.deceased_records.death_date : conn.deceased_records.death_date + 'T00:00:00').getFullYear()
                            : '?'}
                        </p>
                      ) : null}
                    </div>
                    <span className={`flex-shrink-0 inline-flex items-center gap-1 px-3 py-1 rounded-full text-xs font-medium border ${statusBadge(conn.status)}`}>
                      {statusIcon(conn.status)} {conn.status.charAt(0).toUpperCase() + conn.status.slice(1)}
                    </span>
                  </div>

                  <div className="mt-2 flex flex-wrap gap-4 text-sm text-gray-600">
                    <span>
                      <strong>I am the occupant&apos;s:</strong>{' '}
                      <span className="text-blue-700 font-semibold">
                        {conn.member_relationship
                          ? conn.member_relationship.replace(/_/g, ' ').replace(/\b\w/g, (c: string) => c.toUpperCase())
                          : conn.relationship}
                      </span>
                    </span>
                    {conn.occupant_relationship && (
                      <span>
                        <strong>The occupant is my:</strong>{' '}
                        <span className="text-green-700 font-semibold">{conn.occupant_relationship}</span>
                      </span>
                    )}
                    {conn.plots && (
                      <span>
                        <strong>Plot:</strong>{' '}
                        <Link href={`/plot/${conn.plots.plot_number}`} className="text-emerald-600 hover:underline">
                          {conn.plots.plot_number}
                        </Link>
                        {conn.plots.section && ` (Section ${conn.plots.section})`}
                      </span>
                    )}
                    <span>
                      <strong>Submitted:</strong> {new Date(conn.created_at).toLocaleDateString()}
                    </span>
                  </div>

                  {conn.notes && (
                    <p className="mt-2 text-sm text-gray-500 italic">&quot;{conn.notes}&quot;</p>
                  )}

                  {conn.status === 'rejected' && conn.review_notes && (
                    <div className="mt-2 p-3 bg-red-50 border border-red-100 rounded-lg">
                      <p className="text-xs text-red-700">
                        <strong>Review note:</strong> {conn.review_notes}
                      </p>
                    </div>
                  )}

                  {conn.status === 'pending' && (
                    <p className="mt-2 text-xs text-yellow-600">
                      ⏳ Awaiting review by the cemetery committee. This typically takes 2-5 business days.
                    </p>
                  )}
                </div>

                <button
                  onClick={() => deleteConnection(conn.id)}
                  disabled={deleting === conn.id}
                  className="flex-shrink-0 text-gray-300 hover:text-red-500 transition-colors disabled:opacity-50"
                  title="Remove connection"
                >
                  {deleting === conn.id ? (
                    <svg className="animate-spin h-5 w-5" fill="none" viewBox="0 0 24 24">
                      <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
                      <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
                    </svg>
                  ) : (
                    <svg className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  )}
                </button>
              </div>
            ))}
          </div>
        )}
      </main>
    </div>
  );
}
