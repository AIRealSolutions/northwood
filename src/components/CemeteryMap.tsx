'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  onPlotSelect?: (plot: PlotWithDetails | null) => void;
  selectedSection?: string;
}

// Section configuration based on official plat drawings
const SECTIONS = [
  { id: 'A', name: 'Section A', road: 'Azalea', color: 'from-emerald-400 to-emerald-600' },
  { id: 'B', name: 'Section B', road: 'Beech', color: 'from-teal-400 to-teal-600' },
  { id: 'C', name: 'Section C', road: 'Chinquapin', color: 'from-cyan-400 to-cyan-600' },
  { id: 'D', name: 'Section D', road: 'Dogwood', color: 'from-sky-400 to-sky-600' },
  { id: 'E', name: 'Section E', road: 'Elm', color: 'from-blue-400 to-blue-600' },
  { id: 'F', name: 'Section F', road: 'Fig', color: 'from-indigo-400 to-indigo-600' },
  { id: 'G', name: 'Section G', road: 'Gardenia', color: 'from-violet-400 to-violet-600' },
  { id: 'H', name: 'Section H', road: 'Heather', color: 'from-purple-400 to-purple-600' },
];

// Internal drives in Sections G & H
const INTERNAL_DRIVES = ['Hydrangia', 'Heather', 'Gardinia'];

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
      case 'occupied': return 'bg-rose-500';
      case 'reserved': return 'bg-amber-500';
      default: return 'bg-emerald-500';
    }
  };

  // Render the overview map
  if (!selectedSection) {
    return (
      <div className="space-y-6">
        {/* Header with Search */}
        <div className="bg-white rounded-2xl shadow-lg p-6">
          <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
            <div>
              <h2 className="text-2xl font-bold text-gray-800">Northwood Cemetery</h2>
              <p className="text-gray-500">Southport, NC • Est. 1989</p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search by name or plot..."
                className="px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-64"
              />
              <button
                type="submit"
                className="px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors"
              >
                Search
              </button>
            </form>
          </div>
        </div>

        {/* Search Results */}
        {showSearch && searchResults.length > 0 && (
          <div className="bg-white rounded-2xl shadow-lg p-6">
            <h3 className="text-lg font-semibold text-gray-800 mb-4">Search Results ({searchResults.length})</h3>
            <div className="grid gap-3 max-h-64 overflow-y-auto">
              {searchResults.map((plot) => (
                <Link
                  key={plot.id}
                  href={`/plot/${plot.id}`}
                  className="flex items-center justify-between p-3 bg-gray-50 rounded-lg hover:bg-emerald-50 transition-colors"
                >
                  <div>
                    <span className="font-medium text-gray-800">{plot.plot_number}</span>
                    {getDeceasedName(plot) && (
                      <span className="ml-2 text-gray-600">• {getDeceasedName(plot)}</span>
                    )}
                  </div>
                  <span className={`px-2 py-1 rounded text-xs text-white ${getStatusColor(plot.status)}`}>
                    {plot.status}
                  </span>
                </Link>
              ))}
            </div>
          </div>
        )}

        {/* Interactive Map */}
        <div className="bg-gradient-to-br from-green-50 to-emerald-100 rounded-2xl shadow-lg p-6 overflow-hidden">
          {/* Map Legend */}
          <div className="flex flex-wrap items-center justify-between mb-6 gap-4">
            <div className="flex items-center gap-4">
              <div className="flex items-center gap-2">
                <div className="w-4 h-4 rounded bg-emerald-500"></div>
                <span className="text-sm text-gray-600">Available</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-4 h-4 rounded bg-rose-500"></div>
                <span className="text-sm text-gray-600">Occupied</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-4 h-4 rounded bg-amber-500"></div>
                <span className="text-sm text-gray-600">Reserved</span>
              </div>
            </div>
            <button
              onClick={() => setShowPlatMap(!showPlatMap)}
              className="text-sm text-emerald-600 hover:text-emerald-700 underline"
            >
              {showPlatMap ? 'Hide Plat Map' : 'View Official Plat Map'}
            </button>
          </div>

          {/* Plat Map Image */}
          {showPlatMap && (
            <div className="mb-6 bg-white rounded-xl p-4 shadow-inner">
              <Image
                src="/cemetery-photos/plat-sections-af.jpeg"
                alt="Official Plat Map - Sections A-F"
                width={800}
                height={600}
                className="w-full h-auto rounded-lg"
              />
              <p className="text-center text-sm text-gray-500 mt-2">Official Survey Drawing - Tide Water Engineering, June 1989</p>
            </div>
          )}

          {/* Cemetery Layout */}
          <div className="relative">
            {/* North Label */}
            <div className="text-center mb-4">
              <div className="inline-flex items-center gap-2 bg-white/80 backdrop-blur px-4 py-2 rounded-full shadow">
                <svg className="w-5 h-5 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 10l7-7m0 0l7 7m-7-7v18" />
                </svg>
                <span className="font-semibold text-gray-700">N • Fodale Avenue</span>
              </div>
            </div>

            {/* Sections Grid */}
            <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-8 gap-3">
              {SECTIONS.map((section) => {
                const stats = sectionStats[section.id] || { total: 0, occupied: 0, available: 0 };
                const occupancyPercent = stats.total > 0 ? (stats.occupied / stats.total) * 100 : 0;
                
                return (
                  <Link
                    key={section.id}
                    href={`/cemetery-map?section=${section.id}`}
                    className="group relative"
                    onMouseEnter={() => setHoveredSection(section.id)}
                    onMouseLeave={() => setHoveredSection(null)}
                  >
                    <div className={`
                      relative overflow-hidden rounded-xl shadow-lg transition-all duration-300
                      ${hoveredSection === section.id ? 'scale-105 shadow-2xl z-10' : ''}
                      bg-gradient-to-br ${section.color}
                    `}>
                      {/* Section Content */}
                      <div className="p-4 text-white">
                        <div className="text-3xl font-bold mb-1">{section.id}</div>
                        <div className="text-xs opacity-90 mb-3">{section.road}</div>
                        
                        {/* Stats */}
                        <div className="space-y-1 text-xs">
                          <div className="flex justify-between">
                            <span>Total</span>
                            <span className="font-semibold">{stats.total}</span>
                          </div>
                          <div className="flex justify-between">
                            <span>Available</span>
                            <span className="font-semibold text-emerald-200">{stats.available}</span>
                          </div>
                          <div className="flex justify-between">
                            <span>Occupied</span>
                            <span className="font-semibold text-rose-200">{stats.occupied}</span>
                          </div>
                        </div>

                        {/* Occupancy Bar */}
                        <div className="mt-3 h-2 bg-white/30 rounded-full overflow-hidden">
                          <div 
                            className="h-full bg-white/80 rounded-full transition-all duration-500"
                            style={{ width: `${occupancyPercent}%` }}
                          />
                        </div>
                        <div className="text-xs mt-1 text-center opacity-80">
                          {occupancyPercent.toFixed(0)}% occupied
                        </div>
                      </div>

                      {/* Hover Effect */}
                      <div className="absolute inset-0 bg-white/10 opacity-0 group-hover:opacity-100 transition-opacity" />
                    </div>

                    {/* Tooltip on Hover */}
                    {hoveredSection === section.id && (
                      <div className="absolute -top-12 left-1/2 transform -translate-x-1/2 bg-gray-900 text-white text-xs px-3 py-2 rounded-lg shadow-lg whitespace-nowrap z-20">
                        Click to view {section.name}
                        <div className="absolute bottom-0 left-1/2 transform -translate-x-1/2 translate-y-1/2 rotate-45 w-2 h-2 bg-gray-900" />
                      </div>
                    )}
                  </Link>
                );
              })}
            </div>

            {/* South Label */}
            <div className="text-center mt-4">
              <div className="inline-flex items-center gap-2 bg-white/80 backdrop-blur px-4 py-2 rounded-full shadow">
                <span className="font-semibold text-gray-700">S • Sweet Bay</span>
                <svg className="w-5 h-5 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 14l-7 7m0 0l-7-7m7 7V3" />
                </svg>
              </div>
            </div>

            {/* Road Labels */}
            <div className="mt-6 flex flex-wrap justify-center gap-2">
              {['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig', 'Gardenia', 'Heather', 'Hibiscus'].map((road, i) => (
                <span key={road} className="text-xs bg-white/80 px-2 py-1 rounded-full text-gray-600 shadow-sm">
                  {road} {i < 8 ? `(${String.fromCharCode(65 + i)})` : ''}
                </span>
              ))}
            </div>
          </div>
        </div>

        {/* Quick Stats */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          <div className="bg-white rounded-xl shadow-lg p-4 text-center">
            <div className="text-3xl font-bold text-emerald-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.total, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Total Plots</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-4 text-center">
            <div className="text-3xl font-bold text-rose-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.occupied, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Occupied</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-4 text-center">
            <div className="text-3xl font-bold text-emerald-600">
              {Object.values(sectionStats).reduce((sum, s) => sum + s.available, 0).toLocaleString()}
            </div>
            <div className="text-gray-500 text-sm">Available</div>
          </div>
          <div className="bg-white rounded-xl shadow-lg p-4 text-center">
            <div className="text-3xl font-bold text-gray-600">8</div>
            <div className="text-gray-500 text-sm">Sections</div>
          </div>
        </div>

        {/* Internal Drives Info for G & H */}
        <div className="bg-white rounded-2xl shadow-lg p-6">
          <h3 className="text-lg font-semibold text-gray-800 mb-4">Internal Drives (Sections G & H)</h3>
          <div className="flex flex-wrap gap-3">
            {INTERNAL_DRIVES.map((drive) => (
              <div key={drive} className="flex items-center gap-2 bg-amber-50 px-4 py-2 rounded-lg">
                <div className="w-8 h-1 bg-amber-400 rounded"></div>
                <span className="text-gray-700">{drive} Drive</span>
              </div>
            ))}
          </div>
          <p className="text-sm text-gray-500 mt-3">
            12&apos; wide drives running east-west through the newer sections
          </p>
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
  
  const rows = Object.keys(plotsByRow).map(Number).sort((a, b) => b - a);

  return (
    <div className="space-y-6">
      {/* Section Header */}
      <div className={`bg-gradient-to-r ${currentSection?.color || 'from-gray-400 to-gray-600'} rounded-2xl shadow-lg p-6 text-white`}>
        <div className="flex items-center justify-between">
          <div>
            <Link href="/cemetery-map" className="text-white/80 hover:text-white text-sm mb-2 inline-flex items-center gap-1">
              <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
              </svg>
              Back to Map
            </Link>
            <h2 className="text-3xl font-bold">{currentSection?.name}</h2>
            <p className="text-white/80">{currentSection?.road} Road • Rows 1-{rows[0] || 74}</p>
          </div>
          <div className="text-right">
            <div className="text-4xl font-bold">{plots.length}</div>
            <div className="text-white/80">Total Plots</div>
          </div>
        </div>
      </div>

      {/* Legend */}
      <div className="bg-white rounded-xl shadow p-4 flex flex-wrap items-center gap-4">
        <span className="text-gray-600 font-medium">Legend:</span>
        <div className="flex items-center gap-2">
          <div className="w-6 h-6 rounded bg-emerald-500"></div>
          <span className="text-sm">Available</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-6 h-6 rounded bg-rose-500"></div>
          <span className="text-sm">Occupied</span>
        </div>
        <div className="flex items-center gap-2">
          <div className="w-6 h-6 rounded bg-amber-500"></div>
          <span className="text-sm">Reserved</span>
        </div>
      </div>

      {/* Plot Grid */}
      {loading ? (
        <div className="flex items-center justify-center h-64">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
        </div>
      ) : (
        <div className="bg-white rounded-2xl shadow-lg p-6 overflow-x-auto">
          <div className="min-w-max">
            {rows.map((row) => (
              <div key={row} className="flex items-center gap-2 mb-2">
                <div className="w-12 text-right text-sm text-gray-500 font-medium">
                  Row {row}
                </div>
                <div className="flex gap-1">
                  {plotsByRow[row]
                    .sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0))
                    .map((plot) => {
                      const deceasedName = getDeceasedName(plot);
                      return (
                        <Link
                          key={plot.id}
                          href={`/plot/${plot.id}`}
                          className={`
                            w-10 h-10 rounded-lg flex items-center justify-center text-xs font-medium text-white
                            transition-all duration-200 hover:scale-110 hover:shadow-lg
                            ${getStatusColor(plot.status)}
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
      )}
    </div>
  );
}
