'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { plotsAPI, Plot } from '@/lib/supabase';

interface CemeteryMapProps {
  onPlotSelect?: (plot: Plot | null) => void;
  selectedSection?: string;
}

// Road names from West to East
const ROADS = ['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig', 'Gardenia', 'Heather', 'Hibiscus'];

// Sections between roads (West to East)
const SECTIONS = [
  { id: 'A', name: 'Section A', westRoad: 'Azalea', eastRoad: 'Beech' },
  { id: 'B', name: 'Section B', westRoad: 'Beech', eastRoad: 'Chinquapin' },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood' },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood', eastRoad: 'Elm' },
  { id: 'E', name: 'Section E', westRoad: 'Elm', eastRoad: 'Fig' },
  { id: 'F', name: 'Section F', westRoad: 'Fig', eastRoad: 'Gardenia' },
  { id: 'G', name: 'Section G', westRoad: 'Gardenia', eastRoad: 'Heather' },
  { id: 'H', name: 'Section H', westRoad: 'Heather', eastRoad: 'Hibiscus' },
];

// Map section to road name
export const getRoadName = (section: string): string => {
  const sectionData = SECTIONS.find(s => s.id === section.toUpperCase());
  if (sectionData) {
    return `${sectionData.westRoad}-${sectionData.eastRoad}`;
  }
  return section;
};

export const getWestRoad = (section: string): string => {
  const sectionData = SECTIONS.find(s => s.id === section.toUpperCase());
  return sectionData?.westRoad || '';
};

export const getEastRoad = (section: string): string => {
  const sectionData = SECTIONS.find(s => s.id === section.toUpperCase());
  return sectionData?.eastRoad || '';
};

export default function CemeteryMap({ onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [sectionStats, setSectionStats] = useState<Record<string, { total: number; occupied: number; available: number }>>({});
  const [plots, setPlots] = useState<Plot[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<Plot[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const [hoveredPlot, setHoveredPlot] = useState<Plot | null>(null);

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
    try {
      setLoading(true);
      const sectionPlots = await plotsAPI.getPlotsBySection(section);
      setPlots(sectionPlots);
    } catch (error) {
      console.error('Error loading plots:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = async () => {
    if (!searchQuery.trim()) {
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

  // Group plots by row for the selected section
  const plotsByRow = plots.reduce((acc, plot) => {
    const row = plot.row_number;
    if (!acc[row]) acc[row] = [];
    acc[row].push(plot);
    return acc;
  }, {} as Record<number, Plot[]>);

  const sortedRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);

  const getPlotColor = (plot: Plot) => {
    switch (plot.status) {
      case 'occupied': return 'bg-rose-500 hover:bg-rose-600';
      case 'reserved': return 'bg-amber-400 hover:bg-amber-500';
      default: return 'bg-emerald-500 hover:bg-emerald-600';
    }
  };

  const getDeceasedName = (plot: Plot) => {
    const deceased = plot.deceased_records?.[0];
    if (deceased) {
      return `${deceased.first_name} ${deceased.last_name}`;
    }
    return null;
  };

  if (loading && !selectedSection) {
    return (
      <div className="flex items-center justify-center p-12">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    );
  }

  // Overview Map View
  if (!selectedSection) {
    return (
      <div className="space-y-6">
        {/* Search Bar */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-4">
          <div className="flex gap-2">
            <input
              type="text"
              placeholder="Search by name, plot number, or row..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              onKeyPress={(e) => e.key === 'Enter' && handleSearch()}
              className="flex-1 rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-4 py-2 text-black dark:text-white"
            />
            <button
              onClick={handleSearch}
              className="bg-emerald-600 hover:bg-emerald-700 text-white px-6 py-2 rounded-md"
            >
              Search
            </button>
          </div>
          
          {/* Search Results */}
          {showSearch && searchResults.length > 0 && (
            <div className="mt-4 border-t border-gray-200 dark:border-gray-700 pt-4">
              <h3 className="font-semibold mb-2">Search Results ({searchResults.length})</h3>
              <div className="max-h-60 overflow-y-auto space-y-2">
                {searchResults.map(plot => (
                  <Link
                    key={plot.id}
                    href={`/plot/${plot.id}`}
                    className="block p-3 bg-gray-50 dark:bg-gray-900 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-800"
                  >
                    <div className="flex justify-between items-center">
                      <div>
                        <span className="font-medium">{plot.plot_number}</span>
                        <span className="text-gray-500 ml-2">
                          Section {plot.section} • Row {plot.row_number}
                        </span>
                      </div>
                      <span className={`px-2 py-1 rounded text-xs ${
                        plot.status === 'occupied' ? 'bg-rose-100 text-rose-800' :
                        plot.status === 'reserved' ? 'bg-amber-100 text-amber-800' :
                        'bg-emerald-100 text-emerald-800'
                      }`}>
                        {plot.status}
                      </span>
                    </div>
                    {getDeceasedName(plot) && (
                      <p className="text-sm text-gray-600 dark:text-gray-400 mt-1">
                        {getDeceasedName(plot)}
                      </p>
                    )}
                  </Link>
                ))}
              </div>
            </div>
          )}
        </div>

        {/* Aerial Map Image */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-4">
          <h3 className="font-semibold mb-3 text-center">Northwood Cemetery Aerial View</h3>
          <div className="relative">
            <img 
              src="/cemetery-photos/cemetery-map-aerial.png" 
              alt="Northwood Cemetery Aerial Map"
              className="w-full rounded-lg"
            />
          </div>
        </div>

        {/* Interactive Map */}
        <div className="bg-gradient-to-b from-emerald-50 to-emerald-100 dark:from-gray-900 dark:to-gray-800 rounded-lg shadow-md p-6">
          <h3 className="font-semibold mb-4 text-center text-lg">Interactive Cemetery Map</h3>
          
          {/* Compass and Labels */}
          <div className="text-center mb-2 text-sm text-gray-600 dark:text-gray-400">
            <span className="font-semibold">↑ NORTH (N Fodale Ave)</span>
          </div>

          {/* Main Map Grid */}
          <div className="relative">
            {/* West/East Labels */}
            <div className="flex justify-between text-xs text-gray-500 mb-1 px-2">
              <span>← WEST (Mitchell St)</span>
              <span>EAST (Leaf Dr) →</span>
            </div>

            {/* Road and Section Grid */}
            <div className="flex">
              {/* Roads and Sections */}
              {SECTIONS.map((section, index) => (
                <React.Fragment key={section.id}>
                  {/* West Road (only for first section) */}
                  {index === 0 && (
                    <div className="w-6 bg-amber-200 dark:bg-amber-900 flex items-center justify-center">
                      <span className="text-xs font-medium text-amber-800 dark:text-amber-200 transform -rotate-90 whitespace-nowrap">
                        {section.westRoad}
                      </span>
                    </div>
                  )}
                  
                  {/* Section */}
                  <Link
                    href={`/cemetery-map?section=${section.id.toLowerCase()}`}
                    className="flex-1 min-w-0"
                  >
                    <div className="bg-emerald-200 dark:bg-emerald-900 hover:bg-emerald-300 dark:hover:bg-emerald-800 transition-colors p-3 border-x border-emerald-300 dark:border-emerald-700 cursor-pointer h-48 flex flex-col justify-between">
                      <div className="text-center">
                        <div className="font-bold text-lg text-emerald-800 dark:text-emerald-200">
                          {section.id}
                        </div>
                        <div className="text-xs text-emerald-600 dark:text-emerald-400">
                          {section.name}
                        </div>
                      </div>
                      
                      {/* Stats */}
                      <div className="text-center text-xs">
                        <div className="text-emerald-700 dark:text-emerald-300">
                          {sectionStats[section.id]?.total || 0} plots
                        </div>
                        <div className="flex justify-center gap-2 mt-1">
                          <span className="text-rose-600">
                            {sectionStats[section.id]?.occupied || 0} used
                          </span>
                          <span className="text-emerald-600">
                            {sectionStats[section.id]?.available || 0} avail
                          </span>
                        </div>
                        {/* Progress bar */}
                        <div className="mt-2 h-2 bg-emerald-100 dark:bg-emerald-950 rounded-full overflow-hidden">
                          <div 
                            className="h-full bg-rose-500"
                            style={{ 
                              width: `${sectionStats[section.id]?.total ? 
                                (sectionStats[section.id].occupied / sectionStats[section.id].total) * 100 : 0}%` 
                            }}
                          />
                        </div>
                      </div>

                      {/* Row indicator */}
                      <div className="text-center text-xs text-emerald-600 dark:text-emerald-400">
                        Rows 1-{Math.ceil((sectionStats[section.id]?.total || 140) / 4)}
                      </div>
                    </div>
                  </Link>

                  {/* East Road */}
                  <div className="w-6 bg-amber-200 dark:bg-amber-900 flex items-center justify-center">
                    <span className="text-xs font-medium text-amber-800 dark:text-amber-200 transform -rotate-90 whitespace-nowrap">
                      {section.eastRoad}
                    </span>
                  </div>
                </React.Fragment>
              ))}
            </div>

            {/* South Label */}
            <div className="text-center mt-2 text-sm text-gray-600 dark:text-gray-400">
              <span className="font-semibold">↓ SOUTH</span>
            </div>
          </div>

          {/* Legend */}
          <div className="mt-6 flex flex-wrap justify-center gap-4 text-sm">
            <div className="flex items-center gap-2">
              <div className="w-4 h-4 bg-emerald-500 rounded"></div>
              <span>Available</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-4 h-4 bg-rose-500 rounded"></div>
              <span>Occupied</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-4 h-4 bg-amber-400 rounded"></div>
              <span>Reserved</span>
            </div>
            <div className="flex items-center gap-2">
              <div className="w-6 h-4 bg-amber-200 dark:bg-amber-900 rounded"></div>
              <span>Roads</span>
            </div>
          </div>

          {/* Instructions */}
          <p className="text-center text-sm text-gray-500 dark:text-gray-400 mt-4">
            Click on any section to view individual plots
          </p>
        </div>
      </div>
    );
  }

  // Section Detail View
  const sectionData = SECTIONS.find(s => s.id === selectedSection.toUpperCase());
  
  return (
    <div className="space-y-4">
      {/* Section Header */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-4">
        <div className="flex justify-between items-center">
          <div>
            <h2 className="text-xl font-bold">Section {selectedSection.toUpperCase()}</h2>
            <p className="text-gray-600 dark:text-gray-400">
              Between {sectionData?.westRoad} and {sectionData?.eastRoad} Roads
            </p>
          </div>
          <Link
            href="/cemetery-map"
            className="bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 px-4 py-2 rounded-lg text-sm"
          >
            ← Back to Overview
          </Link>
        </div>
        
        {/* Section Stats */}
        <div className="mt-4 grid grid-cols-3 gap-4 text-center">
          <div className="bg-gray-50 dark:bg-gray-900 rounded-lg p-3">
            <div className="text-2xl font-bold">{plots.length}</div>
            <div className="text-sm text-gray-500">Total Plots</div>
          </div>
          <div className="bg-rose-50 dark:bg-rose-900/30 rounded-lg p-3">
            <div className="text-2xl font-bold text-rose-600">{plots.filter(p => p.status === 'occupied').length}</div>
            <div className="text-sm text-gray-500">Occupied</div>
          </div>
          <div className="bg-emerald-50 dark:bg-emerald-900/30 rounded-lg p-3">
            <div className="text-2xl font-bold text-emerald-600">{plots.filter(p => p.status === 'available').length}</div>
            <div className="text-sm text-gray-500">Available</div>
          </div>
        </div>
      </div>

      {/* Plot Grid */}
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-4 overflow-x-auto">
        {loading ? (
          <div className="flex items-center justify-center p-12">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
          </div>
        ) : (
          <div className="min-w-fit">
            {/* Column Headers - Plot Positions */}
            <div className="flex items-center mb-2">
              <div className="w-16 text-center text-xs font-semibold text-gray-500">Row</div>
              <div className="flex-1 grid grid-cols-4 gap-1 text-center text-xs text-gray-500">
                <span>{sectionData?.westRoad} Side</span>
                <span>Position 2</span>
                <span>Position 3</span>
                <span>{sectionData?.eastRoad} Side</span>
              </div>
            </div>

            {/* Rows */}
            <div className="space-y-1">
              {sortedRows.map(rowNum => {
                const rowPlots = plotsByRow[rowNum].sort((a, b) => a.plot_position - b.plot_position);
                
                return (
                  <div key={rowNum} className="flex items-center">
                    {/* Row Number */}
                    <div className="w-16 text-center text-sm font-medium text-gray-600 dark:text-gray-400">
                      {rowNum}
                    </div>
                    
                    {/* Plots in Row (4 positions) */}
                    <div className="flex-1 grid grid-cols-4 gap-1">
                      {[1, 2, 3, 4].map(pos => {
                        const plot = rowPlots.find(p => p.plot_position === pos);
                        if (!plot) {
                          return <div key={pos} className="h-10 bg-gray-100 dark:bg-gray-900 rounded"></div>;
                        }
                        
                        const deceasedName = getDeceasedName(plot);
                        
                        return (
                          <Link
                            key={plot.id}
                            href={`/plot/${plot.id}`}
                            className={`h-10 rounded ${getPlotColor(plot)} flex items-center justify-center text-white text-xs font-medium transition-all hover:scale-105 relative group`}
                            onMouseEnter={() => setHoveredPlot(plot)}
                            onMouseLeave={() => setHoveredPlot(null)}
                          >
                            {pos}
                            
                            {/* Tooltip */}
                            <div className="absolute bottom-full left-1/2 transform -translate-x-1/2 mb-2 px-3 py-2 bg-gray-900 text-white text-xs rounded-lg opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none whitespace-nowrap z-10">
                              <div className="font-semibold">{plot.plot_number}</div>
                              {deceasedName && <div>{deceasedName}</div>}
                              <div className="text-gray-300 capitalize">{plot.status}</div>
                            </div>
                          </Link>
                        );
                      })}
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        )}
      </div>

      {/* Hovered Plot Info */}
      {hoveredPlot && (
        <div className="fixed bottom-4 right-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-4 max-w-xs z-50">
          <h4 className="font-semibold">{hoveredPlot.plot_number}</h4>
          <p className="text-sm text-gray-600 dark:text-gray-400">
            Row {hoveredPlot.row_number}, Position {hoveredPlot.plot_position}
          </p>
          {getDeceasedName(hoveredPlot) && (
            <p className="text-sm mt-1">{getDeceasedName(hoveredPlot)}</p>
          )}
          <p className="text-xs text-gray-500 mt-2">Click to view details</p>
        </div>
      )}
    </div>
  );
}
