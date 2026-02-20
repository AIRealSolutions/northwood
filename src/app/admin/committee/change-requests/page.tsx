'use client';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

interface ChangeRequest {
  id: string;
  request_type: string;
  subject: string;
  details: string;
  submitted_by_name: string;
  submitted_by_email: string;
  submitted_by_phone?: string;
  relationship_to_deceased?: string;
  status: string;
  review_notes?: string;
  media_file_name?: string;
  created_at: string;
  reviewed_at?: string;
  deceased_records?: { first_name: string; last_name: string };
  plots?: { plot_number: string };
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];
const STATUS_COLORS: Record<string, string> = {
  pending: 'bg-yellow-100 text-yellow-800',
  under_review: 'bg-blue-100 text-blue-800',
  approved: 'bg-green-100 text-green-800',
  rejected: 'bg-red-100 text-red-800',
};
const TYPE_LABELS: Record<string, string> = {
  occupant_details: 'Occupant Details',
  media_upload: 'Media Upload',
  other: 'Other',
};

export default function ChangeRequestsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [requests, setRequests] = useState<ChangeRequest[]>([]);
  const [loading, setLoading] = useState(true);
  const [total, setTotal] = useState(0);
  const [statusFilter, setStatusFilter] = useState('pending');
  const [typeFilter, setTypeFilter] = useState('');
  const [page, setPage] = useState(1);
  const pageSize = 50;
  const [selectedRequest, setSelectedRequest] = useState<ChangeRequest | null>(null);
  const [reviewNotes, setReviewNotes] = useState('');
  const [reviewLoading, setReviewLoading] = useState(false);
  const [successMsg, setSuccessMsg] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login'); return; }
    if (!ALLOWED_ROLES.includes(session.user?.role || '')) { router.push('/admin'); return; }
  }, [session, status, router]);

  const fetchRequests = useCallback(async () => {
    try {
      setLoading(true);
      const params = new URLSearchParams({
        page: page.toString(),
        pageSize: pageSize.toString(),
        ...(statusFilter && { status: statusFilter }),
        ...(typeFilter && { type: typeFilter }),
      });
      const res = await fetch(`/api/admin/committee/change-requests?${params}`);
      const data = await res.json();
      setRequests(data.requests || []);
      setTotal(data.total || 0);
    } catch { setError('Failed to load change requests'); }
    finally { setLoading(false); }
  }, [page, statusFilter, typeFilter]);

  useEffect(() => { if (session) fetchRequests(); }, [session, fetchRequests]);

  const handleReview = async (requestId: string, newStatus: string) => {
    setReviewLoading(true);
    try {
      const res = await fetch(`/api/admin/committee/change-requests/${requestId}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ status: newStatus, review_notes: reviewNotes }),
      });
      if (!res.ok) throw new Error('Failed to update');
      setSelectedRequest(null);
      setReviewNotes('');
      setSuccessMsg(`Request ${newStatus}`);
      fetchRequests();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch { setError('Failed to update request'); }
    finally { setReviewLoading(false); }
  };

  const totalPages = Math.ceil(total / pageSize);

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex items-center gap-3">
          <Link href="/admin/committee" className="text-green-600 hover:text-green-700 font-medium text-sm">← Committee</Link>
          <span className="text-gray-400">/</span>
          <h1 className="text-2xl font-bold text-gray-900">Change Requests</h1>
          {total > 0 && <span className="bg-yellow-100 text-yellow-800 text-sm font-medium px-2 py-0.5 rounded-full">{total} total</span>}
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {successMsg && <div className="mb-4 p-3 bg-green-50 border border-green-200 text-green-800 rounded-lg">{successMsg}</div>}
        {error && <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg">{error}</div>}

        {/* Filters */}
        <div className="bg-white rounded-lg shadow p-4 mb-6 flex flex-wrap gap-4 items-center">
          <div>
            <label className="block text-xs font-medium text-gray-600 mb-1">Status</label>
            <div className="flex gap-1">
              {['', 'pending', 'under_review', 'approved', 'rejected'].map(s => (
                <button key={s} onClick={() => { setStatusFilter(s); setPage(1); }} className={`px-3 py-1.5 text-xs rounded-lg font-medium ${statusFilter === s ? 'bg-green-600 text-white' : 'bg-gray-100 text-gray-600 hover:bg-gray-200'}`}>
                  {s === '' ? 'All' : s.replace('_', ' ')}
                </button>
              ))}
            </div>
          </div>
          <div>
            <label className="block text-xs font-medium text-gray-600 mb-1">Type</label>
            <select value={typeFilter} onChange={e => { setTypeFilter(e.target.value); setPage(1); }} className="border border-gray-300 rounded-lg px-3 py-1.5 text-sm">
              <option value="">All Types</option>
              <option value="occupant_details">Occupant Details</option>
              <option value="media_upload">Media Upload</option>
              <option value="other">Other</option>
            </select>
          </div>
        </div>

        {/* Spreadsheet Table */}
        <div className="bg-white rounded-lg shadow overflow-hidden">
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 border-b border-gray-200">
                <tr>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Date</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Type</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Subject</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Submitted By</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Relationship</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Occupant / Plot</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Status</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700 whitespace-nowrap">Actions</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-100">
                {loading ? (
                  <tr><td colSpan={8} className="px-4 py-8 text-center text-gray-500">Loading...</td></tr>
                ) : requests.length === 0 ? (
                  <tr><td colSpan={8} className="px-4 py-8 text-center text-gray-500">No change requests found</td></tr>
                ) : requests.map(req => (
                  <tr key={req.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3 text-gray-500 whitespace-nowrap text-xs">{new Date(req.created_at).toLocaleDateString()}</td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <span className="text-xs bg-gray-100 text-gray-700 px-2 py-0.5 rounded">{TYPE_LABELS[req.request_type] || req.request_type}</span>
                    </td>
                    <td className="px-4 py-3 max-w-xs">
                      <div className="font-medium text-gray-900 truncate">{req.subject}</div>
                      <div className="text-xs text-gray-500 truncate">{req.details}</div>
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <div className="font-medium text-gray-800 text-xs">{req.submitted_by_name}</div>
                      <div className="text-gray-500 text-xs">{req.submitted_by_email}</div>
                    </td>
                    <td className="px-4 py-3 text-xs text-gray-600 whitespace-nowrap">{req.relationship_to_deceased || '—'}</td>
                    <td className="px-4 py-3 text-xs whitespace-nowrap">
                      {req.deceased_records ? `${req.deceased_records.first_name} ${req.deceased_records.last_name}` : '—'}
                      {req.plots && <div className="text-gray-500">Plot {req.plots.plot_number}</div>}
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <span className={`text-xs font-medium px-2 py-0.5 rounded-full ${STATUS_COLORS[req.status] || 'bg-gray-100 text-gray-700'}`}>
                        {req.status.replace('_', ' ')}
                      </span>
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <button onClick={() => { setSelectedRequest(req); setReviewNotes(req.review_notes || ''); }} className="text-xs px-3 py-1.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-lg hover:bg-blue-100">
                        Review
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>

          {totalPages > 1 && (
            <div className="px-4 py-3 border-t border-gray-200 flex items-center justify-between">
              <span className="text-sm text-gray-600">Showing {((page - 1) * pageSize) + 1}–{Math.min(page * pageSize, total)} of {total}</span>
              <div className="flex gap-2">
                <button onClick={() => setPage(p => p - 1)} disabled={page === 1} className="px-3 py-1 text-sm border rounded disabled:opacity-40">Prev</button>
                <span className="px-3 py-1 text-sm">Page {page} of {totalPages}</span>
                <button onClick={() => setPage(p => p + 1)} disabled={page === totalPages} className="px-3 py-1 text-sm border rounded disabled:opacity-40">Next</button>
              </div>
            </div>
          )}
        </div>
      </main>

      {/* Review Modal */}
      {selectedRequest && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-xl shadow-xl p-6 max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            <h3 className="text-xl font-bold text-gray-900 mb-2">Review Change Request</h3>
            <div className="bg-gray-50 rounded-lg p-4 mb-4 space-y-2 text-sm">
              <div className="grid grid-cols-2 gap-4">
                <div><span className="font-medium text-gray-600">Type:</span> <span>{TYPE_LABELS[selectedRequest.request_type]}</span></div>
                <div><span className="font-medium text-gray-600">Date:</span> <span>{new Date(selectedRequest.created_at).toLocaleDateString()}</span></div>
                <div><span className="font-medium text-gray-600">Submitted By:</span> <span>{selectedRequest.submitted_by_name}</span></div>
                <div><span className="font-medium text-gray-600">Email:</span> <span>{selectedRequest.submitted_by_email}</span></div>
                {selectedRequest.submitted_by_phone && <div><span className="font-medium text-gray-600">Phone:</span> <span>{selectedRequest.submitted_by_phone}</span></div>}
                {selectedRequest.relationship_to_deceased && <div><span className="font-medium text-gray-600">Relationship:</span> <span>{selectedRequest.relationship_to_deceased}</span></div>}
                {selectedRequest.deceased_records && <div><span className="font-medium text-gray-600">Occupant:</span> <span>{selectedRequest.deceased_records.first_name} {selectedRequest.deceased_records.last_name}</span></div>}
                {selectedRequest.plots && <div><span className="font-medium text-gray-600">Plot:</span> <span>{selectedRequest.plots.plot_number}</span></div>}
              </div>
              <div className="pt-2 border-t border-gray-200">
                <p className="font-medium text-gray-600 mb-1">Subject:</p>
                <p className="text-gray-900">{selectedRequest.subject}</p>
              </div>
              <div>
                <p className="font-medium text-gray-600 mb-1">Details:</p>
                <p className="text-gray-900 whitespace-pre-wrap">{selectedRequest.details}</p>
              </div>
              {selectedRequest.media_file_name && (
                <div><span className="font-medium text-gray-600">Media File:</span> <span>{selectedRequest.media_file_name}</span></div>
              )}
            </div>

            <div className="mb-4">
              <label className="block text-sm font-medium text-gray-700 mb-1">Review Notes</label>
              <textarea
                value={reviewNotes}
                onChange={e => setReviewNotes(e.target.value)}
                rows={3}
                className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm"
                placeholder="Add notes about this request..."
              />
            </div>

            <div className="flex flex-wrap gap-3 justify-end">
              <button onClick={() => { setSelectedRequest(null); setReviewNotes(''); }} className="px-4 py-2 text-sm border border-gray-300 rounded-lg hover:bg-gray-50">Close</button>
              <button onClick={() => handleReview(selectedRequest.id, 'under_review')} disabled={reviewLoading} className="px-4 py-2 text-sm bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:opacity-50">
                Mark Under Review
              </button>
              <button onClick={() => handleReview(selectedRequest.id, 'rejected')} disabled={reviewLoading} className="px-4 py-2 text-sm bg-red-600 text-white rounded-lg hover:bg-red-700 disabled:opacity-50">
                Reject
              </button>
              <button onClick={() => handleReview(selectedRequest.id, 'approved')} disabled={reviewLoading} className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50">
                Approve
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
