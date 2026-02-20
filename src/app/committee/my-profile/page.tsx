'use client';
export const dynamic = 'force-dynamic';

import { useState, useEffect } from 'react';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';

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
  is_active: boolean;
  display_order: number;
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee', 'superintendent'];

export default function MyCommitteeProfilePage() {
  const { data: session, status } = useSession();
  const router = useRouter();

  const [member, setMember] = useState<CommitteeMember | null>(null);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState('');
  const [notLinked, setNotLinked] = useState(false);

  const [form, setForm] = useState({
    title: '',
    bio: '',
    photo_url: '',
    email: '',
    phone: '',
  });

  // Auth check
  useEffect(() => {
    if (status === 'unauthenticated') {
      router.push('/auth/login?callbackUrl=/committee/my-profile');
      return;
    }
    if (status === 'authenticated') {
      if (!ALLOWED_ROLES.includes(session?.user?.role || '')) {
        router.push('/');
        return;
      }
      loadProfile();
    }
  }, [status, session, router]);

  const loadProfile = async () => {
    setLoading(true);
    setError('');
    try {
      const res = await fetch('/api/committee/my-profile');
      const data = await res.json();
      if (data.member) {
        setMember(data.member);
        setForm({
          title: data.member.title || '',
          bio: data.member.bio || '',
          photo_url: data.member.photo_url || '',
          email: data.member.email || '',
          phone: data.member.phone || '',
        });
        setNotLinked(false);
      } else {
        setNotLinked(true);
      }
    } catch {
      setError('Failed to load your profile. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setSaving(true);
    setSaved(false);
    setError('');
    try {
      const res = await fetch('/api/committee/my-profile', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      });
      if (!res.ok) {
        const d = await res.json();
        throw new Error(d.error || 'Save failed');
      }
      const data = await res.json();
      setMember(data.member);
      setSaved(true);
      setTimeout(() => setSaved(false), 4000);
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Save failed. Please try again.');
    } finally {
      setSaving(false);
    }
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-10 w-10 border-b-2 border-green-600"></div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-green-800 text-white px-6 py-4 shadow">
        <div className="max-w-3xl mx-auto flex items-center justify-between">
          <div>
            <div className="text-green-300 text-sm mb-1">
              <Link href="/cemetery-committee" className="hover:text-white">Committee Portal</Link>
              {' / '}
              <span>My Profile</span>
            </div>
            <h1 className="text-2xl font-bold">My Committee Profile</h1>
            <p className="text-green-200 text-sm mt-0.5">
              Update what the public sees about you on the Cemetery Committee page
            </p>
          </div>
          <Link
            href="/cemetery-committee"
            target="_blank"
            className="px-4 py-2 bg-green-700 hover:bg-green-600 rounded-lg text-sm font-medium"
          >
            View Public Page ↗
          </Link>
        </div>
      </header>

      <div className="max-w-3xl mx-auto px-6 py-8">

        {/* Not linked state */}
        {notLinked && (
          <div className="bg-amber-50 border border-amber-200 rounded-2xl p-8 text-center">
            <div className="text-5xl mb-4">🔗</div>
            <h2 className="text-xl font-bold text-amber-900 mb-2">Profile Not Linked</h2>
            <p className="text-amber-700 text-sm max-w-md mx-auto mb-6">
              Your account has not been linked to a committee member profile yet.
              Please ask an administrator to link your account to your committee member record in the
              {' '}<strong>Admin → Committee → Committee Members</strong> section.
            </p>
            <p className="text-xs text-amber-600">
              Once linked, you will be able to edit your bio, photo, title, and contact information here.
            </p>
          </div>
        )}

        {/* Profile form */}
        {member && !notLinked && (
          <div className="space-y-6">

            {/* Preview card */}
            <div className="bg-white rounded-2xl border border-gray-200 shadow-sm p-6">
              <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-4">
                Public Profile Preview
              </h2>
              <div className="flex items-start gap-5">
                {/* Avatar */}
                <div className="w-20 h-20 rounded-full bg-green-100 flex items-center justify-center flex-shrink-0 overflow-hidden border-4 border-white shadow">
                  {form.photo_url ? (
                    <img
                      src={form.photo_url}
                      alt={member.full_name}
                      className="w-full h-full object-cover"
                      onError={(e) => { (e.target as HTMLImageElement).style.display = 'none'; }}
                    />
                  ) : (
                    <span className="text-3xl font-bold text-green-700">{member.full_name.charAt(0)}</span>
                  )}
                </div>
                <div>
                  <h3 className="text-xl font-bold text-gray-900">{member.full_name}</h3>
                  {form.title && (
                    <span className="inline-block mt-1 px-3 py-0.5 bg-green-100 text-green-800 text-xs font-medium rounded-full">
                      {form.title}
                    </span>
                  )}
                  {(member.term_start || member.term_end) && (
                    <p className="text-xs text-gray-400 mt-1">
                      Term: {member.term_start ? new Date(member.term_start).getFullYear() : '?'}
                      {' – '}
                      {member.term_end ? new Date(member.term_end).getFullYear() : 'Present'}
                    </p>
                  )}
                  {form.bio && (
                    <p className="text-sm text-gray-600 mt-2 leading-relaxed max-w-lg">{form.bio}</p>
                  )}
                  <div className="flex gap-4 mt-2 text-xs text-gray-400">
                    {form.email && <span>✉ {form.email}</span>}
                    {form.phone && <span>📞 {form.phone}</span>}
                  </div>
                  {!member.is_active && (
                    <p className="mt-2 text-xs text-amber-600 font-medium">
                      ⚠ Your profile is currently hidden from the public page. Contact an admin to make it visible.
                    </p>
                  )}
                </div>
              </div>
            </div>

            {/* Edit form */}
            <form onSubmit={handleSave} className="bg-white rounded-2xl border border-gray-200 shadow-sm p-6 space-y-5">
              <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-2">
                Edit Your Profile
              </h2>

              {saved && (
                <div className="p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm font-medium">
                  ✓ Profile updated successfully! Changes are now live on the public page.
                </div>
              )}
              {error && (
                <div className="p-3 bg-red-50 border border-red-200 rounded-lg text-red-700 text-sm">{error}</div>
              )}

              {/* Title */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Your Title / Role on Committee
                </label>
                <input
                  type="text"
                  value={form.title}
                  onChange={e => setForm(f => ({ ...f, title: e.target.value }))}
                  placeholder="e.g. Chairperson, Secretary, Treasurer, Member"
                  className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
              </div>

              {/* Bio */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Bio
                  <span className="text-gray-400 font-normal ml-1">(shown on the public committee page)</span>
                </label>
                <textarea
                  value={form.bio}
                  onChange={e => setForm(f => ({ ...f, bio: e.target.value }))}
                  rows={5}
                  placeholder="Write a short bio about yourself and your role on the committee..."
                  className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
                <p className="text-xs text-gray-400 mt-1">
                  Keep it concise — 2 to 4 sentences works well.
                </p>
              </div>

              {/* Photo URL */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  Photo URL
                  <span className="text-gray-400 font-normal ml-1">(link to a headshot image)</span>
                </label>
                <input
                  type="url"
                  value={form.photo_url}
                  onChange={e => setForm(f => ({ ...f, photo_url: e.target.value }))}
                  placeholder="https://example.com/your-photo.jpg"
                  className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
                <p className="text-xs text-gray-400 mt-1">
                  Paste a direct link to your photo. Square images work best. Leave blank to show your initial instead.
                </p>
              </div>

              {/* Contact */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">
                    Public Email
                    <span className="text-gray-400 font-normal ml-1">(optional)</span>
                  </label>
                  <input
                    type="email"
                    value={form.email}
                    onChange={e => setForm(f => ({ ...f, email: e.target.value }))}
                    placeholder="shown on public page"
                    className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">
                    Public Phone
                    <span className="text-gray-400 font-normal ml-1">(optional)</span>
                  </label>
                  <input
                    type="tel"
                    value={form.phone}
                    onChange={e => setForm(f => ({ ...f, phone: e.target.value }))}
                    placeholder="shown on public page"
                    className="w-full border border-gray-300 rounded-xl px-4 py-2.5 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  />
                </div>
              </div>

              {/* Read-only info */}
              <div className="bg-gray-50 rounded-xl p-4 border border-gray-100">
                <p className="text-xs font-semibold text-gray-500 uppercase tracking-wide mb-2">
                  Admin-Managed Fields
                </p>
                <div className="grid grid-cols-2 gap-3 text-sm text-gray-600">
                  <div>
                    <span className="text-gray-400 text-xs">Name:</span>
                    <p className="font-medium">{member.full_name}</p>
                  </div>
                  <div>
                    <span className="text-gray-400 text-xs">Visibility:</span>
                    <p className={`font-medium ${member.is_active ? 'text-green-700' : 'text-amber-600'}`}>
                      {member.is_active ? 'Visible on public page' : 'Hidden from public page'}
                    </p>
                  </div>
                  {(member.term_start || member.term_end) && (
                    <div>
                      <span className="text-gray-400 text-xs">Term:</span>
                      <p className="font-medium">
                        {member.term_start ? new Date(member.term_start).getFullYear() : '?'}
                        {' – '}
                        {member.term_end ? new Date(member.term_end).getFullYear() : 'Present'}
                      </p>
                    </div>
                  )}
                </div>
                <p className="text-xs text-gray-400 mt-3">
                  Name, term dates, and visibility are managed by an administrator.
                </p>
              </div>

              <button
                type="submit"
                disabled={saving}
                className="w-full py-3 bg-green-700 hover:bg-green-800 text-white font-semibold rounded-xl transition-colors disabled:opacity-50 text-sm"
              >
                {saving ? 'Saving...' : 'Save Changes'}
              </button>
            </form>
          </div>
        )}
      </div>
    </div>
  );
}
