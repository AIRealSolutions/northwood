'use client';

import React, { useState, useEffect, useRef } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapUnifiedProps {
  highlightPlot?: string;
}

/* ================================================================== */
/* A-F SECTION DEFINITIONS (original working layout)                   */
/* Roads run N-S: Azalea | A | Beech | B | ... | Fig | F | Gardenia  */
/* ================================================================== */

const SECTIONS_AF = [
  { id: 'A', name: 'Section A', westRoad: 'Azalea',     eastRoad: 'Beech',      color: 'from-emerald-500 to-emerald-700', bgColor: 'bg-emerald-50', borderColor: 'border-emerald-200', maxRow: 74, splitRow: 37 },
  { id: 'B', name: 'Section B', westRoad: 'Beech',      eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700',    bgColor: 'bg-teal-50',    borderColor: 'border-teal-200',    maxRow: 74, splitRow: 37 },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood',    color: 'from-cyan-500 to-cyan-700',    bgColor: 'bg-cyan-50',    borderColor: 'border-cyan-200',    maxRow: 74, splitRow: 37 },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood',    eastRoad: 'Elm',        color: 'from-sky-500 to-sky-700',      bgColor: 'bg-sky-50',     borderColor: 'border-sky-200',     maxRow: 74, splitRow: 37 },
  { id: 'E', name: 'Section E', westRoad: 'Elm',        eastRoad: 'Fig',        color: 'from-blue-500 to-blue-700',    bgColor: 'bg-blue-50',    borderColor: 'border-blue-200',    maxRow: 74, splitRow: 37 },
  { id: 'F', name: 'Section F', westRoad: 'Fig',        eastRoad: 'Gardenia',   color: 'from-indigo-500 to-indigo-700', bgColor: 'bg-indigo-50', borderColor: 'border-indigo-200', maxRow: 74, splitRow: 37 },
];

/* ================================================================== */
/* G-H BAND DEFINITIONS (horizontal layout matching plat map)          */
/* Drives run E-W: Gardenia, Heather, Hydrangea                       */
/* G is on the LEFT (west), H is on the RIGHT (east)                  */
/* ================================================================== */

interface GHBand {
  id: string;
  label: string;
  gRows: [number, number]; // [min, max] for section G
  hRows: [number, number]; // [min, max] for section H
  driveAbove?: string;     // drive name above this band
  driveBelow?: string;     // drive name below this band
}

const GH_BANDS: GHBand[] = [
  {
    id: 'band1',
    label: 'Below Gardenia',
    gRows: [1, 24],
    hRows: [1, 131],
    driveAbove: 'Gardenia 12\' Drive',
    driveBelow: undefined,
  },
  {
    id: 'band2',
    label: 'Gardenia to Heather',
    gRows: [25, 136],
    hRows: [132, 281],
    driveAbove: 'Heather 12\' Drive',
    driveBelow: 'Gardenia 12\' Drive',
  },
  {
    id: 'band3',
    label: 'Heather to Hydrangea',
    gRows: [137, 281],
    hRows: [282, 466],
    driveAbove: 'Hydrangea 12\' Drive',
    driveBelow: 'Heather 12\' Drive',
  },
  {
    id: 'band4',
    label: 'Above Hydrangea',
    gRows: [282, 386],
    hRows: [467, 582],
    driveAbove: undefined,
    driveBelow: 'Hydrangea 12\' Drive',
  },
];

export default function CemeteryMapUnified({ highlightPlot }: CemeteryMapUnifiedProps) {
  const [allPlots, setAllPlots] = useState<Record<string, PlotWithDetails[]>>({});
  const [loading, setLoading] = useState(true);
  const [activeView, setActiveView] = useState<'af' | 'gh'>('af');
  const [currentSection, setCurrentSection] = useState(0);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const scrollContainerRef = useRef<HTMLDivElement>(null);
  const plotRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const [isDragging, setIsDragging] = useState(false);
  const [startX, setStartX] = useState(0);
  const [scrollLeft, setScrollLeft] = useState(0);
  const [isMobile, setIsMobile] = useState(false);

  useEffect(() => {
    const checkMobile = () => setIsMobile(window.innerWidth < 1024);
    checkMobile();
    window.addEventListener('resize', checkMobile);
    return () => window.removeEventListener('resize', checkMobile);
  }, []);

  useEffect(() => { loadAllPlots(); }, []);

  useEffect(() => {
    if (highlightPlot && !loading) {
      setTimeout(() => {
        const element = plotRefs.current[highlightPlot];
        if (element) {
          // Determine if this is a G/H plot
          if (highlightPlot.startsWith('NW-G-') || highlightPlot.startsWith('NW-H-')) {
            setActiveView('gh');
          } else {
            setActiveView('af');
          }
          setTimeout(() => {
            element.scrollIntoView({ behavior: 'smooth', block: 'center', inline: 'center' });
            element.classList.add('ring-4', 'ring-yellow-400', 'ring-offset-2');
            setTimeout(() => {
              element.classList.remove('ring-4', 'ring-yellow-400', 'ring-offset-2');
            }, 3000);
          }, 300);
        }
      }, 500);
    }
  }, [highlightPlot, loading]);

  const loadAllPlots = async () => {
    setLoading(true);
    try {
      const plotsData: Record<string, PlotWithDetails[]> = {};
      for (const letter of ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']) {
        plotsData[letter] = await plotsAPI.getPlotsBySection(letter);
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
    setCurrentSection(index);
    if (scrollContainerRef.current && isMobile) {
      const container = scrollContainerRef.current;
      const sectionWidth = container.scrollWidth / SECTIONS_AF.length;
      container.scrollTo({ left: sectionWidth * index, behavior: 'smooth' });
    }
  };

  const handlePrevSection = () => {
    if (currentSection > 0) scrollToSection(currentSection - 1);
  };
  const handleNextSection = () => {
    if (currentSection < SECTIONS_AF.length - 1) scrollToSection(currentSection + 1);
  };

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
  const handleMouseUp = () => setIsDragging(false);
  const handleMouseLeave = () => setIsDragging(false);

  const getDeceasedName = (plot: PlotWithDetails) => {
    const deceased = plot.deceased_records?.[0];
    return deceased ? `${deceased.first_name} ${deceased.last_name}` : null;
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'occupied': return 'bg-rose-500 hover:bg-rose-600 border-rose-600';
      case 'reserved': return 'bg-amber-400 hover:bg-amber-500 border-amber-500';
      default: return 'bg-emerald-400 hover:bg-emerald-500 border-emerald-500';
    }
  };

  const getPlotWidthLabel = (sectionId: string): string => {
    if (sectionId === 'H') return "9\u2032 plots";
    if (sectionId === 'G') return "5\u2032 plots";
    return "4\u2032 plots";
  };

  /* ================================================================ */
  /* A-F RENDERING (original working 8-position matrix)               */
  /* ================================================================ */

  const renderRowMatrixAF = (
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
                  <div key={pos} ref={(el) => { plotRefs.current[plot.plot_number] = el; }}>
                    <Link
                      href={`/plot/${plot.id}`}
                      className={`w-7 h-5 rounded-sm flex items-center justify-center text-white shadow-sm border transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10 ${getStatusColor(plot.status)}`}
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

  const renderSectionAF = (section: typeof SECTIONS_AF[0], index: number) => {
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
    const westStripRows = allRows.filter(r => r <= section.splitRow);
    const eastStripRows = allRows.filter(r => r > section.splitRow);

    return (
      <div
        key={section.id}
        className={`flex-shrink-0 min-h-full flex flex-col ${isMobile ? 'w-full px-1' : 'px-1'}`}
      >
        <div className={`bg-gradient-to-r ${section.color} rounded-lg shadow-md p-2 mb-1`}>
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-xl font-black text-white">{section.name}</h3>
              <p className="text-white/80 text-xs">{section.westRoad} ↔ {section.eastRoad}</p>
              <p className="text-white/60 text-[9px]">{getPlotWidthLabel(section.id)}</p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        <div className="flex-1 bg-white rounded-lg shadow-md p-1">
          <div className="flex gap-1 h-full">
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
                {section.westRoad}
              </span>
            </div>

            <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                  Rows 1-{section.splitRow} ↑
                </span>
              </div>
              <div className="flex justify-start">
                <div className="inline-block">
                  {[...westStripRows].reverse().map((row) =>
                    renderRowMatrixAF(row, 'west', plotsByRow[row] || [], section.borderColor)
                  )}
                </div>
              </div>
            </div>

            <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                  Rows {section.splitRow + 1}+ ↓
                </span>
              </div>
              <div className="flex justify-end">
                <div className="inline-block">
                  {eastStripRows.map((row) =>
                    renderRowMatrixAF(row, 'east', plotsByRow[row] || [], section.borderColor)
                  )}
                </div>
              </div>
            </div>

            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
                {section.eastRoad}
              </span>
            </div>
          </div>
        </div>

        {index < SECTIONS_AF.length - 1 && (
          <div className={`flex-shrink-0 ${isMobile ? 'w-0' : 'w-16'} bg-amber-50 border-x-4 border-amber-300 flex items-center justify-center`}>
            <span className="transform rotate-90 whitespace-nowrap text-xs font-bold text-amber-700">
              {section.eastRoad} Road
            </span>
          </div>
        )}
      </div>
    );
  };

  /* ================================================================ */
  /* G-H RENDERING (horizontal band layout matching plat map)          */
  /* G on left, H on right, drives running E-W between bands          */
  /* ================================================================ */

  const renderGHPlotCell = (plot: PlotWithDetails | undefined, pos: number, small?: boolean) => {
    const w = small ? 'w-5 h-4' : 'w-6 h-5';
    const textSize = small ? 'text-[5px]' : 'text-[6px]';

    if (!plot) {
      return (
        <div key={pos} className={`${w} rounded-sm bg-gray-200 flex items-center justify-center flex-shrink-0`}>
          <span className={`${textSize} text-gray-400`}>{pos}</span>
        </div>
      );
    }
    const deceasedName = getDeceasedName(plot);
    return (
      <div key={pos} ref={(el) => { plotRefs.current[plot.plot_number] = el; }} className="flex-shrink-0">
        <Link
          href={`/plot/${plot.id}`}
          className={`${w} rounded-sm flex items-center justify-center text-white shadow-sm border transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10 ${getStatusColor(plot.status)}`}
          title={`${plot.plot_number}${deceasedName ? '\n' + deceasedName : ''}\nRow ${plot.row_number}, Pos ${plot.plot_position}`}
        >
          <span className={`${textSize} font-bold`}>{pos}</span>
        </Link>
      </div>
    );
  };

  const renderGHRowLine = (
    row: number,
    rowPlots: PlotWithDetails[],
    maxPos: number,
    borderColor: string
  ) => {
    const positions = Array.from({ length: maxPos }, (_, i) => i + 1);
    return (
      <div className="flex items-center gap-0.5 mb-0.5" key={row}>
        <span className="text-[6px] text-gray-400 w-6 text-right flex-shrink-0 pr-0.5">{row}</span>
        <div className={`flex gap-0.5 bg-white rounded border ${borderColor} p-0.5`}>
          {positions.map((pos) => {
            const plot = rowPlots.find(p => p.plot_position === pos);
            return renderGHPlotCell(plot, pos, true);
          })}
        </div>
      </div>
    );
  };

  const renderGHSectionColumn = (
    sectionLetter: string,
    minRow: number,
    maxRow: number,
    bgColor: string,
    borderColor: string,
    label: string
  ) => {
    const plots = (allPlots[sectionLetter] || []).filter(
      p => p.row_number >= minRow && p.row_number <= maxRow
    );

    const plotsByRow: Record<number, PlotWithDetails[]> = {};
    let globalMaxPos = 1;
    plots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!plotsByRow[row]) plotsByRow[row] = [];
      plotsByRow[row].push(plot);
      if ((plot.plot_position || 1) > globalMaxPos) globalMaxPos = plot.plot_position || 1;
    });

    const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);

    // Split into columns of ~30 rows to keep height manageable
    const ROWS_PER_COL = 30;
    const columns: number[][] = [];
    for (let i = 0; i < allRows.length; i += ROWS_PER_COL) {
      columns.push(allRows.slice(i, i + ROWS_PER_COL));
    }

    return (
      <div className={`${bgColor} rounded p-1 border ${borderColor}`}>
        <div className="text-center mb-1">
          <span className="text-[9px] font-bold text-gray-700 bg-white/60 px-2 py-0.5 rounded-full">
            {label} ({plots.length} plots)
          </span>
        </div>
        <div className="flex gap-1 overflow-x-auto" style={{ scrollbarWidth: 'thin' }}>
          {columns.map((colRows, colIdx) => (
            <div key={colIdx} className="flex-shrink-0">
              <div className="text-center mb-0.5">
                <span className="text-[7px] text-gray-500">
                  {colRows[0]}-{colRows[colRows.length - 1]}
                </span>
              </div>
              {colRows.map((row) =>
                renderGHRowLine(row, plotsByRow[row] || [], globalMaxPos, borderColor)
              )}
            </div>
          ))}
        </div>
      </div>
    );
  };

  const renderGHBand = (band: GHBand) => {
    return (
      <div key={band.id} className="mb-2">
        {/* Drive label above */}
        {band.driveBelow && (
          <div className="bg-amber-200 border-y-2 border-amber-400 py-1 px-3 mb-1">
            <span className="text-xs font-bold text-amber-900">{band.driveBelow}</span>
          </div>
        )}

        {/* Band content: G on left, H on right */}
        <div className="flex gap-2">
          {/* Section G column */}
          <div className="flex-1">
            {renderGHSectionColumn(
              'G',
              band.gRows[0],
              band.gRows[1],
              'bg-violet-50',
              'border-violet-200',
              `G: Rows ${band.gRows[0]}-${band.gRows[1]}`
            )}
          </div>

          {/* Section H column */}
          <div className="flex-1">
            {renderGHSectionColumn(
              'H',
              band.hRows[0],
              band.hRows[1],
              'bg-purple-50',
              'border-purple-200',
              `H: Rows ${band.hRows[0]}-${band.hRows[1]}`
            )}
          </div>
        </div>
      </div>
    );
  };

  const renderGHView = () => {
    const gPlots = allPlots['G'] || [];
    const hPlots = allPlots['H'] || [];

    return (
      <div className="p-2 overflow-auto h-full" style={{ scrollbarWidth: 'thin' }}>
        {/* G-H Header */}
        <div className="flex gap-2 mb-2">
          <div className="flex-1 bg-gradient-to-r from-violet-500 to-violet-700 rounded-lg shadow-md p-2">
            <div className="flex items-center justify-between">
              <div>
                <h3 className="text-lg font-black text-white">Section G</h3>
                <p className="text-white/80 text-xs">5&prime; plots &bull; Rows 1-386</p>
              </div>
              <div className="text-right bg-white/20 rounded-lg px-3 py-1">
                <div className="text-lg font-bold text-white">{gPlots.length}</div>
                <div className="text-white/80 text-[10px]">Plots</div>
              </div>
            </div>
          </div>
          <div className="flex-1 bg-gradient-to-r from-purple-500 to-purple-700 rounded-lg shadow-md p-2">
            <div className="flex items-center justify-between">
              <div>
                <h3 className="text-lg font-black text-white">Section H</h3>
                <p className="text-white/80 text-xs">9&prime; plots &bull; Rows 1-582</p>
              </div>
              <div className="text-right bg-white/20 rounded-lg px-3 py-1">
                <div className="text-lg font-bold text-white">{hPlots.length}</div>
                <div className="text-white/80 text-[10px]">Plots</div>
              </div>
            </div>
          </div>
        </div>

        {/* Fodale Ave label on left */}
        <div className="flex gap-1">
          <div className="w-8 flex-shrink-0 bg-gray-600 rounded flex items-center justify-center">
            <span className="transform -rotate-90 whitespace-nowrap text-[9px] font-bold text-white">
              FODALE AVE
            </span>
          </div>

          <div className="flex-1">
            {/* Render bands from bottom (south) to top (north) */}
            {/* On the plat map, band 1 is at bottom, band 4 at top */}
            {/* We render top-to-bottom on screen: band 4 first (north) */}
            <div className="text-center py-1 mb-1">
              <span className="inline-block bg-gray-700 text-white px-3 py-0.5 rounded-full text-[10px] font-medium">
                ↑ North (Cape Fear River Heights)
              </span>
            </div>

            {/* Top band (above Hydrangea) → north boundary */}
            {renderGHBand(GH_BANDS[3])}

            {/* Hydrangea Drive */}
            <div className="bg-amber-300 border-y-2 border-amber-500 py-1.5 px-3 my-1 text-center">
              <span className="text-sm font-bold text-amber-900">Hydrangea 12&prime; Drive</span>
            </div>

            {/* Band 3 (Heather to Hydrangea) */}
            {renderGHBand(GH_BANDS[2])}

            {/* Heather Drive */}
            <div className="bg-amber-300 border-y-2 border-amber-500 py-1.5 px-3 my-1 text-center">
              <span className="text-sm font-bold text-amber-900">Heather 12&prime; Drive</span>
            </div>

            {/* Band 2 (Gardenia to Heather) */}
            {renderGHBand(GH_BANDS[1])}

            {/* Gardenia Drive */}
            <div className="bg-amber-300 border-y-2 border-amber-500 py-1.5 px-3 my-1 text-center">
              <span className="text-sm font-bold text-amber-900">Gardenia 12&prime; Drive</span>
            </div>

            {/* Bottom band (below Gardenia) */}
            {renderGHBand(GH_BANDS[0])}

            <div className="text-center py-1 mt-1">
              <span className="inline-block bg-gray-700 text-white px-3 py-0.5 rounded-full text-[10px] font-medium">
                ↓ South (Sweet Bay)
              </span>
            </div>
          </div>

          {/* Property border on right */}
          <div className="w-8 flex-shrink-0 bg-gray-800 rounded flex items-center justify-center">
            <span className="transform rotate-90 whitespace-nowrap text-[9px] font-bold text-white">
              PROPERTY BORDER
            </span>
          </div>
        </div>
      </div>
    );
  };

  /* ================================================================ */
  /* MAIN RENDER                                                       */
  /* ================================================================ */

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
        <div className="px-2 py-1.5">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-2">
            <div>
              <h1 className="text-xl font-bold text-gray-800">Northwood Cemetery Map</h1>
              <p className="text-gray-500 text-xs">
                {activeView === 'af'
                  ? (isMobile ? 'Swipe left/right to navigate sections' : 'Scroll horizontally to view all sections')
                  : 'Sections G & H - Scroll to view all bands'
                }
              </p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search..."
                className="px-3 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-48"
              />
              <button type="submit" className="px-4 py-1.5 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all font-medium">
                Search
              </button>
            </form>
          </div>

          {/* View Toggle + Section Navigation */}
          <div className="flex gap-1.5 mt-1.5 justify-center flex-wrap">
            {/* A-F section buttons */}
            {SECTIONS_AF.map((section, index) => (
              <button
                key={section.id}
                onClick={() => {
                  setActiveView('af');
                  setTimeout(() => scrollToSection(index), 100);
                }}
                className={`px-2.5 py-1 rounded-lg text-xs font-bold transition-all ${
                  activeView === 'af' && currentSection === index
                    ? `bg-gradient-to-r ${section.color} text-white shadow-lg scale-110`
                    : activeView === 'af'
                    ? 'bg-gray-200 text-gray-600 hover:bg-gray-300'
                    : 'bg-gray-100 text-gray-400 hover:bg-gray-200'
                }`}
              >
                {section.id}
              </button>
            ))}

            {/* Divider */}
            <span className="text-gray-300 flex items-center">|</span>

            {/* G-H button */}
            <button
              onClick={() => setActiveView('gh')}
              className={`px-3 py-1 rounded-lg text-xs font-bold transition-all ${
                activeView === 'gh'
                  ? 'bg-gradient-to-r from-violet-500 to-purple-700 text-white shadow-lg scale-110'
                  : 'bg-gray-200 text-gray-600 hover:bg-gray-300'
              }`}
            >
              G &amp; H
            </button>
          </div>
        </div>
      </div>

      {/* Search Results */}
      {showSearch && searchResults.length > 0 && (
        <div className="bg-white border-b border-gray-200 p-3 max-h-48 overflow-y-auto">
          <div className="flex items-center justify-between mb-2">
            <h3 className="text-sm font-bold text-gray-800">
              Found {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
            </h3>
            <button onClick={() => { setShowSearch(false); setSearchResults([]); }} className="text-xs text-gray-500 hover:text-gray-700">
              Clear
            </button>
          </div>
          <div className="grid gap-1.5">
            {searchResults.map((plot) => (
              <Link
                key={plot.id}
                href={`/cemetery-map?highlight=${plot.plot_number}`}
                className="flex items-center justify-between p-2 bg-gray-50 rounded hover:bg-emerald-50 transition-all text-sm"
              >
                <div>
                  <span className="font-semibold text-gray-800">{plot.plot_number}</span>
                  {getDeceasedName(plot) && (
                    <span className="ml-2 text-gray-600 text-xs">{getDeceasedName(plot)}</span>
                  )}
                </div>
                <span className={`w-3 h-3 rounded-full ${
                  plot.status === 'occupied' ? 'bg-rose-500' :
                  plot.status === 'reserved' ? 'bg-amber-400' : 'bg-emerald-400'
                }`}></span>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* Legend */}
      <div className="bg-white border-b border-gray-200 px-2 py-1">
        <div className="flex flex-wrap items-center justify-center gap-4 text-xs">
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-emerald-400 border border-emerald-500"></div>
            <span className="text-gray-600">Empty</span>
          </div>
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-rose-500 border border-rose-600"></div>
            <span className="text-gray-600">Occupied</span>
          </div>
          <div className="flex items-center gap-1.5">
            <div className="w-4 h-4 rounded bg-amber-400 border border-amber-500"></div>
            <span className="text-gray-600">Reserved</span>
          </div>
          <span className="text-gray-500 text-[10px]">
            {activeView === 'af' ? 'West (Left) ↑ • East (Right) ↓' : 'G (Left/West) • H (Right/East)'}
          </span>
        </div>
      </div>

      {/* A-F: North Indicator */}
      {activeView === 'af' && (
        <div className="text-center py-1 bg-gray-100">
          <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-xs font-medium">
            ↑ FODALE AVE (North)
          </span>
        </div>
      )}

      {/* Main Map Container */}
      <div className="flex-1 relative overflow-hidden">
        {activeView === 'af' ? (
          <>
            {/* A-F Navigation Arrows - Mobile Only */}
            {isMobile && currentSection > 0 && (
              <button
                onClick={handlePrevSection}
                className="absolute left-2 top-1/2 -translate-y-1/2 z-10 bg-white/90 hover:bg-white shadow-lg rounded-full p-3 transition-all"
              >
                <svg className="w-6 h-6 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M15 19l-7-7 7-7" />
                </svg>
              </button>
            )}
            {isMobile && currentSection < SECTIONS_AF.length - 1 && (
              <button
                onClick={handleNextSection}
                className="absolute right-2 top-1/2 -translate-y-1/2 z-10 bg-white/90 hover:bg-white shadow-lg rounded-full p-3 transition-all"
              >
                <svg className="w-6 h-6 text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M9 5l7 7-7 7" />
                </svg>
              </button>
            )}

            {/* A-F Scrollable Sections */}
            <div
              ref={scrollContainerRef}
              className={`flex h-full overflow-x-auto ${
                isMobile ? 'snap-x snap-mandatory' : ''
              } scroll-smooth ${isDragging ? 'cursor-grabbing' : 'cursor-grab'}`}
              style={{ scrollbarWidth: 'thin' }}
              onMouseDown={handleMouseDown}
              onMouseMove={handleMouseMove}
              onMouseUp={handleMouseUp}
              onMouseLeave={handleMouseLeave}
            >
              {SECTIONS_AF.map((section, index) => (
                <React.Fragment key={section.id}>
                  {renderSectionAF(section, index)}
                </React.Fragment>
              ))}
            </div>
          </>
        ) : (
          /* G-H View */
          renderGHView()
        )}
      </div>

      {/* A-F: South Indicator */}
      {activeView === 'af' && (
        <div className="text-center py-1 bg-gray-100">
          <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-xs font-medium">
            ↓ SWEET BAY (South)
          </span>
        </div>
      )}
    </div>
  );
}
