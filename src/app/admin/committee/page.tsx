'use client';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

const ALLOWED_ROLES = ['admin', 'cemetery_committee'];

export default function CommitteeDashboardPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [stats, setStats] = useState({ meetings: 0, goals: 0, pendingRequests: 0, pendingSubmissions: 0 });

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login?callbackUrl=/admin/committee'); return; }
    if (!ALLOWED_ROLES.includes(session.user?.role || '')) { router.push('/admin'); return; }
  }, [session, status, router]);

  useEffect(() => {
    const fetchStats = async () => {
      try {
        const [meetingsRes, goalsRes, requestsRes] = await Promise.all([
          fetch('/api/admin/committee/meetings?pageSize=1'),
          fetch('/api/admin/committee/goals?status=in_progress'),
          fetch('/api/admin/committee/change-requests?status=pending&pageSize=1'),
        ]);
        const [m, g, r] = await Promise.all([meetingsRes.json(), goalsRes.json(), requestsRes.json()]);
        setStats({
          meetings: m.total || 0,
          goals: g.total || 0,
          pendingRequests: r.total || 0,
          pendingSubmissions: 0,
        });
      } catch { /* ignore */ }
    };
    if (session) fetchStats();
  }, [session]);

  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white shadow-sm">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex items-center gap-3">
          <Link href="/admin" className="text-green-600 hover:text-green-700 font-medium text-sm">← Admin Dashboard</Link>
          <span className="text-gray-400">/</span>
          <h1 className="text-2xl font-bold text-gray-900">Cemetery Committee</h1>
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Stats */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
          <StatCard title="Total Meetings" value={stats.meetings} icon="📅" color="blue" />
          <StatCard title="Active Goals" value={stats.goals} icon="🎯" color="green" />
          <StatCard title="Pending Change Requests" value={stats.pendingRequests} icon="📝" color="yellow" />
          <StatCard title="Pending Agenda Submissions" value={stats.pendingSubmissions} icon="📬" color="purple" />
        </div>

        {/* Navigation Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <NavCard
            href="/admin/committee/meetings"
            title="Meetings"
            description="Schedule meetings, manage agendas, and publish minutes for committee members and the public."
            icon="📅"
            color="blue"
          />
          <NavCard
            href="/admin/committee/goals"
            title="Goals & Action Items"
            description="Track committee goals, set priorities, and monitor progress on action items."
            icon="🎯"
            color="green"
          />
          <NavCard
            href="/admin/committee/change-requests"
            title="Change Requests"
            description="Review public requests to update occupant details or submit media for cemetery records."
            icon="📝"
            color="yellow"
            badge={stats.pendingRequests}
          />
          <NavCard
            href="/admin/committee/agenda-submissions"
            title="Agenda Submissions"
            description="Review public agenda item submissions and add approved items to upcoming meetings."
            icon="📬"
            color="purple"
            badge={stats.pendingSubmissions}
          />
          <NavCard
            href="/cemetery-committee"
            title="Public Portal"
            description="View the public-facing Cemetery Committee page that community members see."
            icon="🌐"
            color="gray"
            external
          />
        </div>
      </main>
    </div>
  );
}

function StatCard({ title, value, icon, color }: { title: string; value: number; icon: string; color: string }) {
  const colors: Record<string, string> = {
    blue: 'bg-blue-50 text-blue-600',
    green: 'bg-green-50 text-green-600',
    yellow: 'bg-yellow-50 text-yellow-600',
    purple: 'bg-purple-50 text-purple-600',
  };
  return (
    <div className="bg-white rounded-lg shadow p-5">
      <div className="flex items-center justify-between">
        <div>
          <p className="text-xs font-medium text-gray-500 uppercase tracking-wide">{title}</p>
          <p className="mt-1 text-3xl font-bold text-gray-900">{value}</p>
        </div>
        <div className={`text-3xl p-3 rounded-lg ${colors[color]}`}>{icon}</div>
      </div>
    </div>
  );
}

function NavCard({ href, title, description, icon, color, badge, external }: {
  href: string; title: string; description: string; icon: string; color: string; badge?: number; external?: boolean;
}) {
  const colors: Record<string, string> = {
    blue: 'border-blue-200 hover:border-blue-400',
    green: 'border-green-200 hover:border-green-400',
    yellow: 'border-yellow-200 hover:border-yellow-400',
    purple: 'border-purple-200 hover:border-purple-400',
    gray: 'border-gray-200 hover:border-gray-400',
  };
  return (
    <Link
      href={href}
      target={external ? '_blank' : undefined}
      className={`block p-6 bg-white border-2 rounded-xl hover:shadow-md transition-all relative ${colors[color]}`}
    >
      {badge !== undefined && badge > 0 && (
        <span className="absolute top-3 right-3 bg-red-500 text-white text-xs font-bold px-2 py-0.5 rounded-full">{badge}</span>
      )}
      <div className="text-4xl mb-3">{icon}</div>
      <h3 className="text-lg font-bold text-gray-900 mb-1">{title}</h3>
      <p className="text-sm text-gray-600">{description}</p>
      {external && <span className="text-xs text-gray-400 mt-2 block">Opens in new tab ↗</span>}
    </Link>
  );
}
