'use client';

import React, { useState, useEffect, useRef } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapUnifiedProps {
  highlightPlot?: string; // plot_number to scroll to and highlight
}

// Section configuration - West to East
const SECTIONS = [
  { id: 'A', name: 'Section A', westRoad: 'Azalea', eastRoad: 'Beech', color: 'from-emerald-500 to-emerald-700', bgColor: 'bg-emerald-50', borderColor: 'border-emerald-200' },
  { id: 'B', name: 'Section B', westRoad: 'Beech', eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700', bgColor: 'bg-teal-50', borderColor: 'border-teal-200' },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood', color: 'from-cyan-500 to-cyan-700', bgColor: 'bg-cyan-50', borderColor: 'border-cyan-200' },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood', eastRoad: 'Elm', color: 'from-sky-500 to-sky-700', bgColor: 'bg-sky-50', borderColor: 'border-sky-200' },
  { id: 'E', name: 'Section E', westRoad: 'Elm', eastRoad: 'Fig', color: 'from-blue-500 to-blue-700', bgColor: 'bg-blue-50', borderColor: 'border-blue-200' },
  { id: 'F', name: 'Section F', westRoad: 'Fig', eastRoad: 'Gardenia', color: 'from-indigo-500 to-indigo-700', bgColor: 'bg-indigo-50', borderColor: 'border-indigo-200' },
  { id: 'G', name: 'Section G', westRoad: 'Gardenia', eastRoad: 'Heather', color: 'from-violet-500 to-violet-700', bgColor: 'bg-violet-50', borderColor: 'border-violet-200' },
  { id: 'H', name: 'Section H', westRoad: 'Heather', eastRoad: 'Hibiscus', color: 'from-purple-500 to-purple-700', bgColor: 'bg-purple-50', borderColor: 'border-purple-200' },
];

export default function CemeteryMapUnified({ highlightPlot }: CemeteryMapUnifiedProps) {
  const [allPlots, setAllPlots] = useState<Record<string, PlotWithDetails[]>>({});
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const plotRefs = useRef<Record<string, HTMLDivElement | null>>({});

  useEffect(() => {
    loadAllPlots();
  }, []);

  useEffect(() => {
    if (highlightPlot && !loading) {
      // Scroll to highlighted plot after a short delay to ensure rendering is complete
      setTimeout(() => {
        const element = plotRefs.current[highlightPlot];
        if (element) {
          element.scrollIntoView({ behavior: 'smooth', block: 'center' });
          // Flash highlight effect
          element.classList.add('ring-4', 'ring-yellow-400', 'ring-offset-2');
          setTimeout(() => {
            element.classList.remove('ring-4', 'ring-yellow-400', 'ring-offset-2');
          }, 3000);
        }
      }, 500);
    }
  }, [highlightPlot, loading]);

  const loadAllPlots = async () => {
    setLoading(true);
    try {
      const plotsData: Record<string, PlotWithDetails[]> = {};
      for (const section of SECTIONS) {
        const sectionPlots = await plotsAPI.getPlotsBySection(section.id);
        plotsData[section.id] = sectionPlots;
      }
      setAllPlots(plotsData);
    } catch (error) {
      console.error('Error loading plots:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!searchQuery.trim()) {
      setShowSearch(false);
      setSearchResults([]);
      return;
    }
    try {
      const results = await plotsAPI.searchPlots(searchQuery);
      setSearchResults(results);
      setShowSearch(true);
    } catch (error) {
      console.error('Error searching:', error);
    }
  };

  const getDeceasedName = (plot: PlotWithDetails) => {
    const deceased = plot.deceased_records?.[0];
    if (deceased) {
      return `${deceased.first_name} ${deceased.last_name}`;
    }
    return null;
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'occupied': return 'bg-rose-500 hover:bg-rose-600 border-rose-600';
      case 'reserved': return 'bg-amber-400 hover:bg-amber-500 border-amber-500';
      default: return 'bg-emerald-400 hover:bg-emerald-500 border-emerald-500';
    }
  };

  // Render a single row as VERTICAL 4x2 matrix
  const renderRowMatrix = (
    row: number, 
    facingDirection: 'west' | 'east', 
    rowPlots: PlotWithDetails[],
    sectionColor: string
  ) => {
    // West (ascending): Normal order [1,5], [2,6], [3,7], [4,8]
    // East (descending): Reversed order [8,4], [7,3], [6,2], [5,1]
    const positionPairs = facingDirection === 'west'
      ? [[1, 5], [2, 6], [3, 7], [4, 8]]
      : [[8, 4], [7, 3], [6, 2], [5, 1]];
    
    return (
      <div className="mb-2">
        <div className="text-[9px] text-gray-500 mb-1">Row {row}</div>
        <div className={`bg-white rounded border ${sectionColor} p-1`}>
          {positionPairs.map(([pos1, pos2]) => (
            <div key={`${pos1}-${pos2}`} className="flex gap-0.5 mb-0.5 last:mb-0">
              {/* Position 1-4 or 5-8 (left column) */}
              {(() => {
                const plot = rowPlots.find(p => p.plot_position === pos1);
                if (!plot) {
                  return (
                    <div className="w-8 h-6 rounded-sm bg-gray-200 flex items-center justify-center">
                      <span className="text-[8px] text-gray-400">{pos1}</span>
                    </div>
                  );
                }
                const deceasedName = getDeceasedName(plot);
                return (
                  <div
                    ref={(el) => { plotRefs.current[plot.plot_number] = el; }}
                  >
                    <Link
                      href={`/plot/${plot.id}`}
                      className={`
                        w-8 h-6 rounded-sm flex items-center justify-center 
                        text-white shadow-sm border
                        transition-all duration-150 hover:scale-105 hover:shadow-lg hover:z-10
                        ${getStatusColor(plot.status)}
                      `}
                      title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                    >
                      <span className="text-[8px] font-bold">{pos1}</span>
                    </Link>
                  </div>
                );
              })()}
              {/* Position 5-8 or 1-4 (right column) */}
              {(() => {
                const plot = rowPlots.find(p => p.plot_position === pos2);
                if (!plot) {
                  return (
                    <div className="w-8 h-6 rounded-sm bg-gray-200 flex items-center justify-center">
                      <span className="text-[8px] text-gray-400">{pos2}</span>
                    </div>
                  );
                }
                const deceasedName = getDeceasedName(plot);
                return (
                  <div
                    ref={(el) => { plotRefs.current[plot.plot_number] = el; }}
                  >
                    <Link
                      href={`/plot/${plot.id}`}
                      className={`
                        w-8 h-6 rounded-sm flex items-center justify-center 
                        text-white shadow-sm border
                        transition-all duration-150 hover:scale-105 hover:shadow-lg hover:z-10
                        ${getStatusColor(plot.status)}
                      `}
                      title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                    >
                      <span className="text-[8px] font-bold">{pos2}</span>
                    </Link>
                  </div>
                );
              })()}
            </div>
          ))}
        </div>
      </div>
    );
  };

  // Render a single section
  const renderSection = (section: typeof SECTIONS[0]) => {
    const plots = allPlots[section.id] || [];
    
    // Group plots by row
    const plotsByRow: Record<number, PlotWithDetails[]> = {};
    plots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!plotsByRow[row]) plotsByRow[row] = [];
      plotsByRow[row].push(plot);
    });
    
    // Sort plots within each row by position
    Object.keys(plotsByRow).forEach(row => {
      plotsByRow[parseInt(row)].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0));
    });
    
    const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);
    const westStripRows = allRows.filter(r => r <= 37);
    const eastStripRows = allRows.filter(r => r > 37);

    return (
      <div key={section.id} id={`section-${section.id}`} className="mb-8 scroll-mt-20">
        {/* Section Header */}
        <div className={`bg-gradient-to-r ${section.color} rounded-xl shadow-md p-4 mb-4`}>
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-2xl font-black text-white">{section.name}</h3>
              <p className="text-white/80 text-sm">
                {section.westRoad} ↔ {section.eastRoad}
              </p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-4 py-2">
              <div className="text-2xl font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-xs">Plots</div>
            </div>
          </div>
        </div>

        {/* Section Grid */}
        <div className="bg-white rounded-xl shadow-md p-4 border border-gray-100">
          <div className="flex gap-2">
            {/* West Road Label */}
            <div className="w-12 flex-shrink-0 bg-amber-100 rounded-lg flex items-center justify-center border-2 border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-xs font-bold text-amber-800">
                {section.westRoad}
              </span>
            </div>

            {/* West Strip - LEFT JUSTIFIED (Ascending) */}
            <div className={`flex-1 ${section.bgColor} rounded-lg p-3 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-xs font-bold text-gray-700 bg-white/50 px-2 py-1 rounded-full">
                  Rows 1-37 ↑
                </span>
              </div>
              
              {/* Left-justified: flex items-start */}
              <div className="flex justify-start">
                <div className="inline-block">
                  {[...westStripRows].reverse().map((row) => 
                    renderRowMatrix(row, 'west', plotsByRow[row] || [], section.borderColor)
                  )}
                  {westStripRows.length === 0 && (
                    <div className="text-center text-gray-400 py-4 text-xs">No plots</div>
                  )}
                </div>
              </div>
            </div>

            {/* East Strip - RIGHT JUSTIFIED (Descending) */}
            <div className={`flex-1 ${section.bgColor} rounded-lg p-3 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-xs font-bold text-gray-700 bg-white/50 px-2 py-1 rounded-full">
                  Rows 38+ ↓
                </span>
              </div>
              
              {/* Right-justified: flex items-end */}
              <div className="flex justify-end">
                <div className="inline-block">
                  {eastStripRows.map((row) => 
                    renderRowMatrix(row, 'east', plotsByRow[row] || [], section.borderColor)
                  )}
                  {eastStripRows.length === 0 && (
                    <div className="text-center text-gray-400 py-4 text-xs">No plots</div>
                  )}
                </div>
              </div>
            </div>

            {/* East Road Label */}
            <div className="w-12 flex-shrink-0 bg-amber-100 rounded-lg flex items-center justify-center border-2 border-amber-300">
              <span className="transform rotate-90 whitespace-nowrap text-xs font-bold text-amber-800">
                {section.eastRoad}
              </span>
            </div>
          </div>
        </div>
      </div>
    );
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-16 w-16 border-4 border-emerald-200 border-t-emerald-600 mx-auto mb-4"></div>
          <p className="text-gray-600">Loading cemetery map...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Sticky Header */}
      <div className="sticky top-0 z-50 bg-white shadow-md border-b border-gray-200">
        <div className="max-w-7xl mx-auto px-4 py-4">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4">
            <div>
              <h1 className="text-2xl font-bold text-gray-800">Northwood Cemetery Map</h1>
              <p className="text-gray-500 text-sm">Southport, NC • All Sections</p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search name or plot..."
                className="px-4 py-2 border border-gray-200 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-64"
              />
              <button
                type="submit"
                className="px-5 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all font-medium"
              >
                Search
              </button>
            </form>
          </div>

          {/* Quick Section Navigation */}
          <div className="flex gap-2 mt-4 overflow-x-auto pb-2">
            {SECTIONS.map((section) => (
              <a
                key={section.id}
                href={`#section-${section.id}`}
                className={`px-3 py-1 rounded-lg text-sm font-medium whitespace-nowrap transition-all
                  bg-gradient-to-r ${section.color} text-white hover:shadow-lg`}
              >
                {section.id}
              </a>
            ))}
          </div>
        </div>
      </div>

      {/* Search Results */}
      {showSearch && searchResults.length > 0 && (
        <div className="max-w-7xl mx-auto px-4 mt-4">
          <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-100">
            <h3 className="text-lg font-bold text-gray-800 mb-4">
              Found {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
            </h3>
            <div className="grid gap-2 max-h-64 overflow-y-auto">
              {searchResults.map((plot) => (
                <Link
                  key={plot.id}
                  href={`/cemetery-map-unified?highlight=${plot.plot_number}`}
                  className="flex items-center justify-between p-3 bg-gray-50 rounded-lg hover:bg-emerald-50 transition-all"
                >
                  <div>
                    <span className="font-semibold text-gray-800">{plot.plot_number}</span>
                    {getDeceasedName(plot) && (
                      <span className="ml-2 text-gray-600">• {getDeceasedName(plot)}</span>
                    )}
                  </div>
                  <span className={`px-2 py-1 rounded text-xs font-medium text-white ${plot.status === 'occupied' ? 'bg-rose-500' : 'bg-emerald-500'}`}>
                    {plot.status}
                  </span>
                </Link>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* Main Content */}
      <div className="max-w-7xl mx-auto px-4 py-6">
        {/* Legend */}
        <div className="bg-white rounded-xl shadow-md p-4 mb-6 border border-gray-100">
          <div className="flex flex-wrap items-center justify-between gap-4">
            <div className="flex items-center gap-4">
              <span className="text-sm font-medium text-gray-700">Legend:</span>
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded bg-emerald-400 border border-emerald-500"></div>
                <span className="text-xs text-gray-600">Available</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded bg-rose-500 border border-rose-600"></div>
                <span className="text-xs text-gray-600">Occupied</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded bg-amber-400 border border-amber-500"></div>
                <span className="text-xs text-gray-600">Reserved</span>
              </div>
            </div>
            <div className="text-sm text-gray-500">
              West (Left) ↑ Ascending • East (Right) ↓ Descending
            </div>
          </div>
        </div>

        {/* North Indicator */}
        <div className="text-center mb-6">
          <span className="inline-block bg-gray-700 text-white px-6 py-2 rounded-full text-sm font-medium shadow-md">
            ↑ FODALE AVE (North)
          </span>
        </div>

        {/* All Sections */}
        {SECTIONS.map(renderSection)}

        {/* South Indicator */}
        <div className="text-center mt-6">
          <span className="inline-block bg-gray-700 text-white px-6 py-2 rounded-full text-sm font-medium shadow-md">
            ↓ SWEET BAY (South)
          </span>
        </div>
      </div>
    </div>
  );
}
