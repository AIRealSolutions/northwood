'use client';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface Stats {
  totalDeceased: number;
  totalPlots: number;
  pendingMedia: number;
  pendingMemories: number;
  totalUsers: number;
}

export default function AdminDashboard() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [stats, setStats] = useState<Stats | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (status === 'loading') return;

    if (!session) {
      router.push('/auth/login?callbackUrl=/admin');
      return;
    }

    if (session.user?.role !== 'admin' && session.user?.role !== 'superintendent' && session.user?.role !== 'cemetery_committee') {
      router.push('/');
      return;
    }

    // Fetch dashboard stats
    fetchStats();
  }, [session, status, router]);

  const fetchStats = async () => {
    try {
      // TODO: Implement API route to fetch stats from Supabase
      // For now, using placeholder data
      setStats({
        totalDeceased: 2027,
        totalPlots: 5158,
        pendingMedia: 0,
        pendingMemories: 0,
        totalUsers: 1
      });
    } catch (error) {
      console.error('Error fetching stats:', error);
    } finally {
      setLoading(false);
    }
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-green-600 mx-auto"></div>
          <p className="mt-4 text-gray-600">Loading admin dashboard...</p>
        </div>
      </div>
    );
  }

  if (!session || (session.user?.role !== 'admin' && session.user?.role !== 'superintendent' && session.user?.role !== 'cemetery_committee')) {
    return null;
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white shadow">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
          <div className="flex justify-between items-center">
            <div>
              <h1 className="text-3xl font-bold text-gray-900">Admin Dashboard</h1>
              <p className="mt-1 text-sm text-gray-600">
                Welcome back, {session.user?.name || session.user?.email}
              </p>
            </div>
            <Link
              href="/"
              className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
            >
              ← Back to Site
            </Link>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Stats Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          <StatCard
            title="Total Deceased Records"
            value={stats?.totalDeceased || 0}
            icon="👤"
            color="blue"
          />
          <StatCard
            title="Total Plots"
            value={stats?.totalPlots || 0}
            icon="📍"
            color="green"
          />
          <StatCard
            title="Pending Media"
            value={stats?.pendingMedia || 0}
            icon="🖼️"
            color="yellow"
          />
          <StatCard
            title="Pending Memories"
            value={stats?.pendingMemories || 0}
            icon="💭"
            color="purple"
          />
        </div>

        {/* Quick Actions */}
        <div className="bg-white rounded-lg shadow p-6 mb-8">
          <h2 className="text-xl font-semibold text-gray-900 mb-4">Quick Actions</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            <ActionButton
              href="/admin/plots"
              title="Plot Management"
              description="Create, edit, delete and manage cemetery plots"
              icon="📍"
            />
            <ActionButton
              href="/admin/records"
              title="Manage Records"
              description="Add, edit, and delete deceased occupants"
              icon="📋"
            />
            <ActionButton
              href="/admin/moderation"
              title="Moderation Queue"
              description="Review pending content"
              icon="✅"
              badge={stats?.pendingMedia! + stats?.pendingMemories! || 0}
            />
            <ActionButton
              href="/admin/users"
              title="User Management"
              description="Manage users and permissions"
              icon="👥"
            />
            <ActionButton
              href="/admin/connections"
              title="Family Connections"
              description="Review and approve descendant connection requests"
              icon="🌳"
            />
            <ActionButton
              href="/admin/audit-log"
              title="Audit Log"
              description="View all database changes with full history and attribution"
              icon="📋"
            />
            <ActionButton
              href="/admin/settings"
              title="System Settings"
              description="Configure system settings"
              icon="⚙️"
            />
          </div>
        </div>

        {/* Recent Activity */}
        <div className="bg-white rounded-lg shadow p-6">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-xl font-semibold text-gray-900">Recent Activity</h2>
            <Link href="/admin/audit-log" className="text-sm text-emerald-600 hover:text-emerald-800 font-medium">
              View full audit log →
            </Link>
          </div>
          <div className="text-center text-gray-500 py-8">
            <p className="text-sm">All changes to plots, users, and connections are tracked in the <Link href="/admin/audit-log" className="text-emerald-600 hover:underline">Audit Log</Link>.</p>
          </div>
        </div>
      </main>
    </div>
  );
}

interface StatCardProps {
  title: string;
  value: number;
  icon: string;
  color: 'blue' | 'green' | 'yellow' | 'purple';
}

function StatCard({ title, value, icon, color }: StatCardProps) {
  const colorClasses = {
    blue: 'bg-blue-50 text-blue-600',
    green: 'bg-green-50 text-green-600',
    yellow: 'bg-yellow-50 text-yellow-600',
    purple: 'bg-purple-50 text-purple-600'
  };

  return (
    <div className="bg-white rounded-lg shadow p-6">
      <div className="flex items-center justify-between">
        <div>
          <p className="text-sm font-medium text-gray-600">{title}</p>
          <p className="mt-2 text-3xl font-bold text-gray-900">{value.toLocaleString()}</p>
        </div>
        <div className={`text-4xl ${colorClasses[color]} p-3 rounded-lg`}>
          {icon}
        </div>
      </div>
    </div>
  );
}

interface ActionButtonProps {
  href: string;
  title: string;
  description: string;
  icon: string;
  badge?: number;
}

function ActionButton({ href, title, description, icon, badge }: ActionButtonProps) {
  return (
    <Link
      href={href}
      className="block p-4 border border-gray-200 rounded-lg hover:border-green-500 hover:shadow-md transition-all relative"
    >
      {badge !== undefined && badge > 0 && (
        <span className="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded-full">
          {badge}
        </span>
      )}
      <div className="flex items-start space-x-3">
        <div className="text-3xl">{icon}</div>
        <div className="flex-1">
          <h3 className="font-semibold text-gray-900">{title}</h3>
          <p className="text-sm text-gray-600 mt-1">{description}</p>
        </div>
      </div>
    </Link>
  );
}
