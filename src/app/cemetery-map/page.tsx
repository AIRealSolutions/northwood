'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import Link from 'next/link';
import CemeteryMap from '@/components/CemeteryMap';

export const dynamic = 'force-dynamic';

function CemeteryMapContent() {
  const searchParams = useSearchParams();
  const section = searchParams.get('section');

  return (
    <div className="min-h-screen bg-gradient-to-b from-gray-50 to-gray-100">
      {/* Navigation */}
      <nav className="bg-white shadow-sm sticky top-0 z-50">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between h-16">
            <div className="flex items-center">
              <Link href="/" className="flex items-center gap-2">
                <div className="w-8 h-8 bg-emerald-600 rounded-lg flex items-center justify-center">
                  <svg className="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                  </svg>
                </div>
                <span className="font-bold text-gray-800">Northwood Cemetery</span>
              </Link>
            </div>
            <div className="flex items-center gap-6">
              <Link href="/cemetery-map" className="text-emerald-600 font-medium">Map</Link>
              <Link href="/records" className="text-gray-600 hover:text-emerald-600 transition-colors">Records</Link>
              <Link href="/gallery" className="text-gray-600 hover:text-emerald-600 transition-colors">Gallery</Link>
            </div>
          </div>
        </div>
      </nav>

      {/* Main Content */}
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <CemeteryMap selectedSection={section || undefined} />
      </main>

      {/* Footer */}
      <footer className="bg-white border-t mt-12">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
          <div className="grid md:grid-cols-3 gap-8">
            <div>
              <h3 className="font-bold text-gray-800 mb-3">Northwood Cemetery</h3>
              <p className="text-gray-600 text-sm">
                City of Southport<br />
                Smithville Township<br />
                Brunswick County, NC
              </p>
            </div>
            <div>
              <h3 className="font-bold text-gray-800 mb-3">Quick Links</h3>
              <div className="space-y-2">
                <Link href="/cemetery-map" className="block text-gray-600 hover:text-emerald-600 text-sm">Cemetery Map</Link>
                <Link href="/records" className="block text-gray-600 hover:text-emerald-600 text-sm">Search Records</Link>
                <Link href="/gallery" className="block text-gray-600 hover:text-emerald-600 text-sm">Photo Gallery</Link>
              </div>
            </div>
            <div>
              <h3 className="font-bold text-gray-800 mb-3">Sections</h3>
              <div className="flex flex-wrap gap-2">
                {['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'].map((s) => (
                  <Link
                    key={s}
                    href={`/cemetery-map?section=${s}`}
                    className="w-8 h-8 bg-emerald-100 hover:bg-emerald-200 rounded flex items-center justify-center text-emerald-700 font-medium text-sm transition-colors"
                  >
                    {s}
                  </Link>
                ))}
              </div>
            </div>
          </div>
          <div className="border-t mt-8 pt-8 text-center text-gray-500 text-sm">
            © {new Date().getFullYear()} Northwood Cemetery. Platted by Tide Water Engineering and Surveying P.A.
          </div>
        </div>
      </footer>
    </div>
  );
}

export default function CemeteryMapPage() {
  return (
    <Suspense fallback={
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    }>
      <CemeteryMapContent />
    </Suspense>
  );
}
