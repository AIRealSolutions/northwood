'use client';

import React, { useState, useMemo } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  plots: PlotWithDetails[];
  onPlotSelect?: (plot: PlotWithDetails) => void;
  selectedSection?: string;
}

// Accurate cemetery layout based on photos
// Streets run through the CENTER of sections, not between them
// Exception: Entrance street (A Street) at top, Hydrangea at bottom of H
const CEMETERY_STREETS = [
  { name: 'A Street', position: 'entrance', description: 'Main Entrance' },
  { name: 'Northwood Ave', throughSection: 'A-B', description: 'Through Sections A & B' },
  { name: 'Magnolia Ave', throughSection: 'C-D', description: 'Through Sections C & D' },
  { name: 'Dogwood Ave', throughSection: 'E-F', description: 'Through Sections E & F' },
  { name: 'Camellia Ave', throughSection: 'G', description: 'Through Section G' },
  { name: 'Azalea Ave', throughSection: 'H-upper', description: 'Through Section H (upper)' },
  { name: 'Hydrangea Ave', position: 'end', description: 'End of Section H' },
];

const SECTION_INFO = {
  A: { plots: 578, street: 'Northwood Ave', row: 0, col: 0 },
  B: { plots: 592, street: 'Northwood Ave', row: 0, col: 1 },
  C: { plots: 593, street: 'Magnolia Ave', row: 1, col: 0 },
  D: { plots: 592, street: 'Magnolia Ave', row: 1, col: 1 },
  E: { plots: 592, street: 'Dogwood Ave', row: 2, col: 0 },
  F: { plots: 296, street: 'Dogwood Ave', row: 2, col: 1 },
  G: { plots: 871, street: 'Camellia Ave', row: 3, col: 0, span: 2 },
  H: { plots: 1035, street: 'Azalea Ave', row: 4, col: 0, span: 2 },
};

// Cemetery photos for gallery
const CEMETERY_PHOTOS = [
  { src: '/cemetery-photos/IMG_8816.jpeg', alt: 'Cemetery Section Sign' },
  { src: '/cemetery-photos/IMG_8817.jpeg', alt: 'Cemetery Avenue' },
  { src: '/cemetery-photos/IMG_8818.jpeg', alt: 'Cemetery Layout' },
  { src: '/cemetery-photos/IMG_8820.jpeg', alt: 'Plot Rows' },
  { src: '/cemetery-photos/IMG_8822.jpeg', alt: 'Cemetery Overview' },
  { src: '/cemetery-photos/IMG_8830.jpeg', alt: 'Wide View' },
];

export default function CemeteryMap({ plots, onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [hoveredPlot, setHoveredPlot] = useState<string | null>(null);
  const [selectedPlot, setSelectedPlot] = useState<PlotWithDetails | null>(null);
  const [hoveredSection, setHoveredSection] = useState<string | null>(null);
  const [showPhotoGallery, setShowPhotoGallery] = useState(false);

  // Filter plots by selected section
  const filteredPlots = useMemo(() => {
    return selectedSection && selectedSection !== 'all'
      ? plots.filter(plot => plot.section.toLowerCase() === selectedSection.toLowerCase())
      : plots;
  }, [plots, selectedSection]);

  // Group plots by row for grid layout
  const plotsByRow = useMemo(() => {
    const grouped: Record<number, PlotWithDetails[]> = {};
    filteredPlots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!grouped[row]) {
        grouped[row] = [];
      }
      grouped[row].push(plot);
    });
    Object.keys(grouped).forEach(row => {
      grouped[parseInt(row)].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0));
    });
    return grouped;
  }, [filteredPlots]);

  const rows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);

  const handlePlotClick = (plot: PlotWithDetails) => {
    setSelectedPlot(plot);
    if (onPlotSelect) {
      onPlotSelect(plot);
    }
  };

  const getPlotColor = (plot: PlotWithDetails) => {
    if (plot.status === 'available') {
      return plot.plot_type === 'cremation' ? 'bg-purple-500' : 'bg-green-500';
    } else if (plot.status === 'reserved') {
      return 'bg-yellow-500';
    } else if (plot.status === 'occupied') {
      return 'bg-red-500';
    }
    return 'bg-gray-400';
  };

  const getPlotBorder = (plot: PlotWithDetails) => {
    if (selectedPlot?.id === plot.id) {
      return 'ring-2 ring-blue-600 ring-offset-1';
    }
    if (hoveredPlot === plot.id) {
      return 'ring-2 ring-gray-600';
    }
    return '';
  };

  const getDeceasedName = (plot: PlotWithDetails) => {
    if (plot.deceased_records && plot.deceased_records.length > 0) {
      const deceased = plot.deceased_records[0];
      return `${deceased.first_name} ${deceased.last_name}`;
    }
    return null;
  };

  const getSectionStats = (sectionLetter: string) => {
    const sectionPlots = plots.filter(p => p.section === sectionLetter);
    return {
      total: sectionPlots.length,
      occupied: sectionPlots.filter(p => p.status === 'occupied').length,
      available: sectionPlots.filter(p => p.status === 'available').length,
      reserved: sectionPlots.filter(p => p.status === 'reserved').length,
    };
  };

  // Section card component with street running through it
  const SectionCard = ({ section, isLarge = false }: { section: string; isLarge?: boolean }) => {
    const stats = getSectionStats(section);
    const info = SECTION_INFO[section as keyof typeof SECTION_INFO];
    const isHovered = hoveredSection === section;
    
    return (
      <button
        onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
        onMouseEnter={() => setHoveredSection(section)}
        onMouseLeave={() => setHoveredSection(null)}
        className={`
          relative rounded-lg transition-all duration-200 border-2 overflow-hidden
          ${isLarge ? 'col-span-2' : ''}
          ${isHovered 
            ? 'bg-green-50 dark:bg-green-900/30 border-green-500 scale-[1.02] shadow-lg z-10' 
            : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-green-400'
          }
        `}
      >
        {/* Street running through the center */}
        <div className="absolute left-0 right-0 top-1/2 -translate-y-1/2 h-6 bg-amber-200 dark:bg-amber-900/60 flex items-center justify-center z-0">
          <span className="text-[10px] font-semibold text-amber-800 dark:text-amber-200 whitespace-nowrap">
            {info.street}
          </span>
        </div>
        
        {/* Section content */}
        <div className="relative z-10 p-4">
          {/* Top half - plots above street */}
          <div className="mb-3 pb-3">
            <div className="text-2xl font-bold text-gray-800 dark:text-white">
              Section {section}
            </div>
            <div className="text-sm text-gray-600 dark:text-gray-400">
              {stats.total > 0 ? stats.total : info.plots} plots
            </div>
          </div>
          
          {/* Bottom half - stats below street */}
          <div className="mt-3 pt-3">
            <div className="flex justify-center gap-3 text-xs">
              <span className="text-green-600 dark:text-green-400 font-medium">
                ● {stats.available} avail
              </span>
              <span className="text-red-600 dark:text-red-400 font-medium">
                ● {stats.occupied} used
              </span>
            </div>
            {/* Occupancy bar */}
            <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
              <div 
                className="h-full bg-gradient-to-r from-green-500 to-green-600" 
                style={{ width: `${stats.total > 0 ? (stats.available / stats.total) * 100 : 50}%` }}
              />
            </div>
          </div>
        </div>
      </button>
    );
  };

  // If no section is selected, show visual cemetery map
  if (!selectedSection || selectedSection === 'all') {
    return (
      <div className="relative w-full h-full bg-gradient-to-b from-green-100 via-green-50 to-green-100 dark:from-gray-900 dark:via-gray-800 dark:to-gray-900 rounded-lg overflow-auto p-4">
        {/* Header with photo gallery toggle */}
        <div className="text-center mb-4">
          <h3 className="text-xl font-bold text-gray-800 dark:text-white">
            Northwood Cemetery
          </h3>
          <p className="text-sm text-gray-600 dark:text-gray-400">
            Southport, NC • Click a section to view plots
          </p>
          <button
            onClick={() => setShowPhotoGallery(!showPhotoGallery)}
            className="mt-2 text-sm text-blue-600 dark:text-blue-400 hover:underline"
          >
            {showPhotoGallery ? 'Hide Photos' : 'View Cemetery Photos'}
          </button>
        </div>

        {/* Photo Gallery */}
        {showPhotoGallery && (
          <div className="mb-6 bg-white dark:bg-gray-800 rounded-lg p-4 shadow-lg">
            <h4 className="text-lg font-semibold text-gray-800 dark:text-white mb-3">Cemetery Photos</h4>
            <div className="grid grid-cols-2 md:grid-cols-3 gap-3">
              {CEMETERY_PHOTOS.map((photo, index) => (
                <div key={index} className="relative aspect-video rounded-lg overflow-hidden bg-gray-200 dark:bg-gray-700">
                  <img
                    src={photo.src}
                    alt={photo.alt}
                    className="w-full h-full object-cover hover:scale-105 transition-transform duration-300"
                  />
                </div>
              ))}
            </div>
          </div>
        )}

        {/* Visual Cemetery Map */}
        <div className="max-w-4xl mx-auto">
          {/* Main Entrance - A Street */}
          <div className="bg-gray-700 dark:bg-gray-600 text-center py-3 rounded-t-lg mb-1">
            <span className="text-sm font-bold text-white">
              ↓ A STREET - MAIN ENTRANCE ↓
            </span>
          </div>

          {/* Row 1: Sections A & B with Northwood Ave through center */}
          <div className="grid grid-cols-2 gap-3 mb-3">
            <SectionCard section="A" />
            <SectionCard section="B" />
          </div>

          {/* Row 2: Sections C & D with Magnolia Ave through center */}
          <div className="grid grid-cols-2 gap-3 mb-3">
            <SectionCard section="C" />
            <SectionCard section="D" />
          </div>

          {/* Row 3: Sections E & F with Dogwood Ave through center */}
          <div className="grid grid-cols-2 gap-3 mb-3">
            <SectionCard section="E" />
            <SectionCard section="F" />
          </div>

          {/* Row 4: Section G (full width) with Camellia Ave through center */}
          <div className="grid grid-cols-2 gap-3 mb-3">
            <SectionCard section="G" isLarge />
          </div>

          {/* Row 5: Section H (full width) with Azalea Ave through center */}
          <div className="grid grid-cols-2 gap-3 mb-1">
            <SectionCard section="H" isLarge />
          </div>

          {/* End - Hydrangea Ave */}
          <div className="bg-purple-600 dark:bg-purple-800 text-center py-2 rounded-b-lg">
            <span className="text-sm font-bold text-white">
              HYDRANGEA AVE
            </span>
          </div>
        </div>

        {/* Legend */}
        <div className="mt-6 flex flex-wrap justify-center gap-4 text-sm">
          <div className="flex items-center gap-2">
            <div className="w-4 h-4 bg-green-500 rounded"></div>
            <span className="text-gray-700 dark:text-gray-300">Available</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-4 h-4 bg-red-500 rounded"></div>
            <span className="text-gray-700 dark:text-gray-300">Occupied</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-4 h-4 bg-yellow-500 rounded"></div>
            <span className="text-gray-700 dark:text-gray-300">Reserved</span>
          </div>
          <div className="flex items-center gap-2">
            <div className="w-4 h-1 bg-amber-300 rounded"></div>
            <span className="text-gray-700 dark:text-gray-300">Street</span>
          </div>
        </div>

        {/* Total Stats */}
        <div className="mt-4 text-center text-sm text-gray-600 dark:text-gray-400">
          Total: {plots.length.toLocaleString()} plots across 8 sections
        </div>
      </div>
    );
  }

  // Section detail view with plot grid
  return (
    <div className="relative w-full h-full bg-gray-100 dark:bg-gray-900 rounded-lg overflow-auto">
      {/* Section header with street info */}
      <div className="sticky top-0 bg-gray-100 dark:bg-gray-900 p-3 border-b border-gray-200 dark:border-gray-700 z-10">
        <div className="flex justify-between items-center">
          <div>
            <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300">
              Section {selectedSection.toUpperCase()} - {filteredPlots.length} plots
            </h3>
            <p className="text-xs text-amber-600 dark:text-amber-400">
              {SECTION_INFO[selectedSection.toUpperCase() as keyof typeof SECTION_INFO]?.street} runs through this section
            </p>
          </div>
          <div className="text-sm text-gray-500 dark:text-gray-400">
            <span className="text-green-600 font-medium">
              {filteredPlots.filter(p => p.status === 'available').length} available
            </span>
            {' | '}
            <span className="text-red-600 font-medium">
              {filteredPlots.filter(p => p.status === 'occupied').length} occupied
            </span>
          </div>
        </div>
      </div>

      {/* Plot grid */}
      <div className="p-4">
        {rows.length > 0 ? (
          <div className="space-y-2">
            {rows.map((rowNum, index) => (
              <React.Fragment key={rowNum}>
                {/* Show street indicator in the middle of the section */}
                {index === Math.floor(rows.length / 2) && (
                  <div className="bg-amber-200 dark:bg-amber-900/60 text-center py-1 rounded my-2">
                    <span className="text-xs font-semibold text-amber-800 dark:text-amber-200">
                      ← {SECTION_INFO[selectedSection.toUpperCase() as keyof typeof SECTION_INFO]?.street} →
                    </span>
                  </div>
                )}
                <div className="flex items-center gap-1">
                  <div className="w-12 text-xs text-gray-500 dark:text-gray-400 font-medium text-right pr-2">
                    Row {rowNum}
                  </div>
                  <div className="flex gap-1 flex-wrap">
                    {plotsByRow[rowNum].map(plot => (
                      <Link
                        key={plot.id}
                        href={`/plot/${plot.id}`}
                        className={`
                          w-8 h-8 rounded cursor-pointer transition-all duration-150
                          ${getPlotColor(plot)} ${getPlotBorder(plot)}
                          hover:opacity-90 hover:scale-110
                          flex items-center justify-center
                        `}
                        onMouseEnter={() => setHoveredPlot(plot.id)}
                        onMouseLeave={() => setHoveredPlot(null)}
                        title={`${plot.plot_number} - ${plot.status}${getDeceasedName(plot) ? ` - ${getDeceasedName(plot)}` : ''}`}
                      >
                        <span className="text-[8px] text-white font-bold">
                          {plot.plot_position}
                        </span>
                      </Link>
                    ))}
                  </div>
                </div>
              </React.Fragment>
            ))}
          </div>
        ) : (
          <div className="text-center py-12 text-gray-500 dark:text-gray-400">
            No plots found for this section. Make sure the SQL migration was loaded.
          </div>
        )}
      </div>

      {/* Hover tooltip */}
      {hoveredPlot && (
        <div className="fixed bottom-4 left-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-3 border border-gray-200 dark:border-gray-700 z-20 pointer-events-none max-w-xs">
          {(() => {
            const plot = filteredPlots.find(p => p.id === hoveredPlot);
            if (!plot) return null;
            const deceasedName = getDeceasedName(plot);
            return (
              <div className="text-sm">
                <p className="font-bold text-gray-900 dark:text-white">{plot.plot_number}</p>
                {deceasedName && (
                  <p className="text-gray-700 dark:text-gray-300 font-medium">{deceasedName}</p>
                )}
                <p className="text-gray-600 dark:text-gray-400">
                  Status: <span className={
                    plot.status === 'available' ? 'text-green-600' :
                    plot.status === 'reserved' ? 'text-yellow-600' :
                    'text-red-600'
                  }>{plot.status}</span>
                </p>
                {plot.owner_name && (
                  <p className="text-xs text-gray-500 dark:text-gray-400 mt-1">Owner: {plot.owner_name}</p>
                )}
                <p className="text-xs text-blue-600 dark:text-blue-400 mt-1">Click to view details →</p>
              </div>
            );
          })()}
        </div>
      )}
    </div>
  );
}
