'use client';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

interface Goal {
  id: string;
  title: string;
  description?: string;
  status: string;
  priority: string;
  due_date?: string;
  completed_at?: string;
  created_at: string;
}

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];
const PRIORITY_COLORS: Record<string, string> = {
  high: 'bg-red-100 text-red-700',
  medium: 'bg-yellow-100 text-yellow-700',
  low: 'bg-green-100 text-green-700',
};
const STATUS_COLORS: Record<string, string> = {
  in_progress: 'bg-blue-100 text-blue-700',
  completed: 'bg-green-100 text-green-700',
  archived: 'bg-gray-100 text-gray-600',
};

export default function CommitteeGoalsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [goals, setGoals] = useState<Goal[]>([]);
  const [loading, setLoading] = useState(true);
  const [statusFilter, setStatusFilter] = useState('in_progress');
  const [showModal, setShowModal] = useState(false);
  const [editGoal, setEditGoal] = useState<Goal | null>(null);
  const [successMsg, setSuccessMsg] = useState('');
  const [error, setError] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login'); return; }
    if (!ALLOWED_ROLES.includes(session.user?.role || '')) { router.push('/admin'); return; }
  }, [session, status, router]);

  const fetchGoals = useCallback(async () => {
    try {
      setLoading(true);
      const params = statusFilter ? `?status=${statusFilter}` : '';
      const res = await fetch(`/api/admin/committee/goals${params}`);
      const data = await res.json();
      setGoals(data.goals || []);
    } catch { setError('Failed to load goals'); }
    finally { setLoading(false); }
  }, [statusFilter]);

  useEffect(() => { if (session) fetchGoals(); }, [session, fetchGoals]);

  const handleStatusChange = async (goal: Goal, newStatus: string) => {
    try {
      await fetch(`/api/admin/committee/goals/${goal.id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ status: newStatus }),
      });
      setSuccessMsg('Goal updated');
      fetchGoals();
      setTimeout(() => setSuccessMsg(''), 2000);
    } catch { setError('Failed to update goal'); }
  };

  const handleDelete = async (id: string) => {
    try {
      await fetch(`/api/admin/committee/goals/${id}`, { method: 'DELETE' });
      setSuccessMsg('Goal deleted');
      fetchGoals();
      setTimeout(() => setSuccessMsg(''), 2000);
    } catch { setError('Failed to delete goal'); }
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Link href="/admin/committee" className="text-green-600 hover:text-green-700 font-medium text-sm">← Committee</Link>
            <span className="text-gray-400">/</span>
            <h1 className="text-2xl font-bold text-gray-900">Goals & Action Items</h1>
          </div>
          <button onClick={() => { setEditGoal(null); setShowModal(true); }} className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 font-medium">
            + Add Goal
          </button>
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {successMsg && <div className="mb-4 p-3 bg-green-50 border border-green-200 text-green-800 rounded-lg">{successMsg}</div>}
        {error && <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-800 rounded-lg">{error}</div>}

        {/* Filter Tabs */}
        <div className="flex gap-2 mb-6">
          {['in_progress', 'completed', 'archived', ''].map(s => (
            <button key={s} onClick={() => setStatusFilter(s)} className={`px-4 py-2 rounded-lg text-sm font-medium ${statusFilter === s ? 'bg-green-600 text-white' : 'bg-white text-gray-600 border border-gray-200 hover:bg-gray-50'}`}>
              {s === '' ? 'All' : s === 'in_progress' ? 'In Progress' : s.charAt(0).toUpperCase() + s.slice(1)}
            </button>
          ))}
        </div>

        {loading ? (
          <div className="text-center py-12 text-gray-500">Loading...</div>
        ) : goals.length === 0 ? (
          <div className="text-center py-16 bg-white rounded-xl border-2 border-dashed border-gray-200">
            <div className="text-5xl mb-4">🎯</div>
            <h3 className="text-lg font-semibold text-gray-700 mb-2">No goals found</h3>
            <button onClick={() => setShowModal(true)} className="px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 text-sm">Add First Goal</button>
          </div>
        ) : (
          <div className="space-y-3">
            {goals.map(goal => (
              <div key={goal.id} className="bg-white rounded-xl border border-gray-200 p-5">
                <div className="flex items-start justify-between gap-4">
                  <div className="flex-1">
                    <div className="flex items-center gap-2 flex-wrap mb-1">
                      <h3 className="font-semibold text-gray-900">{goal.title}</h3>
                      <span className={`text-xs px-2 py-0.5 rounded-full font-medium ${PRIORITY_COLORS[goal.priority]}`}>{goal.priority}</span>
                      <span className={`text-xs px-2 py-0.5 rounded-full font-medium ${STATUS_COLORS[goal.status]}`}>{goal.status.replace('_', ' ')}</span>
                    </div>
                    {goal.description && <p className="text-sm text-gray-600 mb-2">{goal.description}</p>}
                    <div className="flex gap-4 text-xs text-gray-400">
                      {goal.due_date && <span>Due: {new Date(goal.due_date).toLocaleDateString()}</span>}
                      {goal.completed_at && <span>Completed: {new Date(goal.completed_at).toLocaleDateString()}</span>}
                      <span>Created: {new Date(goal.created_at).toLocaleDateString()}</span>
                    </div>
                  </div>
                  <div className="flex gap-2 flex-shrink-0">
                    {goal.status === 'in_progress' && (
                      <button onClick={() => handleStatusChange(goal, 'completed')} className="text-xs px-3 py-1.5 bg-green-50 text-green-700 border border-green-200 rounded-lg hover:bg-green-100">
                        ✓ Complete
                      </button>
                    )}
                    {goal.status !== 'archived' && (
                      <button onClick={() => handleStatusChange(goal, 'archived')} className="text-xs px-3 py-1.5 bg-gray-50 text-gray-600 border border-gray-200 rounded-lg hover:bg-gray-100">
                        Archive
                      </button>
                    )}
                    <button onClick={() => { setEditGoal(goal); setShowModal(true); }} className="text-xs px-3 py-1.5 bg-blue-50 text-blue-700 border border-blue-200 rounded-lg hover:bg-blue-100">Edit</button>
                    <button onClick={() => handleDelete(goal.id)} className="text-xs px-3 py-1.5 bg-red-50 text-red-700 border border-red-200 rounded-lg hover:bg-red-100">Delete</button>
                  </div>
                </div>
              </div>
            ))}
          </div>
        )}
      </main>

      {showModal && (
        <GoalModal
          goal={editGoal}
          onClose={() => { setShowModal(false); setEditGoal(null); }}
          onSave={() => { setShowModal(false); setEditGoal(null); fetchGoals(); setSuccessMsg(editGoal ? 'Goal updated' : 'Goal added'); setTimeout(() => setSuccessMsg(''), 3000); }}
        />
      )}
    </div>
  );
}

function GoalModal({ goal, onClose, onSave }: { goal: Goal | null; onClose: () => void; onSave: () => void }) {
  const [form, setForm] = useState({
    title: goal?.title || '',
    description: goal?.description || '',
    priority: goal?.priority || 'medium',
    due_date: goal?.due_date || '',
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    try {
      const url = goal ? `/api/admin/committee/goals/${goal.id}` : '/api/admin/committee/goals';
      const method = goal ? 'PATCH' : 'POST';
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
        <h3 className="text-xl font-bold text-gray-900 mb-6">{goal ? 'Edit Goal' : 'Add New Goal'}</h3>
        {error && <div className="mb-4 p-3 bg-red-50 text-red-800 rounded-lg text-sm">{error}</div>}
        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Goal Title *</label>
            <input required type="text" value={form.title} onChange={e => setForm(f => ({ ...f, title: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Description</label>
            <textarea value={form.description} onChange={e => setForm(f => ({ ...f, description: e.target.value }))} rows={3} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
          </div>
          <div className="grid grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Priority</label>
              <select value={form.priority} onChange={e => setForm(f => ({ ...f, priority: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm">
                <option value="high">High</option>
                <option value="medium">Medium</option>
                <option value="low">Low</option>
              </select>
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Due Date</label>
              <input type="date" value={form.due_date} onChange={e => setForm(f => ({ ...f, due_date: e.target.value }))} className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm" />
            </div>
          </div>
          <div className="flex gap-3 justify-end pt-2">
            <button type="button" onClick={onClose} className="px-4 py-2 text-sm border border-gray-300 rounded-lg hover:bg-gray-50">Cancel</button>
            <button type="submit" disabled={loading} className="px-4 py-2 text-sm bg-green-600 text-white rounded-lg hover:bg-green-700 disabled:opacity-50">
              {loading ? 'Saving...' : goal ? 'Save Changes' : 'Add Goal'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}
