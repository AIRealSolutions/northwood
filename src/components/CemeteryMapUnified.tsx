
import React, { useState, useEffect, useRef } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapUnifiedProps {
  highlightPlot?: string;
}

/* ================================================================== */
/* ALL SECTIONS as parallel vertical strips                            */
/* Roads (all parallel N-S):                                           */
/* Azalea|A|Beech|B|Chinquapin|C|Dogwood|D|Elm|E|Fig|F|Gardenia|G1|  */
/* Gladiola|G2|Heather|H1|Hydrangea|H2|Border                        */
/* ================================================================== */

interface SectionDef {
  id: string;
  displayName: string;
  dbSection: string;       // 'A','B',...'G','H'
  westRoad: string;
  eastRoad: string;
  color: string;
  bgColor: string;
  borderColor: string;
  maxRow: number;
  splitRow: number;
  positionsPerRow: number; // 8 for A-F, variable (1-4) for G/H
  rowStart: number;        // first row in DB for this sub-section
  rowEnd: number;          // last row in DB for this sub-section
  plotWidth: string;       // display label
}

const ALL_SECTIONS: SectionDef[] = [
  { id: 'A',  displayName: 'Section A',  dbSection: 'A', westRoad: 'Azalea',     eastRoad: 'Beech',      color: 'from-emerald-500 to-emerald-700', bgColor: 'bg-emerald-50', borderColor: 'border-emerald-200', maxRow: 74,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 74,  plotWidth: "4′" },
  { id: 'B',  displayName: 'Section B',  dbSection: 'B', westRoad: 'Beech',      eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700',    bgColor: 'bg-teal-50',    borderColor: 'border-teal-200',    maxRow: 74,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 74,  plotWidth: "4′" },
  { id: 'C',  displayName: 'Section C',  dbSection: 'C', westRoad: 'Chinquapin', eastRoad: 'Dogwood',    color: 'from-cyan-500 to-cyan-700',    bgColor: 'bg-cyan-50',    borderColor: 'border-cyan-200',    maxRow: 74,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 74,  plotWidth: "4′" },
  { id: 'D',  displayName: 'Section D',  dbSection: 'D', westRoad: 'Dogwood',    eastRoad: 'Elm',        color: 'from-sky-500 to-sky-700',      bgColor: 'bg-sky-50',     borderColor: 'border-sky-200',     maxRow: 74,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 74,  plotWidth: "4′" },
  { id: 'E',  displayName: 'Section E',  dbSection: 'E', westRoad: 'Elm',        eastRoad: 'Fig',        color: 'from-blue-500 to-blue-700',    bgColor: 'bg-blue-50',    borderColor: 'border-blue-200',    maxRow: 74,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 74,  plotWidth: "4′" },
  { id: 'F',  displayName: 'Section F',  dbSection: 'F', westRoad: 'Fig',        eastRoad: 'Gardenia',   color: 'from-indigo-500 to-indigo-700', bgColor: 'bg-indigo-50', borderColor: 'border-indigo-200', maxRow: 37,  splitRow: 37,  positionsPerRow: 8, rowStart: 1, rowEnd: 37,  plotWidth: "4′" },
  { id: 'G1', displayName: 'Section G1', dbSection: 'G', westRoad: 'Gardenia',   eastRoad: 'Gladiola',   color: 'from-violet-500 to-violet-700', bgColor: 'bg-violet-50', borderColor: 'border-violet-200', maxRow: 182, splitRow: 91,  positionsPerRow: 4, rowStart: 1,   rowEnd: 182, plotWidth: "5′" },
  { id: 'G2', displayName: 'Section G2', dbSection: 'G', westRoad: 'Gladiola',   eastRoad: 'Heather',    color: 'from-fuchsia-500 to-fuchsia-700', bgColor: 'bg-fuchsia-50', borderColor: 'border-fuchsia-200', maxRow: 386, splitRow: 284, positionsPerRow: 4, rowStart: 183, rowEnd: 386, plotWidth: "5′" },
  { id: 'H1', displayName: 'Section H1', dbSection: 'H', westRoad: 'Heather',    eastRoad: 'Hydrangea',  color: 'from-purple-500 to-purple-700', bgColor: 'bg-purple-50', borderColor: 'border-purple-200', maxRow: 517, splitRow: 259, positionsPerRow: 4, rowStart: 1,   rowEnd: 517, plotWidth: "9′" },
  { id: 'H2', displayName: 'Section H2', dbSection: 'H', westRoad: 'Hydrangea',  eastRoad: 'Border',     color: 'from-rose-500 to-rose-700',    bgColor: 'bg-rose-50',    borderColor: 'border-rose-200',    maxRow: 582, splitRow: 550, positionsPerRow: 4, rowStart: 518, rowEnd: 582, plotWidth: "9′" },
];

export default function CemeteryMapUnified({ highlightPlot }: CemeteryMapUnifiedProps) {
  const [allPlots, setAllPlots] = useState<Record<string, PlotWithDetails[]>>({});
  const [loading, setLoading] = useState(true);
  const [currentSection, setCurrentSection] = useState(0);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const scrollContainerRef = useRef<HTMLDivElement>(null);
  const sectionRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const plotRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const [isDragging, setIsDragging] = useState(false);
  const [startX, setStartX] = useState(0);
  const [startY, setStartY] = useState(0);
  const [scrollLeft, setScrollLeft] = useState(0);
  const [scrollTop, setScrollTop] = useState(0);
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

  const getDeceasedName = (plot: PlotWithDetails): string => {
    if (plot.deceased_records && plot.deceased_records.length > 0) {
      const deceased = plot.deceased_records[0];
      return `${deceased.first_name || ''} ${deceased.last_name || ''}`.trim();
    }
    return plot.owner_name || '';
  };

  const getStatusColor = (status: string): string => {
    switch (status) {
      case 'occupied': return 'bg-rose-500 border-rose-600';
      case 'reserved': return 'bg-amber-400 border-amber-500';
      default: return 'bg-emerald-400 border-emerald-500';
    }
  };

  const handleMouseDown = (e: React.MouseEvent<HTMLDivElement>) => {
    if (!scrollContainerRef.current) return;
    setIsDragging(true);
    setStartX(e.pageX - scrollContainerRef.current.offsetLeft);
    setStartY(e.pageY - scrollContainerRef.current.offsetTop);
    setScrollLeft(scrollContainerRef.current.scrollLeft);
    setScrollTop(scrollContainerRef.current.scrollTop);
  };

  const handleMouseMove = (e: React.MouseEvent<HTMLDivElement>) => {
    if (!isDragging || !scrollContainerRef.current) return;
    e.preventDefault();
    const x = e.pageX - scrollContainerRef.current.offsetLeft;
    const y = e.pageY - scrollContainerRef.current.offsetTop;
    const walkX = (x - startX) * 1.5;
    const walkY = (y - startY) * 1.5;
    scrollContainerRef.current.scrollLeft = scrollLeft - walkX;
    scrollContainerRef.current.scrollTop = scrollTop - walkY;
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  const handleMouseLeave = () => {
    setIsDragging(false);
  };

  const scrollToSection = (index: number) => {
    setCurrentSection(index);
    const section = sectionRefs.current[ALL_SECTIONS[index].id];
    if (section && scrollContainerRef.current) {
      const sectionLeft = section.offsetLeft - scrollContainerRef.current.offsetLeft;
      scrollContainerRef.current.scrollLeft = sectionLeft;
    }
  };

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    if (!searchQuery.trim()) {
      setShowSearch(false);
      setSearchResults([]);
      return;
    }
    const query = searchQuery.toLowerCase();
    const results = Object.values(allPlots)
      .flat()
      .filter(plot =>
        plot.plot_number.toLowerCase().includes(query) ||
        getDeceasedName(plot).toLowerCase().includes(query)
      )
      .slice(0, 20);
    setSearchResults(results);
    setShowSearch(true);
  };

  /* ================================================================ */
  /* A-F ROW RENDERING (8 positions, 4 pairs)                         */
  /* ================================================================ */

  const renderRowMatrixAF = (
    row: number,
    facingDirection: 'west' | 'east',
    rowPlots: PlotWithDetails[],
    sectionColor: string
  ) => {
    // Ascending (rows 1-37, facing west road): 4&8 at north, 1&5 at south
    // Descending (rows 38+, facing east road): 8&4 at north, 5&1 at south
    const ascPairs = [[4, 8], [3, 7], [2, 6], [1, 5]];
    const descPairs = [[8, 4], [7, 3], [6, 2], [5, 1]];
    const orderedPairs = facingDirection === 'west' ? ascPairs : descPairs;

    return (
      <div className="mb-1" key={row}>
        <div className="text-[7px] text-gray-500 mb-0.5">R{row}</div>
        <div className={`bg-white rounded border ${sectionColor} p-0.5`}>
          {orderedPairs.map((pairPositions, pairIdx) => (
            <div key={pairIdx} className="flex gap-0.5 mb-0.5 last:mb-0">
              {pairPositions.map((pos) => {
                const plot = rowPlots.find(p => p.plot_position === pos);
                if (!plot) {
                  return (
                    <div key={pos} className="w-4 h-4 rounded-sm bg-gray-200 flex items-center justify-center">
                      <span className="text-[5px] text-gray-400">{pos}</span>
                    </div>
                  );
                }
                const deceasedName = getDeceasedName(plot);
                return (
                  <div key={pos} ref={(el) => { plotRefs.current[plot.plot_number] = el; }}>
                    <Link
                      href={`/plot/${plot.id}`}
                      className={`w-4 h-4 rounded-sm flex items-center justify-center text-white shadow-sm border transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10 ${getStatusColor(plot.status)}`}
                      title={`${plot.plot_number}${deceasedName ? '\n' + deceasedName : ''}\nRow ${row}, Pos ${pos}`}
                    >
                      <span className="text-[5px] font-bold">{pos}</span>
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

  /* ================================================================ */
  /* UNIFIED SECTION RENDERING                                         */
  /* ================================================================ */

  const renderSection = (section: SectionDef, index: number) => {
    const allSectionPlots = allPlots[section.dbSection] || [];
    // Filter to only plots in this sub-section's row range
    const plots = allSectionPlots.filter(
      p => (p.row_number || 0) >= section.rowStart && (p.row_number || 0) <= section.rowEnd
    );

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

    const isGH = section.positionsPerRow <= 4;
    const isLastSection = section.eastRoad === 'Border';

    // Heatmap bounding box for Perpetual Care sections (G/H)
    if (isGH) {
      const occupied = plots.filter(p => p.status === 'occupied').length;
      const available = plots.filter(p => p.status === 'available').length;
      const reserved = plots.filter(p => p.status === 'reserved').length;

      // Render rows as heatmap bars with 5' path separators every 6 rows
      const renderStripBars = (rows: number[]) =>
        rows.map((row, idx) => {
          const rp = plotsByRow[row] || [];
          const maxPos = Math.max(...rp.map(p => p.plot_position || 1), 1);
          const occ = rp.filter(p => p.status === 'occupied').length;
          const tot = rp.length;
          const ratio = tot > 0 ? occ / tot : 0;
          const color =
            ratio >= 0.8 ? 'bg-rose-600' :
            ratio >= 0.5 ? 'bg-rose-400' :
            ratio >= 0.2 ? 'bg-amber-400' :
            'bg-emerald-400';
          const widthPct = Math.round((maxPos / 4) * 100);
          // Insert a path separator line after every 6th row (walkway between segments)
          const needsSeparator = idx > 0 && idx % 6 === 0;
          return (
            <React.Fragment key={row}>
              {needsSeparator && (
                <div className="border-t border-dashed border-gray-400 my-0.5 opacity-60" title="5′ walkway" />
              )}
              <div
                className={`${color} rounded-sm mb-px opacity-90`}
                style={{ height: '2px', width: `${widthPct}%` }}
                title={`Row ${row}: ${tot} plots (${occ} occupied)`}
              />
            </React.Fragment>
          );
        });

      return (
        <div
          key={section.id}
          ref={(el) => { sectionRefs.current[section.id] = el; }}
          className={`flex-shrink-0 min-h-full flex flex-col w-36 ${isMobile ? 'w-full' : ''} px-1`}
        >
          {/* Header */}
          <div className={`bg-gradient-to-r ${section.color} rounded-lg shadow-md p-2 mb-1`}>
            <h3 className="text-sm font-black text-white leading-tight">{section.displayName}</h3>
            <p className="text-white/70 text-[8px]">Perpetual Care</p>
            <p className="text-white/60 text-[8px]">
              {section.westRoad} {isLastSection ? '→ Border' : `↔ ${section.eastRoad}`}
            </p>
            <div className="mt-1 grid grid-cols-3 gap-0.5 text-center text-[7px]">
              <div className="bg-white/20 rounded px-0.5 py-0.5">
                <div className="font-bold text-white text-[9px]">{plots.length}</div>
                <div className="text-white/70">Total</div>
              </div>
              <div className="bg-white/20 rounded px-0.5 py-0.5">
                <div className="font-bold text-emerald-200 text-[9px]">{available}</div>
                <div className="text-white/70">Open</div>
              </div>
              <div className="bg-white/20 rounded px-0.5 py-0.5">
                <div className="font-bold text-rose-200 text-[9px]">{occupied}</div>
                <div className="text-white/70">Used</div>
              </div>
            </div>
          </div>

          {/* Bounding Box Body */}
          <div className="flex-1 bg-white rounded-lg shadow-md p-1 border border-gray-200">
            <div className="text-[7px] text-gray-400 text-center mb-1 italic leading-tight">
              6 plots/row • paths every 6 rows<br />Detailed layout pending
            </div>
            <div className="flex gap-0.5 h-full">
              {/* West road */}
              <div className="w-4 flex-shrink-0 bg-amber-50 rounded flex items-center justify-center border border-amber-200">
                <span className="transform -rotate-90 whitespace-nowrap text-[6px] font-bold text-amber-700">
                  {section.westRoad}
                </span>
              </div>

              {/* West strip heatmap (rows reversed: north at top) */}
              <div className={`flex-1 ${section.bgColor} rounded p-0.5 border ${section.borderColor} overflow-hidden`}>
                <div className="text-[6px] text-center text-gray-500 mb-0.5">
                  R{section.rowStart}–{section.splitRow} ↑
                </div>
                <div className="flex flex-col">
                  {renderStripBars([...westStripRows].reverse())}
                </div>
              </div>

              {/* East strip heatmap */}
              <div className={`flex-1 ${section.bgColor} rounded p-0.5 border ${section.borderColor} overflow-hidden`}>
                <div className="text-[6px] text-center text-gray-500 mb-0.5">
                  R{section.splitRow + 1}–{section.rowEnd} ↓
                </div>
                <div className="flex flex-col">
                  {renderStripBars(eastStripRows)}
                </div>
              </div>

              {/* East road */}
              <div className="w-4 flex-shrink-0 bg-amber-50 rounded flex items-center justify-center border border-amber-200">
                <span className="transform -rotate-90 whitespace-nowrap text-[6px] font-bold text-amber-700">
                  {isLastSection ? 'Border' : section.eastRoad}
                </span>
              </div>
            </div>

            {/* Color key */}
            <div className="mt-1 flex gap-1.5 justify-center text-[6px] text-gray-500 flex-wrap">
              <span className="flex items-center gap-0.5">
                <span className="w-2 h-1.5 bg-emerald-400 rounded-sm inline-block"></span>Open
              </span>
              <span className="flex items-center gap-0.5">
                <span className="w-2 h-1.5 bg-amber-400 rounded-sm inline-block"></span>Mixed
              </span>
              <span className="flex items-center gap-0.5">
                <span className="w-2 h-1.5 bg-rose-500 rounded-sm inline-block"></span>Occupied
              </span>
            </div>
            <div className="mt-0.5 text-center text-[6px] text-gray-400">
              Bar width = 1–4 plots/row
            </div>
          </div>
        </div>
      );
    }

    return (
      <div
        key={section.id}
        ref={(el) => { sectionRefs.current[section.id] = el; }}
        className={`flex-shrink-0 min-h-full flex flex-col ${isMobile ? 'w-full px-1' : 'px-1'}`}
      >
        {/* Section Header */}
        <div className={`bg-gradient-to-r ${section.color} rounded-lg shadow-md p-2 mb-1`}>
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-lg font-black text-white">{section.displayName}</h3>
              <p className="text-white/80 text-xs">
                {section.westRoad} {isLastSection ? '→ Border' : `↔ ${section.eastRoad}`}
              </p>
              <p className="text-white/60 text-[9px]">{section.plotWidth} plots</p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        {/* Section Body - NO internal scrolling */}
        <div className="flex-1 bg-white rounded-lg shadow-md p-1">
          <div className="flex gap-1 h-full">
            {/* West Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
                {section.westRoad}
              </span>
            </div>

            {/* West Strip */}
            <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
              <div className="text-center mb-1">
                <span className="text-[9px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                  Rows {section.rowStart}-{section.splitRow} ↑
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

            {/* East Strip - only shown when rows exist past the split */}
            {eastStripRows.length > 0 && (
              <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
                <div className="text-center mb-1">
                  <span className="text-[9px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">
                    Rows {section.splitRow + 1}-{section.rowEnd} ↓
                  </span>
                </div>
                <div className="flex justify-start">
                  <div className="inline-block">
                    {eastStripRows.map((row) =>
                      renderRowMatrixAF(row, 'east', plotsByRow[row] || [], section.borderColor)
                    )}
                  </div>
                </div>
              </div>
            )}

            {/* East Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">
                {isLastSection ? 'Border' : section.eastRoad}
              </span>
            </div>
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
                {isMobile ? 'Drag to move the map' : 'Drag to move the entire map, or use navigation buttons'}
              </p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search name or plot..."
                className="px-3 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-48"
              />
              <button type="submit" className="px-4 py-1.5 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all font-medium">
                Search
              </button>
            </form>
          </div>

          {/* Section Navigation - A B C D E F | G1 G2 H1 H2 */}
          <div className="flex gap-1 mt-1.5 justify-center flex-wrap">
            {ALL_SECTIONS.map((section, index) => (
              <React.Fragment key={section.id}>
                {section.id === 'G1' && (
                  <span className="text-gray-300 flex items-center px-0.5">|</span>
                )}
                <button
                  onClick={() => scrollToSection(index)}
                  className={`px-2.5 py-1 rounded-lg text-xs font-bold transition-all ${
                    currentSection === index
                      ? `bg-gradient-to-r ${section.color} text-white shadow-lg scale-110`
                      : 'bg-gray-200 text-gray-600 hover:bg-gray-300'
                  }`}
                >
                  {section.id}
                </button>
              </React.Fragment>
            ))}
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

      {/* Legend + Road Sequence */}
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
        </div>
        {/* Road sequence indicator */}
        <div className="flex items-center justify-center gap-0.5 mt-1 overflow-x-auto" style={{ scrollbarWidth: 'thin' }}>
          <span className="text-[8px] text-gray-400 flex-shrink-0">Fodale Ave →</span>
          {['Azalea','A','Beech','B','Chinquapin','C','Dogwood','D','Elm','E','Fig','F','Gardenia','G1','Gladiola','G2','Heather','H1','Hydrangea','H2','Border'].map((item, i) => {
            const isRoad = !['A','B','C','D','E','F','G1','G2','H1','H2'].includes(item);
            return (
              <React.Fragment key={i}>
                {i > 0 && <span className="text-[7px] text-gray-300 flex-shrink-0">→</span>}
                <span className={`text-[8px] flex-shrink-0 px-0.5 rounded ${
                  isRoad ? 'text-amber-700 bg-amber-50 font-medium' : 'text-gray-600 bg-gray-100 font-bold'
                }`}>
                  {item}
                </span>
              </React.Fragment>
            );
          })}
        </div>
      </div>

      {/* North Indicator */}
      <div className="text-center py-0.5 bg-gray-100">
        <span className="inline-block bg-gray-700 text-white px-4 py-0.5 rounded-full text-[10px] font-medium">
          ↑ FODALE AVE (North)
        </span>
      </div>

      {/* Main Map Container - ENTIRE MAP MOVES AS ONE UNIT */}
      <div className="flex-1 relative overflow-hidden">
        <div
          ref={scrollContainerRef}
          className={`flex h-full overflow-x-auto overflow-y-auto ${
            isMobile ? 'snap-x snap-mandatory' : ''
          } scroll-smooth ${isDragging ? 'cursor-grabbing' : 'cursor-grab'}`}
          style={{ scrollbarWidth: 'thin' }}
          onMouseDown={handleMouseDown}
          onMouseMove={handleMouseMove}
          onMouseUp={handleMouseUp}
          onMouseLeave={handleMouseLeave}
        >
          {ALL_SECTIONS.map((section, index) => (
            <React.Fragment key={section.id}>
              {renderSection(section, index)}
            </React.Fragment>
          ))}
        </div>
      </div>

      {/* South Indicator */}
      <div className="text-center py-0.5 bg-gray-100">
        <span className="inline-block bg-gray-700 text-white px-4 py-0.5 rounded-full text-[10px] font-medium">
          ↓ SWEET BAY (South)
        </span>
      </div>
    </div>
  );
}
// Re-triggering deployment for A-F restoration
