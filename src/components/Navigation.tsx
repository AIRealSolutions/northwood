'use client';

import { useSession, signOut } from 'next-auth/react';
import Link from 'next/link';
import { useState } from 'react';

export default function Navigation() {
  const { data: session, status } = useSession();
  const [showUserMenu, setShowUserMenu] = useState(false);

  return (
    <div className="w-full flex justify-between items-center">
      <Link href="/">
        <h1 className="text-3xl font-bold text-black dark:text-zinc-50 cursor-pointer hover:text-emerald-600 transition-colors">
          Northwood Cemetery
        </h1>
      </Link>

      {/* Public nav links */}
      <nav className="hidden md:flex items-center gap-6">
        <Link href="/cemetery-map" className="text-sm text-gray-600 dark:text-gray-300 hover:text-emerald-600 dark:hover:text-emerald-400 transition-colors">
          Cemetery Map
        </Link>
        <Link href="/records" className="text-sm text-gray-600 dark:text-gray-300 hover:text-emerald-600 dark:hover:text-emerald-400 transition-colors">
          Records
        </Link>
        <Link href="/family-tree" className="text-sm text-gray-600 dark:text-gray-300 hover:text-emerald-600 dark:hover:text-emerald-400 transition-colors">
          Family Tree
        </Link>
        <Link href="/cemetery-committee" className="text-sm font-medium text-emerald-700 dark:text-emerald-400 hover:text-emerald-800 dark:hover:text-emerald-300 transition-colors border border-emerald-300 dark:border-emerald-600 px-3 py-1 rounded-lg hover:bg-emerald-50 dark:hover:bg-emerald-900/30">
          Committee Portal
        </Link>
      </nav>
      
      <div className="flex items-center gap-4">
        {status === 'loading' ? (
          <div className="text-sm text-gray-500">Loading...</div>
        ) : session ? (
          // Logged in - show user menu
          <div className="relative">
            <button
              onClick={() => setShowUserMenu(!showUserMenu)}
              className="flex items-center gap-2 px-4 py-2 rounded-lg bg-emerald-600 text-white hover:bg-emerald-700 transition-colors"
            >
              <span>{session.user?.name || session.user?.email}</span>
              <svg
                className={`w-4 h-4 transition-transform ${showUserMenu ? 'rotate-180' : ''}`}
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
              </svg>
            </button>
            
            {showUserMenu && (
              <div className="absolute right-0 mt-2 w-48 bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-200 dark:border-gray-700 py-2 z-50">
                <div className="px-4 py-2 border-b border-gray-200 dark:border-gray-700">
                  <p className="text-sm font-medium text-gray-900 dark:text-white">
                    {session.user?.name || 'User'}
                  </p>
                  <p className="text-xs text-gray-500 dark:text-gray-400">
                    {session.user?.email}
                  </p>
                  {session.user?.role && (
                    <p className="text-xs text-emerald-600 dark:text-emerald-400 mt-1">
                      {session.user.role === 'admin' ? 'Administrator'
                        : session.user.role === 'cemetery_committee' ? 'Committee Member'
                        : session.user.role === 'superintendent' ? 'Superintendent'
                        : 'Member'}
                    </p>
                  )}
                </div>
                
                {(session.user?.role === 'admin' || session.user?.role === 'superintendent' || session.user?.role === 'cemetery_committee') && (
                  <>
                    <Link
                      href="/admin"
                      className="block px-4 py-2 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700"
                      onClick={() => setShowUserMenu(false)}
                    >
                      {session.user?.role === 'cemetery_committee' ? 'Committee Dashboard' : 'Admin Dashboard'}
                    </Link>
                    <Link
                      href="/admin/family-tree"
                      className="block px-4 py-2 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700"
                      onClick={() => setShowUserMenu(false)}
                    >
                      🌳 Family Tree Moderation
                    </Link>
                  </>
                )}
                {session.user?.role === 'cemetery_committee' && (
                  <Link
                    href="/admin/committee"
                    className="block px-4 py-2 text-sm text-emerald-700 dark:text-emerald-400 hover:bg-gray-100 dark:hover:bg-gray-700 font-medium"
                    onClick={() => setShowUserMenu(false)}
                  >
                    Committee Back Office
                  </Link>
                )}
                
                <Link
                  href="/dashboard"
                  className="block px-4 py-2 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700"
                  onClick={() => setShowUserMenu(false)}
                >
                  My Dashboard
                </Link>
                
                <Link
                  href="/profile"
                  className="block px-4 py-2 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700"
                  onClick={() => setShowUserMenu(false)}
                >
                  Profile Settings
                </Link>
                
                <button
                  onClick={() => {
                    setShowUserMenu(false);
                    signOut({ callbackUrl: '/' });
                  }}
                  className="block w-full text-left px-4 py-2 text-sm text-red-600 dark:text-red-400 hover:bg-gray-100 dark:hover:bg-gray-700"
                >
                  Sign Out
                </button>
              </div>
            )}
          </div>
        ) : (
          // Not logged in - show login/register buttons
          <div className="flex items-center gap-3">
            <Link
              href="/auth/login"
              className="px-4 py-2 text-sm font-medium text-gray-700 dark:text-gray-300 hover:text-emerald-600 dark:hover:text-emerald-400 transition-colors"
            >
              Sign In
            </Link>
            <Link
              href="/auth/register"
              className="px-4 py-2 text-sm font-medium rounded-lg bg-emerald-600 text-white hover:bg-emerald-700 transition-colors"
            >
              Register
            </Link>
          </div>
        )}
      </div>
    </div>
  );
}
