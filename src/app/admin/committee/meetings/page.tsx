'use client';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

interface Meeting {
  id: string;
  title: string;
  meeting_date: string;
  start_time?: string;
  end_time?: string;
  location?: string;
  description?: string;
  agenda_published: boolean;
  minutes_published: boolean;
  created_at: string;
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export default function CommitteeMeetingsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [meetings, setMeetings] = useState<Meeting[]>([]);
  const [loading, setLoading] = useState(true);
  const [total, setTotal] = useState(0);
  const [showCreateModal, setShowCreateModal] = useState(false);
  const [editMeeting, setEditMeeting] = useState<Meeting | null>(null);
  const [deleteConfirm, setDeleteConfirm] = useState<string | null>(null);
  const [successMsg, setSuccessMsg] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login'); return; }
    if (!ALLOWED_ROLES.includes(session.user?.role || '')) { router.push('/admin'); return; }
  }, [session, status, router]);

  const fetchMeetings = useCallback(async () => {
    try {
      setLoading(true);
      const res = await fetch('/api/admin/committee/meetings?pageSize=50');
      const data = await res.json();
      setMeetings(data.meetings || []);
      setTotal(data.total || 0);
    } catch { setError('Failed to load meetings'); }
    finally { setLoading(false); }
  }, []);

  useEffect(() => { if (session) fetchMeetings(); }, [session, fetchMeetings]);

  const handleDelete = async (id: string) => {
    try {
      await fetch(`/api/admin/committee/meetings/${id}`, { method: 'DELETE' });
      setDeleteConfirm(null);
      setSuccessMsg('Meeting deleted');
      fetchMeetings();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch { setError('Failed to delete'); }
  };

  const handlePublishToggle = async (meeting: Meeting, field: 'agenda_published' | 'minutes_published') => {
    try {
      await fetch(`/api/admin/committee/meetings/${meeting.id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ [field]: !meeting[field] }),
      });
      setSuccessMsg('Updated');
      fetchMeetings();
      setTimeout(() => setSuccessMsg(''), 2000);
    } catch { setError('Failed to update'); }
  };

  const upcoming = meetings.filter(m => new Date(m.meeting_date) >= new Date());
  const past = meetings.filter(m => new Date(m.meeting_date) < new Date());

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/admin/committee" className="text-green-600 hover:text-green-700 font-medium text-sm">← Committee</Link>
            <span className="text-gray-400">/</span>
            <h1 className="text-2xl font-bold text-gray-900">Meetings ({total})</h1>
          </div>
          <button onClick={() => setShowCreateModal(true)} className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 font-medium">
            + Schedule Meeting
          </button>
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {successMsg && <div className="mb-4 p-3 bg-green-50 border border-green-200 text-green-800 rounded-lg">{successMsg}</div>}
        {error && <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg">{error}</div>}

        {loading ? (
          <div className="text-center py-12 text-gray-500">Loading meetings...</div>
        ) : (
          <>
            {upcoming.length > 0 && (
              <section className="mb-8">
                <h2 className="text-lg font-semibold text-gray-700 mb-3">Upcoming Meetings</h2>
                <div className="space-y-3">
                  {upcoming.map(m => <MeetingRow key={m.id} meeting={m} onEdit={() => setEditMeeting(m)} onDelete={() => setDeleteConfirm(m.id)} onToggle={handlePublishToggle} />)}
                </div>
              </section>
            )}
            {past.length > 0 && (
              <section>
                <h2 className="text-lg font-semibold text-gray-700 mb-3">Past Meetings</h2>
                <div className="space-y-3">
                  {past.map(m => <MeetingRow key={m.id} meeting={m} onEdit={() => setEditMeeting(m)} onDelete={() => setDeleteConfirm(m.id)} onToggle={handlePublishToggle} />)}
                </div>
              </section>
            )}
            {meetings.length === 0 && (
              <div className="text-center py-16 bg-white rounded-xl border-2 border-dashed border-gray-200">
                <div className="text-5xl mb-4">📅</div>
                <h3 className="text-lg font-semibold text-gray-700 mb-2">No meetings yet</h3>
                <p className="text-gray-500 mb-4">Schedule your first committee meeting to get started.</p>
                <button onClick={() => setShowCreateModal(true)} className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700">Schedule Meeting</button>
              </div>
            )}
          </>
        )}
      </main>

      {(showCreateModal || editMeeting) && (
        <MeetingModal
          meeting={editMeeting}
          onClose={() => { setShowCreateModal(false); setEditMeeting(null); }}
          onSave={() => { setShowCreateModal(false); setEditMeeting(null); fetchMeetings(); setSuccessMsg(editMeeting ? 'Meeting updated' : 'Meeting scheduled'); setTimeout(() => setSuccessMsg(''), 3000); }}
        />
      )}

      {deleteConfirm && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-xl shadow-xl p-6 max-w-sm w-full">
            <h3 className="text-lg font-bold text-gray-900 mb-2">Delete Meeting?</h3>
            <p className="text-gray-600 mb-6 text-sm">This will also delete all associated agendas and minutes.</p>
            <div className="flex gap-3 justify-end">
              <button onClick={() => setDeleteConfirm(null)} className="px-4 py-2 text-sm border border-gray-300 rounded-lg">Cancel</button>
              <button onClick={() => handleDelete(deleteConfirm)} className="px-4 py-2 text-sm bg-red-600 text-white rounded-lg hover:bg-red-700">Delete</button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

function MeetingRow({ meeting, onEdit, onDelete, onToggle }: {
  meeting: Meeting;
  onEdit: () => void;
  onDelete: () => void;
  onToggle: (m: Meeting, field: 'agenda_published' | 'minutes_published') => void;
}) {
  const isUpcoming = new Date(meeting.meeting_date) >= new Date();
  return (
    <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-4 flex flex-wrap items-center gap-4">
      <div className={`w-2 h-16 rounded-full flex-shrink-0 ${isUpcoming ? 'bg-green-400' : 'bg-gray-300'}`} />
      <div className="flex-1 min-w-0">
        <div className="flex items-center gap-2 flex-wrap">
          <h3 className="font-semibold text-gray-900">{meeting.title}</h3>
          {meeting.agenda_published && <span className="text-xs bg-blue-100 text-blue-700 px-2 py-0.5 rounded-full">Agenda Published</span>}
          {meeting.minutes_published && <span className="text-xs bg-green-100 text-green-700 px-2 py-0.5 rounded-full">Minutes Published</span>}
        </div>
        <p className="text-sm text-gray-600 mt-0.5">
          {new Date(meeting.meeting_date).toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
          {meeting.start_time && ` · ${meeting.start_time}`}
          {meeting.location && ` · ${meeting.location}`}
        </p>
      </div>
      <div className="flex flex-wrap gap-2 items-center">
        <button onClick={() => onToggle(meeting, 'agenda_published')} className={`text-xs px-3 py-1.5 rounded-lg border ${meeting.agenda_published ? 'bg-blue-50 text-blue-700 border-blue-200' : 'bg-gray-50 text-gray-600 border-gray-200'}`}>
          {meeting.agenda_published ? 'Unpublish Agenda' : 'Publish Agenda'}
        </button>
        <button onClick={() => onToggle(meeting, 'minutes_published')} className={`text-xs px-3 py-1.5 rounded-lg border ${meeting.minutes_published ? 'bg-green-50 text-green-700 border-green-200' : 'bg-gray-50 text-gray-600 border-gray-200'}`}>
          {meeting.minutes_published ? 'Unpublish Minutes' : 'Publish Minutes'}
        </button>
        <Link href={`/admin/committee/meetings/${meeting.id}`} className="text-xs px-3 py-1.5 bg-green-50 text-green-700 border border-green-200 rounded-lg hover:bg-green-100">
          Manage
        </Link>
        <button onClick={onEdit} className="text-xs px-3 py-1.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-lg hover:bg-blue-100">Edit</button>
        <button onClick={onDelete} className="text-xs px-3 py-1.5 bg-red-50 text-red-700 border border-red-200 rounded-lg hover:bg-red-100">Delete</button>
      </div>
    </div>
  );
}

function MeetingModal({ meeting, onClose, onSave }: { meeting: Meeting | null; onClose: () => void; onSave: () => void }) {
  const [form, setForm] = useState({
    title: meeting?.title || '',
    meeting_date: meeting?.meeting_date || '',
    start_time: meeting?.start_time || '',
    end_time: meeting?.end_time || '',
    location: meeting?.location || '',
    description: meeting?.description || '',
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    try {
      const url = meeting ? `/api/admin/committee/meetings/${meeting.id}` : '/api/admin/committee/meetings';
      const method = meeting ? 'PATCH' : 'POST';
      const res = await fetch(url, { method, headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(form) });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to save');
      onSave();
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Failed to save');
    } finally { setLoading(false); }
  };

  return (
    <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
      <div className="bg-white rounded-xl shadow-xl p-6 max-w-lg w-full">
        <h3 className="text-xl font-bold text-gray-900 mb-6">{meeting ? 'Edit Meeting' : 'Schedule New Meeting'}</h3>
        {error && <div className="mb-4 p-3 bg-red-50 text-red-800 rounded-lg text-sm">{error}</div>}
        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Meeting Title *</label>
            <input required type="text" value={form.title} onChange={e => setForm(f => ({ ...f, title: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="e.g. Monthly Committee Meeting - March 2026" />
          </div>
          <div className="grid grid-cols-3 gap-3">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Date *</label>
              <input required type="date" value={form.meeting_date} onChange={e => setForm(f => ({ ...f, meeting_date: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Start Time</label>
              <input type="time" value={form.start_time} onChange={e => setForm(f => ({ ...f, start_time: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">End Time</label>
              <input type="time" value={form.end_time} onChange={e => setForm(f => ({ ...f, end_time: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
            </div>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Location</label>
            <input type="text" value={form.location} onChange={e => setForm(f => ({ ...f, location: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="e.g. Northwood Cemetery Office" />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Description / Notes</label>
            <textarea value={form.description} onChange={e => setForm(f => ({ ...f, description: e.target.value }))} rows={3} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
          </div>
          <div className="flex gap-3 justify-end pt-2">
            <button type="button" onClick={onClose} className="px-4 py-2 text-sm border border-gray-300 rounded-lg hover:bg-gray-50">Cancel</button>
            <button type="submit" disabled={loading} className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50">
              {loading ? 'Saving...' : meeting ? 'Save Changes' : 'Schedule Meeting'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}
