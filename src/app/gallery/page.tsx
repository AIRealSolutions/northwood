'use client';

import React, { useState } from 'react';
import Link from 'next/link';

export const dynamic = 'force-dynamic';

// Cemetery photos
const CEMETERY_PHOTOS = [
  { src: '/cemetery-photos/IMG_8816.jpeg', alt: 'Section Sign', description: 'Cemetery section marker' },
  { src: '/cemetery-photos/IMG_8817.jpeg', alt: 'Cemetery Avenue', description: 'One of the main avenues' },
  { src: '/cemetery-photos/IMG_8818.jpeg', alt: 'Cemetery Layout', description: 'View of the cemetery layout' },
  { src: '/cemetery-photos/IMG_8819.jpeg', alt: 'Avenue View', description: 'Avenue through the cemetery' },
  { src: '/cemetery-photos/IMG_8820.jpeg', alt: 'Plot Rows', description: 'Rows of burial plots' },
  { src: '/cemetery-photos/IMG_8821.jpeg', alt: 'Section Marker', description: 'Section identification marker' },
  { src: '/cemetery-photos/IMG_8822.jpeg', alt: 'Cemetery Overview', description: 'Overview of the cemetery grounds' },
  { src: '/cemetery-photos/IMG_8823.jpeg', alt: 'Street Sign', description: 'Cemetery street sign' },
  { src: '/cemetery-photos/IMG_8825.jpeg', alt: 'Section View', description: 'View of a cemetery section' },
  { src: '/cemetery-photos/IMG_8830.jpeg', alt: 'Wide Angle View', description: 'Wide angle view of the cemetery' },
  { src: '/cemetery-photos/IMG_8837.jpeg', alt: 'Entrance Area', description: 'Near the cemetery entrance' },
];

export default function GalleryPage() {
  const [selectedPhoto, setSelectedPhoto] = useState<number | null>(null);

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 shadow-sm">
        <div className="max-w-7xl mx-auto px-4 py-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between">
            <Link href="/" className="text-xl font-bold text-gray-900 dark:text-white">
              Northwood Cemetery
            </Link>
            <nav className="flex space-x-4">
              <Link href="/cemetery-map" className="text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white">
                Cemetery Map
              </Link>
              <Link href="/records" className="text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white">
                Records
              </Link>
              <Link href="/gallery" className="text-blue-600 dark:text-blue-400 font-medium">
                Gallery
              </Link>
            </nav>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="max-w-7xl mx-auto px-4 py-8 sm:px-6 lg:px-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
            Cemetery Photo Gallery
          </h1>
          <p className="text-gray-600 dark:text-gray-400">
            Photos of Northwood Cemetery in Southport, NC showing the layout, sections, and avenues.
          </p>
        </div>

        {/* Photo Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          {CEMETERY_PHOTOS.map((photo, index) => (
            <div
              key={index}
              className="relative aspect-square rounded-lg overflow-hidden bg-gray-200 dark:bg-gray-700 cursor-pointer group"
              onClick={() => setSelectedPhoto(index)}
            >
              <img
                src={photo.src}
                alt={photo.alt}
                className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-110"
              />
              <div className="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-40 transition-all duration-300 flex items-end">
                <div className="p-3 text-white opacity-0 group-hover:opacity-100 transition-opacity duration-300">
                  <p className="font-medium">{photo.alt}</p>
                  <p className="text-sm text-gray-200">{photo.description}</p>
                </div>
              </div>
            </div>
          ))}
        </div>

        {/* Cemetery Layout Info */}
        <div className="mt-12 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-6">
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
            Cemetery Layout
          </h2>
          <div className="grid md:grid-cols-2 gap-6">
            <div>
              <h3 className="text-lg font-semibold text-gray-800 dark:text-gray-200 mb-2">Streets & Avenues</h3>
              <p className="text-gray-600 dark:text-gray-400 mb-4">
                The cemetery features several named avenues that run through the center of each section:
              </p>
              <ul className="space-y-2 text-gray-700 dark:text-gray-300">
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-gray-700 rounded-full"></span>
                  <strong>A Street</strong> - Main Entrance
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-amber-500 rounded-full"></span>
                  <strong>Northwood Ave</strong> - Through Sections A & B
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-amber-500 rounded-full"></span>
                  <strong>Magnolia Ave</strong> - Through Sections C & D
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-amber-500 rounded-full"></span>
                  <strong>Dogwood Ave</strong> - Through Sections E & F
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-amber-500 rounded-full"></span>
                  <strong>Camellia Ave</strong> - Through Section G
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-amber-500 rounded-full"></span>
                  <strong>Azalea Ave</strong> - Through Section H
                </li>
                <li className="flex items-center gap-2">
                  <span className="w-3 h-3 bg-purple-600 rounded-full"></span>
                  <strong>Hydrangea Ave</strong> - End of Section H
                </li>
              </ul>
            </div>
            <div>
              <h3 className="text-lg font-semibold text-gray-800 dark:text-gray-200 mb-2">Sections</h3>
              <p className="text-gray-600 dark:text-gray-400 mb-4">
                The cemetery is divided into 8 sections, each with its own plots:
              </p>
              <div className="grid grid-cols-2 gap-2">
                {[
                  { section: 'A', plots: 578 },
                  { section: 'B', plots: 592 },
                  { section: 'C', plots: 593 },
                  { section: 'D', plots: 592 },
                  { section: 'E', plots: 592 },
                  { section: 'F', plots: 296 },
                  { section: 'G', plots: 871 },
                  { section: 'H', plots: 1035 },
                ].map(({ section, plots }) => (
                  <Link
                    key={section}
                    href={`/cemetery-map?section=${section.toLowerCase()}`}
                    className="flex items-center justify-between p-3 bg-gray-100 dark:bg-gray-700 rounded-lg hover:bg-gray-200 dark:hover:bg-gray-600 transition-colors"
                  >
                    <span className="font-medium text-gray-800 dark:text-gray-200">Section {section}</span>
                    <span className="text-sm text-gray-500 dark:text-gray-400">{plots} plots</span>
                  </Link>
                ))}
              </div>
            </div>
          </div>
        </div>
      </main>

      {/* Lightbox Modal */}
      {selectedPhoto !== null && (
        <div
          className="fixed inset-0 bg-black bg-opacity-90 z-50 flex items-center justify-center p-4"
          onClick={() => setSelectedPhoto(null)}
        >
          <button
            className="absolute top-4 right-4 text-white text-4xl hover:text-gray-300"
            onClick={() => setSelectedPhoto(null)}
          >
            ×
          </button>
          <button
            className="absolute left-4 top-1/2 -translate-y-1/2 text-white text-4xl hover:text-gray-300 p-2"
            onClick={(e) => {
              e.stopPropagation();
              setSelectedPhoto(selectedPhoto > 0 ? selectedPhoto - 1 : CEMETERY_PHOTOS.length - 1);
            }}
          >
            ‹
          </button>
          <button
            className="absolute right-4 top-1/2 -translate-y-1/2 text-white text-4xl hover:text-gray-300 p-2"
            onClick={(e) => {
              e.stopPropagation();
              setSelectedPhoto(selectedPhoto < CEMETERY_PHOTOS.length - 1 ? selectedPhoto + 1 : 0);
            }}
          >
            ›
          </button>
          <div className="max-w-4xl max-h-[90vh]" onClick={(e) => e.stopPropagation()}>
            <img
              src={CEMETERY_PHOTOS[selectedPhoto].src}
              alt={CEMETERY_PHOTOS[selectedPhoto].alt}
              className="max-w-full max-h-[80vh] object-contain rounded-lg"
            />
            <div className="text-center mt-4 text-white">
              <p className="text-lg font-medium">{CEMETERY_PHOTOS[selectedPhoto].alt}</p>
              <p className="text-gray-300">{CEMETERY_PHOTOS[selectedPhoto].description}</p>
              <p className="text-sm text-gray-400 mt-2">{selectedPhoto + 1} / {CEMETERY_PHOTOS.length}</p>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
