'use client';
export const dynamic = 'force-dynamic';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';

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
  user_id?: string;
}

const emptyForm = {
  full_name: '',
  title: '',
  bio: '',
  photo_url: '',
  email: '',
  phone: '',
  term_start: '',
  term_end: '',
  is_active: true,
  display_order: 99,
  user_id: '',
};

export default function CommitteeMembersAdminPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [members, setMembers] = useState<CommitteeMember[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [form, setForm] = useState(emptyForm);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');
  const [successMsg, setSuccessMsg] = useState('');

  useEffect(() => {
    if (status === 'unauthenticated') router.push('/auth/login');
    if (status === 'authenticated') {
      const role = session?.user?.role;
      if (role !== 'admin' && role !== 'superintendent' && role !== 'cemetery_committee') {
        router.push('/admin');
      } else {
        loadMembers();
      }
    }
  }, [status, session, router]);

  const loadMembers = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/admin/committee/members');
      const data = await res.json();
      setMembers(data.members || []);
    } catch {
      setError('Failed to load members');
    } finally {
      setLoading(false);
    }
  };

  const openNew = () => {
    setForm(emptyForm);
    setEditingId(null);
    setShowForm(true);
    setError('');
  };

  const openEdit = (m: CommitteeMember) => {
    setForm({
      full_name: m.full_name,
      title: m.title || '',
      bio: m.bio || '',
      photo_url: m.photo_url || '',
      email: m.email || '',
      phone: m.phone || '',
      term_start: m.term_start || '',
      term_end: m.term_end || '',
      is_active: m.is_active,
      display_order: m.display_order,
      user_id: m.user_id || '',
    });
    setEditingId(m.id);
    setShowForm(true);
    setError('');
  };

  const handleSave = async () => {
    if (!form.full_name.trim()) { setError('Full name is required'); return; }
    setSaving(true);
    setError('');
    try {
      const url = editingId
        ? `/api/admin/committee/members/${editingId}`
        : '/api/admin/committee/members';
      const method = editingId ? 'PUT' : 'POST';
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(form),
      });
      if (!res.ok) {
        const d = await res.json();
        throw new Error(d.error || 'Save failed');
      }
      setSuccessMsg(editingId ? 'Member updated!' : 'Member added!');
      setShowForm(false);
      loadMembers();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Save failed');
    } finally {
      setSaving(false);
    }
  };

  const handleDelete = async (id: string, name: string) => {
    if (!confirm(`Remove ${name} from the committee? This cannot be undone.`)) return;
    try {
      await fetch(`/api/admin/committee/members/${id}`, { method: 'DELETE' });
      setSuccessMsg('Member removed.');
      loadMembers();
      setTimeout(() => setSuccessMsg(''), 3000);
    } catch {
      setError('Failed to delete member');
    }
  };

  const handleToggleActive = async (m: CommitteeMember) => {
    try {
      await fetch(`/api/admin/committee/members/${m.id}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ...m, is_active: !m.is_active }),
      });
      loadMembers();
    } catch {
      setError('Failed to update status');
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
      <div className="bg-green-800 text-white px-6 py-4">
        <div className="max-w-5xl mx-auto flex items-center justify-between">
          <div>
            <div className="text-green-300 text-sm mb-1">
              <Link href="/admin" className="hover:text-white">Admin</Link>
              {' / '}
              <Link href="/admin/committee" className="hover:text-white">Committee</Link>
              {' / '}
              <span>Members</span>
            </div>
            <h1 className="text-2xl font-bold">Committee Members</h1>
            <p className="text-green-200 text-sm mt-1">Manage public-facing committee member profiles</p>
          </div>
          <div className="flex gap-3">
            <Link
              href="/cemetery-committee"
              target="_blank"
              className="px-4 py-2 bg-green-700 hover:bg-green-600 rounded-lg text-sm font-medium"
            >
              View Public Page ↗
            </Link>
            <button
              onClick={openNew}
              className="px-4 py-2 bg-white text-green-800 hover:bg-green-50 rounded-lg text-sm font-bold"
            >
              + Add Member
            </button>
          </div>
        </div>
      </div>

      <div className="max-w-5xl mx-auto px-6 py-8">
        {successMsg && (
          <div className="mb-4 p-3 bg-green-50 border border-green-200 rounded-lg text-green-800 text-sm">{successMsg}</div>
        )}
        {error && !showForm && (
          <div className="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-800 text-sm">{error}</div>
        )}

        {/* Add/Edit Form */}
        {showForm && (
          <div className="bg-white rounded-xl shadow-md border border-gray-200 p-6 mb-8">
            <h2 className="text-lg font-bold text-gray-900 mb-5">
              {editingId ? 'Edit Committee Member' : 'Add New Committee Member'}
            </h2>
            {error && (
              <div className="mb-4 p-3 bg-red-50 border border-red-200 rounded-lg text-red-800 text-sm">{error}</div>
            )}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Full Name *</label>
                <input
                  type="text"
                  value={form.full_name}
                  onChange={e => setForm(f => ({ ...f, full_name: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="e.g. Jane Smith"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Title / Role</label>
                <input
                  type="text"
                  value={form.title}
                  onChange={e => setForm(f => ({ ...f, title: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="e.g. Chairperson, Secretary, Member"
                />
              </div>
              <div className="md:col-span-2">
                <label className="block text-sm font-medium text-gray-700 mb-1">Bio</label>
                <textarea
                  value={form.bio}
                  onChange={e => setForm(f => ({ ...f, bio: e.target.value }))}
                  rows={3}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="Short public biography..."
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Photo URL</label>
                <input
                  type="url"
                  value={form.photo_url}
                  onChange={e => setForm(f => ({ ...f, photo_url: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="https://..."
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Public Email</label>
                <input
                  type="email"
                  value={form.email}
                  onChange={e => setForm(f => ({ ...f, email: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="optional"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Public Phone</label>
                <input
                  type="text"
                  value={form.phone}
                  onChange={e => setForm(f => ({ ...f, phone: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  placeholder="optional"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Term Start</label>
                <input
                  type="date"
                  value={form.term_start}
                  onChange={e => setForm(f => ({ ...f, term_start: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Term End</label>
                <input
                  type="date"
                  value={form.term_end}
                  onChange={e => setForm(f => ({ ...f, term_end: e.target.value }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Display Order</label>
                <input
                  type="number"
                  value={form.display_order}
                  onChange={e => setForm(f => ({ ...f, display_order: parseInt(e.target.value) || 99 }))}
                  className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  min={1}
                />
                <p className="text-xs text-gray-400 mt-1">Lower numbers appear first (1 = Chairperson)</p>
              </div>
              <div className="flex items-center gap-3 pt-6">
                <input
                  type="checkbox"
                  id="is_active"
                  checked={form.is_active}
                  onChange={e => setForm(f => ({ ...f, is_active: e.target.checked }))}
                  className="w-4 h-4 text-green-600 rounded"
                />
                <label htmlFor="is_active" className="text-sm font-medium text-gray-700">
                  Show on public page
                </label>
              </div>
            </div>
            <div className="flex gap-3 mt-6">
              <button
                onClick={handleSave}
                disabled={saving}
                className="px-6 py-2 bg-green-700 hover:bg-green-800 text-white rounded-lg text-sm font-medium disabled:opacity-50"
              >
                {saving ? 'Saving...' : editingId ? 'Update Member' : 'Add Member'}
              </button>
              <button
                onClick={() => { setShowForm(false); setError(''); }}
                className="px-6 py-2 bg-gray-100 hover:bg-gray-200 text-gray-700 rounded-lg text-sm font-medium"
              >
                Cancel
              </button>
            </div>
          </div>
        )}

        {/* Members List */}
        {members.length === 0 ? (
          <div className="bg-white rounded-xl shadow-sm border border-gray-200 p-12 text-center">
            <div className="text-5xl mb-4">👥</div>
            <h3 className="text-lg font-semibold text-gray-700 mb-2">No committee members yet</h3>
            <p className="text-gray-500 text-sm mb-6">Add the first member to display on the public committee page.</p>
            <button onClick={openNew} className="px-6 py-2 bg-green-700 text-white rounded-lg text-sm font-medium hover:bg-green-800">
              Add First Member
            </button>
          </div>
        ) : (
          <div className="space-y-3">
            {members.map(m => (
              <div key={m.id} className={`bg-white rounded-xl shadow-sm border p-5 flex items-start gap-4 ${m.is_active ? 'border-gray-200' : 'border-gray-100 opacity-60'}`}>
                {/* Photo */}
                <div className="w-14 h-14 rounded-full bg-green-100 flex items-center justify-center flex-shrink-0 overflow-hidden">
                  {m.photo_url ? (
                    <img src={m.photo_url} alt={m.full_name} className="w-full h-full object-cover" />
                  ) : (
                    <span className="text-2xl text-green-600 font-bold">{m.full_name.charAt(0)}</span>
                  )}
                </div>
                {/* Info */}
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2 flex-wrap">
                    <span className="font-semibold text-gray-900">{m.full_name}</span>
                    {m.title && (
                      <span className="px-2 py-0.5 bg-green-100 text-green-800 text-xs rounded-full">{m.title}</span>
                    )}
                    {!m.is_active && (
                      <span className="px-2 py-0.5 bg-gray-100 text-gray-500 text-xs rounded-full">Hidden</span>
                    )}
                    <span className="text-xs text-gray-400">Order: {m.display_order}</span>
                  </div>
                  {m.bio && <p className="text-sm text-gray-600 mt-1 line-clamp-2">{m.bio}</p>}
                  <div className="flex gap-4 mt-1 text-xs text-gray-400">
                    {m.email && <span>✉ {m.email}</span>}
                    {m.phone && <span>📞 {m.phone}</span>}
                    {m.term_start && <span>Term: {new Date(m.term_start).getFullYear()}{m.term_end ? `–${new Date(m.term_end).getFullYear()}` : '–present'}</span>}
                  </div>
                </div>
                {/* Actions */}
                <div className="flex gap-2 flex-shrink-0">
                  <button
                    onClick={() => handleToggleActive(m)}
                    className={`px-3 py-1.5 text-xs rounded-lg font-medium ${m.is_active ? 'bg-gray-100 hover:bg-gray-200 text-gray-600' : 'bg-green-50 hover:bg-green-100 text-green-700'}`}
                  >
                    {m.is_active ? 'Hide' : 'Show'}
                  </button>
                  <button
                    onClick={() => openEdit(m)}
                    className="px-3 py-1.5 text-xs bg-blue-50 hover:bg-blue-100 text-blue-700 rounded-lg font-medium"
                  >
                    Edit
                  </button>
                  <button
                    onClick={() => handleDelete(m.id, m.full_name)}
                    className="px-3 py-1.5 text-xs bg-red-50 hover:bg-red-100 text-red-700 rounded-lg font-medium"
                  >
                    Remove
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
