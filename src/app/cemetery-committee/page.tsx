'use client';
export const dynamic = 'force-dynamic';

import { useState, useEffect, Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import { useSession } from 'next-auth/react';
import Link from 'next/link';

// ─── Types ────────────────────────────────────────────────────────────────────

interface CommitteeMember {
  id: string;
  full_name: string;
  title?: string;
  bio?: string;
  photo_url?: string;
  email?: string;
  phone?: string;
  term_start?: string;
  term_end?: string;
}

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
}

// ─── Helpers ──────────────────────────────────────────────────────────────────

function formatDate(d: string) {
  return new Date(d + 'T12:00:00').toLocaleDateString('en-US', {
    weekday: 'long', year: 'numeric', month: 'long', day: 'numeric',
  });
}

function formatTime(t?: string) {
  if (!t) return '';
  const [h, m] = t.split(':');
  const hour = parseInt(h);
  const ampm = hour >= 12 ? 'PM' : 'AM';
  const displayHour = hour > 12 ? hour - 12 : hour === 0 ? 12 : hour;
  return `${displayHour}:${m} ${ampm}`;
}

// ─── Section: Hero ────────────────────────────────────────────────────────────

function Hero({ onNav }: { onNav: (s: string) => void }) {
  return (
    <section className="bg-gradient-to-br from-green-900 via-green-800 to-emerald-900 text-white py-20 px-4">
      <div className="max-w-4xl mx-auto text-center">
        <div className="inline-flex items-center gap-2 bg-green-700/50 border border-green-600 rounded-full px-4 py-1.5 text-sm text-green-200 mb-6">
          <span className="w-2 h-2 bg-green-400 rounded-full animate-pulse"></span>
          Northwood Cemetery Committee
        </div>
        <h1 className="text-4xl md:text-5xl font-bold mb-4 leading-tight">
          Preserving History,<br />Honoring Lives
        </h1>
        <p className="text-green-200 text-lg max-w-2xl mx-auto mb-10">
          The Cemetery Committee oversees the care and stewardship of Northwood Cemetery in Southport, NC.
          We welcome community involvement and public participation.
        </p>
        <div className="flex flex-col sm:flex-row gap-3 justify-center">
          <button
            onClick={() => onNav('meetings')}
            className="px-6 py-3 bg-white text-green-900 font-semibold rounded-xl hover:bg-green-50 transition-colors"
          >
            Meeting Schedule
          </button>
          <button
            onClick={() => onNav('submit-agenda')}
            className="px-6 py-3 bg-green-700 border border-green-500 text-white font-semibold rounded-xl hover:bg-green-600 transition-colors"
          >
            Submit an Agenda Item
          </button>
          <button
            onClick={() => onNav('change-request')}
            className="px-6 py-3 bg-amber-600 text-white font-semibold rounded-xl hover:bg-amber-700 transition-colors"
          >
            Submit a Correction
          </button>
        </div>
      </div>
    </section>
  );
}

// ─── Section: Committee Members ───────────────────────────────────────────────

function MembersSection({ members }: { members: CommitteeMember[] }) {
  return (
    <section id="members" className="py-16 px-4 bg-white">
      <div className="max-w-5xl mx-auto">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-bold text-gray-900 mb-3">Meet the Committee</h2>
          <p className="text-gray-500 max-w-xl mx-auto">
            Our volunteer committee members are dedicated community members committed to the preservation and care of Northwood Cemetery.
          </p>
        </div>

        {members.length === 0 ? (
          <div className="text-center py-12 text-gray-400">
            <p>Committee member information coming soon.</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {members.map(m => (
              <div key={m.id} className="bg-gray-50 rounded-2xl p-6 border border-gray-100 hover:shadow-md transition-shadow">
                {/* Avatar */}
                <div className="w-20 h-20 rounded-full bg-green-100 flex items-center justify-center mx-auto mb-4 overflow-hidden border-4 border-white shadow">
                  {m.photo_url ? (
                    <img src={m.photo_url} alt={m.full_name} className="w-full h-full object-cover" />
                  ) : (
                    <span className="text-3xl font-bold text-green-700">{m.full_name.charAt(0)}</span>
                  )}
                </div>
                <div className="text-center">
                  <h3 className="text-lg font-bold text-gray-900">{m.full_name}</h3>
                  {m.title && (
                    <span className="inline-block mt-1 px-3 py-0.5 bg-green-100 text-green-800 text-xs font-medium rounded-full">
                      {m.title}
                    </span>
                  )}
                  {(m.term_start || m.term_end) && (
                    <p className="text-xs text-gray-400 mt-2">
                      Term: {m.term_start ? new Date(m.term_start).getFullYear() : '?'}
                      {' – '}
                      {m.term_end ? new Date(m.term_end).getFullYear() : 'Present'}
                    </p>
                  )}
                  {m.bio && (
                    <p className="text-sm text-gray-600 mt-3 leading-relaxed">{m.bio}</p>
                  )}
                  {(m.email || m.phone) && (
                    <div className="mt-4 pt-4 border-t border-gray-200 flex flex-col gap-1 text-xs text-gray-500">
                      {m.email && (
                        <a href={`mailto:${m.email}`} className="hover:text-green-700 transition-colors">
                          ✉ {m.email}
                        </a>
                      )}
                      {m.phone && (
                        <a href={`tel:${m.phone}`} className="hover:text-green-700 transition-colors">
                          📞 {m.phone}
                        </a>
                      )}
                    </div>
                  )}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </section>
  );
}

// ─── Section: Meeting Schedule ────────────────────────────────────────────────

function MeetingsSection({ upcoming, recent }: { upcoming: Meeting[]; recent: Meeting[] }) {
  const [expandedId, setExpandedId] = useState<string | null>(null);
  const [meetingDetail, setMeetingDetail] = useState<{ agendaItems: AgendaItem[]; minutesContent: string } | null>(null);
  const [loadingDetail, setLoadingDetail] = useState(false);

  const toggleMeeting = async (id: string) => {
    if (expandedId === id) {
      setExpandedId(null);
      setMeetingDetail(null);
      return;
    }
    setExpandedId(id);
    setLoadingDetail(true);
    try {
      const res = await fetch(`/api/public/meetings/${id}`);
      const data = await res.json();
      setMeetingDetail({ agendaItems: data.agendaItems || [], minutesContent: data.minutesContent || '' });
    } catch {
      setMeetingDetail({ agendaItems: [], minutesContent: '' });
    } finally {
      setLoadingDetail(false);
    }
  };

  const MeetingCard = ({ m, isPast }: { m: Meeting; isPast: boolean }) => (
    <div className={`rounded-xl border ${isPast ? 'border-gray-200 bg-gray-50' : 'border-green-200 bg-white'} overflow-hidden`}>
      <button
        onClick={() => toggleMeeting(m.id)}
        className="w-full text-left p-5 hover:bg-green-50/50 transition-colors"
      >
        <div className="flex items-start justify-between gap-4">
          <div className="flex gap-4 items-start">
            {/* Date badge */}
            <div className={`flex-shrink-0 w-14 text-center rounded-xl py-2 ${isPast ? 'bg-gray-200 text-gray-600' : 'bg-green-700 text-white'}`}>
              <div className="text-xs font-medium uppercase">
                {new Date(m.meeting_date + 'T12:00:00').toLocaleDateString('en-US', { month: 'short' })}
              </div>
              <div className="text-2xl font-bold leading-none">
                {new Date(m.meeting_date + 'T12:00:00').getDate()}
              </div>
              <div className="text-xs">
                {new Date(m.meeting_date + 'T12:00:00').getFullYear()}
              </div>
            </div>
            {/* Details */}
            <div>
              <h3 className="font-semibold text-gray-900">{m.title}</h3>
              <div className="text-sm text-gray-500 mt-1 space-y-0.5">
                {(m.start_time || m.end_time) && (
                  <p>🕐 {formatTime(m.start_time)}{m.end_time ? ` – ${formatTime(m.end_time)}` : ''}</p>
                )}
                {m.location && <p>📍 {m.location}</p>}
                {m.description && <p className="text-gray-400 text-xs mt-1">{m.description}</p>}
              </div>
              <div className="flex gap-2 mt-2">
                {m.agenda_published && (
                  <span className="px-2 py-0.5 bg-blue-100 text-blue-700 text-xs rounded-full font-medium">Agenda Available</span>
                )}
                {m.minutes_published && (
                  <span className="px-2 py-0.5 bg-green-100 text-green-700 text-xs rounded-full font-medium">Minutes Published</span>
                )}
              </div>
            </div>
          </div>
          <svg
            className={`w-5 h-5 text-gray-400 flex-shrink-0 mt-1 transition-transform ${expandedId === m.id ? 'rotate-180' : ''}`}
            fill="none" stroke="currentColor" viewBox="0 0 24 24"
          >
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
          </svg>
        </div>
      </button>

      {/* Expanded content */}
      {expandedId === m.id && (
        <div className="border-t border-gray-100 px-5 pb-5 pt-4">
          {loadingDetail ? (
            <div className="text-sm text-gray-400 py-2">Loading details...</div>
          ) : meetingDetail ? (
            <div className="space-y-4">
              {meetingDetail.agendaItems.length > 0 && (
                <div>
                  <h4 className="text-sm font-semibold text-gray-700 mb-2 uppercase tracking-wide">Agenda</h4>
                  <ol className="space-y-1.5">
                    {meetingDetail.agendaItems.map(item => (
                      <li key={item.id} className="flex gap-3 text-sm">
                        <span className="w-5 h-5 bg-green-100 text-green-700 rounded-full flex items-center justify-center text-xs font-bold flex-shrink-0 mt-0.5">
                          {item.item_number}
                        </span>
                        <div>
                          <span className="text-gray-800 font-medium">{item.title}</span>
                          {item.description && <p className="text-gray-500 text-xs mt-0.5">{item.description}</p>}
                        </div>
                      </li>
                    ))}
                  </ol>
                </div>
              )}
              {meetingDetail.minutesContent && (
                <div>
                  <h4 className="text-sm font-semibold text-gray-700 mb-2 uppercase tracking-wide">Meeting Minutes</h4>
                  <div className="bg-gray-50 rounded-lg p-4 text-sm text-gray-700 whitespace-pre-wrap leading-relaxed border border-gray-200">
                    {meetingDetail.minutesContent}
                  </div>
                </div>
              )}
              {meetingDetail.agendaItems.length === 0 && !meetingDetail.minutesContent && (
                <p className="text-sm text-gray-400">No agenda or minutes have been published for this meeting yet.</p>
              )}
            </div>
          ) : null}
        </div>
      )}
    </div>
  );

  return (
    <section id="meetings" className="py-16 px-4 bg-gray-50">
      <div className="max-w-3xl mx-auto">
        <div className="text-center mb-12">
          <h2 className="text-3xl font-bold text-gray-900 mb-3">Meeting Schedule</h2>
          <p className="text-gray-500">
            Committee meetings are open to the public. Click any meeting to view the agenda and published minutes.
          </p>
        </div>

        {upcoming.length > 0 && (
          <div className="mb-10">
            <h3 className="text-sm font-semibold text-gray-500 uppercase tracking-widest mb-4">Upcoming Meetings</h3>
            <div className="space-y-3">
              {upcoming.map(m => <MeetingCard key={m.id} m={m} isPast={false} />)}
            </div>
          </div>
        )}

        {upcoming.length === 0 && (
          <div className="text-center py-8 bg-white rounded-xl border border-gray-200 mb-10">
            <p className="text-gray-400">No upcoming meetings scheduled at this time.</p>
            <p className="text-sm text-gray-400 mt-1">Check back soon or contact the committee.</p>
          </div>
        )}

        {recent.length > 0 && (
          <div>
            <h3 className="text-sm font-semibold text-gray-500 uppercase tracking-widest mb-4">Recent Meetings</h3>
            <div className="space-y-3">
              {recent.map(m => <MeetingCard key={m.id} m={m} isPast={true} />)}
            </div>
          </div>
        )}
      </div>
    </section>
  );
}

// ─── Auth Gate ────────────────────────────────────────────────────────────────

function AuthGate({ action, children }: { action: string; children: React.ReactNode }) {
  const { data: session, status } = useSession();

  if (status === 'loading') {
    return (
      <div className="py-12 text-center text-gray-400">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-green-600 mx-auto"></div>
      </div>
    );
  }

  if (!session) {
    return (
      <div className="bg-amber-50 border border-amber-200 rounded-2xl p-8 text-center">
        <div className="text-4xl mb-4">🔒</div>
        <h3 className="text-lg font-bold text-gray-900 mb-2">Sign In Required</h3>
        <p className="text-gray-600 text-sm mb-6 max-w-sm mx-auto">
          You must be a registered member to {action}. Registration is free and only takes a moment.
        </p>
        <div className="flex flex-col sm:flex-row gap-3 justify-center">
          <Link
            href={`/auth/login?callbackUrl=/cemetery-committee`}
            className="px-6 py-2.5 bg-green-700 hover:bg-green-800 text-white rounded-xl font-semibold text-sm transition-colors"
          >
            Sign In
          </Link>
          <Link
            href="/auth/register"
            className="px-6 py-2.5 bg-white border border-gray-300 hover:bg-gray-50 text-gray-700 rounded-xl font-semibold text-sm transition-colors"
          >
            Create Account
          </Link>
        </div>
      </div>
    );
  }

  return <>{children}</>;
}

// ─── Section: Submit Agenda Item ──────────────────────────────────────────────

function AgendaSubmissionForm() {
  const { data: session } = useSession();
  const [form, setForm] = useState({
    name: '', email: '', phone: '',
    subject: '', description: '', preferred_date: '',
  });
  const [submitted, setSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState('');
  const [profileLoaded, setProfileLoaded] = useState(false);

  // Pre-fill contact details from user profile
  useEffect(() => {
    if (session?.user?.id && !profileLoaded) {
      fetch('/api/user/profile')
        .then(r => r.json())
        .then(data => {
          if (data.name || data.email) {
            setForm(f => ({
              ...f,
              name: data.name || f.name,
              email: data.email || f.email,
              phone: data.phone || f.phone,
            }));
            setProfileLoaded(true);
          }
        })
        .catch(() => {});
    }
  }, [session, profileLoaded]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!form.subject.trim() || !form.description.trim()) {
      setError('Please fill in the subject and description.');
      return;
    }
    setSubmitting(true);
    setError('');
    try {
      const res = await fetch('/api/public/agenda-submissions', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      });
      if (!res.ok) {
        const d = await res.json();
        throw new Error(d.error || 'Submission failed');
      }
      setSubmitted(true);
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Submission failed. Please try again.');
    } finally {
      setSubmitting(false);
    }
  };

  if (submitted) {
    return (
      <div className="bg-green-50 border border-green-200 rounded-2xl p-8 text-center">
        <div className="text-5xl mb-4">✅</div>
        <h3 className="text-xl font-bold text-green-800 mb-2">Agenda Item Submitted!</h3>
        <p className="text-green-700 text-sm">
          Thank you for your submission. The committee will review it and may include it in an upcoming meeting agenda.
        </p>
        <button
          onClick={() => { setSubmitted(false); setForm(f => ({ ...f, subject: '', description: '', preferred_date: '' })); }}
          className="mt-4 px-4 py-2 bg-green-700 text-white rounded-lg text-sm hover:bg-green-800"
        >
          Submit Another
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      {error && (
        <div className="p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">{error}</div>
      )}

      {/* Contact info — pre-filled, read-only */}
      <div className="bg-green-50 border border-green-200 rounded-xl p-4">
        <p className="text-xs font-semibold text-green-700 uppercase tracking-wide mb-3">Your Contact Information</p>
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
          <div>
            <label className="block text-xs text-gray-600 mb-1">Full Name</label>
            <input
              type="text"
              value={form.name}
              onChange={e => setForm(f => ({ ...f, name: e.target.value }))}
              required
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
            />
          </div>
          <div>
            <label className="block text-xs text-gray-600 mb-1">Email</label>
            <input
              type="email"
              value={form.email}
              onChange={e => setForm(f => ({ ...f, email: e.target.value }))}
              required
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
            />
          </div>
          <div>
            <label className="block text-xs text-gray-600 mb-1">Phone (optional)</label>
            <input
              type="tel"
              value={form.phone}
              onChange={e => setForm(f => ({ ...f, phone: e.target.value }))}
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
            />
          </div>
        </div>
      </div>

      {/* Agenda item */}
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Agenda Item Subject *</label>
        <input
          type="text"
          value={form.subject}
          onChange={e => setForm(f => ({ ...f, subject: e.target.value }))}
          required
          placeholder="Brief title for your agenda item"
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
        />
      </div>
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Description *</label>
        <textarea
          value={form.description}
          onChange={e => setForm(f => ({ ...f, description: e.target.value }))}
          required
          rows={5}
          placeholder="Please describe the issue, concern, or topic you would like the committee to address..."
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
        />
      </div>
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Preferred Meeting Date (optional)</label>
        <input
          type="date"
          value={form.preferred_date}
          onChange={e => setForm(f => ({ ...f, preferred_date: e.target.value }))}
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
        />
      </div>
      <button
        type="submit"
        disabled={submitting}
        className="w-full py-3 bg-green-700 hover:bg-green-800 text-white font-semibold rounded-xl transition-colors disabled:opacity-50"
      >
        {submitting ? 'Submitting...' : 'Submit Agenda Item'}
      </button>
    </form>
  );
}

// ─── Section: Change Request / Correction ─────────────────────────────────────

function ChangeRequestForm({ initialPlot, initialOccupant, initialType }: {
  initialPlot?: string;
  initialOccupant?: string;
  initialType?: string;
}) {
  const { data: session } = useSession();
  const [form, setForm] = useState({
    name: '', email: '', phone: '', relationship: '',
    subject: initialPlot && initialOccupant
      ? `Correction for ${initialOccupant} — Plot ${initialPlot}`
      : initialPlot ? `Correction for Plot ${initialPlot}` : '',
    details: '',
    request_type: initialType || 'occupant_details',
    plot_number: initialPlot || '',
    occupant_name: initialOccupant || '',
  });
  const [submitted, setSubmitted] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState('');
  const [profileLoaded, setProfileLoaded] = useState(false);

  // Pre-fill contact details from user profile
  useEffect(() => {
    if (session?.user?.id && !profileLoaded) {
      fetch('/api/user/profile')
        .then(r => r.json())
        .then(data => {
          if (data.name || data.email) {
            setForm(f => ({
              ...f,
              name: data.name || f.name,
              email: data.email || f.email,
              phone: data.phone || f.phone,
            }));
            setProfileLoaded(true);
          }
        })
        .catch(() => {});
    }
  }, [session, profileLoaded]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!form.subject.trim() || !form.details.trim()) {
      setError('Please fill in the subject and details fields.');
      return;
    }
    setSubmitting(true);
    setError('');
    try {
      const res = await fetch('/api/public/change-requests', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      });
      if (!res.ok) {
        const d = await res.json();
        throw new Error(d.error || 'Submission failed');
      }
      setSubmitted(true);
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Submission failed. Please try again.');
    } finally {
      setSubmitting(false);
    }
  };

  if (submitted) {
    return (
      <div className="bg-amber-50 border border-amber-200 rounded-2xl p-8 text-center">
        <div className="text-5xl mb-4">✅</div>
        <h3 className="text-xl font-bold text-amber-800 mb-2">Request Submitted!</h3>
        <p className="text-amber-700 text-sm">
          Thank you for helping us keep our records accurate. The committee will review your submission and follow up if needed.
        </p>
        <button
          onClick={() => { setSubmitted(false); setForm(f => ({ ...f, subject: '', details: '', plot_number: '', occupant_name: '' })); }}
          className="mt-4 px-4 py-2 bg-amber-700 text-white rounded-lg text-sm hover:bg-amber-800"
        >
          Submit Another
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-5">
      {error && (
        <div className="p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">{error}</div>
      )}

      {/* Contact info — pre-filled */}
      <div className="bg-amber-50 border border-amber-200 rounded-xl p-4">
        <p className="text-xs font-semibold text-amber-700 uppercase tracking-wide mb-3">Your Contact Information</p>
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
          <div>
            <label className="block text-xs text-gray-600 mb-1">Full Name</label>
            <input
              type="text"
              value={form.name}
              onChange={e => setForm(f => ({ ...f, name: e.target.value }))}
              required
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-amber-500 focus:border-transparent"
            />
          </div>
          <div>
            <label className="block text-xs text-gray-600 mb-1">Email</label>
            <input
              type="email"
              value={form.email}
              onChange={e => setForm(f => ({ ...f, email: e.target.value }))}
              required
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-amber-500 focus:border-transparent"
            />
          </div>
          <div>
            <label className="block text-xs text-gray-600 mb-1">Phone (optional)</label>
            <input
              type="tel"
              value={form.phone}
              onChange={e => setForm(f => ({ ...f, phone: e.target.value }))}
              className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm bg-white focus:ring-2 focus:ring-amber-500 focus:border-transparent"
            />
          </div>
        </div>
      </div>

      {/* Request type */}
      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Request Type *</label>
        <select
          value={form.request_type}
          onChange={e => setForm(f => ({ ...f, request_type: e.target.value }))}
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
        >
          <option value="occupant_details">Correction to Occupant Details</option>
          <option value="media_upload">Upload Photo or Media</option>
          <option value="plot_info">Correction to Plot Information</option>
          <option value="other">Other Request</option>
        </select>
      </div>

      {/* Plot & Occupant */}
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Plot Number</label>
          <input
            type="text"
            value={form.plot_number}
            onChange={e => setForm(f => ({ ...f, plot_number: e.target.value }))}
            placeholder="e.g. NW-A-001-3"
            className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
          />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Occupant Name</label>
          <input
            type="text"
            value={form.occupant_name}
            onChange={e => setForm(f => ({ ...f, occupant_name: e.target.value }))}
            placeholder="Name of the individual"
            className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
          />
        </div>
      </div>

      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Your Relationship to the Occupant</label>
        <input
          type="text"
          value={form.relationship}
          onChange={e => setForm(f => ({ ...f, relationship: e.target.value }))}
          placeholder="e.g. Family member, descendant, historian..."
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
        />
      </div>

      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Subject *</label>
        <input
          type="text"
          value={form.subject}
          onChange={e => setForm(f => ({ ...f, subject: e.target.value }))}
          required
          placeholder="Brief description of the correction or request"
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
        />
      </div>

      <div>
        <label className="block text-sm font-medium text-gray-700 mb-1">Details *</label>
        <textarea
          value={form.details}
          onChange={e => setForm(f => ({ ...f, details: e.target.value }))}
          required
          rows={5}
          placeholder="Please provide the correct information, what needs to be changed, or describe the media you would like to submit..."
          className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-amber-500 focus:border-transparent"
        />
      </div>

      <button
        type="submit"
        disabled={submitting}
        className="w-full py-3 bg-amber-600 hover:bg-amber-700 text-white font-semibold rounded-xl transition-colors disabled:opacity-50"
      >
        {submitting ? 'Submitting...' : 'Submit Request'}
      </button>
    </form>
  );
}

// ─── Main Page Component ───────────────────────────────────────────────────────

const COMMITTEE_ROLES = ['admin', 'cemetery_committee', 'superintendent'];

function CemeteryCommitteeContent() {
  const searchParams = useSearchParams();
  const { data: session } = useSession();
  const [activeSection, setActiveSection] = useState<'home' | 'meetings' | 'submit-agenda' | 'change-request'>('home');
  const isCommitteeMember = COMMITTEE_ROLES.includes(session?.user?.role || '');
  const [members, setMembers] = useState<CommitteeMember[]>([]);
  const [upcoming, setUpcoming] = useState<Meeting[]>([]);
  const [recent, setRecent] = useState<Meeting[]>([]);
  const [loading, setLoading] = useState(true);

  // URL param handling
  const urlSection = searchParams.get('section');
  const urlPlot = searchParams.get('plot') || undefined;
  const urlOccupant = searchParams.get('occupant') || undefined;
  const urlType = searchParams.get('type') || undefined;

  useEffect(() => {
    if (urlSection === 'change-request') setActiveSection('change-request');
    else if (urlSection === 'submit-agenda') setActiveSection('submit-agenda');
    else if (urlSection === 'meetings') setActiveSection('meetings');
  }, [urlSection]);

  useEffect(() => {
    const load = async () => {
      setLoading(true);
      try {
        const [membersRes, meetingsRes] = await Promise.all([
          fetch('/api/public/committee-members'),
          fetch('/api/public/meetings'),
        ]);
        const membersData = await membersRes.json();
        const meetingsData = await meetingsRes.json();
        setMembers(membersData.members || []);
        setUpcoming(meetingsData.upcoming || []);
        setRecent(meetingsData.recent || []);
      } catch {
        // silently fail
      } finally {
        setLoading(false);
      }
    };
    load();
  }, []);

  const navItems = [
    { key: 'home', label: 'About' },
    { key: 'meetings', label: 'Meetings' },
    { key: 'submit-agenda', label: 'Submit Agenda Item' },
    { key: 'change-request', label: 'Submit a Correction' },
  ] as const;

  return (
    <div className="min-h-screen bg-white">
      {/* Site header */}
      <header className="bg-white border-b border-gray-200 sticky top-0 z-40 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-3 flex items-center justify-between">
          <Link href="/" className="text-lg font-bold text-gray-900 hover:text-green-700 transition-colors">
            ← Northwood Cemetery
          </Link>
          <nav className="hidden md:flex items-center gap-1">
            {navItems.map(item => (
              <button
                key={item.key}
                onClick={() => setActiveSection(item.key)}
                className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
                  activeSection === item.key
                    ? 'bg-green-700 text-white'
                    : 'text-gray-600 hover:bg-gray-100'
                }`}
              >
                {item.label}
              </button>
            ))}
          </nav>
          {/* My Profile link for committee members */}
          {isCommitteeMember && (
            <Link
              href="/committee/my-profile"
              className="hidden md:inline-flex items-center gap-1.5 px-4 py-2 rounded-lg text-sm font-medium text-green-700 hover:bg-green-50 border border-green-200 transition-colors ml-2"
            >
              <span>✏️</span> My Profile
            </Link>
          )}
          {/* Mobile nav */}
          <select
            value={activeSection}
            onChange={e => setActiveSection(e.target.value as typeof activeSection)}
            className="md:hidden border border-gray-300 rounded-lg px-3 py-1.5 text-sm"
          >
            {navItems.map(item => (
              <option key={item.key} value={item.key}>{item.label}</option>
            ))}
          </select>
        </div>
      </header>

      {/* Hero — shown on home tab */}
      {activeSection === 'home' && (
        <Hero onNav={(s) => setActiveSection(s as typeof activeSection)} />
      )}

      {/* Members — shown on home tab */}
      {activeSection === 'home' && !loading && (
        <MembersSection members={members} />
      )}

      {/* Loading state */}
      {loading && (
        <div className="flex items-center justify-center py-24">
          <div className="animate-spin rounded-full h-10 w-10 border-b-2 border-green-600"></div>
        </div>
      )}

      {/* Meetings tab */}
      {activeSection === 'meetings' && !loading && (
        <MeetingsSection upcoming={upcoming} recent={recent} />
      )}

      {/* Submit Agenda Item tab */}
      {activeSection === 'submit-agenda' && (
        <section className="py-16 px-4 bg-gray-50 min-h-[60vh]">
          <div className="max-w-2xl mx-auto">
            <div className="text-center mb-10">
              <h2 className="text-3xl font-bold text-gray-900 mb-3">Submit an Agenda Item</h2>
              <p className="text-gray-500">
                Have a topic you would like the committee to address? Submit it here and we will review it for inclusion in an upcoming meeting.
              </p>
            </div>
            <AuthGate action="submit an agenda item">
              <AgendaSubmissionForm />
            </AuthGate>
          </div>
        </section>
      )}

      {/* Change Request / Correction tab */}
      {activeSection === 'change-request' && (
        <section className="py-16 px-4 bg-gray-50 min-h-[60vh]">
          <div className="max-w-2xl mx-auto">
            <div className="text-center mb-10">
              <h2 className="text-3xl font-bold text-gray-900 mb-3">Submit a Correction or Media</h2>
              <p className="text-gray-500">
                Help us keep our records accurate. If you have corrections to an occupant&apos;s details, additional information, or photos to share, please submit them here.
              </p>
            </div>
            <AuthGate action="submit a correction or media">
              <ChangeRequestForm
                initialPlot={urlPlot}
                initialOccupant={urlOccupant}
                initialType={urlType}
              />
            </AuthGate>
          </div>
        </section>
      )}

      {/* Info bar */}
      {activeSection === 'home' && (
        <section className="bg-green-900 text-white py-12 px-4">
          <div className="max-w-4xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div>
              <div className="text-3xl mb-2">📋</div>
              <h3 className="font-bold mb-1">Meeting Agendas</h3>
              <p className="text-green-300 text-sm">Published before each meeting for public review.</p>
              <button onClick={() => setActiveSection('meetings')} className="mt-3 text-xs text-green-400 hover:text-white underline">
                View Schedule →
              </button>
            </div>
            <div>
              <div className="text-3xl mb-2">✏️</div>
              <h3 className="font-bold mb-1">Submit a Correction</h3>
              <p className="text-green-300 text-sm">Help us keep records accurate for future generations.</p>
              <button onClick={() => setActiveSection('change-request')} className="mt-3 text-xs text-green-400 hover:text-white underline">
                Submit Now →
              </button>
            </div>
            <div>
              <div className="text-3xl mb-2">🗣️</div>
              <h3 className="font-bold mb-1">Public Participation</h3>
              <p className="text-green-300 text-sm">Submit agenda items for upcoming meetings.</p>
              <button onClick={() => setActiveSection('submit-agenda')} className="mt-3 text-xs text-green-400 hover:text-white underline">
                Submit Item →
              </button>
            </div>
          </div>
        </section>
      )}

      {/* Footer */}
      <footer className="bg-gray-900 text-gray-400 py-8 px-4">
        <div className="max-w-4xl mx-auto text-center text-sm">
          <p className="font-medium text-gray-300 mb-1">Northwood Cemetery Committee</p>
          <p>Preserving History, Honoring Lives · Southport, NC</p>
          <p className="mt-3">
            <Link href="/" className="hover:text-white transition-colors">← Return to Northwood Cemetery</Link>
          </p>
        </div>
      </footer>
    </div>
  );
}

export default function CemeteryCommitteePage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-10 w-10 border-b-2 border-green-600"></div>
      </div>
    }>
      <CemeteryCommitteeContent />
    </Suspense>
  );
}
