'use client';
import { useState, useEffect, Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';

interface Meeting {
  id: string;
  title: string;
  meeting_date: string;
  start_time?: string;
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
}

function CemeteryCommitteeContent() {
  const searchParams = useSearchParams();
  const [meetings, setMeetings] = useState<Meeting[]>([]);
  const [selectedMeeting, setSelectedMeeting] = useState<Meeting | null>(null);
  const [agendaItems, setAgendaItems] = useState<AgendaItem[]>([]);
  const [minutes, setMinutes] = useState<string>('');
  const [loadingMeeting, setLoadingMeeting] = useState(false);
  const [activeSection, setActiveSection] = useState<'meetings' | 'submit-agenda' | 'change-request'>('meetings');
  const [agendaForm, setAgendaForm] = useState({ name: '', email: '', phone: '', subject: '', description: '', preferred_date: '' });
  const [changeForm, setChangeForm] = useState({ name: '', email: '', phone: '', relationship: '', subject: '', details: '', request_type: 'occupant_details', plot_number: '', occupant_name: '' });
  const [agendaSubmitted, setAgendaSubmitted] = useState(false);
  const [changeSubmitted, setChangeSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [formError, setFormError] = useState('');

  // Read URL params to pre-fill change request form when arriving from a plot page
  useEffect(() => {
    const section = searchParams.get('section');
    const plot = searchParams.get('plot');
    const occupant = searchParams.get('occupant');
    const type = searchParams.get('type');

    if (section === 'change-request') {
      setActiveSection('change-request');
    } else if (section === 'submit-agenda') {
      setActiveSection('submit-agenda');
    }

    if (plot || occupant || type) {
      setChangeForm(f => ({
        ...f,
        plot_number: plot || f.plot_number,
        occupant_name: occupant || f.occupant_name,
        request_type: type || f.request_type,
        subject: plot && occupant
          ? `Correction for ${occupant} — Plot ${plot}`
          : plot
          ? `Correction for Plot ${plot}`
          : f.subject,
      }));
    }
  }, [searchParams]);

  useEffect(() => {
    const fetchMeetings = async () => {
      try {
        const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
        const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
        const headers = { 'apikey': supabaseKey || '', 'Authorization': `Bearer ${supabaseKey}` };
        const res = await fetch(`${supabaseUrl}/rest/v1/committee_meetings?order=meeting_date.desc&limit=20`, { headers });
        const data = await res.json();
        setMeetings(Array.isArray(data) ? data : []);
      } catch { /* ignore */ }
    };
    fetchMeetings();
  }, []);

  const loadMeetingDetails = async (meeting: Meeting) => {
    setSelectedMeeting(meeting);
    setLoadingMeeting(true);
    try {
      const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
      const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
      const headers = { 'apikey': supabaseKey || '', 'Authorization': `Bearer ${supabaseKey}` };

      const [agendasRes, minutesRes] = await Promise.all([
        meeting.agenda_published ? fetch(`${supabaseUrl}/rest/v1/meeting_agendas?meeting_id=eq.${meeting.id}&order=item_number.asc`, { headers }) : Promise.resolve(null),
        meeting.minutes_published ? fetch(`${supabaseUrl}/rest/v1/meeting_minutes?meeting_id=eq.${meeting.id}`, { headers }) : Promise.resolve(null),
      ]);

      if (agendasRes) setAgendaItems(await agendasRes.json());
      else setAgendaItems([]);

      if (minutesRes) {
        const mins = await minutesRes.json();
        setMinutes(mins[0]?.content || '');
      } else setMinutes('');
    } catch { /* ignore */ }
    finally { setLoadingMeeting(false); }
  };

  const handleAgendaSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitting(true);
    setFormError('');
    try {
      const res = await fetch('/api/public/agenda-submissions', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          submitted_by_name: agendaForm.name,
          submitted_by_email: agendaForm.email,
          submitted_by_phone: agendaForm.phone,
          subject: agendaForm.subject,
          description: agendaForm.description,
          preferred_meeting_date: agendaForm.preferred_date || undefined,
        }),
      });
      if (!res.ok) throw new Error('Submission failed');
      setAgendaSubmitted(true);
    } catch { setFormError('Failed to submit. Please try again.'); }
    finally { setSubmitting(false); }
  };

  const handleChangeSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitting(true);
    setFormError('');
    try {
      const res = await fetch('/api/public/change-requests', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          request_type: changeForm.request_type,
          submitted_by_name: changeForm.name,
          submitted_by_email: changeForm.email,
          submitted_by_phone: changeForm.phone,
          relationship_to_deceased: changeForm.relationship,
          subject: changeForm.subject,
          details: changeForm.details,
          requested_changes: { plot_number: changeForm.plot_number, occupant_name: changeForm.occupant_name },
        }),
      });
      if (!res.ok) throw new Error('Submission failed');
      setChangeSubmitted(true);
    } catch { setFormError('Failed to submit. Please try again.'); }
    finally { setSubmitting(false); }
  };

  const upcomingMeetings = meetings.filter(m => new Date(m.meeting_date) >= new Date());
  const pastMeetings = meetings.filter(m => new Date(m.meeting_date) < new Date());

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-green-800 text-white">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
          <div className="flex items-center justify-between">
            <div>
              <Link href="/" className="text-green-200 hover:text-white text-sm mb-1 block">← Northwood Cemetery</Link>
              <h1 className="text-3xl font-bold">Cemetery Committee</h1>
              <p className="text-green-200 mt-1">Northwood Cemetery Preservation & Management Committee</p>
            </div>
          </div>
        </div>
      </header>

      {/* Navigation Tabs */}
      <div className="bg-green-700 text-white">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex gap-1">
            {[
              { key: 'meetings', label: 'Meetings & Minutes' },
              { key: 'submit-agenda', label: 'Submit Agenda Item' },
              { key: 'change-request', label: 'Request a Change' },
            ].map(tab => (
              <button
                key={tab.key}
                onClick={() => setActiveSection(tab.key as typeof activeSection)}
                className={`px-5 py-3 text-sm font-medium transition-colors ${activeSection === tab.key ? 'bg-white text-green-800' : 'text-green-100 hover:bg-green-600'}`}
              >
                {tab.label}
              </button>
            ))}
          </div>
        </div>
      </div>

      <main className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-8">

        {/* Meetings Section */}
        {activeSection === 'meetings' && (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {/* Meeting List */}
            <div className="md:col-span-1">
              {upcomingMeetings.length > 0 && (
                <div className="mb-6">
                  <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">Upcoming Meetings</h2>
                  <div className="space-y-2">
                    {upcomingMeetings.map(m => (
                      <button
                        key={m.id}
                        onClick={() => loadMeetingDetails(m)}
                        className={`w-full text-left p-3 rounded-lg border transition-all ${selectedMeeting?.id === m.id ? 'bg-green-50 border-green-400' : 'bg-white border-gray-200 hover:border-green-300'}`}
                      >
                        <div className="font-medium text-gray-900 text-sm">{m.title}</div>
                        <div className="text-xs text-gray-500 mt-0.5">
                          {new Date(m.meeting_date).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' })}
                        </div>
                        <div className="flex gap-1 mt-1">
                          {m.agenda_published && <span className="text-xs bg-blue-100 text-blue-600 px-1.5 py-0.5 rounded">Agenda</span>}
                          {m.minutes_published && <span className="text-xs bg-green-100 text-green-600 px-1.5 py-0.5 rounded">Minutes</span>}
                        </div>
                      </button>
                    ))}
                  </div>
                </div>
              )}
              {pastMeetings.length > 0 && (
                <div>
                  <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-3">Past Meetings</h2>
                  <div className="space-y-2">
                    {pastMeetings.slice(0, 10).map(m => (
                      <button
                        key={m.id}
                        onClick={() => loadMeetingDetails(m)}
                        className={`w-full text-left p-3 rounded-lg border transition-all ${selectedMeeting?.id === m.id ? 'bg-green-50 border-green-400' : 'bg-white border-gray-200 hover:border-green-300'}`}
                      >
                        <div className="font-medium text-gray-900 text-sm">{m.title}</div>
                        <div className="text-xs text-gray-500 mt-0.5">
                          {new Date(m.meeting_date).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' })}
                        </div>
                        <div className="flex gap-1 mt-1">
                          {m.agenda_published && <span className="text-xs bg-blue-100 text-blue-600 px-1.5 py-0.5 rounded">Agenda</span>}
                          {m.minutes_published && <span className="text-xs bg-green-100 text-green-600 px-1.5 py-0.5 rounded">Minutes</span>}
                        </div>
                      </button>
                    ))}
                  </div>
                </div>
              )}
              {meetings.length === 0 && (
                <div className="text-center py-8 bg-white rounded-xl border border-gray-200">
                  <p className="text-gray-500 text-sm">No meetings scheduled yet</p>
                </div>
              )}
            </div>

            {/* Meeting Detail */}
            <div className="md:col-span-2">
              {!selectedMeeting ? (
                <div className="bg-white rounded-xl border border-gray-200 p-8 text-center">
                  <div className="text-5xl mb-4">📅</div>
                  <h3 className="text-lg font-semibold text-gray-700 mb-2">Select a Meeting</h3>
                  <p className="text-gray-500 text-sm">Click on a meeting from the list to view its agenda and minutes.</p>
                </div>
              ) : loadingMeeting ? (
                <div className="bg-white rounded-xl border border-gray-200 p-8 text-center text-gray-500">Loading...</div>
              ) : (
                <div className="bg-white rounded-xl border border-gray-200 overflow-hidden">
                  <div className="bg-green-50 border-b border-green-100 p-5">
                    <h2 className="text-xl font-bold text-gray-900">{selectedMeeting.title}</h2>
                    <p className="text-sm text-gray-600 mt-1">
                      {new Date(selectedMeeting.meeting_date).toLocaleDateString('en-US', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
                      {selectedMeeting.start_time && ` · ${selectedMeeting.start_time}`}
                      {selectedMeeting.location && ` · ${selectedMeeting.location}`}
                    </p>
                    {selectedMeeting.description && <p className="text-sm text-gray-600 mt-2">{selectedMeeting.description}</p>}
                  </div>

                  <div className="p-5">
                    {/* Agenda */}
                    {selectedMeeting.agenda_published && agendaItems.length > 0 && (
                      <div className="mb-6">
                        <h3 className="text-base font-semibold text-gray-800 mb-3 flex items-center gap-2">
                          <span className="w-6 h-6 bg-blue-100 text-blue-700 rounded-full flex items-center justify-center text-xs">A</span>
                          Agenda
                        </h3>
                        <ol className="space-y-2">
                          {agendaItems.map(item => (
                            <li key={item.id} className="flex gap-3">
                              <span className="w-6 h-6 bg-gray-100 text-gray-600 rounded-full flex items-center justify-center text-xs font-medium flex-shrink-0 mt-0.5">{item.item_number}</span>
                              <div>
                                <p className="text-sm font-medium text-gray-900">{item.title}</p>
                                {item.description && <p className="text-xs text-gray-500 mt-0.5">{item.description}</p>}
                              </div>
                            </li>
                          ))}
                        </ol>
                      </div>
                    )}

                    {/* Minutes */}
                    {selectedMeeting.minutes_published && minutes && (
                      <div>
                        <h3 className="text-base font-semibold text-gray-800 mb-3 flex items-center gap-2">
                          <span className="w-6 h-6 bg-green-100 text-green-700 rounded-full flex items-center justify-center text-xs">M</span>
                          Meeting Minutes
                        </h3>
                        <div className="bg-gray-50 rounded-lg p-4 text-sm text-gray-800 whitespace-pre-wrap font-mono leading-relaxed">
                          {minutes}
                        </div>
                      </div>
                    )}

                    {!selectedMeeting.agenda_published && !selectedMeeting.minutes_published && (
                      <p className="text-gray-500 text-sm text-center py-4">No agenda or minutes published for this meeting yet.</p>
                    )}
                  </div>
                </div>
              )}
            </div>
          </div>
        )}

        {/* Submit Agenda Item */}
        {activeSection === 'submit-agenda' && (
          <div className="max-w-2xl mx-auto">
            <div className="bg-white rounded-xl border border-gray-200 p-6">
              <h2 className="text-xl font-bold text-gray-900 mb-2">Submit an Agenda Item</h2>
              <p className="text-gray-600 text-sm mb-6">Have a topic you&apos;d like the Cemetery Committee to address? Submit it here and the committee will review your request.</p>

              {agendaSubmitted ? (
                <div className="text-center py-8">
                  <div className="text-5xl mb-4">✅</div>
                  <h3 className="text-lg font-semibold text-gray-900 mb-2">Submission Received!</h3>
                  <p className="text-gray-600 text-sm mb-4">Thank you for your submission. The Cemetery Committee will review your agenda item and contact you if it is added to an upcoming meeting.</p>
                  <button onClick={() => { setAgendaSubmitted(false); setAgendaForm({ name: '', email: '', phone: '', subject: '', description: '', preferred_date: '' }); }} className="px-4 py-2 bg-green-600 text-white rounded-lg text-sm hover:bg-green-700">Submit Another</button>
                </div>
              ) : (
                <form onSubmit={handleAgendaSubmit} className="space-y-4">
                  {formError && <div className="p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg text-sm">{formError}</div>}
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Your Name *</label>
                      <input required type="text" value={agendaForm.name} onChange={e => setAgendaForm(f => ({ ...f, name: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Email Address *</label>
                      <input required type="email" value={agendaForm.email} onChange={e => setAgendaForm(f => ({ ...f, email: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
                      <input type="tel" value={agendaForm.phone} onChange={e => setAgendaForm(f => ({ ...f, phone: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Preferred Meeting Date</label>
                      <input type="date" value={agendaForm.preferred_date} onChange={e => setAgendaForm(f => ({ ...f, preferred_date: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Agenda Item Subject *</label>
                    <input required type="text" value={agendaForm.subject} onChange={e => setAgendaForm(f => ({ ...f, subject: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Brief title for your agenda item" />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Description *</label>
                    <textarea required value={agendaForm.description} onChange={e => setAgendaForm(f => ({ ...f, description: e.target.value }))} rows={4} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Please describe the topic you'd like to bring before the committee..." />
                  </div>
                  <button type="submit" disabled={submitting} className="w-full py-3 bg-green-600 text-white rounded-lg font-medium hover:bg-green-700 disabled:opacity-50">
                    {submitting ? 'Submitting...' : 'Submit Agenda Item'}
                  </button>
                </form>
              )}
            </div>
          </div>
        )}

        {/* Change Request */}
        {activeSection === 'change-request' && (
          <div className="max-w-2xl mx-auto">
            <div className="bg-white rounded-xl border border-gray-200 p-6">
              <h2 className="text-xl font-bold text-gray-900 mb-2">Request a Change</h2>
              <p className="text-gray-600 text-sm mb-6">If you have information that needs to be updated for a cemetery occupant, or would like to submit photos or media, please use this form. The committee will review your request.</p>

              {changeSubmitted ? (
                <div className="text-center py-8">
                  <div className="text-5xl mb-4">✅</div>
                  <h3 className="text-lg font-semibold text-gray-900 mb-2">Request Received!</h3>
                  <p className="text-gray-600 text-sm mb-4">Thank you for your submission. The Cemetery Committee will review your change request and contact you with any questions or updates.</p>
                  <button onClick={() => { setChangeSubmitted(false); setChangeForm({ name: '', email: '', phone: '', relationship: '', subject: '', details: '', request_type: 'occupant_details', plot_number: '', occupant_name: '' }); }} className="px-4 py-2 bg-green-600 text-white rounded-lg text-sm hover:bg-green-700">Submit Another</button>
                </div>
              ) : (
                <form onSubmit={handleChangeSubmit} className="space-y-4">
                  {formError && <div className="p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg text-sm">{formError}</div>}
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Request Type *</label>
                    <select value={changeForm.request_type} onChange={e => setChangeForm(f => ({ ...f, request_type: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm">
                      <option value="occupant_details">Update Occupant Details (name, dates, etc.)</option>
                      <option value="media_upload">Submit Photos or Media</option>
                      <option value="other">Other Request</option>
                    </select>
                  </div>
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Your Name *</label>
                      <input required type="text" value={changeForm.name} onChange={e => setChangeForm(f => ({ ...f, name: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Email Address *</label>
                      <input required type="email" value={changeForm.email} onChange={e => setChangeForm(f => ({ ...f, email: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Phone Number</label>
                      <input type="tel" value={changeForm.phone} onChange={e => setChangeForm(f => ({ ...f, phone: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Relationship to Occupant</label>
                      <select value={changeForm.relationship} onChange={e => setChangeForm(f => ({ ...f, relationship: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm">
                        <option value="">Select...</option>
                        <option value="family">Family Member</option>
                        <option value="friend">Friend</option>
                        <option value="researcher">Genealogy Researcher</option>
                        <option value="other">Other</option>
                      </select>
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-4">
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Occupant Name</label>
                      <input type="text" value={changeForm.occupant_name} onChange={e => setChangeForm(f => ({ ...f, occupant_name: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Name of the deceased" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium text-gray-700 mb-1">Plot Number (if known)</label>
                      <input type="text" value={changeForm.plot_number} onChange={e => setChangeForm(f => ({ ...f, plot_number: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="e.g. NW-A-001-1" />
                    </div>
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Subject *</label>
                    <input required type="text" value={changeForm.subject} onChange={e => setChangeForm(f => ({ ...f, subject: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Brief description of the change requested" />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">Details *</label>
                    <textarea required value={changeForm.details} onChange={e => setChangeForm(f => ({ ...f, details: e.target.value }))} rows={4} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" placeholder="Please provide as much detail as possible about the change you are requesting..." />
                  </div>
                  <button type="submit" disabled={submitting} className="w-full py-3 bg-green-600 text-white rounded-lg font-medium hover:bg-green-700 disabled:opacity-50">
                    {submitting ? 'Submitting...' : 'Submit Change Request'}
                  </button>
                </form>
              )}
            </div>
          </div>
        )}
      </main>

      {/* Footer */}
      <footer className="bg-green-800 text-green-200 mt-12 py-6">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-sm">
          <p>Northwood Cemetery Committee · Preserving History, Honoring Lives</p>
          <p className="mt-1"><Link href="/" className="hover:text-white">← Return to Northwood Cemetery</Link></p>
        </div>
      </footer>
    </div>
  );
}

export default function CemeteryCommitteePage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-gray-500">Loading...</div>
      </div>
    }>
      <CemeteryCommitteeContent />
    </Suspense>
  );
}
