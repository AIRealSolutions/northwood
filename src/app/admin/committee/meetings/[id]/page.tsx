'use client';
import { useSession } from 'next-auth/react';
import { useRouter, useParams } from 'next/navigation';
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
}

interface AgendaItem {
  id: string;
  item_number: number;
  title: string;
  description?: string;
  notes?: string;
  status: string;
  is_public_submission: boolean;
  submitted_by_name?: string;
}

interface Minutes {
  id: string;
  content: string;
  approved: boolean;
  approved_at?: string;
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export default function MeetingDetailPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const params = useParams();
  const meetingId = params.id as string;

  const [meeting, setMeeting] = useState<Meeting | null>(null);
  const [agendas, setAgendas] = useState<AgendaItem[]>([]);
  const [minutes, setMinutes] = useState<Minutes | null>(null);
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState<'agenda' | 'minutes'>('agenda');
  const [minutesContent, setMinutesContent] = useState('');
  const [savingMinutes, setSavingMinutes] = useState(false);
  const [showAddAgenda, setShowAddAgenda] = useState(false);
  const [newAgenda, setNewAgenda] = useState({ title: '', description: '', notes: '' });
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
      const res = await fetch(`/api/admin/committee/meetings/${meetingId}`);
      const data = await res.json();
      setMeeting(data.meeting);
      setAgendas(data.agendas || []);
      setMinutes(data.minutes);
      setMinutesContent(data.minutes?.content || '');
    } catch { setError('Failed to load meeting'); }
    finally { setLoading(false); }
  }, [meetingId]);

  useEffect(() => { if (session) fetchData(); }, [session, fetchData]);

  const handleSaveMinutes = async (approve?: boolean) => {
    setSavingMinutes(true);
    try {
      const res = await fetch(`/api/admin/committee/meetings/${meetingId}/minutes`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ content: minutesContent, approved: approve !== undefined ? approve : minutes?.approved }),
      });
      if (!res.ok) throw new Error('Failed to save');
      setSuccessMsg(approve ? 'Minutes approved and published!' : 'Minutes saved');
      fetchData();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch { setError('Failed to save minutes'); }
    finally { setSavingMinutes(false); }
  };

  const handleAddAgenda = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      const res = await fetch(`/api/admin/committee/meetings/${meetingId}/agendas`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(newAgenda),
      });
      if (!res.ok) throw new Error('Failed to add');
      setNewAgenda({ title: '', description: '', notes: '' });
      setShowAddAgenda(false);
      setSuccessMsg('Agenda item added');
      fetchData();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch { setError('Failed to add agenda item'); }
  };

  const handleDeleteAgenda = async (agendaId: string) => {
    try {
      await fetch(`/api/admin/committee/meetings/${meetingId}/agendas?agendaId=${agendaId}`, { method: 'DELETE' });
      setSuccessMsg('Agenda item removed');
      fetchData();
      setTimeout(() => setSuccessMsg(''), 2000);
    } catch { setError('Failed to remove agenda item'); }
  };

  if (loading) return <div className="min-h-screen bg-gray-50 flex items-center justify-center text-gray-500">Loading...</div>;
  if (!meeting) return <div className="min-h-screen bg-gray-50 flex items-center justify-center text-gray-500">Meeting not found</div>;

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
          <div className="flex items-center gap-3 mb-2">
            <Link href="/admin/committee/meetings" className="text-green-600 hover:text-green-700 font-medium text-sm">← Meetings</Link>
            <span className="text-gray-400">/</span>
            <h1 className="text-xl font-bold text-gray-900">{meeting.title}</h1>
          </div>
          <p className="text-sm text-gray-600">
            {new Date(meeting.meeting_date).toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            {meeting.start_time && ` · ${meeting.start_time}`}
            {meeting.location && ` · ${meeting.location}`}
          </p>
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {successMsg && <div className="mb-4 p-3 bg-green-50 border border-green-200 text-green-800 rounded-lg">{successMsg}</div>}
        {error && <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg">{error}</div>}

        {/* Tabs */}
        <div className="flex gap-1 mb-6 bg-gray-100 p-1 rounded-lg w-fit">
          <button onClick={() => setActiveTab('agenda')} className={`px-5 py-2 rounded-md text-sm font-medium transition-all ${activeTab === 'agenda' ? 'bg-white shadow text-gray-900' : 'text-gray-600 hover:text-gray-900'}`}>
            Agenda ({agendas.length})
          </button>
          <button onClick={() => setActiveTab('minutes')} className={`px-5 py-2 rounded-md text-sm font-medium transition-all ${activeTab === 'minutes' ? 'bg-white shadow text-gray-900' : 'text-gray-600 hover:text-gray-900'}`}>
            Minutes {minutes?.approved && '✓'}
          </button>
        </div>

        {/* Agenda Tab */}
        {activeTab === 'agenda' && (
          <div>
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-lg font-semibold text-gray-800">Agenda Items</h2>
              <button onClick={() => setShowAddAgenda(true)} className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 text-sm font-medium">
                + Add Item
              </button>
            </div>

            {agendas.length === 0 ? (
              <div className="text-center py-12 bg-white rounded-xl border-2 border-dashed border-gray-200">
                <p className="text-gray-500 mb-3">No agenda items yet</p>
                <button onClick={() => setShowAddAgenda(true)} className="px-4 py-2 bg-green-600 text-white rounded-lg text-sm">Add First Item</button>
              </div>
            ) : (
              <div className="space-y-3">
                {agendas.map(item => (
                  <div key={item.id} className="bg-white rounded-xl border border-gray-200 p-4 flex items-start gap-4">
                    <div className="w-8 h-8 bg-green-100 text-green-700 rounded-full flex items-center justify-center font-bold text-sm flex-shrink-0">
                      {item.item_number}
                    </div>
                    <div className="flex-1">
                      <div className="flex items-center gap-2">
                        <h4 className="font-medium text-gray-900">{item.title}</h4>
                        {item.is_public_submission && (
                          <span className="text-xs bg-purple-100 text-purple-700 px-2 py-0.5 rounded-full">Public Submission</span>
                        )}
                      </div>
                      {item.description && <p className="text-sm text-gray-600 mt-1">{item.description}</p>}
                      {item.notes && <p className="text-xs text-gray-500 mt-1 italic">{item.notes}</p>}
                      {item.submitted_by_name && <p className="text-xs text-gray-400 mt-1">Submitted by: {item.submitted_by_name}</p>}
                    </div>
                    <button onClick={() => handleDeleteAgenda(item.id)} className="text-xs px-2 py-1 text-red-600 hover:bg-red-50 rounded">Remove</button>
                  </div>
                ))}
              </div>
            )}

            {showAddAgenda && (
              <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
                <div className="bg-white rounded-xl shadow-xl p-6 max-w-lg w-full">
                  <h3 className="text-lg font-bold text-gray-900 mb-4">Add Agenda Item</h3>
                  <form onSubmit={handleAddAgenda} className="space-y-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Title *</label>
                      <input required type="text" value={newAgenda.title} onChange={e => setNewAgenda(f => ({ ...f, title: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="e.g. Review maintenance budget" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Description</label>
                      <textarea value={newAgenda.description} onChange={e => setNewAgenda(f => ({ ...f, description: e.target.value }))} rows={3} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Notes</label>
                      <input type="text" value={newAgenda.notes} onChange={e => setNewAgenda(f => ({ ...f, notes: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div className="flex gap-3 justify-end">
                      <button type="button" onClick={() => setShowAddAgenda(false)} className="px-4 py-2 text-sm border border-gray-300 rounded-lg">Cancel</button>
                      <button type="submit" className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700">Add Item</button>
                    </div>
                  </form>
                </div>
              </div>
            )}
          </div>
        )}

        {/* Minutes Tab */}
        {activeTab === 'minutes' && (
          <div>
            <div className="flex items-center justify-between mb-4">
              <h2 className="text-lg font-semibold text-gray-800">Meeting Minutes</h2>
              {minutes?.approved && (
                <span className="text-sm bg-green-100 text-green-700 px-3 py-1 rounded-full font-medium">
                  ✓ Approved & Published
                </span>
              )}
            </div>
            <div className="bg-white rounded-xl border border-gray-200 p-6">
              <textarea
                value={minutesContent}
                onChange={e => setMinutesContent(e.target.value)}
                rows={20}
                className="w-full border border-gray-300 rounded-lg px-4 py-3 text-sm font-mono resize-y"
                placeholder={`Meeting Minutes — ${meeting.title}\nDate: ${new Date(meeting.meeting_date).toLocaleDateString()}\nLocation: ${meeting.location || 'TBD'}\n\nAttendees:\n- \n\nCall to Order:\n\nAgenda Items:\n1. \n\nAction Items:\n- \n\nNext Meeting:\n\nAdjournment:`}
              />
              <div className="flex gap-3 mt-4 justify-end">
                <button onClick={() => handleSaveMinutes()} disabled={savingMinutes} className="px-4 py-2 text-sm border border-gray-300 rounded-lg hover:bg-gray-50 disabled:opacity-50">
                  {savingMinutes ? 'Saving...' : 'Save Draft'}
                </button>
                <button onClick={() => handleSaveMinutes(true)} disabled={savingMinutes || !minutesContent} className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50">
                  Approve & Publish
                </button>
              </div>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}
