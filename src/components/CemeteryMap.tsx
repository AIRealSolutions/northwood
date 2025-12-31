'use client';

import React, { useState, useMemo } from 'react';
import Link from 'next/link';
import { PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  plots: PlotWithDetails[];
  onPlotSelect?: (plot: PlotWithDetails) => void;
  selectedSection?: string;
}

// Cemetery layout based on actual photos
const CEMETERY_LAYOUT = {
  streets: [
    { name: 'Northwood Ave', orientation: 'horizontal', position: 'top' },
    { name: 'Magnolia Ave', orientation: 'vertical', position: 'center' },
    { name: 'Dogwood Ave', orientation: 'horizontal', position: 'upper-middle' },
    { name: 'Jasmine Ave', orientation: 'vertical', position: 'center' },
    { name: 'Camellia Ave', orientation: 'horizontal', position: 'lower-middle' },
    { name: 'Azalea Ave', orientation: 'vertical', position: 'center' },
  ],
  sections: {
    A: { row: 0, col: 0, plots: 578 },
    B: { row: 0, col: 1, plots: 592 },
    C: { row: 1, col: 0, plots: 593 },
    D: { row: 1, col: 1, plots: 592 },
    E: { row: 2, col: 0, plots: 592 },
    F: { row: 2, col: 1, plots: 296 },
    G: { row: 3, col: 0, plots: 871, span: 2 },
    H: { row: 4, col: 0, plots: 1035, span: 2 },
  }
};

export default function CemeteryMap({ plots, onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [hoveredPlot, setHoveredPlot] = useState<string | null>(null);
  const [selectedPlot, setSelectedPlot] = useState<PlotWithDetails | null>(null);
  const [hoveredSection, setHoveredSection] = useState<string | null>(null);

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
    // Sort plots within each row by position
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

  // Get deceased name for a plot
  const getDeceasedName = (plot: PlotWithDetails) => {
    if (plot.deceased_records && plot.deceased_records.length > 0) {
      const deceased = plot.deceased_records[0];
      return `${deceased.first_name} ${deceased.last_name}`;
    }
    return null;
  };

  // Calculate section stats
  const getSectionStats = (sectionLetter: string) => {
    const sectionPlots = plots.filter(p => p.section === sectionLetter);
    return {
      total: sectionPlots.length,
      occupied: sectionPlots.filter(p => p.status === 'occupied').length,
      available: sectionPlots.filter(p => p.status === 'available').length,
      reserved: sectionPlots.filter(p => p.status === 'reserved').length,
    };
  };

  // If no section is selected, show visual cemetery map
  if (!selectedSection || selectedSection === 'all') {
    return (
      <div className="relative w-full h-full bg-gradient-to-b from-green-100 to-green-200 dark:from-gray-900 dark:to-gray-800 rounded-lg overflow-auto p-4">
        {/* Cemetery Title */}
        <div className="text-center mb-4">
          <h3 className="text-xl font-bold text-gray-800 dark:text-white">
            Northwood Cemetery
          </h3>
          <p className="text-sm text-gray-600 dark:text-gray-400">
            Southport, NC • Click a section to view plots
          </p>
        </div>

        {/* Visual Cemetery Map */}
        <div className="max-w-4xl mx-auto">
          {/* Main Entrance - Northwood Ave */}
          <div className="bg-amber-200 dark:bg-amber-900 text-center py-2 rounded-t-lg border-2 border-amber-400 dark:border-amber-700 mb-2">
            <span className="text-sm font-semibold text-amber-800 dark:text-amber-200">
              ↑ NORTHWOOD AVE (Main Entrance) ↑
            </span>
          </div>

          {/* Row 1: Sections A & B */}
          <div className="grid grid-cols-2 gap-4 mb-2">
            {['A', 'B'].map(section => {
              const stats = getSectionStats(section);
              const isHovered = hoveredSection === section;
              return (
                <button
                  key={section}
                  onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
                  onMouseEnter={() => setHoveredSection(section)}
                  onMouseLeave={() => setHoveredSection(null)}
                  className={`
                    relative p-4 rounded-lg transition-all duration-200 border-2
                    ${isHovered 
                      ? 'bg-blue-100 dark:bg-blue-900 border-blue-500 scale-105 shadow-lg' 
                      : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-blue-400'
                    }
                  `}
                >
                  <div className="text-2xl font-bold text-gray-800 dark:text-white mb-1">
                    Section {section}
                  </div>
                  <div className="text-sm text-gray-600 dark:text-gray-400">
                    {stats.total} plots
                  </div>
                  <div className="flex justify-center gap-3 mt-2 text-xs">
                    <span className="text-green-600 dark:text-green-400">
                      ● {stats.available} available
                    </span>
                    <span className="text-red-600 dark:text-red-400">
                      ● {stats.occupied} occupied
                    </span>
                  </div>
                  {/* Occupancy bar */}
                  <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                    <div 
                      className="h-full bg-gradient-to-r from-red-500 to-red-600" 
                      style={{ width: `${stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0}%` }}
                    />
                  </div>
                </button>
              );
            })}
          </div>

          {/* Magnolia Ave */}
          <div className="bg-amber-100 dark:bg-amber-900/50 text-center py-1 rounded border border-amber-300 dark:border-amber-700 mb-2">
            <span className="text-xs font-medium text-amber-700 dark:text-amber-300">MAGNOLIA AVE</span>
          </div>

          {/* Row 2: Sections C & D */}
          <div className="grid grid-cols-2 gap-4 mb-2">
            {['C', 'D'].map(section => {
              const stats = getSectionStats(section);
              const isHovered = hoveredSection === section;
              return (
                <button
                  key={section}
                  onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
                  onMouseEnter={() => setHoveredSection(section)}
                  onMouseLeave={() => setHoveredSection(null)}
                  className={`
                    relative p-4 rounded-lg transition-all duration-200 border-2
                    ${isHovered 
                      ? 'bg-blue-100 dark:bg-blue-900 border-blue-500 scale-105 shadow-lg' 
                      : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-blue-400'
                    }
                  `}
                >
                  <div className="text-2xl font-bold text-gray-800 dark:text-white mb-1">
                    Section {section}
                  </div>
                  <div className="text-sm text-gray-600 dark:text-gray-400">
                    {stats.total} plots
                  </div>
                  <div className="flex justify-center gap-3 mt-2 text-xs">
                    <span className="text-green-600 dark:text-green-400">
                      ● {stats.available} available
                    </span>
                    <span className="text-red-600 dark:text-red-400">
                      ● {stats.occupied} occupied
                    </span>
                  </div>
                  <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                    <div 
                      className="h-full bg-gradient-to-r from-red-500 to-red-600" 
                      style={{ width: `${stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0}%` }}
                    />
                  </div>
                </button>
              );
            })}
          </div>

          {/* Dogwood Ave */}
          <div className="bg-amber-100 dark:bg-amber-900/50 text-center py-1 rounded border border-amber-300 dark:border-amber-700 mb-2">
            <span className="text-xs font-medium text-amber-700 dark:text-amber-300">DOGWOOD AVE</span>
          </div>

          {/* Row 3: Sections E & F */}
          <div className="grid grid-cols-2 gap-4 mb-2">
            {['E', 'F'].map(section => {
              const stats = getSectionStats(section);
              const isHovered = hoveredSection === section;
              return (
                <button
                  key={section}
                  onClick={() => onPlotSelect && onPlotSelect({ section } as any)}
                  onMouseEnter={() => setHoveredSection(section)}
                  onMouseLeave={() => setHoveredSection(null)}
                  className={`
                    relative p-4 rounded-lg transition-all duration-200 border-2
                    ${isHovered 
                      ? 'bg-blue-100 dark:bg-blue-900 border-blue-500 scale-105 shadow-lg' 
                      : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-blue-400'
                    }
                  `}
                >
                  <div className="text-2xl font-bold text-gray-800 dark:text-white mb-1">
                    Section {section}
                  </div>
                  <div className="text-sm text-gray-600 dark:text-gray-400">
                    {stats.total} plots
                  </div>
                  <div className="flex justify-center gap-3 mt-2 text-xs">
                    <span className="text-green-600 dark:text-green-400">
                      ● {stats.available} available
                    </span>
                    <span className="text-red-600 dark:text-red-400">
                      ● {stats.occupied} occupied
                    </span>
                  </div>
                  <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                    <div 
                      className="h-full bg-gradient-to-r from-red-500 to-red-600" 
                      style={{ width: `${stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0}%` }}
                    />
                  </div>
                </button>
              );
            })}
          </div>

          {/* Camellia Ave */}
          <div className="bg-amber-100 dark:bg-amber-900/50 text-center py-1 rounded border border-amber-300 dark:border-amber-700 mb-2">
            <span className="text-xs font-medium text-amber-700 dark:text-amber-300">CAMELLIA AVE</span>
          </div>

          {/* Row 4: Section G (spans full width) */}
          {(() => {
            const stats = getSectionStats('G');
            const isHovered = hoveredSection === 'G';
            return (
              <button
                onClick={() => onPlotSelect && onPlotSelect({ section: 'G' } as any)}
                onMouseEnter={() => setHoveredSection('G')}
                onMouseLeave={() => setHoveredSection(null)}
                className={`
                  w-full relative p-4 rounded-lg transition-all duration-200 border-2 mb-2
                  ${isHovered 
                    ? 'bg-blue-100 dark:bg-blue-900 border-blue-500 scale-[1.02] shadow-lg' 
                    : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-blue-400'
                  }
                `}
              >
                <div className="text-2xl font-bold text-gray-800 dark:text-white mb-1">
                  Section G
                </div>
                <div className="text-sm text-gray-600 dark:text-gray-400">
                  {stats.total} plots (Large Section)
                </div>
                <div className="flex justify-center gap-4 mt-2 text-xs">
                  <span className="text-green-600 dark:text-green-400">
                    ● {stats.available} available
                  </span>
                  <span className="text-red-600 dark:text-red-400">
                    ● {stats.occupied} occupied
                  </span>
                </div>
                <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                  <div 
                    className="h-full bg-gradient-to-r from-red-500 to-red-600" 
                    style={{ width: `${stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </button>
            );
          })()}

          {/* Azalea Ave */}
          <div className="bg-amber-100 dark:bg-amber-900/50 text-center py-1 rounded border border-amber-300 dark:border-amber-700 mb-2">
            <span className="text-xs font-medium text-amber-700 dark:text-amber-300">AZALEA AVE</span>
          </div>

          {/* Row 5: Section H (spans full width) */}
          {(() => {
            const stats = getSectionStats('H');
            const isHovered = hoveredSection === 'H';
            return (
              <button
                onClick={() => onPlotSelect && onPlotSelect({ section: 'H' } as any)}
                onMouseEnter={() => setHoveredSection('H')}
                onMouseLeave={() => setHoveredSection(null)}
                className={`
                  w-full relative p-4 rounded-lg transition-all duration-200 border-2
                  ${isHovered 
                    ? 'bg-blue-100 dark:bg-blue-900 border-blue-500 scale-[1.02] shadow-lg' 
                    : 'bg-white dark:bg-gray-800 border-gray-300 dark:border-gray-600 hover:border-blue-400'
                  }
                `}
              >
                <div className="text-2xl font-bold text-gray-800 dark:text-white mb-1">
                  Section H
                </div>
                <div className="text-sm text-gray-600 dark:text-gray-400">
                  {stats.total} plots (Largest Section)
                </div>
                <div className="flex justify-center gap-4 mt-2 text-xs">
                  <span className="text-green-600 dark:text-green-400">
                    ● {stats.available} available
                  </span>
                  <span className="text-red-600 dark:text-red-400">
                    ● {stats.occupied} occupied
                  </span>
                </div>
                <div className="mt-2 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                  <div 
                    className="h-full bg-gradient-to-r from-red-500 to-red-600" 
                    style={{ width: `${stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </button>
            );
          })()}
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
      {/* Section header */}
      <div className="sticky top-0 bg-gray-100 dark:bg-gray-900 p-3 border-b border-gray-200 dark:border-gray-700 z-10">
        <div className="flex justify-between items-center">
          <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300">
            Section {selectedSection.toUpperCase()} - {filteredPlots.length} plots
          </h3>
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
            {rows.map(rowNum => (
              <div key={rowNum} className="flex items-center gap-1">
                <div className="w-12 text-xs text-gray-500 dark:text-gray-400 font-medium text-right pr-2">
                  Row {rowNum}
                </div>
                <div className="flex gap-1 flex-wrap">
                  {plotsByRow[rowNum].map(plot => (
                    <div
                      key={plot.id}
                      className={`
                        w-8 h-8 rounded cursor-pointer transition-all duration-150
                        ${getPlotColor(plot)} ${getPlotBorder(plot)}
                        hover:opacity-90 hover:scale-110
                        flex items-center justify-center
                      `}
                      onMouseEnter={() => setHoveredPlot(plot.id)}
                      onMouseLeave={() => setHoveredPlot(null)}
                      onClick={() => handlePlotClick(plot)}
                      title={`${plot.plot_number} - ${plot.status}`}
                    >
                      <span className="text-[8px] text-white font-bold">
                        {plot.plot_position}
                      </span>
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="text-center py-12 text-gray-500 dark:text-gray-400">
            No plots found for this section
          </div>
        )}
      </div>

      {/* Selected plot details panel */}
      {selectedPlot && (
        <div className="absolute bottom-4 right-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-4 max-w-sm border border-gray-200 dark:border-gray-700 z-20">
          <div className="flex justify-between items-start mb-2">
            <h3 className="text-lg font-bold text-gray-900 dark:text-white">
              {selectedPlot.plot_number}
            </h3>
            <button
              onClick={() => setSelectedPlot(null)}
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              ✕
            </button>
          </div>
          
          <div className="space-y-2 text-sm">
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Section:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                Section {selectedPlot.section}
              </span>
            </div>
            
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Row / Position:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                {selectedPlot.row_number} / {selectedPlot.plot_position}
              </span>
            </div>
            
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Status:</span>
              <span className={`font-medium ${
                selectedPlot.status === 'available' ? 'text-green-600' :
                selectedPlot.status === 'reserved' ? 'text-yellow-600' :
                'text-red-600'
              }`}>
                {selectedPlot.status.charAt(0).toUpperCase() + selectedPlot.status.slice(1)}
              </span>
            </div>
            
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Type:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                {selectedPlot.plot_type.charAt(0).toUpperCase() + selectedPlot.plot_type.slice(1)}
              </span>
            </div>

            {/* Deceased - Primary Info */}
            {selectedPlot.deceased_records && selectedPlot.deceased_records.length > 0 && (
              <div className="mt-3 pt-3 border-t border-gray-200 dark:border-gray-700">
                <p className="text-gray-600 dark:text-gray-400 mb-1 font-medium">Interred:</p>
                {selectedPlot.deceased_records.map((deceased: any) => (
                  <div key={deceased.id} className="mb-1">
                    <p className="font-medium text-gray-900 dark:text-white">
                      {deceased.first_name} {deceased.middle_name ? deceased.middle_name + ' ' : ''}{deceased.last_name}
                    </p>
                    {deceased.birth_date && deceased.death_date && (
                      <p className="text-xs text-gray-500 dark:text-gray-400">
                        {new Date(deceased.birth_date).getFullYear()} - {new Date(deceased.death_date).getFullYear()}
                      </p>
                    )}
                  </div>
                ))}
              </div>
            )}

            {/* Owner - Secondary Info */}
            {selectedPlot.owner_name && (
              <div className="mt-2 pt-2 border-t border-gray-200 dark:border-gray-700">
                <p className="text-xs text-gray-500 dark:text-gray-400">Owner:</p>
                <p className="text-sm text-gray-700 dark:text-gray-300">{selectedPlot.owner_name}</p>
              </div>
            )}
          </div>

          {/* View Details Button */}
          <div className="mt-4 pt-3 border-t border-gray-200 dark:border-gray-700">
            <Link
              href={`/plot/${selectedPlot.id}`}
              className="block w-full text-center bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg transition-colors text-sm font-medium"
            >
              View Full Details
            </Link>
          </div>
        </div>
      )}

      {/* Hover tooltip */}
      {hoveredPlot && !selectedPlot && (
        <div className="fixed bottom-4 left-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-3 border border-gray-200 dark:border-gray-700 z-20 pointer-events-none">
          {(() => {
            const plot = filteredPlots.find(p => p.id === hoveredPlot);
            if (!plot) return null;
            const deceasedName = getDeceasedName(plot);
            return (
              <div className="text-sm">
                <p className="font-bold text-gray-900 dark:text-white">{plot.plot_number}</p>
                {deceasedName && (
                  <p className="text-gray-700 dark:text-gray-300">{deceasedName}</p>
                )}
                <p className="text-gray-600 dark:text-gray-400">
                  Status: <span className={
                    plot.status === 'available' ? 'text-green-600' :
                    plot.status === 'reserved' ? 'text-yellow-600' :
                    'text-red-600'
                  }>{plot.status}</span>
                </p>
                {plot.owner_name && (
                  <p className="text-xs text-gray-500 dark:text-gray-400">Owner: {plot.owner_name}</p>
                )}
              </div>
            );
          })()}
        </div>
      )}
    </div>
  );
}
