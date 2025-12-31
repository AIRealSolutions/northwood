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
  const [sectionStats, setSectionStats] = useState<Record<string, { total: number; occupied: number; available: number }>>({});
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
      const stats: Record<string, { total: number; occupied: number; available: number }> = {};
      for (const section of SECTIONS) {
        const sectionPlots = await plotsAPI.getPlotsBySection(section.id);
        const occupied = sectionPlots.filter(p => p.status === 'occupied').length;
        stats[section.id] = {
          total: sectionPlots.length,
          occupied,
          available: sectionPlots.length - occupied
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
              ↑ MITCHELL ST (North)
            </span>
          </div>

          {/* Main Cemetery Grid */}
          <div className="flex items-stretch">
            {/* West Label */}
            <div className="flex items-center justify-center w-6 mr-2">
              <span className="transform -rotate-90 whitespace-nowrap text-xs font-bold text-amber-700 bg-amber-200 px-2 py-0.5 rounded">
                AZALEA (W)
              </span>
            </div>

            {/* Sections Grid */}
            <div className="flex-1 grid grid-cols-4 lg:grid-cols-8 gap-1">
              {SECTIONS.map((section, idx) => {
                const stats = sectionStats[section.id] || { total: 0, occupied: 0, available: 0 };
                const occupancyPercent = stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0;
                
                return (
                  <div key={section.id} className="flex flex-col">
                    {/* Section Card */}
                    <Link
                      href={`/cemetery-map?section=${section.id}`}
                      className={`
                        relative overflow-hidden rounded-lg shadow-md transition-all duration-200
                        hover:scale-105 hover:shadow-xl hover:z-10
                        bg-gradient-to-b ${section.color}
                      `}
                    >
                      <div className="p-3 text-white min-h-[140px] flex flex-col">
                        <div className="text-3xl font-black mb-1">{section.id}</div>
                        <div className="text-[10px] opacity-80 leading-tight mb-auto">
                          {section.westRoad} - {section.eastRoad}
                        </div>
                        <div className="mt-2 space-y-0.5 text-[10px]">
                          <div className="flex justify-between">
                            <span>Total</span>
                            <span className="font-bold">{stats.total}</span>
                          </div>
                          <div className="flex justify-between">
                            <span>Open</span>
                            <span className="font-bold text-emerald-200">{stats.available}</span>
                          </div>
                        </div>
                        <div className="mt-1 h-1.5 bg-white/20 rounded-full overflow-hidden">
                          <div 
                            className="h-full bg-white/50 rounded-full"
                            style={{ width: `${occupancyPercent}%` }}
                          />
                        </div>
                      </div>
                    </Link>
                    
                    {/* Road Label (between sections) */}
                    {idx < SECTIONS.length - 1 && (
                      <div className="text-center py-0.5">
                        <span className="text-[8px] text-amber-700 font-medium">
                          {section.eastRoad}
                        </span>
                      </div>
                    )}
                  </div>
                );
              })}
            </div>

            {/* East Label */}
            <div className="flex items-center justify-center w-6 ml-2">
              <span className="transform rotate-90 whitespace-nowrap text-xs font-bold text-amber-700 bg-amber-200 px-2 py-0.5 rounded">
                HIBISCUS (E)
              </span>
            </div>
          </div>

          {/* South Label */}
          <div className="text-center mt-3">
            <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-sm font-medium">
              ↓ SWEET BAY (South)
            </span>
          </div>

          {/* Block/Row Structure Info */}
          <div className="mt-6 bg-white/80 rounded-xl p-4 border border-gray-200">
            <h4 className="font-bold text-gray-800 mb-3">📐 Block/Row Structure</h4>
            <div className="grid md:grid-cols-2 gap-4">
              <div className="text-sm text-gray-600">
                <p className="mb-2"><strong>Each Row = 1 Block</strong> with 8 burial plots:</p>
                <div className="bg-gray-100 rounded-lg p-3 font-mono text-xs">
                  <div className="text-center mb-1 text-gray-500">← Road</div>
                  <div className="flex justify-center gap-1 mb-1">
                    <span className="w-6 h-6 bg-emerald-400 rounded flex items-center justify-center text-white">1</span>
                    <span className="w-6 h-6 bg-emerald-400 rounded flex items-center justify-center text-white">2</span>
                    <span className="w-6 h-6 bg-emerald-400 rounded flex items-center justify-center text-white">3</span>
                    <span className="w-6 h-6 bg-emerald-400 rounded flex items-center justify-center text-white">4</span>
                  </div>
                  <div className="flex justify-center gap-1">
                    <span className="w-6 h-6 bg-emerald-500 rounded flex items-center justify-center text-white">5</span>
                    <span className="w-6 h-6 bg-emerald-500 rounded flex items-center justify-center text-white">6</span>
                    <span className="w-6 h-6 bg-emerald-500 rounded flex items-center justify-center text-white">7</span>
                    <span className="w-6 h-6 bg-emerald-500 rounded flex items-center justify-center text-white">8</span>
                  </div>
                  <div className="text-center mt-1 text-gray-500">Road →</div>
                </div>
              </div>
              <div className="text-sm text-gray-600">
                <p className="mb-2"><strong>Row Numbering (Serpentine):</strong></p>
                <ul className="space-y-1 text-xs">
                  <li>• Rows <strong>1-37</strong>: Start at Sweet Bay → go toward Mitchell St</li>
                  <li>• Rows <strong>38+</strong>: Start at Mitchell St → return toward Sweet Bay</li>
                  <li>• All 8 plots in each row face the roads</li>
                </ul>
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
              {Object.values(sectionStats).reduce((sum, s) => sum + s.available, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Available</div>
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
              <span className="text-sm text-gray-600">Available</span>
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
  
  const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);
  
  // Split into two groups: 1-37 (ascending from south) and 38+ (descending from north)
  const firstPassRows = allRows.filter(r => r <= 37);
  const secondPassRows = allRows.filter(r => r > 37);

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
              Between {currentSection?.westRoad} (W) and {currentSection?.eastRoad} (E)
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
              <span className="text-xs text-gray-600">Available</span>
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
            Click any plot for details
          </div>
        </div>
      </div>

      {/* Plot Grid */}
      {loading ? (
        <div className="flex items-center justify-center h-64 bg-white rounded-xl shadow-lg">
          <div className="animate-spin rounded-full h-12 w-12 border-4 border-emerald-200 border-t-emerald-600"></div>
        </div>
      ) : (
        <div className="space-y-4">
          {/* North indicator */}
          <div className="text-center">
            <span className="text-sm text-gray-500 bg-gray-100 px-4 py-1 rounded-full">
              ↑ Mitchell St (North)
            </span>
          </div>

          {/* Second Pass Rows (38+) - From North going South */}
          {secondPassRows.length > 0 && (
            <div className={`${currentSection?.bgColor || 'bg-gray-50'} rounded-xl p-4 border border-gray-200`}>
              <div className="flex items-center gap-2 mb-3">
                <div className="w-2 h-2 rounded-full bg-blue-500"></div>
                <span className="text-sm font-bold text-gray-700">
                  Rows {Math.min(...secondPassRows)}-{Math.max(...secondPassRows)} (North → South)
                </span>
              </div>
              <div className="overflow-x-auto">
                <div className="min-w-max space-y-2">
                  {secondPassRows.map((row) => (
                    <div key={row} className="flex items-center gap-3">
                      {/* West Road Label */}
                      <div className="w-16 text-right">
                        <span className="text-[10px] text-amber-700 font-medium">{currentSection?.westRoad}</span>
                      </div>
                      
                      {/* Row Number */}
                      <div className="w-10 text-center">
                        <span className="text-xs font-bold text-gray-600 bg-gray-200 px-2 py-0.5 rounded">
                          {row}
                        </span>
                      </div>
                      
                      {/* Plots - 4 front + 4 back layout */}
                      <div className="flex gap-0.5">
                        {/* Front 4 (positions 1-4) */}
                        <div className="flex gap-0.5 border-r-2 border-gray-300 pr-1 mr-1">
                          {[1, 2, 3, 4].map(pos => {
                            const plot = plotsByRow[row]?.find(p => p.plot_position === pos);
                            if (!plot) return <div key={pos} className="w-8 h-8 rounded bg-gray-200"></div>;
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-8 h-8 rounded flex items-center justify-center 
                                  text-[10px] font-bold text-white shadow-sm border
                                  transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {pos}
                              </Link>
                            );
                          })}
                        </div>
                        
                        {/* Back 4 (positions 5-8) */}
                        <div className="flex gap-0.5">
                          {[5, 6, 7, 8].map(pos => {
                            const plot = plotsByRow[row]?.find(p => p.plot_position === pos);
                            if (!plot) return <div key={pos} className="w-8 h-8 rounded bg-gray-200"></div>;
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-8 h-8 rounded flex items-center justify-center 
                                  text-[10px] font-bold text-white shadow-sm border
                                  transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {pos}
                              </Link>
                            );
                          })}
                        </div>
                      </div>
                      
                      {/* East Road Label */}
                      <div className="w-16">
                        <span className="text-[10px] text-amber-700 font-medium">{currentSection?.eastRoad}</span>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* Divider between row groups */}
          {firstPassRows.length > 0 && secondPassRows.length > 0 && (
            <div className="flex items-center gap-4 py-2">
              <div className="flex-1 h-px bg-gradient-to-r from-transparent via-amber-300 to-transparent"></div>
              <span className="text-xs text-amber-600 font-medium bg-amber-50 px-3 py-1 rounded-full border border-amber-200">
                Row Direction Change
              </span>
              <div className="flex-1 h-px bg-gradient-to-r from-transparent via-amber-300 to-transparent"></div>
            </div>
          )}

          {/* First Pass Rows (1-37) - From South going North */}
          {firstPassRows.length > 0 && (
            <div className={`${currentSection?.bgColor || 'bg-gray-50'} rounded-xl p-4 border border-gray-200`}>
              <div className="flex items-center gap-2 mb-3">
                <div className="w-2 h-2 rounded-full bg-emerald-500"></div>
                <span className="text-sm font-bold text-gray-700">
                  Rows {Math.min(...firstPassRows)}-{Math.max(...firstPassRows)} (South → North)
                </span>
              </div>
              <div className="overflow-x-auto">
                <div className="min-w-max space-y-2">
                  {[...firstPassRows].reverse().map((row) => (
                    <div key={row} className="flex items-center gap-3">
                      {/* West Road Label */}
                      <div className="w-16 text-right">
                        <span className="text-[10px] text-amber-700 font-medium">{currentSection?.westRoad}</span>
                      </div>
                      
                      {/* Row Number */}
                      <div className="w-10 text-center">
                        <span className="text-xs font-bold text-gray-600 bg-gray-200 px-2 py-0.5 rounded">
                          {row}
                        </span>
                      </div>
                      
                      {/* Plots - 4 front + 4 back layout */}
                      <div className="flex gap-0.5">
                        {/* Front 4 (positions 1-4) */}
                        <div className="flex gap-0.5 border-r-2 border-gray-300 pr-1 mr-1">
                          {[1, 2, 3, 4].map(pos => {
                            const plot = plotsByRow[row]?.find(p => p.plot_position === pos);
                            if (!plot) return <div key={pos} className="w-8 h-8 rounded bg-gray-200"></div>;
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-8 h-8 rounded flex items-center justify-center 
                                  text-[10px] font-bold text-white shadow-sm border
                                  transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {pos}
                              </Link>
                            );
                          })}
                        </div>
                        
                        {/* Back 4 (positions 5-8) */}
                        <div className="flex gap-0.5">
                          {[5, 6, 7, 8].map(pos => {
                            const plot = plotsByRow[row]?.find(p => p.plot_position === pos);
                            if (!plot) return <div key={pos} className="w-8 h-8 rounded bg-gray-200"></div>;
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-8 h-8 rounded flex items-center justify-center 
                                  text-[10px] font-bold text-white shadow-sm border
                                  transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {pos}
                              </Link>
                            );
                          })}
                        </div>
                      </div>
                      
                      {/* East Road Label */}
                      <div className="w-16">
                        <span className="text-[10px] text-amber-700 font-medium">{currentSection?.eastRoad}</span>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* South indicator */}
          <div className="text-center">
            <span className="text-sm text-gray-500 bg-gray-100 px-4 py-1 rounded-full">
              ↓ Sweet Bay (South)
            </span>
          </div>
        </div>
      )}
    </div>
  );
}
