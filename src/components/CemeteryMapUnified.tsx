'use client';

import React, { useState, useEffect, useRef } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapUnifiedProps {
  highlightPlot?: string;
}

/* ------------------------------------------------------------------ */
/* SECTION DEFINITIONS                                                 */
/* ------------------------------------------------------------------ */

// Sections A-F: standard vertical strips between N-S roads
const SECTIONS_AF = [
  { id: 'A', name: 'Section A', westRoad: 'Azalea', eastRoad: 'Beech', color: 'from-emerald-500 to-emerald-700', bgColor: 'bg-emerald-50', borderColor: 'border-emerald-200', maxRow: 74, splitRow: 37 },
  { id: 'B', name: 'Section B', westRoad: 'Beech', eastRoad: 'Chinquapin', color: 'from-teal-500 to-teal-700', bgColor: 'bg-teal-50', borderColor: 'border-teal-200', maxRow: 74, splitRow: 37 },
  { id: 'C', name: 'Section C', westRoad: 'Chinquapin', eastRoad: 'Dogwood', color: 'from-cyan-500 to-cyan-700', bgColor: 'bg-cyan-50', borderColor: 'border-cyan-200', maxRow: 74, splitRow: 37 },
  { id: 'D', name: 'Section D', westRoad: 'Dogwood', eastRoad: 'Elm', color: 'from-sky-500 to-sky-700', bgColor: 'bg-sky-50', borderColor: 'border-sky-200', maxRow: 74, splitRow: 37 },
  { id: 'E', name: 'Section E', westRoad: 'Elm', eastRoad: 'Fig', color: 'from-blue-500 to-blue-700', bgColor: 'bg-blue-50', borderColor: 'border-blue-200', maxRow: 74, splitRow: 37 },
  { id: 'F', name: 'Section F', westRoad: 'Fig', eastRoad: 'Gardenia', color: 'from-indigo-500 to-indigo-700', bgColor: 'bg-indigo-50', borderColor: 'border-indigo-200', maxRow: 74, splitRow: 37 },
];

// G & H band definitions
// The E-W drives are: Gardenia, Gladiola, Heather, Hydrangea
// Between each pair of drives is a band. G has 2 bands + border plots, H has 2 bands + border plots.
// The row ranges below are based on the plat map and seed data analysis.

interface GHBand {
  id: string;
  section: 'G' | 'H';
  label: string;
  topDrive: string;
  bottomDrive: string;
  minRow: number;
  maxRow: number;
  color: string;
  bgColor: string;
  borderColor: string;
}

// Section G bands (rows 1-386):
// Band G1: rows 1-136 (between Gardenia and Gladiola) 
// Band G2: rows 137-281 (between Gladiola and Heather)
// Band G3 (border): rows 282-386 (between Heather and beyond)
// But from the plat, the structure from bottom to top is:
// Bottom: small plots (rows 1-24) below Gardenia
// Gardenia Drive
// Band: rows 25-136 between Gardenia and Gladiola
// Gladiola Drive
// Band: rows 137-281 between Gladiola and Heather
// Heather Drive  
// Band: rows 282-386 above Heather

// Section H bands (rows 1-582):
// Following similar pattern with Heather and Hydrangea drives

const GH_BANDS: GHBand[] = [
  // Section G bands
  { id: 'G1', section: 'G', label: 'Section G (Lower)', topDrive: 'Gardenia', bottomDrive: 'Fodale Ave', minRow: 1, maxRow: 24, color: 'from-violet-500 to-violet-700', bgColor: 'bg-violet-50', borderColor: 'border-violet-200' },
  { id: 'G2', section: 'G', label: 'Section G', topDrive: 'Gladiola', bottomDrive: 'Gardenia', minRow: 25, maxRow: 136, color: 'from-violet-500 to-violet-700', bgColor: 'bg-violet-50', borderColor: 'border-violet-200' },
  { id: 'G3', section: 'G', label: 'Section G', topDrive: 'Heather', bottomDrive: 'Gladiola', minRow: 137, maxRow: 281, color: 'from-violet-600 to-violet-800', bgColor: 'bg-violet-50', borderColor: 'border-violet-300' },
  { id: 'G4', section: 'G', label: 'Section G (Upper)', topDrive: 'Property Border', bottomDrive: 'Heather', minRow: 282, maxRow: 386, color: 'from-violet-600 to-violet-800', bgColor: 'bg-violet-50', borderColor: 'border-violet-300' },
  // Section H bands
  { id: 'H1', section: 'H', label: 'Section H (Lower)', topDrive: 'Heather', bottomDrive: 'Fodale Ave', minRow: 1, maxRow: 131, color: 'from-purple-500 to-purple-700', bgColor: 'bg-purple-50', borderColor: 'border-purple-200' },
  { id: 'H2', section: 'H', label: 'Section H', topDrive: 'Hydrangea', bottomDrive: 'Heather', minRow: 132, maxRow: 343, color: 'from-purple-500 to-purple-700', bgColor: 'bg-purple-50', borderColor: 'border-purple-200' },
  { id: 'H3', section: 'H', label: 'Section H', topDrive: 'Property Border', bottomDrive: 'Hydrangea', minRow: 344, maxRow: 466, color: 'from-purple-600 to-purple-800', bgColor: 'bg-purple-50', borderColor: 'border-purple-300' },
  { id: 'H4', section: 'H', label: 'Section H (Border)', topDrive: 'Border', bottomDrive: 'Hydrangea', minRow: 467, maxRow: 582, color: 'from-purple-600 to-purple-800', bgColor: 'bg-purple-50', borderColor: 'border-purple-300' },
];

// All section IDs for navigation
const ALL_NAV_ITEMS = [
  { id: 'A', label: 'A', color: 'from-emerald-500 to-emerald-700' },
  { id: 'B', label: 'B', color: 'from-teal-500 to-teal-700' },
  { id: 'C', label: 'C', color: 'from-cyan-500 to-cyan-700' },
  { id: 'D', label: 'D', color: 'from-sky-500 to-sky-700' },
  { id: 'E', label: 'E', color: 'from-blue-500 to-blue-700' },
  { id: 'F', label: 'F', color: 'from-indigo-500 to-indigo-700' },
  { id: 'G', label: 'G', color: 'from-violet-500 to-violet-700' },
  { id: 'H', label: 'H', color: 'from-purple-500 to-purple-700' },
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
      // Load A-F
      for (const section of SECTIONS_AF) {
        plotsData[section.id] = await plotsAPI.getPlotsBySection(section.id);
      }
      // Load G and H
      plotsData['G'] = await plotsAPI.getPlotsBySection('G');
      plotsData['H'] = await plotsAPI.getPlotsBySection('H');
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
    // Find the element with the matching data-nav-id
    const navId = ALL_NAV_ITEMS[index]?.id;
    if (navId && scrollContainerRef.current) {
      const el = scrollContainerRef.current.querySelector(`[data-nav-id="${navId}"]`);
      if (el) {
        el.scrollIntoView({ behavior: 'smooth', inline: 'start' });
      }
    }
  };

  const handlePrevSection = () => {
    if (currentSection > 0) scrollToSection(currentSection - 1);
  };

  const handleNextSection = () => {
    if (currentSection < ALL_NAV_ITEMS.length - 1) scrollToSection(currentSection + 1);
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
    if (deceased) return `${deceased.first_name} ${deceased.last_name}`;
    return null;
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'occupied': return 'bg-rose-500 hover:bg-rose-600 border-rose-600';
      case 'reserved': return 'bg-amber-400 hover:bg-amber-500 border-amber-500';
      default: return 'bg-emerald-400 hover:bg-emerald-500 border-emerald-500';
    }
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: A-F row matrix (8 positions per row, 2x4 grid)           */
  /* ---------------------------------------------------------------- */
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

  /* ---------------------------------------------------------------- */
  /* RENDER: G/H row (variable positions per row, 1-4 positions)      */
  /* ---------------------------------------------------------------- */
  const renderGHRow = (
    row: number,
    rowPlots: PlotWithDetails[],
    borderColor: string
  ) => {
    const maxPos = Math.max(...rowPlots.map(p => p.plot_position || 1), 1);
    return (
      <div className="mb-1" key={row}>
        <div className="flex items-center gap-1">
          <div className="text-[7px] text-gray-400 w-8 text-right flex-shrink-0">{row}</div>
          <div className={`bg-white rounded border ${borderColor} p-0.5 flex gap-0.5`}>
            {Array.from({ length: maxPos }, (_, i) => i + 1).map((pos) => {
              const plot = rowPlots.find(p => p.plot_position === pos);
              if (!plot) {
                return (
                  <div key={pos} className="w-6 h-5 rounded-sm bg-gray-200 flex items-center justify-center">
                    <span className="text-[6px] text-gray-400">{pos}</span>
                  </div>
                );
              }
              const deceasedName = getDeceasedName(plot);
              const ownerName = plot.owner_name || '';
              const displayName = deceasedName || (ownerName.length > 8 ? ownerName.substring(0, 8) : ownerName);
              return (
                <div key={pos} ref={(el) => { plotRefs.current[plot.plot_number] = el; }}>
                  <Link
                    href={`/plot/${plot.id}`}
                    className={`w-6 h-5 rounded-sm flex items-center justify-center text-white shadow-sm border transition-all duration-150 hover:scale-110 hover:shadow-lg hover:z-10 ${getStatusColor(plot.status)}`}
                    title={`${plot.plot_number}${deceasedName ? '\n' + deceasedName : ''}${ownerName ? '\nOwner: ' + ownerName : ''}`}
                  >
                    <span className="text-[6px] font-bold">{pos}</span>
                  </Link>
                </div>
              );
            })}
          </div>
        </div>
      </div>
    );
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: Section A-F (standard vertical strip)                    */
  /* ---------------------------------------------------------------- */
  const renderSectionAF = (section: typeof SECTIONS_AF[0]) => {
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

    const splitRow = section.splitRow;
    const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b).filter(r => r <= section.maxRow);
    const westStripRows = allRows.filter(r => r <= splitRow);
    const eastStripRows = allRows.filter(r => r > splitRow);

    return (
      <div key={section.id} data-nav-id={section.id} className={`flex-shrink-0 min-h-full flex flex-col ${isMobile ? 'w-full px-1 snap-center' : 'px-1'}`}>
        {/* Section Header */}
        <div className={`bg-gradient-to-r ${section.color} rounded-lg shadow-md p-2 mb-1`}>
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-xl font-black text-white">{section.name}</h3>
              <p className="text-white/80 text-xs">{section.westRoad} ↔ {section.eastRoad}</p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        {/* Section Grid */}
        <div className="flex-1 bg-white rounded-lg shadow-md p-1">
          <div className="flex gap-1 h-full">
            {/* West Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform -rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">{section.westRoad}</span>
            </div>

            {/* West Strip */}
            <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">Rows 1-{splitRow} ↑</span>
              </div>
              <div className="flex justify-start">
                <div className="inline-block">
                  {[...westStripRows].reverse().map((row) => renderRowMatrix(row, 'west', plotsByRow[row] || [], section.borderColor))}
                </div>
              </div>
            </div>

            {/* East Strip */}
            <div className={`flex-1 ${section.bgColor} rounded p-1 border ${section.borderColor}`}>
              <div className="text-center mb-2">
                <span className="text-[10px] font-bold text-gray-700 bg-white/50 px-2 py-0.5 rounded-full">Rows {splitRow + 1}+ ↓</span>
              </div>
              <div className="flex justify-end">
                <div className="inline-block">
                  {eastStripRows.map((row) => renderRowMatrix(row, 'east', plotsByRow[row] || [], section.borderColor))}
                </div>
              </div>
            </div>

            {/* East Road Label */}
            <div className="w-8 flex-shrink-0 bg-amber-100 rounded flex items-center justify-center border border-amber-300">
              <span className="transform rotate-90 whitespace-nowrap text-[10px] font-bold text-amber-800">{section.eastRoad}</span>
            </div>
          </div>
        </div>
      </div>
    );
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: Drive separator (E-W road between G/H bands)             */
  /* ---------------------------------------------------------------- */
  const renderDrive = (name: string) => (
    <div className="flex-shrink-0 bg-amber-200 border-y-2 border-amber-400 py-1 px-3 flex items-center justify-center">
      <span className="text-[10px] font-bold text-amber-900 tracking-wider">
        ═══ {name} Drive (12&prime;) ═══
      </span>
    </div>
  );

  /* ---------------------------------------------------------------- */
  /* RENDER: G/H band (horizontal band of plots)                      */
  /* ---------------------------------------------------------------- */
  const renderGHBand = (band: GHBand) => {
    const plots = allPlots[band.section] || [];
    const bandPlots = plots.filter(p => p.row_number >= band.minRow && p.row_number <= band.maxRow);
    const plotsByRow: Record<number, PlotWithDetails[]> = {};
    bandPlots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!plotsByRow[row]) plotsByRow[row] = [];
      plotsByRow[row].push(plot);
    });
    Object.keys(plotsByRow).forEach(row => {
      plotsByRow[parseInt(row)].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0));
    });

    const allRows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);

    return (
      <div key={band.id} className={`${band.bgColor} rounded p-1.5 border ${band.borderColor}`}>
        <div className="flex items-center justify-between mb-1">
          <span className="text-[9px] font-bold text-gray-700 bg-white/60 px-2 py-0.5 rounded-full">
            {band.label} (Rows {band.minRow}-{band.maxRow})
          </span>
          <span className="text-[8px] text-gray-500">{bandPlots.length} plots</span>
        </div>
        <div className="max-h-64 overflow-y-auto" style={{ scrollbarWidth: 'thin' }}>
          {allRows.map((row) => renderGHRow(row, plotsByRow[row] || [], band.borderColor))}
          {allRows.length === 0 && (
            <div className="text-[9px] text-gray-400 text-center py-2">No plots in this band</div>
          )}
        </div>
      </div>
    );
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: Section G (with internal drives)                         */
  /* ---------------------------------------------------------------- */
  const renderSectionG = () => {
    const plots = allPlots['G'] || [];
    const gBands = GH_BANDS.filter(b => b.section === 'G');

    return (
      <div data-nav-id="G" className={`flex-shrink-0 min-h-full flex flex-col ${isMobile ? 'w-full px-1 snap-center' : 'px-1'}`} style={{ minWidth: isMobile ? undefined : '320px' }}>
        {/* Section Header */}
        <div className="bg-gradient-to-r from-violet-500 to-violet-700 rounded-lg shadow-md p-2 mb-1">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-xl font-black text-white">Section G</h3>
              <p className="text-white/80 text-xs">Gardenia ↔ Gladiola (G drives)</p>
              <p className="text-white/60 text-[9px]">4 bands separated by 12&prime; drives</p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        {/* G Bands with drives */}
        <div className="flex-1 bg-white rounded-lg shadow-md p-1 overflow-y-auto" style={{ scrollbarWidth: 'thin' }}>
          {/* West road label */}
          <div className="bg-amber-100 rounded border border-amber-300 text-center py-0.5 mb-1">
            <span className="text-[10px] font-bold text-amber-800">Gardenia</span>
          </div>

          {/* Band G1: Below Gardenia */}
          {renderGHBand(gBands[0])}

          {/* Gardenia Drive */}
          {renderDrive('Gardenia')}

          {/* Band G2: Between Gardenia and Gladiola */}
          {renderGHBand(gBands[1])}

          {/* Gladiola Drive */}
          {renderDrive('Gladiola')}

          {/* Band G3: Between Gladiola and Heather */}
          {renderGHBand(gBands[2])}

          {/* Heather Drive */}
          {renderDrive('Heather')}

          {/* Band G4: Above Heather */}
          {renderGHBand(gBands[3])}

          {/* East boundary */}
          <div className="bg-gray-300 rounded border border-gray-400 text-center py-0.5 mt-1">
            <span className="text-[10px] font-bold text-gray-700">→ continues to Section H</span>
          </div>
        </div>
      </div>
    );
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: Section H (with internal drives)                         */
  /* ---------------------------------------------------------------- */
  const renderSectionH = () => {
    const plots = allPlots['H'] || [];
    const hBands = GH_BANDS.filter(b => b.section === 'H');

    return (
      <div data-nav-id="H" className={`flex-shrink-0 min-h-full flex flex-col ${isMobile ? 'w-full px-1 snap-center' : 'px-1'}`} style={{ minWidth: isMobile ? undefined : '320px' }}>
        {/* Section Header */}
        <div className="bg-gradient-to-r from-purple-500 to-purple-700 rounded-lg shadow-md p-2 mb-1">
          <div className="flex items-center justify-between">
            <div>
              <h3 className="text-xl font-black text-white">Section H</h3>
              <p className="text-white/80 text-xs">Heather ↔ Hydrangea (H drives)</p>
              <p className="text-white/60 text-[9px]">4 bands separated by 12&prime; drives</p>
            </div>
            <div className="text-right bg-white/20 rounded-lg px-3 py-1.5">
              <div className="text-lg font-bold text-white">{plots.length}</div>
              <div className="text-white/80 text-[10px]">Plots</div>
            </div>
          </div>
        </div>

        {/* H Bands with drives */}
        <div className="flex-1 bg-white rounded-lg shadow-md p-1 overflow-y-auto" style={{ scrollbarWidth: 'thin' }}>
          {/* West road label */}
          <div className="bg-amber-100 rounded border border-amber-300 text-center py-0.5 mb-1">
            <span className="text-[10px] font-bold text-amber-800">Heather</span>
          </div>

          {/* Band H1: Below Heather */}
          {renderGHBand(hBands[0])}

          {/* Heather Drive */}
          {renderDrive('Heather')}

          {/* Band H2: Between Heather and Hydrangea */}
          {renderGHBand(hBands[1])}

          {/* Hydrangea Drive */}
          {renderDrive('Hydrangea')}

          {/* Band H3: Above Hydrangea */}
          {renderGHBand(hBands[2])}

          {/* Additional band near border */}
          <div className="bg-amber-200 border-y-2 border-amber-400 py-0.5 px-3 flex items-center justify-center">
            <span className="text-[9px] font-bold text-amber-900">Final plots before border</span>
          </div>

          {/* Band H4: Border plots */}
          {renderGHBand(hBands[3])}

          {/* Property border */}
          <div className="bg-gray-700 rounded text-center py-1 mt-1">
            <span className="text-[10px] font-bold text-white">— PROPERTY BOUNDARY —</span>
          </div>
        </div>
      </div>
    );
  };

  /* ---------------------------------------------------------------- */
  /* RENDER: Road separator between sections                          */
  /* ---------------------------------------------------------------- */
  const renderRoadSeparator = (roadName: string) => (
    <div className={`flex-shrink-0 ${isMobile ? 'w-0' : 'w-12'} bg-amber-50 border-x-4 border-amber-300 flex items-center justify-center`}>
      <span className="transform rotate-90 whitespace-nowrap text-xs font-bold text-amber-700">{roadName}</span>
    </div>
  );

  /* ---------------------------------------------------------------- */
  /* MAIN RENDER                                                      */
  /* ---------------------------------------------------------------- */
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
                {isMobile ? 'Swipe left/right to navigate sections' : 'Scroll horizontally to view all sections'}
              </p>
            </div>
            <form onSubmit={handleSearch} className="flex gap-2">
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                placeholder="Search by name or plot..."
                className="px-3 py-1.5 text-sm border border-gray-200 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500 w-48"
              />
              <button type="submit" className="px-4 py-1.5 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all font-medium">
                Search
              </button>
            </form>
          </div>

          {/* Section Indicators */}
          <div className="flex gap-1.5 mt-1.5 justify-center flex-wrap">
            {ALL_NAV_ITEMS.map((item, index) => (
              <button
                key={item.id}
                onClick={() => scrollToSection(index)}
                className={`px-3 py-1 rounded-lg text-xs font-bold transition-all ${
                  currentSection === index
                    ? `bg-gradient-to-r ${item.color} text-white shadow-lg scale-110`
                    : 'bg-gray-200 text-gray-600 hover:bg-gray-300'
                }`}
              >
                {item.label}
              </button>
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
            <button onClick={() => { setShowSearch(false); setSearchResults([]); }} className="text-xs text-gray-500 hover:text-gray-700">Clear</button>
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
                    <span className="ml-2 text-gray-600 text-xs">• {getDeceasedName(plot)}</span>
                  )}
                  {plot.owner_name && (
                    <span className="ml-2 text-gray-400 text-xs">Owner: {plot.owner_name}</span>
                  )}
                </div>
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
          <span className="text-gray-400">|</span>
          <span className="text-gray-500 text-[10px]">A-F: Roads N-S (Azalea→Fig)</span>
          <span className="text-gray-500 text-[10px]">G-H: Drives E-W (Gardenia→Hydrangea)</span>
        </div>
      </div>

      {/* Road sequence indicator */}
      <div className="bg-gray-100 px-2 py-0.5 overflow-x-auto">
        <div className="flex items-center justify-center gap-1 text-[9px] whitespace-nowrap">
          <span className="bg-gray-700 text-white px-2 py-0.5 rounded-full font-medium">↑ Fodale Ave</span>
          {['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig'].map((road, i) => (
            <React.Fragment key={road}>
              <span className="text-gray-400">→</span>
              <span className="bg-amber-100 text-amber-800 px-1.5 py-0.5 rounded font-medium">{road}</span>
            </React.Fragment>
          ))}
          <span className="text-gray-400">→</span>
          <span className="bg-violet-100 text-violet-800 px-1.5 py-0.5 rounded font-medium">Gardenia</span>
          <span className="text-gray-400">→</span>
          <span className="bg-violet-100 text-violet-800 px-1.5 py-0.5 rounded font-medium">Gladiola</span>
          <span className="text-gray-400">→</span>
          <span className="bg-purple-100 text-purple-800 px-1.5 py-0.5 rounded font-medium">Heather</span>
          <span className="text-gray-400">→</span>
          <span className="bg-purple-100 text-purple-800 px-1.5 py-0.5 rounded font-medium">Hydrangea</span>
          <span className="text-gray-400">→</span>
          <span className="bg-gray-700 text-white px-2 py-0.5 rounded-full font-medium">Border</span>
        </div>
      </div>

      {/* Main Map Container */}
      <div className="flex-1 relative overflow-hidden">
        {/* Navigation Arrows - Mobile Only */}
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
        {isMobile && currentSection < ALL_NAV_ITEMS.length - 1 && (
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
          className={`flex h-full overflow-x-auto ${isMobile ? 'snap-x snap-mandatory' : ''} scroll-smooth ${isDragging ? 'cursor-grabbing' : 'cursor-grab'}`}
          style={{ scrollbarWidth: 'thin' }}
          onMouseDown={handleMouseDown}
          onMouseMove={handleMouseMove}
          onMouseUp={handleMouseUp}
          onMouseLeave={handleMouseLeave}
        >
          {/* Sections A-F */}
          {SECTIONS_AF.map((section, index) => (
            <React.Fragment key={section.id}>
              {renderSectionAF(section)}
              {index < SECTIONS_AF.length - 1 && renderRoadSeparator(section.eastRoad)}
            </React.Fragment>
          ))}

          {/* Road between F and G */}
          {renderRoadSeparator('Gardenia')}

          {/* Section G */}
          {renderSectionG()}

          {/* Road between G and H */}
          {renderRoadSeparator('Heather')}

          {/* Section H */}
          {renderSectionH()}
        </div>
      </div>

      {/* South Indicator */}
      <div className="text-center py-1 bg-gray-100">
        <span className="inline-block bg-gray-700 text-white px-4 py-1 rounded-full text-xs font-medium">
          ↓ SWEET BAY (South)
        </span>
      </div>
    </div>
  );
}
