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
  { id: 'A', name: 'Section A', westRoad: 'Azalea (Border)', eastRoad: 'Beech', color: 'from-emerald-500 to-emerald-700' },
  { id: 'B', name: 'Section B', westRoad: 'Beech', eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700' },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood', color: 'from-cyan-500 to-cyan-700' },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood', eastRoad: 'Elm', color: 'from-sky-500 to-sky-700' },
  { id: 'E', name: 'Section E', westRoad: 'Elm', eastRoad: 'Fig', color: 'from-blue-500 to-blue-700' },
  { id: 'F', name: 'Section F', westRoad: 'Fig', eastRoad: 'Gardenia', color: 'from-indigo-500 to-indigo-700' },
  { id: 'G', name: 'Section G', westRoad: 'Gardenia', eastRoad: 'Heather', color: 'from-violet-500 to-violet-700' },
  { id: 'H', name: 'Section H', westRoad: 'Heather', eastRoad: 'Hibiscus (Border)', color: 'from-purple-500 to-purple-700' },
];

// Roads running North-South
const ROADS = ['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig', 'Gardenia', 'Heather', 'Hibiscus'];

export default function CemeteryMap({ onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [sectionStats, setSectionStats] = useState<Record<string, { total: number; occupied: number; available: number }>>({});
  const [plots, setPlots] = useState<PlotWithDetails[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const [hoveredSection, setHoveredSection] = useState<string | null>(null);
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
      case 'occupied': return 'bg-rose-500 hover:bg-rose-600';
      case 'reserved': return 'bg-amber-500 hover:bg-amber-600';
      default: return 'bg-emerald-500 hover:bg-emerald-600';
    }
  };

  const getStatusBorder = (status: string) => {
    switch (status) {
      case 'occupied': return 'border-rose-300';
      case 'reserved': return 'border-amber-300';
      default: return 'border-emerald-300';
    }
  };

  // Render the overview map
  if (!selectedSection) {
    return (
      <div className="space-y-6">
        {/* Header */}
        <div className="bg-white rounded-2xl shadow-xl p-6 border border-gray-100">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4">
            <div>
              <h2 className="text-3xl font-bold text-gray-800">Northwood Cemetery</h2>
              <p className="text-gray-500 mt-1">Southport, NC • Smithville Township • Brunswick County</p>
              <p className="text-sm text-gray-400 mt-1">Platted June 1989 by Tide Water Engineering</p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search name or plot number..."
                className="px-4 py-3 border border-gray-200 rounded-xl focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-72 shadow-sm"
              />
              <button
                type="submit"
                className="px-6 py-3 bg-emerald-600 text-white rounded-xl hover:bg-emerald-700 transition-all shadow-sm hover:shadow-md font-medium"
              >
                Search
              </button>
            </form>
          </div>
        </div>

        {/* Search Results */}
        {showSearch && searchResults.length > 0 && (
          <div className="bg-white rounded-2xl shadow-xl p-6 border border-gray-100">
            <h3 className="text-lg font-bold text-gray-800 mb-4">
              Found {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
            </h3>
            <div className="grid gap-2 max-h-72 overflow-y-auto">
              {searchResults.map((plot) => (
                <Link
                  key={plot.id}
                  href={`/plot/${plot.id}`}
                  className="flex items-center justify-between p-4 bg-gray-50 rounded-xl hover:bg-emerald-50 transition-all border border-transparent hover:border-emerald-200"
                >
                  <div>
                    <span className="font-semibold text-gray-800">{plot.plot_number}</span>
                    {getDeceasedName(plot) && (
                      <span className="ml-3 text-gray-600">• {getDeceasedName(plot)}</span>
                    )}
                  </div>
                  <span className={`px-3 py-1 rounded-full text-xs font-medium text-white ${getStatusColor(plot.status)}`}>
                    {plot.status}
                  </span>
                </Link>
              ))}
            </div>
          </div>
        )}

        {/* Cemetery Map Visualization */}
        <div className="bg-gradient-to-br from-green-50 via-emerald-50 to-teal-50 rounded-2xl shadow-xl p-8 border border-emerald-100">
          {/* Orientation & Legend */}
          <div className="flex flex-wrap items-center justify-between mb-6 gap-4">
            <div className="flex items-center gap-6">
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded-md bg-emerald-500 shadow-sm"></div>
                <span className="text-sm text-gray-600 font-medium">Available</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded-md bg-rose-500 shadow-sm"></div>
                <span className="text-sm text-gray-600 font-medium">Occupied</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-5 h-5 rounded-md bg-amber-500 shadow-sm"></div>
                <span className="text-sm text-gray-600 font-medium">Reserved</span>
              </div>
            </div>
            <button
              onClick={() => setShowPlatMap(!showPlatMap)}
              className="px-4 py-2 bg-white text-emerald-700 rounded-lg hover:bg-emerald-50 transition-all border border-emerald-200 text-sm font-medium shadow-sm"
            >
              {showPlatMap ? '✕ Hide Plat Map' : '📋 View Official Plat'}
            </button>
          </div>

          {/* Official Plat Map */}
          {showPlatMap && (
            <div className="mb-8 bg-white rounded-xl p-4 shadow-inner border border-gray-200">
              <Image
                src="/cemetery-photos/plat-sections-af.jpeg"
                alt="Official Plat Map - Sections A-F"
                width={1000}
                height={700}
                className="w-full h-auto rounded-lg"
              />
              <p className="text-center text-sm text-gray-500 mt-3">
                Official Survey Drawing • Tide Water Engineering and Surveying P.A. • June 1989
              </p>
            </div>
          )}

          {/* Compass & Orientation */}
          <div className="relative mb-6">
            {/* North indicator - Mitchell St */}
            <div className="text-center mb-4">
              <div className="inline-flex items-center gap-2 bg-white px-5 py-2 rounded-full shadow-md border border-gray-200">
                <span className="text-2xl">↑</span>
                <span className="font-bold text-gray-700">N</span>
                <span className="text-gray-500">• Mitchell Street</span>
              </div>
            </div>

            {/* Main Map Grid */}
            <div className="flex items-stretch gap-1">
              {/* West Label - Azalea */}
              <div className="flex items-center justify-center w-8">
                <div className="transform -rotate-90 whitespace-nowrap text-sm font-medium text-amber-700 bg-amber-100 px-3 py-1 rounded-full">
                  ← W • Azalea
                </div>
              </div>

              {/* Sections Grid */}
              <div className="flex-1">
                <div className="grid grid-cols-4 lg:grid-cols-8 gap-2">
                  {SECTIONS.map((section, index) => {
                    const stats = sectionStats[section.id] || { total: 0, occupied: 0, available: 0 };
                    const occupancyPercent = stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0;
                    
                    return (
                      <Link
                        key={section.id}
                        href={`/cemetery-map?section=${section.id}`}
                        className="group"
                        onMouseEnter={() => setHoveredSection(section.id)}
                        onMouseLeave={() => setHoveredSection(null)}
                      >
                        <div className={`
                          relative overflow-hidden rounded-xl shadow-lg transition-all duration-300
                          ${hoveredSection === section.id ? 'scale-105 shadow-2xl ring-2 ring-white ring-offset-2' : ''}
                          bg-gradient-to-br ${section.color}
                        `}>
                          {/* Section Content */}
                          <div className="p-4 text-white min-h-[180px] flex flex-col">
                            {/* Section Letter */}
                            <div className="text-4xl font-black mb-1 drop-shadow-md">{section.id}</div>
                            
                            {/* Roads */}
                            <div className="text-[10px] opacity-80 mb-auto leading-tight">
                              <div>W: {section.westRoad.split(' ')[0]}</div>
                              <div>E: {section.eastRoad.split(' ')[0]}</div>
                            </div>
                            
                            {/* Stats */}
                            <div className="mt-2 space-y-1">
                              <div className="flex justify-between text-xs">
                                <span className="opacity-80">Plots</span>
                                <span className="font-bold">{stats.total}</span>
                              </div>
                              <div className="flex justify-between text-xs">
                                <span className="opacity-80">Open</span>
                                <span className="font-bold text-emerald-200">{stats.available}</span>
                              </div>
                            </div>

                            {/* Occupancy Bar */}
                            <div className="mt-2 h-2 bg-white/20 rounded-full overflow-hidden">
                              <div 
                                className="h-full bg-white/60 rounded-full transition-all duration-700"
                                style={{ width: `${occupancyPercent}%` }}
                              />
                            </div>
                            <div className="text-[10px] mt-1 text-center opacity-70">
                              {occupancyPercent.toFixed(0)}% used
                            </div>
                          </div>

                          {/* Hover overlay */}
                          <div className="absolute inset-0 bg-white/0 group-hover:bg-white/10 transition-all" />
                        </div>

                        {/* Road label below (except last) */}
                        {index < SECTIONS.length - 1 && (
                          <div className="text-center mt-1">
                            <span className="text-[9px] text-amber-700 font-medium bg-amber-50 px-2 py-0.5 rounded-full">
                              {ROADS[index + 1]}
                            </span>
                          </div>
                        )}
                      </Link>
                    );
                  })}
                </div>
              </div>

              {/* East Label - Fodale */}
              <div className="flex items-center justify-center w-8">
                <div className="transform rotate-90 whitespace-nowrap text-sm font-medium text-blue-700 bg-blue-100 px-3 py-1 rounded-full">
                  E • Fodale →
                </div>
              </div>
            </div>

            {/* South indicator - Sweet Bay */}
            <div className="text-center mt-4">
              <div className="inline-flex items-center gap-2 bg-white px-5 py-2 rounded-full shadow-md border border-gray-200">
                <span className="text-gray-500">Sweet Bay / Leaf Dr •</span>
                <span className="font-bold text-gray-700">S</span>
                <span className="text-2xl">↓</span>
              </div>
            </div>
          </div>

          {/* Block Structure Info */}
          <div className="bg-white/80 backdrop-blur rounded-xl p-4 mt-6 border border-emerald-100">
            <h4 className="font-bold text-gray-800 mb-2">📐 Block Structure</h4>
            <div className="grid md:grid-cols-2 gap-4 text-sm text-gray-600">
              <div>
                <p><strong>Rows 1-36:</strong> Start at Sweet Bay (South), ascending north</p>
                <p><strong>Rows 37+:</strong> Continue from north, descending back south</p>
              </div>
              <div>
                <p><strong>8 plots per row</strong> (4 on each side)</p>
                <p><strong>Blank paths</strong> between ascending/descending blocks</p>
              </div>
            </div>
          </div>
        </div>

        {/* Quick Stats Cards */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div className="bg-white rounded-xl shadow-lg p-5 text-center border border-gray-100">
            <div className="text-4xl font-black text-gray-800">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.total, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm mt-1">Total Plots</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-5 text-center border border-gray-100">
            <div className="text-4xl font-black text-rose-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.occupied, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm mt-1">Occupied</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-5 text-center border border-gray-100">
            <div className="text-4xl font-black text-emerald-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.available, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm mt-1">Available</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-5 text-center border border-gray-100">
            <div className="text-4xl font-black text-gray-800">8</div>
            <div className="text-gray-500 text-sm mt-1">Sections (A-H)</div>
          </div>
        </div>

        {/* Sections G & H Internal Drives */}
        <div className="bg-white rounded-xl shadow-lg p-6 border border-gray-100">
          <h3 className="font-bold text-gray-800 mb-3">🛣️ Internal Drives (Sections G & H)</h3>
          <p className="text-sm text-gray-500 mb-4">
            The newer sections G and H have additional 12&apos; drives running east-west:
          </p>
          <div className="flex flex-wrap gap-3">
            {['Hydrangia', 'Heather', 'Gardinia'].map((drive) => (
              <div key={drive} className="flex items-center gap-2 bg-amber-50 px-4 py-2 rounded-lg border border-amber-200">
                <div className="w-8 h-1.5 bg-amber-400 rounded-full"></div>
                <span className="text-gray-700 font-medium">{drive} Drive</span>
              </div>
            ))}
          </div>
        </div>
      </div>
    );
  }

  // Render section detail view
  const currentSection = SECTIONS.find(s => s.id === selectedSection);
  
  // Group plots by row and organize into blocks
  const plotsByRow: Record<number, PlotWithDetails[]> = {};
  plots.forEach(plot => {
    const row = plot.row_number || 1;
    if (!plotsByRow[row]) plotsByRow[row] = [];
    plotsByRow[row].push(plot);
  });
  
  const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);
  
  // Split into blocks (1-36 ascending, 37+ descending)
  const block1Rows = allRows.filter(r => r <= 36).sort((a, b) => a - b);
  const block2Rows = allRows.filter(r => r > 36).sort((a, b) => b - a); // Descending for block 2

  return (
    <div className="space-y-6">
      {/* Section Header */}
      <div className={`bg-gradient-to-r ${currentSection?.color || 'from-gray-500 to-gray-700'} rounded-2xl shadow-xl p-6 text-white`}>
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div>
            <Link 
              href="/cemetery-map" 
              className="inline-flex items-center gap-1 text-white/80 hover:text-white text-sm mb-3 transition-colors"
            >
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
              </svg>
              Back to Cemetery Map
            </Link>
            <h2 className="text-4xl font-black">{currentSection?.name}</h2>
            <p className="text-white/80 mt-1">
              Between {currentSection?.westRoad} and {currentSection?.eastRoad}
            </p>
          </div>
          <div className="text-right bg-white/10 rounded-xl p-4">
            <div className="text-5xl font-black">{plots.length}</div>
            <div className="text-white/80">Total Plots</div>
          </div>
        </div>
      </div>

      {/* Legend */}
      <div className="bg-white rounded-xl shadow-lg p-4 flex flex-wrap items-center gap-6 border border-gray-100">
        <span className="text-gray-700 font-semibold">Legend:</span>
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 rounded-lg bg-emerald-500 shadow-sm"></div>
          <span className="text-sm text-gray-600">Available</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 rounded-lg bg-rose-500 shadow-sm"></div>
          <span className="text-sm text-gray-600">Occupied</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-8 h-8 rounded-lg bg-amber-500 shadow-sm"></div>
          <span className="text-sm text-gray-600">Reserved</span>
        </div>
        <div className="ml-auto text-sm text-gray-500">
          Click any plot for details
        </div>
      </div>

      {/* Plot Grid */}
      {loading ? (
        <div className="flex items-center justify-center h-64 bg-white rounded-xl shadow-lg">
          <div className="animate-spin rounded-full h-12 w-12 border-4 border-emerald-200 border-t-emerald-600"></div>
        </div>
      ) : (
        <div className="space-y-6">
          {/* Block 2 (Rows 37+) - Descending from North */}
          {block2Rows.length > 0 && (
            <div className="bg-white rounded-2xl shadow-lg p-6 border border-gray-100">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-3 h-3 rounded-full bg-blue-500"></div>
                <h3 className="font-bold text-gray-800">Block 2 • Rows {Math.min(...block2Rows)}-{Math.max(...block2Rows)}</h3>
                <span className="text-sm text-gray-500">(North section, descending)</span>
              </div>
              <div className="overflow-x-auto">
                <div className="min-w-max space-y-1">
                  {block2Rows.map((row) => (
                    <div key={row} className="flex items-center gap-2">
                      <div className="w-16 text-right text-sm text-gray-500 font-mono">
                        Row {row}
                      </div>
                      <div className="flex gap-1">
                        {plotsByRow[row]
                          ?.sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0))
                          .map((plot) => {
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-10 h-10 rounded-lg flex items-center justify-center 
                                  text-xs font-bold text-white shadow-sm
                                  transition-all duration-200 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)} border-2 ${getStatusBorder(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {plot.plot_position || ''}
                              </Link>
                            );
                          })}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* Divider between blocks */}
          {block1Rows.length > 0 && block2Rows.length > 0 && (
            <div className="flex items-center gap-4 py-2">
              <div className="flex-1 h-px bg-gradient-to-r from-transparent via-amber-300 to-transparent"></div>
              <span className="text-sm text-amber-600 font-medium bg-amber-50 px-4 py-1 rounded-full">
                Path / Block Divider
              </span>
              <div className="flex-1 h-px bg-gradient-to-r from-transparent via-amber-300 to-transparent"></div>
            </div>
          )}

          {/* Block 1 (Rows 1-36) - Ascending from South */}
          {block1Rows.length > 0 && (
            <div className="bg-white rounded-2xl shadow-lg p-6 border border-gray-100">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-3 h-3 rounded-full bg-emerald-500"></div>
                <h3 className="font-bold text-gray-800">Block 1 • Rows {Math.min(...block1Rows)}-{Math.max(...block1Rows)}</h3>
                <span className="text-sm text-gray-500">(South section, ascending)</span>
              </div>
              <div className="overflow-x-auto">
                <div className="min-w-max space-y-1">
                  {[...block1Rows].reverse().map((row) => (
                    <div key={row} className="flex items-center gap-2">
                      <div className="w-16 text-right text-sm text-gray-500 font-mono">
                        Row {row}
                      </div>
                      <div className="flex gap-1">
                        {plotsByRow[row]
                          ?.sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0))
                          .map((plot) => {
                            const deceasedName = getDeceasedName(plot);
                            return (
                              <Link
                                key={plot.id}
                                href={`/plot/${plot.id}`}
                                className={`
                                  w-10 h-10 rounded-lg flex items-center justify-center 
                                  text-xs font-bold text-white shadow-sm
                                  transition-all duration-200 hover:scale-110 hover:shadow-lg hover:z-10
                                  ${getStatusColor(plot.status)} border-2 ${getStatusBorder(plot.status)}
                                `}
                                title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                              >
                                {plot.plot_position || ''}
                              </Link>
                            );
                          })}
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          )}

          {/* South indicator */}
          <div className="text-center">
            <span className="text-sm text-gray-500 bg-gray-100 px-4 py-2 rounded-full">
              ↓ Sweet Bay (South) ↓
            </span>
          </div>
        </div>
      )}
    </div>
  );
}
