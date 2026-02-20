'use client';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

interface AgendaSubmission {
  id: string;
  submitted_by_name: string;
  submitted_by_email: string;
  submitted_by_phone?: string;
  subject: string;
  description: string;
  preferred_meeting_date?: string;
  status: string;
  review_notes?: string;
  meeting_id?: string;
  created_at: string;
}

interface Meeting {
  id: string;
  title: string;
  meeting_date: string;
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];
const STATUS_COLORS: Record<string, string> = {
  pending: 'bg-yellow-100 text-yellow-800',
  approved: 'bg-green-100 text-green-800',
  rejected: 'bg-red-100 text-red-800',
  added_to_agenda: 'bg-blue-100 text-blue-800',
};

export default function AgendaSubmissionsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [submissions, setSubmissions] = useState<AgendaSubmission[]>([]);
  const [meetings, setMeetings] = useState<Meeting[]>([]);
  const [loading, setLoading] = useState(true);
  const [statusFilter, setStatusFilter] = useState('pending');
  const [selectedSub, setSelectedSub] = useState<AgendaSubmission | null>(null);
  const [reviewNotes, setReviewNotes] = useState('');
  const [selectedMeeting, setSelectedMeeting] = useState('');
  const [reviewLoading, setReviewLoading] = useState(false);
  const [successMsg, setSuccessMsg] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login'); return; }
    if (!ALLOWED_ROLES.includes(session.user?.role || '')) { router.push('/admin'); return; }
  }, [session, status, router]);

  const fetchData = useCallback(async () => {
    try {
      setLoading(true);
      // Fetch submissions
      const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
      const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
      const headers = { 'apikey': supabaseKey || '', 'Authorization': `Bearer ${supabaseKey}` };
      
      const params = statusFilter ? `?status=eq.${statusFilter}&order=created_at.desc` : '?order=created_at.desc';
      const [subsRes, meetingsRes] = await Promise.all([
        fetch(`${supabaseUrl}/rest/v1/public_agenda_submissions${params}`, { headers }),
        fetch(`${supabaseUrl}/rest/v1/committee_meetings?meeting_date=gte.${new Date().toISOString().split('T')[0]}&order=meeting_date.asc&limit=10`, { headers }),
      ]);
      setSubmissions(await subsRes.json());
      setMeetings(await meetingsRes.json());
    } catch { setError('Failed to load submissions'); }
    finally { setLoading(false); }
  }, [statusFilter]);

  useEffect(() => { if (session) fetchData(); }, [session, fetchData]);

  const handleAction = async (subId: string, action: string) => {
    setReviewLoading(true);
    try {
      const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
      const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
      const headers = {
        'apikey': supabaseKey || '',
        'Authorization': `Bearer ${supabaseKey}`,
        'Content-Type': 'application/json',
        'Prefer': 'return=minimal',
      };

      const updates: Record<string, string | null> = {
        status: action === 'add_to_agenda' ? 'added_to_agenda' : action,
        review_notes: reviewNotes || null,
        reviewed_at: new Date().toISOString(),
      };
      if (action === 'add_to_agenda' && selectedMeeting) {
        updates.meeting_id = selectedMeeting;
        // Also add as agenda item to the meeting
        if (selectedSub) {
          await fetch(`/api/admin/committee/meetings/${selectedMeeting}/agendas`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
              title: selectedSub.subject,
              description: selectedSub.description,
              is_public_submission: true,
              submitted_by_name: selectedSub.submitted_by_name,
              submitted_by_email: selectedSub.submitted_by_email,
            }),
          });
        }
      }

      await fetch(`${supabaseUrl}/rest/v1/public_agenda_submissions?id=eq.${subId}`, {
        method: 'PATCH',
        headers,
        body: JSON.stringify(updates),
      });

      setSelectedSub(null);
      setReviewNotes('');
      setSelectedMeeting('');
      setSuccessMsg(action === 'add_to_agenda' ? 'Added to meeting agenda!' : `Submission ${action}`);
      fetchData();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch { setError('Failed to update submission'); }
    finally { setReviewLoading(false); }
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex items-center gap-3">
          <Link href="/admin/committee" className="text-green-600 hover:text-green-700 font-medium text-sm">← Committee</Link>
          <span className="text-gray-400">/</span>
          <h1 className="text-2xl font-bold text-gray-900">Agenda Submissions</h1>
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {successMsg && <div className="mb-4 p-3 bg-green-50 border border-green-200 text-green-800 rounded-lg">{successMsg}</div>}
        {error && <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg">{error}</div>}

        {/* Status Filter */}
        <div className="flex gap-2 mb-6">
          {['', 'pending', 'approved', 'rejected', 'added_to_agenda'].map(s => (
            <button key={s} onClick={() => setStatusFilter(s)} className={`px-4 py-2 rounded-lg text-sm font-medium ${statusFilter === s ? 'bg-green-600 text-white' : 'bg-white text-gray-600 border border-gray-200 hover:bg-gray-50'}`}>
              {s === '' ? 'All' : s.replace('_', ' ')}
            </button>
          ))}
        </div>

        {/* Table */}
        <div className="bg-white rounded-lg shadow overflow-hidden">
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 border-b border-gray-200">
                <tr>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Date</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Subject</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Submitted By</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Preferred Date</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Status</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Actions</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-100">
                {loading ? (
                  <tr><td colSpan={6} className="px-4 py-8 text-center text-gray-500">Loading...</td></tr>
                ) : submissions.length === 0 ? (
                  <tr><td colSpan={6} className="px-4 py-8 text-center text-gray-500">No submissions found</td></tr>
                ) : submissions.map(sub => (
                  <tr key={sub.id} className="hover:bg-gray-50">
                    <td className="px-4 py-3 text-xs text-gray-500 whitespace-nowrap">{new Date(sub.created_at).toLocaleDateString()}</td>
                    <td className="px-4 py-3 max-w-xs">
                      <div className="font-medium text-gray-900 truncate">{sub.subject}</div>
                      <div className="text-xs text-gray-500 truncate">{sub.description}</div>
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <div className="text-xs font-medium text-gray-800">{sub.submitted_by_name}</div>
                      <div className="text-xs text-gray-500">{sub.submitted_by_email}</div>
                    </td>
                    <td className="px-4 py-3 text-xs text-gray-600 whitespace-nowrap">
                      {sub.preferred_meeting_date ? new Date(sub.preferred_meeting_date).toLocaleDateString() : '—'}
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <span className={`text-xs font-medium px-2 py-0.5 rounded-full ${STATUS_COLORS[sub.status] || 'bg-gray-100 text-gray-700'}`}>
                        {sub.status.replace('_', ' ')}
                      </span>
                    </td>
                    <td className="px-4 py-3 whitespace-nowrap">
                      <button onClick={() => { setSelectedSub(sub); setReviewNotes(sub.review_notes || ''); }} className="text-xs px-3 py-1.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-lg hover:bg-blue-100">
                        Review
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </main>

      {/* Review Modal */}
      {selectedSub && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-xl shadow-xl p-6 max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            <h3 className="text-xl font-bold text-gray-900 mb-4">Review Agenda Submission</h3>
            <div className="bg-gray-50 rounded-lg p-4 mb-4 space-y-2 text-sm">
              <div className="grid grid-cols-2 gap-3">
                <div><span className="font-medium text-gray-600">Submitted By:</span> {selectedSub.submitted_by_name}</div>
                <div><span className="font-medium text-gray-600">Email:</span> {selectedSub.submitted_by_email}</div>
                {selectedSub.submitted_by_phone && <div><span className="font-medium text-gray-600">Phone:</span> {selectedSub.submitted_by_phone}</div>}
                {selectedSub.preferred_meeting_date && <div><span className="font-medium text-gray-600">Preferred Date:</span> {new Date(selectedSub.preferred_meeting_date).toLocaleDateString()}</div>}
              </div>
              <div className="pt-2 border-t border-gray-200">
                <p className="font-medium text-gray-600 mb-1">Subject:</p>
                <p className="text-gray-900 font-medium">{selectedSub.subject}</p>
              </div>
              <div>
                <p className="font-medium text-gray-600 mb-1">Description:</p>
                <p className="text-gray-900 whitespace-pre-wrap">{selectedSub.description}</p>
              </div>
            </div>

            <div className="mb-4">
              <label className="block text-sm font-medium text-gray-700 mb-1">Add to Meeting</label>
              <select value={selectedMeeting} onChange={e => setSelectedMeeting(e.target.value)} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm">
                <option value="">Select a meeting...</option>
                {meetings.map(m => (
                  <option key={m.id} value={m.id}>{m.title} — {new Date(m.meeting_date).toLocaleDateString()}</option>
                ))}
              </select>
            </div>

            <div className="mb-4">
              <label className="block text-sm font-medium text-gray-700 mb-1">Review Notes</label>
              <textarea value={reviewNotes} onChange={e => setReviewNotes(e.target.value)} rows={2} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Optional notes..." />
            </div>

            <div className="flex flex-wrap gap-3 justify-end">
              <button onClick={() => { setSelectedSub(null); setReviewNotes(''); setSelectedMeeting(''); }} className="px-4 py-2 text-sm border border-gray-300 rounded-lg hover:bg-gray-50">Close</button>
              <button onClick={() => handleAction(selectedSub.id, 'rejected')} disabled={reviewLoading} className="px-4 py-2 text-sm bg-red-600 text-white rounded-lg hover:bg-red-700 disabled:opacity-50">Reject</button>
              <button onClick={() => handleAction(selectedSub.id, 'approved')} disabled={reviewLoading} className="px-4 py-2 text-sm bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:opacity-50">Approve</button>
              <button onClick={() => handleAction(selectedSub.id, 'add_to_agenda')} disabled={reviewLoading || !selectedMeeting} className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50">
                Add to Agenda
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
