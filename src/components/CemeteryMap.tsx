'use client';

import React, { useState, useMemo } from 'react';
import Link from 'next/link';
import { PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  plots: PlotWithDetails[];
  onPlotSelect?: (plot: PlotWithDetails) => void;
  selectedSection?: string;
}

// Correct cemetery layout based on user description
// Roads are named after flowers/trees, running East-West
// Each road has 2 plots deep on each side
// Sections are identified by the road they're adjacent to
const CEMETERY_ROADS = [
  { name: 'Fodale', type: 'border', description: 'Main Street (North Border)' },
  { name: 'Azalea', section: 'A', description: 'Section A - Azalea Road' },
  { name: 'Beech', section: 'B', description: 'Section B - Beech Road' },
  { name: 'Chinquapin', section: 'C', description: 'Section C - Chinquapin Road' },
  { name: 'Dogwood', section: 'D', description: 'Section D - Dogwood Road' },
  { name: 'Elm', section: 'E', description: 'Section E - Elm Road' },
  { name: 'Fig', section: 'F', description: 'Section F - Fig Road' },
  { name: 'Gardenia', section: 'G', description: 'Section G - Gardenia Road' },
  { name: 'Heather', section: 'H', description: 'Section H - Heather Road' },
  { name: 'Hibiscus', type: 'road', description: 'Hibiscus Road' },
  { name: 'Sweet Bay', type: 'border', description: 'South Border' },
];

const SECTION_INFO: Record<string, { plots: number; road: string; color: string }> = {
  A: { plots: 578, road: 'Azalea', color: 'bg-pink-100 dark:bg-pink-900/30' },
  B: { plots: 592, road: 'Beech', color: 'bg-green-100 dark:bg-green-900/30' },
  C: { plots: 593, road: 'Chinquapin', color: 'bg-amber-100 dark:bg-amber-900/30' },
  D: { plots: 592, road: 'Dogwood', color: 'bg-rose-100 dark:bg-rose-900/30' },
  E: { plots: 592, road: 'Elm', color: 'bg-emerald-100 dark:bg-emerald-900/30' },
  F: { plots: 296, road: 'Fig', color: 'bg-purple-100 dark:bg-purple-900/30' },
  G: { plots: 871, road: 'Gardenia', color: 'bg-yellow-100 dark:bg-yellow-900/30' },
  H: { plots: 1035, road: 'Heather', color: 'bg-indigo-100 dark:bg-indigo-900/30' },
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

  // Road component
  const Road = ({ name, isMain = false }: { name: string; isMain?: boolean }) => (
    <div className={`
      w-full py-2 text-center font-semibold text-xs
      ${isMain 
        ? 'bg-gray-700 dark:bg-gray-600 text-white' 
        : 'bg-amber-200 dark:bg-amber-800 text-amber-900 dark:text-amber-100'
      }
    `}>
      {name.toUpperCase()} {isMain ? '' : 'ROAD'}
    </div>
  );

  // Section row component - shows 2 plots deep on each side of the road
  const SectionRow = ({ section }: { section: string }) => {
    const stats = getSectionStats(section);
    const info = SECTION_INFO[section];
    const isHovered = hoveredSection === section;
    
    return (
      <div className="flex items-stretch">
        {/* North side plots (2 deep) */}
        <button
          onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
          onMouseEnter={() => setHoveredSection(section)}
          onMouseLeave={() => setHoveredSection(null)}
          className={`
            flex-1 p-3 transition-all duration-200 border-y border-l border-gray-300 dark:border-gray-600
            ${info.color}
            ${isHovered ? 'scale-[1.02] shadow-lg z-10 border-green-500' : 'hover:border-green-400'}
          `}
        >
          <div className="text-xs text-gray-600 dark:text-gray-400">North Side</div>
          <div className="text-sm font-medium text-gray-800 dark:text-gray-200">2 plots deep</div>
        </button>

        {/* Road with section label */}
        <div className={`
          w-32 flex flex-col items-center justify-center
          bg-amber-200 dark:bg-amber-800 border-y border-gray-300 dark:border-gray-600
          ${isHovered ? 'bg-amber-300 dark:bg-amber-700' : ''}
        `}>
          <div className="text-lg font-bold text-gray-800 dark:text-white">
            Section {section}
          </div>
          <div className="text-xs font-semibold text-amber-900 dark:text-amber-100">
            {info.road} Rd
          </div>
          <div className="text-xs text-gray-600 dark:text-gray-400 mt-1">
            {stats.total > 0 ? stats.total : info.plots} plots
          </div>
          <div className="flex gap-1 mt-1 text-[10px]">
            <span className="text-green-700 dark:text-green-400">{stats.available} avail</span>
            <span className="text-red-700 dark:text-red-400">{stats.occupied} used</span>
          </div>
        </div>

        {/* South side plots (2 deep) */}
        <button
          onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
          onMouseEnter={() => setHoveredSection(section)}
          onMouseLeave={() => setHoveredSection(null)}
          className={`
            flex-1 p-3 transition-all duration-200 border-y border-r border-gray-300 dark:border-gray-600
            ${info.color}
            ${isHovered ? 'scale-[1.02] shadow-lg z-10 border-green-500' : 'hover:border-green-400'}
          `}
        >
          <div className="text-xs text-gray-600 dark:text-gray-400">South Side</div>
          <div className="text-sm font-medium text-gray-800 dark:text-gray-200">2 plots deep</div>
        </button>
      </div>
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
        <div className="max-w-4xl mx-auto bg-white dark:bg-gray-800 rounded-lg shadow-lg overflow-hidden">
          {/* North Border - Fodale (Main Street) */}
          <Road name="Fodale - Main Street" isMain />
          
          {/* Section A - Azalea */}
          <SectionRow section="A" />
          
          {/* Section B - Beech */}
          <SectionRow section="B" />
          
          {/* Section C - Chinquapin */}
          <SectionRow section="C" />
          
          {/* Section D - Dogwood */}
          <SectionRow section="D" />
          
          {/* Section E - Elm */}
          <SectionRow section="E" />
          
          {/* Section F - Fig */}
          <SectionRow section="F" />
          
          {/* Section G - Gardenia */}
          <SectionRow section="G" />
          
          {/* Section H - Heather */}
          <SectionRow section="H" />
          
          {/* Hibiscus Road */}
          <Road name="Hibiscus" />
          
          {/* South Border - Sweet Bay */}
          <Road name="Sweet Bay - South Border" isMain />
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
            <div className="w-6 h-3 bg-amber-200 dark:bg-amber-800 rounded"></div>
            <span className="text-gray-700 dark:text-gray-300">Road</span>
          </div>
        </div>

        {/* Road Names Reference */}
        <div className="mt-4 text-center text-xs text-gray-500 dark:text-gray-400">
          <p className="font-medium mb-1">Roads (North to South):</p>
          <p>Fodale → Azalea → Beech → Chinquapin → Dogwood → Elm → Fig → Gardenia → Heather → Hibiscus → Sweet Bay</p>
        </div>

        {/* Total Stats */}
        <div className="mt-4 text-center text-sm text-gray-600 dark:text-gray-400">
          Total: {plots.length.toLocaleString()} plots across 8 sections
        </div>
      </div>
    );
  }

  // Section detail view with plot grid
  const sectionInfo = SECTION_INFO[selectedSection.toUpperCase()];
  
  return (
    <div className="relative w-full h-full bg-gray-100 dark:bg-gray-900 rounded-lg overflow-auto">
      {/* Section header with road info */}
      <div className="sticky top-0 bg-gray-100 dark:bg-gray-900 p-3 border-b border-gray-200 dark:border-gray-700 z-10">
        <div className="flex justify-between items-center">
          <div>
            <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300">
              Section {selectedSection.toUpperCase()} - {filteredPlots.length} plots
            </h3>
            <p className="text-xs text-amber-600 dark:text-amber-400">
              Located on {sectionInfo?.road} Road • 2 plots deep on each side
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
                {/* Show road indicator after first 2 rows (north side) */}
                {index === 2 && (
                  <div className="bg-amber-200 dark:bg-amber-800 text-center py-2 rounded my-3">
                    <span className="text-sm font-semibold text-amber-900 dark:text-amber-100">
                      ← {sectionInfo?.road.toUpperCase()} ROAD →
                    </span>
                  </div>
                )}
                <div className="flex items-center gap-1">
                  <div className="w-16 text-xs text-gray-500 dark:text-gray-400 font-medium text-right pr-2">
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
                <p className="text-xs text-gray-500 dark:text-gray-400 mt-1">
                  {sectionInfo?.road} Road, Row {plot.row_number}
                </p>
                <p className="text-xs text-blue-600 dark:text-blue-400 mt-1">Click to view details →</p>
              </div>
            );
          })()}
        </div>
      )}
    </div>
  );
}
