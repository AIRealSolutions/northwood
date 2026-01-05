'use client';

import React, { useState, useEffect, useRef } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapUnifiedProps {
  highlightPlot?: string;
}

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
  const [currentSection, setCurrentSection] = useState(0);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const scrollContainerRef = useRef<HTMLDivElement>(null);
  const plotRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const [isDragging, setIsDragging] = useState(false);
  const [startX, setStartX] = useState(0);
  const [scrollLeft, setScrollLeft] = useState(0);

  useEffect(() => {
    loadAllPlots();
  }, []);

  useEffect(() => {
    if (highlightPlot && !loading) {
      setTimeout(() => {
        const element = plotRefs.current[highlightPlot];
        if (element) {
          element.scrollIntoView({ behavior: 'smooth', block: 'center', inline: 'center' });
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

  const scrollToSection = (index: number) => {
    if (scrollContainerRef.current) {
      const container = scrollContainerRef.current;
      const sectionWidth = container.scrollWidth / SECTIONS.length;
      container.scrollTo({
        left: sectionWidth * index,
        behavior: 'smooth'
      });
      setCurrentSection(index);
    }
  };

  const handlePrevSection = () => {
    if (currentSection > 0) {
      scrollToSection(currentSection - 1);
    }
  };

  const handleNextSection = () => {
    if (currentSection < SECTIONS.length - 1) {
      scrollToSection(currentSection + 1);
    }
  };

  // Mouse drag handlers
  const handleMouseDown = (e: React.MouseEvent) => {
    if (!scrollContainerRef.current) return;
    setIsDragging(true);
    setStartX(e.pageX - scrollContainerRef.current.offsetLeft);
    setScrollLeft(scrollContainerRef.current.scrollLeft);
  };

  const handleMouseMove = (e: React.MouseEvent) => {
    if (!isDragging || !scrollContainerRef.current) return;
    e.preventDefault();
    const x = e.pageX - scrollContainerRef.current.offsetLeft;
    const walk = (x - startX) * 2;
    scrollContainerRef.current.scrollLeft = scrollLeft - walk;
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  const handleMouseLeave = () => {
    setIsDragging(false);
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

  const renderRowMatrix = (
    row: number,
    facingDirection: 'west' | 'east',
    rowPlots: PlotWithDetails[],
    sectionColor: string
  ) => {
    const positionPairs = facingDirection === 'west'
      ? [[1, 5], [2, 6], [3, 7], [4, 8]]
      : [[8, 4], [7, 3], [6, 2], [5, 1]];

    return (
      <div className="mb-1.5" key={row}>
        <div className="text-[8px] text-gray-500 mb-0.5">Row {row}</div>
        <div className={`bg-white rounded border ${sectionColor} p-0.5`}>
          {positionPairs.map(([pos1, pos2]) => (
            <div key={`${pos1}-${pos2}`} className="flex gap-0.5 mb-0.5 last:mb-0">
              {[pos1, pos2].map((pos) => {
                const plot = rowPlots.find(p => p.plot_position === pos);
                if (!plot) {
                  return (
                    <div key={pos} className="w-7 h-5 rounded-sm bg-gray-200 flex items-center justify-center">
                      <span className="text-[7px] text-gray-400">{pos}</span>
                    </div>
                  );
                }
                const deceasedName = getDeceasedName(plot);
                return (
                  <div
                    key={pos}
                    ref={(el) => { plotRefs.current[plot.plot_number] = el; }}
                  >
                    <Link
                      href={`/plot/${plot.id}`}
                      className={`
                        w-7 h-5 rounded-sm flex items-center justify-center
                        text-white shadow-sm border
                        transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10
                        ${getStatusColor(plot.status)}
                      `}
                      title={deceasedName ? `${plot.plot_number}\n${deceasedName}` : plot.plot_number}
                    >
                      <span className="text-[7px] font-bold">{pos}</span>
                    </Link>
                  </div>
                );
              })}
            </div>
          ))}
        </div>
      </div>
    );
  };

  const renderSection = (section: typeof SECTIONS[0]) => {
    const plots = allPlots[section.id] || [];
    const plotsByRow: Record<number, PlotWithDetails[]> = {};
    
    plots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!plotsByRow[row]) plotsByRow[row] = [];
      plotsByRow[row].push(plot);
    });

    Object.keys(plotsByRow).forEach(row => {
      plotsByRow[parseInt(row)].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0));
    });

    const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);
    const westStripRows = allRows.filter(r => r <= 37);
    const eastStripRows = allRows.filter(r => r > 37);

    return (
      <div key={section.id} className="flex-shrink-0 w-full h-full flex flex-col px-2">
        {/* Section Header */}
        <div className={`bg-gradient-to-r ${section.color} rounded-lg shadow-md p-3 mb-3`}>
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-xl font-black text-white">{section.name}</h3>
              <p className="text-white/80 text-xs">
                {section.westRoad} ↔ {section.eastRoad}
              </p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        {/* Section Grid - Optimized Spacing */}
        <div className="flex-1 bg-white rounded-lg shadow-md p-2 overflow-y-auto">
          <div className="flex gap-1.5 h-full">
            {/* West Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
                {section.westRoad}
              </span>
            </div>

            {/* West Strip - LEFT JUSTIFIED */}
            <div className={`flex-1 ${section.bgColor} rounded p-2 border ${section.borderColor} overflow-y-auto`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                  Rows 1-37 ↑
                </span>
              </div>
              <div className="flex justify-start">
                <div className="inline-block">
                  {[...westStripRows].reverse().map((row) =>
                    renderRowMatrix(row, 'west', plotsByRow[row] || [], section.borderColor)
                  )}
                </div>
              </div>
            </div>

            {/* East Strip - RIGHT JUSTIFIED */}
            <div className={`flex-1 ${section.bgColor} rounded p-2 border ${section.borderColor} overflow-y-auto`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                  Rows 38+ ↓
                </span>
              </div>
              <div className="flex justify-end">
                <div className="inline-block">
                  {eastStripRows.map((row) =>
                    renderRowMatrix(row, 'east', plotsByRow[row] || [], section.borderColor)
                  )}
                </div>
              </div>
            </div>

            {/* East Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
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
    <div className="h-screen bg-gray-50 flex flex-col overflow-hidden">
      {/* Header */}
      <div className="bg-white shadow-md border-b border-gray-200 z-50">
        <div className="px-4 py-3">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-3">
            <div>
              <h1 className="text-xl font-bold text-gray-800">Northwood Cemetery Map</h1>
              <p className="text-gray-500 text-xs">Swipe or use arrows to navigate</p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search..."
                className="px-3 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-48"
              />
              <button
                type="submit"
                className="px-4 py-1.5 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all font-medium"
              >
                Search
              </button>
            </form>
          </div>

          {/* Section Indicators */}
          <div className="flex gap-2 mt-3 justify-center">
            {SECTIONS.map((section, index) => (
              <button
                key={section.id}
                onClick={() => scrollToSection(index)}
                className={`
                  px-3 py-1 rounded-lg text-xs font-bold transition-all
                  ${currentSection === index
                    ? `bg-gradient-to-r ${section.color} text-white shadow-lg scale-110`
                    : 'bg-gray-200 text-gray-600 hover:bg-gray-300'
                  }
                `}
              >
                {section.id}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* Search Results */}
      {showSearch && searchResults.length > 0 && (
        <div className="bg-white border-b border-gray-200 p-3 max-h-48 overflow-y-auto">
          <h3 className="text-sm font-bold text-gray-800 mb-2">
            Found {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
          </h3>
          <div className="grid gap-1.5">
            {searchResults.map((plot) => (
              <Link
                key={plot.id}
                href={`/cemetery-map-unified?highlight=${plot.plot_number}`}
                className="flex items-center justify-between p-2 bg-gray-50 rounded hover:bg-emerald-50 transition-all text-sm"
              >
                <div>
                  <span className="font-semibold text-gray-800">{plot.plot_number}</span>
                  {getDeceasedName(plot) && (
                    <span className="ml-2 text-gray-600 text-xs">• {getDeceasedName(plot)}</span>
                  )}
                </div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* Legend */}
      <div className="bg-white border-b border-gray-200 px-4 py-2">
        <div className="flex flex-wrap items-center justify-center gap-4 text-xs">
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-emerald-400 border border-emerald-500"></div>
            <span className="text-gray-600">Available</span>
          </div>
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-rose-500 border border-rose-600"></div>
            <span className="text-gray-600">Occupied</span>
          </div>
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-amber-400 border border-amber-500"></div>
            <span className="text-gray-600">Reserved</span>
          </div>
          <span className="text-gray-500">West (Left) ↑ • East (Right) ↓</span>
        </div>
      </div>

      {/* North Indicator */}
      <div className="text-center py-2 bg-gray-100">
        <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-xs font-medium">
          ↑ FODALE AVE (North)
        </span>
      </div>

      {/* Main Carousel Container */}
      <div className="flex-1 relative overflow-hidden">
        {/* Navigation Arrows */}
        {currentSection > 0 && (
          <button
            onClick={handlePrevSection}
            className="absolute left-2 top-1/2 -translate-y-1/2 z-10 bg-white/90 hover:bg-white shadow-lg rounded-full p-3 transition-all"
          >
            <svg className="w-6 h-6 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M15 19l-7-7 7-7" />
            </svg>
          </button>
        )}
        
        {currentSection < SECTIONS.length - 1 && (
          <button
            onClick={handleNextSection}
            className="absolute right-2 top-1/2 -translate-y-1/2 z-10 bg-white/90 hover:bg-white shadow-lg rounded-full p-3 transition-all"
          >
            <svg className="w-6 h-6 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M9 5l7 7-7 7" />
            </svg>
          </button>
        )}

        {/* Scrollable Sections */}
        <div
          ref={scrollContainerRef}
          className={`flex h-full overflow-x-auto overflow-y-hidden snap-x snap-mandatory scroll-smooth ${
            isDragging ? 'cursor-grabbing' : 'cursor-grab'
          }`}
          style={{ scrollbarWidth: 'none', msOverflowStyle: 'none' }}
          onMouseDown={handleMouseDown}
          onMouseMove={handleMouseMove}
          onMouseUp={handleMouseUp}
          onMouseLeave={handleMouseLeave}
        >
          {SECTIONS.map(renderSection)}
        </div>
      </div>

      {/* South Indicator */}
      <div className="text-center py-2 bg-gray-100">
        <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-xs font-medium">
          ↓ SWEET BAY (South)
        </span>
      </div>
    </div>
  );
}
