'use client';

import React, { Suspense } from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
import CemeteryMap from '@/components/CemeteryMap';

// Component that uses useSearchParams - must be wrapped in Suspense
function CemeteryMapContent() {
  const searchParams = useSearchParams();
  const selectedSection = searchParams.get('section') || '';

  return (
    <>
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Cemetery Map</h1>
        <p className="text-gray-600 dark:text-gray-300">
          Interactive map of Northwood Cemetery in Southport, NC. 
          {selectedSection ? ` Viewing Section ${selectedSection.toUpperCase()}.` : ' Click any section to view individual plots.'}
        </p>
        <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">
          Roads run North-South from Fodale Ave to Sweet Bay. Sections are arranged West (Azalea) to East (Hibiscus).
        </p>
      </div>

      {/* Cemetery Map Component */}
      <CemeteryMap selectedSection={selectedSection} />

      {/* Additional Info */}
      <div className="mt-8 bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
        <h2 className="text-xl font-semibold mb-4">Cemetery Information</h2>
        
        <div className="grid md:grid-cols-2 gap-6">
          <div>
            <h3 className="font-semibold text-gray-700 dark:text-gray-300 mb-2">Section Layout</h3>
            <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
              The cemetery is divided into 8 sections (A through H), arranged from west to east. 
              Each section is bounded by two flower/tree-named roads.
            </p>
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b dark:border-gray-700">
                  <th className="text-left py-1">Section</th>
                  <th className="text-left py-1">West Road</th>
                  <th className="text-left py-1">East Road</th>
                </tr>
              </thead>
              <tbody className="text-gray-600 dark:text-gray-400">
                <tr><td className="py-1 font-medium">A</td><td>Azalea</td><td>Beech</td></tr>
                <tr><td className="py-1 font-medium">B</td><td>Beech</td><td>Chinquapin</td></tr>
                <tr><td className="py-1 font-medium">C</td><td>Chinquapin</td><td>Dogwood</td></tr>
                <tr><td className="py-1 font-medium">D</td><td>Dogwood</td><td>Elm</td></tr>
                <tr><td className="py-1 font-medium">E</td><td>Elm</td><td>Fig</td></tr>
                <tr><td className="py-1 font-medium">F</td><td>Fig</td><td>Gardenia</td></tr>
                <tr><td className="py-1 font-medium">G</td><td>Gardenia</td><td>Heather</td></tr>
                <tr><td className="py-1 font-medium">H</td><td>Heather</td><td>Hibiscus</td></tr>
              </tbody>
            </table>
          </div>
          
          <div>
            <h3 className="font-semibold text-gray-700 dark:text-gray-300 mb-2">Plot Layout</h3>
            <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
              Each section contains plots arranged in rows running north to south (from Fodale Ave toward Sweet Bay).
            </p>
            <ul className="text-sm text-gray-600 dark:text-gray-400 space-y-1">
              <li>• <strong>Rows:</strong> Numbered 1-35+ (North to South)</li>
              <li>• <strong>Positions:</strong> 4 plots per row (1-4, West to East)</li>
              <li>• <strong>Plot Number Format:</strong> NW-[Section]-[Row]-[Position]</li>
              <li>• <strong>Example:</strong> NW-D-015-3 = Section D, Row 15, Position 3</li>
            </ul>
            
            <div className="mt-4 p-3 bg-gray-50 dark:bg-gray-900 rounded-lg">
              <h4 className="font-medium text-sm mb-2">Boundaries</h4>
              <ul className="text-xs text-gray-500 dark:text-gray-400 space-y-1">
                <li>North: N Fodale Ave</li>
                <li>South: Sweet Bay / Leaf Dr area</li>
                <li>West: Mitchell St / Azalea</li>
                <li>East: Hibiscus</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

// Loading fallback
function LoadingFallback() {
  return (
    <div className="flex items-center justify-center p-12">
      <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
    </div>
  );
}

export default function CemeteryMapPage() {
  return (
    <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
      <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <Link href="/" className="text-2xl font-bold text-black dark:text-white">
            Northwood Cemetery
          </Link>
          <nav className="hidden md:flex space-x-6">
            <Link href="/cemetery-map" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
              Cemetery Map
            </Link>
            <Link href="/records" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Records
            </Link>
            <Link href="/gallery" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Gallery
            </Link>
            <Link href="/burial-services" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Burial Services
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <Suspense fallback={<LoadingFallback />}>
          <CemeteryMapContent />
        </Suspense>
      </main>

      <footer className="bg-white dark:bg-black border-t border-gray-200 dark:border-gray-800 py-6">
        <div className="container mx-auto px-4">
          <p className="text-center text-gray-500 dark:text-gray-400 text-sm">
            Northwood Cemetery - Southport, NC
          </p>
        </div>
      </footer>
    </div>
  );
}
