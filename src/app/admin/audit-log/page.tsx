'use client';
export const dynamic = 'force-dynamic';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

interface AuditEntry {
  id: string;
  table_name: string;
  record_id: string;
  action: string;
  old_values: Record<string, unknown> | null;
  new_values: Record<string, unknown> | null;
  summary: string | null;
  changed_by_user_id: string | null;
  changed_by_name: string | null;
  changed_by_email: string | null;
  changed_by_role: string | null;
  ip_address: string | null;
  created_at: string;
}

const ACTION_COLORS: Record<string, string> = {
  CREATE: 'bg-green-100 text-green-800 border-green-200',
  UPDATE: 'bg-blue-100 text-blue-800 border-blue-200',
  DELETE: 'bg-red-100 text-red-800 border-red-200',
  APPROVE: 'bg-emerald-100 text-emerald-800 border-emerald-200',
  REJECT: 'bg-orange-100 text-orange-800 border-orange-200',
  MOVE: 'bg-purple-100 text-purple-800 border-purple-200',
};

const TABLE_LABELS: Record<string, string> = {
  plots: 'Plot',
  deceased_records: 'Deceased Record',
  users: 'User',
  plot_connections: 'Family Connection',
  committee_meetings: 'Committee Meeting',
  change_requests: 'Change Request',
};

export default function AuditLogPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [entries, setEntries] = useState<AuditEntry[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');
  const [page, setPage] = useState(1);
  const [totalCount, setTotalCount] = useState(0);
  const [tableFilter, setTableFilter] = useState('');
  const [actionFilter, setActionFilter] = useState('');
  const [expandedId, setExpandedId] = useState<string | null>(null);
  const pageSize = 50;

  useEffect(() => {
    if (status === 'unauthenticated') {
      router.push('/auth/login');
    } else if (status === 'authenticated' && session?.user?.role !== 'admin') {
      router.push('/dashboard');
    }
  }, [status, session, router]);

  const loadEntries = useCallback(async () => {
    setLoading(true);
    setError('');
    try {
      const params = new URLSearchParams({
        page: String(page),
        pageSize: String(pageSize),
      });
      if (tableFilter) params.set('table', tableFilter);
      if (actionFilter) params.set('action', actionFilter);

      const res = await fetch(`/api/admin/audit-log?${params}`);
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to load audit log');
      setEntries(data.entries || []);
      setTotalCount(data.count || 0);
    } catch (e: any) {
      setError(e.message || 'Failed to load audit log');
    } finally {
      setLoading(false);
    }
  }, [page, tableFilter, actionFilter]);

  useEffect(() => {
    if (status === 'authenticated' && session?.user?.role === 'admin') {
      loadEntries();
    }
  }, [status, session, loadEntries]);

  const totalPages = Math.ceil(totalCount / pageSize);

  const formatDate = (iso: string) => {
    const d = new Date(iso);
    return d.toLocaleString('en-US', {
      month: 'short', day: 'numeric', year: 'numeric',
      hour: '2-digit', minute: '2-digit',
    });
  };

  const formatJSON = (obj: Record<string, unknown> | null) => {
    if (!obj) return '—';
    return JSON.stringify(obj, null, 2);
  };

  if (status === 'loading') {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white border-b border-gray-200 shadow-sm sticky top-0 z-10">
        <div className="max-w-7xl mx-auto px-4 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/admin" className="text-gray-400 hover:text-gray-600 text-sm">← Admin Dashboard</Link>
            <span className="text-gray-300">|</span>
            <h1 className="text-lg font-bold text-gray-900">📋 Audit Log</h1>
          </div>
          <div className="text-sm text-gray-500">
            {totalCount.toLocaleString()} total entries
          </div>
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 py-8">
        {/* Filters */}
        <div className="bg-white rounded-xl border border-gray-200 shadow-sm p-4 mb-6">
          <div className="flex flex-wrap gap-4 items-end">
            <div>
              <label className="block text-xs font-medium text-gray-500 mb-1">Table</label>
              <select
                value={tableFilter}
                onChange={e => { setTableFilter(e.target.value); setPage(1); }}
                className="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
              >
                <option value="">All Tables</option>
                <option value="plots">Plots</option>
                <option value="deceased_records">Deceased Records</option>
                <option value="users">Users</option>
                <option value="plot_connections">Family Connections</option>
                <option value="committee_meetings">Committee Meetings</option>
                <option value="change_requests">Change Requests</option>
              </select>
            </div>
            <div>
              <label className="block text-xs font-medium text-gray-500 mb-1">Action</label>
              <select
                value={actionFilter}
                onChange={e => { setActionFilter(e.target.value); setPage(1); }}
                className="border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
              >
                <option value="">All Actions</option>
                <option value="CREATE">Create</option>
                <option value="UPDATE">Update</option>
                <option value="DELETE">Delete</option>
                <option value="APPROVE">Approve</option>
                <option value="REJECT">Reject</option>
                <option value="MOVE">Move</option>
              </select>
            </div>
            <button
              onClick={() => { setTableFilter(''); setActionFilter(''); setPage(1); }}
              className="px-4 py-2 text-sm text-gray-600 border border-gray-300 rounded-lg hover:bg-gray-50"
            >
              Clear Filters
            </button>
          </div>
        </div>

        {/* Error */}
        {error && (
          <div className="bg-red-50 border border-red-200 text-red-800 rounded-xl px-4 py-3 mb-6 text-sm">
            {error}
          </div>
        )}

        {/* Loading */}
        {loading ? (
          <div className="flex items-center justify-center py-16">
            <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-emerald-600 mr-3"></div>
            <span className="text-gray-500">Loading audit log...</span>
          </div>
        ) : entries.length === 0 ? (
          <div className="bg-white rounded-xl border border-gray-200 p-12 text-center text-gray-500">
            <div className="text-4xl mb-3">📋</div>
            <p className="font-medium">No audit log entries found</p>
            <p className="text-sm mt-1">Entries will appear here as changes are made to the system.</p>
          </div>
        ) : (
          <>
            {/* Table */}
            <div className="bg-white rounded-xl border border-gray-200 shadow-sm overflow-hidden">
              <table className="w-full text-sm">
                <thead className="bg-gray-50 border-b border-gray-200">
                  <tr>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">When</th>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">Action</th>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">Table</th>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">Summary</th>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">Changed By</th>
                    <th className="px-4 py-3 text-left font-semibold text-gray-600 text-xs uppercase tracking-wide">Details</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-100">
                  {entries.map(entry => (
                    <>
                      <tr key={entry.id} className="hover:bg-gray-50 transition-colors">
                        <td className="px-4 py-3 text-gray-500 whitespace-nowrap text-xs">
                          {formatDate(entry.created_at)}
                        </td>
                        <td className="px-4 py-3">
                          <span className={`inline-flex items-center px-2 py-0.5 rounded-full text-xs font-semibold border ${ACTION_COLORS[entry.action] || 'bg-gray-100 text-gray-700 border-gray-200'}`}>
                            {entry.action}
                          </span>
                        </td>
                        <td className="px-4 py-3 text-gray-700 text-xs">
                          {TABLE_LABELS[entry.table_name] || entry.table_name}
                        </td>
                        <td className="px-4 py-3 text-gray-800 max-w-xs truncate">
                          {entry.summary || `${entry.action} on ${entry.table_name}`}
                        </td>
                        <td className="px-4 py-3">
                          {entry.changed_by_name || entry.changed_by_email ? (
                            <div>
                              <div className="font-medium text-gray-800 text-xs">{entry.changed_by_name || '—'}</div>
                              <div className="text-gray-400 text-xs">{entry.changed_by_email}</div>
                              {entry.changed_by_role && (
                                <div className="text-gray-400 text-xs capitalize">{entry.changed_by_role}</div>
                              )}
                            </div>
                          ) : (
                            <span className="text-gray-400 text-xs">System</span>
                          )}
                        </td>
                        <td className="px-4 py-3">
                          {(entry.old_values || entry.new_values) && (
                            <button
                              onClick={() => setExpandedId(expandedId === entry.id ? null : entry.id)}
                              className="text-xs text-emerald-600 hover:text-emerald-800 font-medium"
                            >
                              {expandedId === entry.id ? 'Hide' : 'Show'} diff
                            </button>
                          )}
                        </td>
                      </tr>
                      {expandedId === entry.id && (
                        <tr key={`${entry.id}-expanded`} className="bg-gray-50">
                          <td colSpan={6} className="px-4 py-4">
                            <div className="grid grid-cols-2 gap-4">
                              {entry.old_values && (
                                <div>
                                  <div className="text-xs font-semibold text-red-700 mb-1">Before</div>
                                  <pre className="text-xs bg-red-50 border border-red-100 rounded p-3 overflow-auto max-h-40 text-gray-700">
                                    {formatJSON(entry.old_values)}
                                  </pre>
                                </div>
                              )}
                              {entry.new_values && (
                                <div>
                                  <div className="text-xs font-semibold text-green-700 mb-1">After</div>
                                  <pre className="text-xs bg-green-50 border border-green-100 rounded p-3 overflow-auto max-h-40 text-gray-700">
                                    {formatJSON(entry.new_values)}
                                  </pre>
                                </div>
                              )}
                            </div>
                            <div className="mt-2 text-xs text-gray-400">
                              Record ID: {entry.record_id}
                            </div>
                          </td>
                        </tr>
                      )}
                    </>
                  ))}
                </tbody>
              </table>
            </div>

            {/* Pagination */}
            {totalPages > 1 && (
              <div className="flex items-center justify-between mt-4">
                <div className="text-sm text-gray-500">
                  Showing {((page - 1) * pageSize) + 1}–{Math.min(page * pageSize, totalCount)} of {totalCount.toLocaleString()} entries
                </div>
                <div className="flex gap-2">
                  <button
                    onClick={() => setPage(1)}
                    disabled={page === 1}
                    className="px-3 py-1.5 text-sm border border-gray-300 rounded-lg disabled:opacity-40 hover:bg-gray-50"
                  >
                    First
                  </button>
                  <button
                    onClick={() => setPage(p => Math.max(1, p - 1))}
                    disabled={page === 1}
                    className="px-3 py-1.5 text-sm border border-gray-300 rounded-lg disabled:opacity-40 hover:bg-gray-50"
                  >
                    Previous
                  </button>
                  <span className="px-3 py-1.5 text-sm text-gray-600">
                    Page {page} of {totalPages}
                  </span>
                  <button
                    onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                    disabled={page === totalPages}
                    className="px-3 py-1.5 text-sm border border-gray-300 rounded-lg disabled:opacity-40 hover:bg-gray-50"
                  >
                    Next
                  </button>
                  <button
                    onClick={() => setPage(totalPages)}
                    disabled={page === totalPages}
                    className="px-3 py-1.5 text-sm border border-gray-300 rounded-lg disabled:opacity-40 hover:bg-gray-50"
                  >
                    Last
                  </button>
                </div>
              </div>
            )}
          </>
        )}
      </main>
    </div>
  );
}
