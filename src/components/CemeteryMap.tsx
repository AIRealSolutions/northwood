'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  onPlotSelect?: (plot: PlotWithDetails | null) => void;
  selectedSection?: string;
}

// Section configuration - West to East
const SECTIONS = [
  { id: 'A', name: 'Section A', westRoad: 'Azalea', eastRoad: 'Beech', color: 'from-emerald-500 to-emerald-700', bgColor: 'bg-emerald-50' },
  { id: 'B', name: 'Section B', westRoad: 'Beech', eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700', bgColor: 'bg-teal-50' },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood', color: 'from-cyan-500 to-cyan-700', bgColor: 'bg-cyan-50' },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood', eastRoad: 'Elm', color: 'from-sky-500 to-sky-700', bgColor: 'bg-sky-50' },
  { id: 'E', name: 'Section E', westRoad: 'Elm', eastRoad: 'Fig', color: 'from-blue-500 to-blue-700', bgColor: 'bg-blue-50' },
  { id: 'F', name: 'Section F', westRoad: 'Fig', eastRoad: 'Gardenia', color: 'from-indigo-500 to-indigo-700', bgColor: 'bg-indigo-50' },
  { id: 'G', name: 'Section G', westRoad: 'Gardenia', eastRoad: 'Heather', color: 'from-violet-500 to-violet-700', bgColor: 'bg-violet-50' },
  { id: 'H', name: 'Section H', westRoad: 'Heather', eastRoad: 'Hibiscus', color: 'from-purple-500 to-purple-700', bgColor: 'bg-purple-50' },
];

export default function CemeteryMap({ onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [sectionStats, setSectionStats] = useState<Record<string, { total: number; occupied: number; empty: number }>>({});
  const [plots, setPlots] = useState<PlotWithDetails[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const [showPlatMap, setShowPlatMap] = useState(false);

  useEffect(() => {
    loadSectionStats();
  }, []);

  useEffect(() => {
    if (selectedSection) {
      loadSectionPlots(selectedSection);
    }
  }, [selectedSection]);

  const loadSectionStats = async () => {
    try {
      const stats: Record<string, { total: number; occupied: number; empty: number }> = {};
      for (const section of SECTIONS) {
        const sectionPlots = await plotsAPI.getPlotsBySection(section.id);
        const occupied = sectionPlots.filter(p => p.status === 'occupied').length;
        stats[section.id] = {
          total: sectionPlots.length,
          occupied,
          empty: sectionPlots.length - occupied
        };
      }
      setSectionStats(stats);
    } catch (error) {
      console.error('Error loading section stats:', error);
    } finally {
      setLoading(false);
    }
  };

  const loadSectionPlots = async (section: string) => {
    setLoading(true);
    try {
      const sectionPlots = await plotsAPI.getPlotsBySection(section);
      setPlots(sectionPlots);
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

  // Render the overview map (no section selected)
  if (!selectedSection) {
    return (
      <div className="space-y-6">
        {/* Header */}
        <div className="bg-white rounded-2xl shadow-lg p-6 border border-gray-100">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4">
            <div>
              <h2 className="text-3xl font-bold text-gray-800">Northwood Cemetery</h2>
              <p className="text-gray-500 mt-1">Southport, NC • Brunswick County</p>
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
        </div>

        {/* Search Results */}
        {showSearch && searchResults.length > 0 && (
          <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-100">
            <h3 className="text-lg font-bold text-gray-800 mb-4">
              Found {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
            </h3>
            <div className="grid gap-2 max-h-64 overflow-y-auto">
              {searchResults.map((plot) => (
                <Link
                  key={plot.id}
                  href={`/plot/${plot.id}`}
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
        )}

        {/* Cemetery Layout Diagram */}
        <div className="bg-gradient-to-b from-amber-50 to-green-50 rounded-2xl shadow-lg p-6 border border-amber-100">
          <div className="flex justify-between items-center mb-4">
            <h3 className="text-lg font-bold text-gray-700">Cemetery Layout</h3>
            <button
              onClick={() => setShowPlatMap(!showPlatMap)}
              className="px-4 py-2 bg-white text-gray-700 rounded-lg hover:bg-gray-50 transition-all border border-gray-200 text-sm font-medium"
            >
              {showPlatMap ? '✕ Hide Plat' : '📋 Official Plat'}
            </button>
          </div>

          {/* Official Plat Map */}
          {showPlatMap && (
            <div className="mb-6 bg-white rounded-xl p-4 shadow-inner border border-gray-200">
              <Image
                src="/cemetery-photos/plat-sections-af.jpeg"
                alt="Official Plat Map"
                width={1000}
                height={700}
                className="w-full h-auto rounded-lg"
              />
              <p className="text-center text-sm text-gray-500 mt-2">
                Official Survey • Tide Water Engineering • June 1989
              </p>
            </div>
          )}

          {/* Orientation Labels */}
          <div className="text-center mb-3">
            <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-sm font-medium">
              ↑ FODALE AVE (North)
            </span>
          </div>

          {/* Main Cemetery Grid */}
          <div className="flex items-stretch">
            {/* West Label */}
            <div className="flex items-center justify-center w-8 mr-2">
              <span className="transform -rotate-90 whitespace-nowrap text-xs font-bold text-amber-700 bg-amber-200 px-2 py-0.5 rounded">
                AZALEA (W)
              </span>
            </div>

            {/* Sections Grid */}
            <div className="flex-1">
              <div className="grid grid-cols-8 gap-0.5 mb-4">
                {SECTIONS.map((section) => {
                  const stats = sectionStats[section.id] || { total: 0, occupied: 0, empty: 0 };
                  const occupancyPercent = stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0;
                  
                  return (
                    <Link
                      key={section.id}
                      href={`/cemetery-map?section=${section.id}`}
                      className={`
                        relative overflow-hidden rounded-lg shadow-md transition-all duration-200
                        hover:scale-105 hover:shadow-xl hover:z-10
                        bg-gradient-to-b ${section.color}
                      `}
                    >
                      <div className="p-2 text-white min-h-[120px] flex flex-col">
                        <div className="text-2xl font-black mb-1">{section.id}</div>
                        <div className="text-[9px] opacity-80 leading-tight mb-auto">
                          {section.westRoad} ↔ {section.eastRoad}
                        </div>
                        <div className="mt-1 space-y-0.5 text-[9px]">
                          <div className="flex justify-between">
                            <span>Plots</span>
                            <span className="font-bold">{stats.total}</span>
                          </div>
                          <div className="flex justify-between">
                            <span>Open</span>
                            <span className="font-bold text-emerald-200">{stats.empty}</span>
                          </div>
                        </div>
                        <div className="mt-1 h-1 bg-white/20 rounded-full overflow-hidden">
                          <div 
                            className="h-full bg-white/50 rounded-full"
                            style={{ width: `${occupancyPercent}%` }}
                          />
                        </div>
                      </div>
                    </Link>
                  );
                })}
              </div>

              {/* Road labels */}
              <div className="grid grid-cols-9 gap-0 text-center mb-4">
                {['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig', 'Gardenia', 'Heather', 'Hibiscus'].map((road) => (
                  <div key={road} className="text-[8px] text-amber-700 font-medium px-0.5">
                    {road}
                  </div>
                ))}
              </div>
            </div>

            {/* East Label */}
            <div className="flex items-center justify-center w-8 ml-2">
              <span className="transform rotate-90 whitespace-nowrap text-xs font-bold text-amber-700 bg-amber-200 px-2 py-0.5 rounded">
                HIBISCUS (E)
              </span>
            </div>
          </div>

          {/* South Label */}
          <div className="text-center mt-3 mb-6">
            <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-sm font-medium">
              ↓ SWEET BAY (South)
            </span>
          </div>

          {/* Block/Row Structure Diagram - Horizontal 2x4 Matrix */}
          <div className="bg-white/90 rounded-xl p-5 border border-gray-200">
            <h4 className="font-bold text-gray-800 mb-4 text-center">📐 Gravesite Layout (4×2 Matrix Running Vertically)</h4>
            
            <div className="max-w-2xl mx-auto">
              <div className="text-center text-xs text-gray-500 mb-2">↑ FODALE (North)</div>
              
              {/* Horizontal layout diagram */}
              <div className="space-y-4">
                {/* West Strip */}
                <div className="border-2 border-emerald-400 rounded-lg p-4 bg-emerald-50">
                  <div className="text-center text-sm font-bold text-emerald-700 mb-3">
                    West Strip (Rows 1-37) • Facing West Road
                  </div>
                  
                  <div className="flex items-center gap-2">
                    {/* Road */}
                    <div className="w-16 bg-amber-200 rounded border-2 border-amber-400 flex items-center justify-center py-8">
                      <span className="transform -rotate-90 text-xs font-bold text-amber-800 whitespace-nowrap">
                        WEST ROAD
                      </span>
                    </div>
                    
                    {/* Plots - horizontal 2x4 matrix */}
                    <div className="flex-1">
                      <div className="text-[10px] text-gray-500 mb-2 text-center">
                        Each row: 4×2 matrix running vertically (N-S)
                      </div>
                      
                      {/* Example row 37 */}
                      <div className="mb-3">
                        <div className="text-[9px] font-bold text-emerald-700 mb-1">Row 37 (North end)</div>
                        <div className="bg-white rounded border border-emerald-300 p-2">
                          {/* Normal order for ascending side */}
                          {[[1,5], [2,6], [3,7], [4,8]].map(([p1, p2]) => (
                            <div key={`${p1}-${p2}`} className="flex gap-1 mb-1 last:mb-0">
                              <div className="w-10 h-8 bg-emerald-400 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p1}</span>
                              </div>
                              <div className="w-10 h-8 bg-emerald-500 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p2}</span>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                      
                      <div className="text-center text-[9px] text-gray-400 my-2">...</div>
                      
                      {/* Example row 1 */}
                      <div>
                        <div className="text-[9px] font-bold text-emerald-700 mb-1">Row 1 (South end)</div>
                        <div className="bg-white rounded border border-emerald-300 p-2">
                          {[[1,5], [2,6], [3,7], [4,8]].map(([p1, p2]) => (
                            <div key={`${p1}-${p2}`} className="flex gap-1 mb-1 last:mb-0">
                              <div className="w-10 h-8 bg-emerald-400 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p1}</span>
                              </div>
                              <div className="w-10 h-8 bg-emerald-500 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p2}</span>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                {/* East Strip */}
                <div className="border-2 border-blue-400 rounded-lg p-4 bg-blue-50">
                  <div className="text-center text-sm font-bold text-blue-700 mb-3">
                    East Strip (Rows 38-74) • Facing East Road
                  </div>
                  
                  <div className="flex items-center gap-2">
                    {/* Plots - horizontal 2x4 matrix */}
                    <div className="flex-1">
                      <div className="text-[10px] text-gray-500 mb-2 text-center">
                        Each row: 4×2 matrix running vertically (N-S)
                      </div>
                      
                      {/* Example row 38 */}
                      <div className="mb-3">
                        <div className="text-[9px] font-bold text-blue-700 mb-1">Row 38 (North end)</div>
                        <div className="bg-white rounded border border-blue-300 p-2">
                          {/* Reversed order: 8,4 at top */}
                          {[[8,4], [7,3], [6,2], [5,1]].map(([p1, p2]) => (
                            <div key={`${p1}-${p2}`} className="flex gap-1 mb-1 last:mb-0">
                              <div className="w-10 h-8 bg-blue-500 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p1}</span>
                              </div>
                              <div className="w-10 h-8 bg-blue-400 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p2}</span>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                      
                      <div className="text-center text-[9px] text-gray-400 my-2">...</div>
                      
                      {/* Example row 74 */}
                      <div>
                        <div className="text-[9px] font-bold text-blue-700 mb-1">Row 74 (South end)</div>
                        <div className="bg-white rounded border border-blue-300 p-2">
                          {/* Reversed order: 8,4 at top */}
                          {[[8,4], [7,3], [6,2], [5,1]].map(([p1, p2]) => (
                            <div key={`${p1}-${p2}`} className="flex gap-1 mb-1 last:mb-0">
                              <div className="w-10 h-8 bg-blue-500 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p1}</span>
                              </div>
                              <div className="w-10 h-8 bg-blue-400 rounded flex items-center justify-center">
                                <span className="text-white font-bold text-xs">{p2}</span>
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    </div>
                    
                    {/* Road */}
                    <div className="w-16 bg-amber-200 rounded border-2 border-amber-400 flex items-center justify-center py-8">
                      <span className="transform rotate-90 text-xs font-bold text-amber-800 whitespace-nowrap">
                        EAST ROAD
                      </span>
                    </div>
                  </div>
                </div>
              </div>
              
              <div className="text-center text-xs text-gray-500 mt-2">↓ SWEET BAY (South)</div>
            </div>

            {/* Position Legend */}
            <div className="mt-6 flex justify-center">
              <div className="bg-gray-100 rounded-lg p-4">
                <div className="text-[11px] font-bold text-gray-700 mb-3 text-center">
                  4×2 Matrix (Vertical North-South)
                </div>
                <div className="flex items-center gap-3">
                  <div className="w-12 h-20 bg-amber-300 rounded flex items-center justify-center">
                    <span className="text-[8px] text-amber-800 font-bold transform -rotate-90 whitespace-nowrap">ROAD</span>
                  </div>
                  <div className="bg-white border border-gray-300 rounded p-2">
                    <div className="text-[8px] text-gray-400 mb-1 text-center">West ← → East</div>
                    {[[1,5], [2,6], [3,7], [4,8]].map(([p1, p2]) => (
                      <div key={`${p1}-${p2}`} className="flex gap-1 mb-1 last:mb-0">
                        <div className="w-7 h-6 bg-gray-400 rounded flex items-center justify-center">
                          <span className="text-[9px] text-white font-bold">{p1}</span>
                        </div>
                        <div className="w-7 h-6 bg-gray-500 rounded flex items-center justify-center">
                          <span className="text-[9px] text-white font-bold">{p2}</span>
                        </div>
                      </div>
                    ))}
                    <div className="text-[8px] text-gray-400 mt-1 text-center">↑ North ↓ South</div>
                  </div>
                  <div className="text-[9px] text-gray-600 max-w-[120px]">
                    Positions 1-4 (left), 5-8 (right). Runs vertically along road.
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Quick Stats */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div className="bg-white rounded-xl shadow-md p-4 text-center border border-gray-100">
            <div className="text-3xl font-black text-gray-800">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.total, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Total Plots</div>
          </div>
          <div className="bg-white rounded-xl shadow-md p-4 text-center border border-gray-100">
            <div className="text-3xl font-black text-rose-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.occupied, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Occupied</div>
          </div>
          <div className="bg-white rounded-xl shadow-md p-4 text-center border border-gray-100">
            <div className="text-3xl font-black text-emerald-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.empty, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Empty</div>
          </div>
          <div className="bg-white rounded-xl shadow-md p-4 text-center border border-gray-100">
            <div className="text-3xl font-black text-gray-800">8</div>
            <div className="text-gray-500 text-sm">Sections</div>
          </div>
        </div>

        {/* Legend */}
        <div className="bg-white rounded-xl shadow-md p-4 border border-gray-100">
          <div className="flex flex-wrap items-center gap-6 justify-center">
            <div className="flex items-center gap-2">
              <div className="w-5 h-5 rounded bg-emerald-400 border border-emerald-500"></div>
              <span className="text-sm text-gray-600">Empty</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-5 h-5 rounded bg-rose-500 border border-rose-600"></div>
              <span className="text-sm text-gray-600">Occupied</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-5 h-5 rounded bg-amber-400 border border-amber-500"></div>
              <span className="text-sm text-gray-600">Reserved</span>
            </div>
          </div>
        </div>
      </div>
    );
  }

  // Render section detail view
  const currentSection = SECTIONS.find(s => s.id === selectedSection);
  
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
  
  // Function to get display plot number based on row and position
  const getDisplayPlotNumber = (rowNum: number, position: number): number => {
    if (rowNum <= 37) {
      // Rows 1-37: Front row (facing road) = 1,2,3,4; Back row = 5,6,7,8
      return position;
    } else {
      // Rows 38-76: Front row (facing road) = 5,6,7,8; Back row = 1,2,3,4
      // Swap positions: 1->5, 2->6, 3->7, 4->8, 5->1, 6->2, 7->3, 8->4
      const swapMap: Record<number, number> = { 1: 5, 2: 6, 3: 7, 4: 8, 5: 1, 6: 2, 7: 3, 8: 4 };
      return swapMap[position] || position;
    }
  };
  
  const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);
  
  // Split into two groups
  const westStripRows = allRows.filter(r => r <= 37);
  const eastStripRows = allRows.filter(r => r > 37);

  // Render a single row as VERTICAL 4x2 matrix (positions run north-south)
  const renderRowMatrix = (row: number, facingDirection: 'west' | 'east') => {
    const rowPlots = plotsByRow[row] || [];
    // West (ascending): Normal order [1,5], [2,6], [3,7], [4,8]
    // East (descending): Reversed order [8,4], [7,3], [6,2], [5,1]
    const frontRowPositions = row <= 37 ? [1, 2, 3, 4] : [5, 6, 7, 8];
    const backRowPositions = row <= 37 ? [5, 6, 7, 8] : [1, 2, 3, 4];

    const renderPlot = (position: number) => {
      const plot = rowPlots.find(p => p.plot_position === position);
      if (!plot) {
        return (
          <div className="w-8 h-6 rounded-sm bg-gray-200 flex items-center justify-center">
            <span className="text-[8px] text-gray-400">{position}</span>
          </div>
        );
      }
      const deceasedName = getDeceasedName(plot);
      return (
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
          <span className="text-[8px] font-bold">{getDisplayPlotNumber(row, position)}</span>
        </Link>
      );
    };
    
    return (
      <div className="mb-2">
        <div className="text-[9px] text-gray-500 mb-1">Row {row}</div>
        <div className={`bg-white rounded border ${facingDirection === 'west' ? 'border-emerald-200' : 'border-blue-200'} p-1`}>
          {/* Front Row (closest to road) */}
          <div className="flex gap-0.5 mb-0.5">
            {frontRowPositions.map(renderPlot)}
          </div>
          {/* Back Row */}
          <div className="flex gap-0.5">
            {backRowPositions.map(renderPlot)}
          </div>
        </div>
      </div>
    );
  };

  return (
    <div className="space-y-6">
      {/* Section Header */}
      <div className={`bg-gradient-to-r ${currentSection?.color || 'from-gray-500 to-gray-700'} rounded-2xl shadow-xl p-6 text-white`}>
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div>
            <Link 
              href="/cemetery-map" 
              className="inline-flex items-center gap-1 text-white/80 hover:text-white text-sm mb-2"
            >
              ← Back to Map
            </Link>
            <h2 className="text-4xl font-black">{currentSection?.name}</h2>
            <p className="text-white/80 mt-1">
              Between {currentSection?.westRoad} Road (W) and {currentSection?.eastRoad} Road (E)
            </p>
          </div>
          <div className="text-right bg-white/10 rounded-xl p-4">
            <div className="text-4xl font-black">{plots.length}</div>
            <div className="text-white/80 text-sm">Total Plots</div>
          </div>
        </div>
      </div>

      {/* Legend & Info */}
      <div className="bg-white rounded-xl shadow-md p-4 border border-gray-100">
        <div className="flex flex-wrap items-center justify-between gap-4">
          <div className="flex items-center gap-4">
            <span className="text-sm font-medium text-gray-700">Legend:</span>
            <div className="flex items-center gap-2">
              <div className="w-6 h-6 rounded bg-emerald-400 border border-emerald-500"></div>
              <span className="text-xs text-gray-600">Empty</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-6 h-6 rounded bg-rose-500 border border-rose-600"></div>
              <span className="text-xs text-gray-600">Occupied</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-6 h-6 rounded bg-amber-400 border border-amber-500"></div>
              <span className="text-xs text-gray-600">Reserved</span>
            </div>
          </div>
          <div className="text-sm text-gray-500">
            4×2 Matrix: West [1-4 top], East [1-4 bottom] • Positions 1-4 closest to road • Runs vertically N-S
          </div>
        </div>
      </div>

      {/* Plot Grid - Two Strips with Horizontal 2x4 Matrix */}
      {loading ? (
        <div className="flex items-center justify-center h-64 bg-white rounded-xl shadow-lg">
          <div className="animate-spin rounded-full h-12 w-12 border-4 border-emerald-200 border-t-emerald-600"></div>
        </div>
      ) : (
        <div className="bg-white rounded-xl shadow-lg p-4 border border-gray-100">
          {/* North indicator */}
          <div className="text-center mb-4">
            <span className="text-sm text-gray-500 bg-gray-100 px-4 py-1 rounded-full">
              ↑ Fodale Ave (North)
            </span>
          </div>

          <div className="flex gap-2">
            {/* West Road Label */}
            <div className="w-16 flex-shrink-0 bg-amber-100 rounded-lg flex items-center justify-center border-2 border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-sm font-bold text-amber-800">
                {currentSection?.westRoad}
              </span>
            </div>

            {/* West Strip - Rows 1-37 (facing west road) */}
            <div className="flex-1 bg-emerald-50 rounded-lg p-3 border border-emerald-200 overflow-x-auto">
              <div className="text-center mb-3">
                <span className="text-sm font-bold text-emerald-700 bg-emerald-100 px-3 py-1 rounded-full">
                  Rows 1-37 • Facing {currentSection?.westRoad}
                </span>
                <div className="text-xs text-gray-500 mt-1">Sweet Bay → Fodale</div>
              </div>
              
              <div className="min-w-max">
                {[...westStripRows].reverse().map((row) => renderRowMatrix(row, 'west'))}
                {westStripRows.length === 0 && (
                  <div className="text-center text-gray-400 py-8">No plots in rows 1-37</div>
                )}
              </div>
            </div>

            {/* East Strip - Rows 38+ (facing east road) */}
            <div className="flex-1 bg-blue-50 rounded-lg p-3 border border-blue-200 overflow-x-auto">
              <div className="text-center mb-3">
                <span className="text-sm font-bold text-blue-700 bg-blue-100 px-3 py-1 rounded-full">
                  Rows 38+ • Facing {currentSection?.eastRoad}
                </span>
                <div className="text-xs text-gray-500 mt-1">Fodale → Sweet Bay</div>
              </div>
              
              <div className="min-w-max">
                {eastStripRows.map((row) => renderRowMatrix(row, 'east'))}
                {eastStripRows.length === 0 && (
                  <div className="text-center text-gray-400 py-8">No plots in rows 38+</div>
                )}
              </div>
            </div>

            {/* East Road Label */}
            <div className="w-16 flex-shrink-0 bg-amber-100 rounded-lg flex items-center justify-center border-2 border-amber-300">
              <span className="transform rotate-90 whitespace-nowrap text-sm font-bold text-amber-800">
                {currentSection?.eastRoad}
              </span>
            </div>
          </div>

          {/* South indicator */}
          <div className="text-center mt-4">
            <span className="text-sm text-gray-500 bg-gray-100 px-4 py-1 rounded-full">
              ↓ Sweet Bay (South)
            </span>
          </div>
        </div>
      )}
    </div>
  );
}
