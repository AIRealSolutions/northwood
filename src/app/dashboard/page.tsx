'use client';

export const dynamic = 'force-dynamic';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface Connection {
  id: string;
  relationship: string;
  status: string;
  plots?: { plot_number: string; section: string } | null;
  deceased_records?: { first_name: string; last_name: string } | null;
}

interface Submission {
  id: string;
  subject?: string;
  description?: string;
  status: string;
  created_at: string;
  request_type?: string;
}

export default function DashboardPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [connections, setConnections] = useState<Connection[]>([]);
  const [submissions, setSubmissions] = useState<Submission[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (status === 'unauthenticated') {
      router.push('/auth/login');
      return;
    }
    if (status === 'authenticated') {
      // Admins and committee members go to their respective back offices
      const role = session?.user?.role;
      if (role === 'admin' || role === 'superintendent') {
        router.push('/admin');
        return;
      }
      if (role === 'cemetery_committee') {
        router.push('/admin/committee');
        return;
      }
      // Members get the member dashboard
      loadDashboardData();
    }
  }, [status, session]);

  const loadDashboardData = async () => {
    try {
      const [connRes] = await Promise.all([
        fetch('/api/connections?mine=true'),
      ]);
      const connData = await connRes.json();
      setConnections(connData.connections || []);
    } catch {
      // ignore
    } finally {
      setLoading(false);
    }
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600 mx-auto mb-4"></div>
          <p className="text-gray-500">Loading your dashboard...</p>
        </div>
      </div>
    );
  }

  if (!session) return null;

  const user = session.user;
  const pendingConnections = connections.filter(c => c.status === 'pending');
  const approvedConnections = connections.filter(c => c.status === 'approved');

  const statusBadge = (s: string) => {
    if (s === 'approved') return 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-200';
    if (s === 'rejected') return 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-200';
    return 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-200';
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 shadow-sm">
        <div className="max-w-6xl mx-auto px-4 py-4 flex items-center justify-between">
          <Link href="/" className="text-xl font-bold text-gray-900 dark:text-white">
            🌿 Northwood Cemetery
          </Link>
          <div className="flex items-center gap-4">
            <span className="text-sm text-gray-500 dark:text-gray-400">
              Welcome, <strong className="text-gray-900 dark:text-white">{user.name || user.email}</strong>
            </span>
            <Link
              href="/api/auth/signout"
              className="text-sm text-red-600 hover:text-red-700 dark:text-red-400"
            >
              Sign Out
            </Link>
          </div>
        </div>
      </header>

      <main className="max-w-6xl mx-auto px-4 py-8">
        {/* Welcome Banner */}
        <div className="bg-gradient-to-r from-emerald-600 to-green-700 rounded-2xl p-6 mb-8 text-white">
          <h1 className="text-2xl font-bold mb-1">Member Dashboard</h1>
          <p className="text-emerald-100 text-sm">
            Manage your family connections, submissions, and profile.
          </p>
          <div className="mt-4 flex flex-wrap gap-3">
            <Link
              href="/cemetery-map"
              className="inline-flex items-center gap-2 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl text-sm font-medium transition-colors"
            >
              🗺️ Cemetery Map
            </Link>
            <Link
              href="/records"
              className="inline-flex items-center gap-2 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl text-sm font-medium transition-colors"
            >
              📋 Browse Records
            </Link>
            <Link
              href="/cemetery-committee"
              className="inline-flex items-center gap-2 px-4 py-2 bg-white/20 hover:bg-white/30 rounded-xl text-sm font-medium transition-colors"
            >
              🏛️ Committee Portal
            </Link>
          </div>
        </div>

        {/* Stats Row */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
          <div className="bg-white dark:bg-gray-800 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center">
            <p className="text-3xl font-bold text-emerald-600">{approvedConnections.length}</p>
            <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">Approved Connections</p>
          </div>
          <div className="bg-white dark:bg-gray-800 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center">
            <p className="text-3xl font-bold text-yellow-500">{pendingConnections.length}</p>
            <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">Pending Review</p>
          </div>
          <div className="bg-white dark:bg-gray-800 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center">
            <p className="text-3xl font-bold text-blue-500">{submissions.length}</p>
            <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">Submissions</p>
          </div>
          <div className="bg-white dark:bg-gray-800 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center">
            <p className="text-3xl font-bold text-purple-500">
              {user.role === 'member' ? '👤' : '⭐'}
            </p>
            <p className="text-sm text-gray-500 dark:text-gray-400 mt-1 capitalize">{user.role}</p>
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Family Connections */}
          <div className="lg:col-span-2 space-y-6">
            {/* Approved Connections */}
            <div className="bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 p-6">
              <div className="flex items-center justify-between mb-4">
                <h2 className="text-lg font-semibold text-gray-900 dark:text-white flex items-center gap-2">
                  🌳 My Family Connections
                </h2>
                <Link
                  href="/my-connections"
                  className="text-sm text-emerald-600 hover:underline"
                >
                  View All →
                </Link>
              </div>

              {connections.length === 0 ? (
                <div className="text-center py-8 bg-gray-50 dark:bg-gray-900 rounded-xl">
                  <p className="text-4xl mb-3">🌱</p>
                  <p className="text-gray-600 dark:text-gray-400 font-medium mb-1">No connections yet</p>
                  <p className="text-sm text-gray-400 dark:text-gray-500 mb-4">
                    Find a plot and connect your family to the Northwood legacy.
                  </p>
                  <Link
                    href="/records"
                    className="inline-flex items-center gap-2 px-4 py-2 bg-emerald-600 hover:bg-emerald-700 text-white rounded-xl text-sm font-medium transition-colors"
                  >
                    Search Records
                  </Link>
                </div>
              ) : (
                <div className="space-y-3">
                  {connections.slice(0, 5).map(conn => (
                    <div
                      key={conn.id}
                      className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-900 rounded-xl"
                    >
                      <div className="flex items-center gap-3">
                        <span className="text-2xl">🪦</span>
                        <div>
                          <p className="font-medium text-gray-900 dark:text-white text-sm">
                            {conn.deceased_records
                              ? `${conn.deceased_records.first_name} ${conn.deceased_records.last_name}`
                              : conn.plots?.plot_number || 'Plot connection'}
                          </p>
                          <p className="text-xs text-gray-500 dark:text-gray-400">
                            {conn.relationship}
                            {conn.plots && ` · Plot ${conn.plots.plot_number}`}
                          </p>
                        </div>
                      </div>
                      <span className={`px-2 py-1 rounded-full text-xs font-medium ${statusBadge(conn.status)}`}>
                        {conn.status.charAt(0).toUpperCase() + conn.status.slice(1)}
                      </span>
                    </div>
                  ))}
                  {connections.length > 5 && (
                    <Link href="/my-connections" className="block text-center text-sm text-emerald-600 hover:underline pt-2">
                      View all {connections.length} connections →
                    </Link>
                  )}
                </div>
              )}
            </div>

            {/* Quick Actions */}
            <div className="bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 p-6">
              <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Quick Actions</h2>
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                <Link
                  href="/records"
                  className="flex items-center gap-3 p-4 bg-blue-50 dark:bg-blue-900/20 border border-blue-200 dark:border-blue-700 rounded-xl hover:bg-blue-100 dark:hover:bg-blue-900/40 transition-colors"
                >
                  <span className="text-2xl">🔍</span>
                  <div>
                    <p className="font-semibold text-blue-900 dark:text-blue-100 text-sm">Search Records</p>
                    <p className="text-xs text-blue-600 dark:text-blue-300">Find family members</p>
                  </div>
                </Link>
                <Link
                  href="/cemetery-committee"
                  className="flex items-center gap-3 p-4 bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-700 rounded-xl hover:bg-amber-100 dark:hover:bg-amber-900/40 transition-colors"
                >
                  <span className="text-2xl">✏️</span>
                  <div>
                    <p className="font-semibold text-amber-900 dark:text-amber-100 text-sm">Submit Correction</p>
                    <p className="text-xs text-amber-600 dark:text-amber-300">Fix a record or add media</p>
                  </div>
                </Link>
                <Link
                  href="/cemetery-committee?section=agenda"
                  className="flex items-center gap-3 p-4 bg-purple-50 dark:bg-purple-900/20 border border-purple-200 dark:border-purple-700 rounded-xl hover:bg-purple-100 dark:hover:bg-purple-900/40 transition-colors"
                >
                  <span className="text-2xl">📋</span>
                  <div>
                    <p className="font-semibold text-purple-900 dark:text-purple-100 text-sm">Submit Agenda Item</p>
                    <p className="text-xs text-purple-600 dark:text-purple-300">Add to committee meeting</p>
                  </div>
                </Link>
                <Link
                  href="/my-connections"
                  className="flex items-center gap-3 p-4 bg-green-50 dark:bg-green-900/20 border border-green-200 dark:border-green-700 rounded-xl hover:bg-green-100 dark:hover:bg-green-900/40 transition-colors"
                >
                  <span className="text-2xl">🌳</span>
                  <div>
                    <p className="font-semibold text-green-900 dark:text-green-100 text-sm">My Connections</p>
                    <p className="text-xs text-green-600 dark:text-green-300">Manage family links</p>
                  </div>
                </Link>
              </div>
            </div>
          </div>

          {/* Right Sidebar */}
          <div className="space-y-6">
            {/* Profile Card */}
            <div className="bg-white dark:bg-gray-800 rounded-xl border border-gray-200 dark:border-gray-700 p-6">
              <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">My Profile</h2>
              <div className="flex items-center gap-4 mb-4">
                <div className="w-14 h-14 rounded-full bg-emerald-100 dark:bg-emerald-900 flex items-center justify-center text-2xl font-bold text-emerald-700 dark:text-emerald-300">
                  {(user.name || user.email || '?')[0].toUpperCase()}
                </div>
                <div>
                  <p className="font-semibold text-gray-900 dark:text-white">{user.name || 'Member'}</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">{user.email}</p>
                  <span className="inline-block mt-1 px-2 py-0.5 bg-emerald-100 dark:bg-emerald-900 text-emerald-800 dark:text-emerald-200 text-xs rounded-full capitalize">
                    {user.role}
                  </span>
                </div>
              </div>
              <Link
                href="/profile"
                className="block w-full text-center py-2 px-4 bg-gray-100 dark:bg-gray-700 hover:bg-gray-200 dark:hover:bg-gray-600 text-gray-700 dark:text-gray-300 rounded-xl text-sm font-medium transition-colors"
              >
                Edit Profile
              </Link>
            </div>

            {/* Cemetery Info */}
            <div className="bg-emerald-50 dark:bg-emerald-900/20 border border-emerald-200 dark:border-emerald-700 rounded-xl p-5">
              <h3 className="font-semibold text-emerald-900 dark:text-emerald-100 mb-2">About Northwood</h3>
              <p className="text-sm text-emerald-700 dark:text-emerald-300 mb-3">
                Northwood Cemetery in Southport, NC — preserving family histories since the 19th century.
              </p>
              <div className="space-y-2">
                <Link href="/cemetery-committee" className="block text-sm text-emerald-700 dark:text-emerald-300 hover:underline">
                  🏛️ Cemetery Committee →
                </Link>
                <Link href="/cemetery-map" className="block text-sm text-emerald-700 dark:text-emerald-300 hover:underline">
                  🗺️ Interactive Map →
                </Link>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
