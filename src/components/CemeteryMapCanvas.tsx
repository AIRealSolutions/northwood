'use client';

import React, { useState, useEffect, useRef, useCallback, useMemo } from 'react';
import Link from 'next/link';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

/* ================================================================== */
/* SECTION & ROAD DEFINITIONS                                         */
/* All roads run parallel. The cemetery is a rectangle.                */
/* Road order: Azalea, Beech, Chinquapin, Dogwood, Elm, Fig,          */
/*   Gardenia, Gladiola, Heather, Hydrangea → Property Border         */
/* ================================================================== */

interface SectionDef {
  id: string;
  dbSection: string;
  name: string;
  westRoad: string;
  eastRoad: string;
  color: string;
  hoverColor: string;
  minRow: number;
  maxRow: number;
}

const SECTIONS: SectionDef[] = [
  { id: 'A',  dbSection: 'A', name: 'Section A',  westRoad: 'Azalea',     eastRoad: 'Beech',      color: '#10b981', hoverColor: '#059669', minRow: 1, maxRow: 74 },
  { id: 'B',  dbSection: 'B', name: 'Section B',  westRoad: 'Beech',      eastRoad: 'Chinquapin', color: '#14b8a6', hoverColor: '#0d9488', minRow: 1, maxRow: 74 },
  { id: 'C',  dbSection: 'C', name: 'Section C',  westRoad: 'Chinquapin', eastRoad: 'Dogwood',    color: '#06b6d4', hoverColor: '#0891b2', minRow: 1, maxRow: 74 },
  { id: 'D',  dbSection: 'D', name: 'Section D',  westRoad: 'Dogwood',    eastRoad: 'Elm',        color: '#0ea5e9', hoverColor: '#0284c7', minRow: 1, maxRow: 74 },
  { id: 'E',  dbSection: 'E', name: 'Section E',  westRoad: 'Elm',        eastRoad: 'Fig',        color: '#3b82f6', hoverColor: '#2563eb', minRow: 1, maxRow: 74 },
  { id: 'F',  dbSection: 'F', name: 'Section F',  westRoad: 'Fig',        eastRoad: 'Gardenia',   color: '#6366f1', hoverColor: '#4f46e5', minRow: 1, maxRow: 74 },
  { id: 'G1', dbSection: 'G', name: 'Section G1', westRoad: 'Gardenia',   eastRoad: 'Gladiola',   color: '#8b5cf6', hoverColor: '#7c3aed', minRow: 1,   maxRow: 193 },
  { id: 'G2', dbSection: 'G', name: 'Section G2', westRoad: 'Gladiola',   eastRoad: 'Heather',    color: '#a78bfa', hoverColor: '#8b5cf6', minRow: 194, maxRow: 386 },
  { id: 'H1', dbSection: 'H', name: 'Section H1', westRoad: 'Heather',    eastRoad: 'Hydrangea',  color: '#a855f7', hoverColor: '#9333ea', minRow: 1,   maxRow: 291 },
  { id: 'H2', dbSection: 'H', name: 'Section H2', westRoad: 'Hydrangea',  eastRoad: 'Border',     color: '#c084fc', hoverColor: '#a855f7', minRow: 292, maxRow: 582 },
];

const ROADS = ['Azalea', 'Beech', 'Chinquapin', 'Dogwood', 'Elm', 'Fig', 'Gardenia', 'Gladiola', 'Heather', 'Hydrangea'];

/* ================================================================== */
/* LAYOUT CONSTANTS                                                    */
/* ================================================================== */
const PLOT_W = 14;
const PLOT_H = 10;
const PLOT_GAP = 2;
const ROW_GAP = 3;
const SECTION_PAD = 8;
const ROAD_WIDTH = 24;
const HEADER_HEIGHT = 30;

/* ================================================================== */
/* COMPONENT                                                           */
/* ================================================================== */

interface PlotRect {
  id: string;
  plotNumber: string;
  section: string;
  sectionId: string;
  row: number;
  position: number;
  status: string;
  deceasedName: string | null;
  x: number;
  y: number;
  w: number;
  h: number;
  color: string;
}

export default function CemeteryMapCanvas() {
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const containerRef = useRef<HTMLDivElement>(null);

  const [allPlots, setAllPlots] = useState<Record<string, PlotWithDetails[]>>({});
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<PlotWithDetails[]>([]);
  const [showSearch, setShowSearch] = useState(false);
  const [hoveredPlot, setHoveredPlot] = useState<PlotRect | null>(null);
  const [selectedPlot, setSelectedPlot] = useState<PlotRect | null>(null);
  const [editMode, setEditMode] = useState(false);
  const [dragPlot, setDragPlot] = useState<PlotRect | null>(null);
  const [dragOffset, setDragOffset] = useState({ x: 0, y: 0 });

  // Pan & zoom state
  const [zoom, setZoom] = useState(1);
  const [pan, setPan] = useState({ x: 0, y: 0 });
  const [isPanning, setIsPanning] = useState(false);
  const [panStart, setPanStart] = useState({ x: 0, y: 0 });
  const [panStartOffset, setPanStartOffset] = useState({ x: 0, y: 0 });

  // Computed plot rectangles
  const [plotRects, setPlotRects] = useState<PlotRect[]>([]);
  const [canvasSize, setCanvasSize] = useState({ w: 0, h: 0 });

  useEffect(() => { loadAllPlots(); }, []);

  const loadAllPlots = async () => {
    setLoading(true);
    try {
      const plotsData: Record<string, PlotWithDetails[]> = {};
      const loaded = new Set<string>();
      for (const section of SECTIONS) {
        if (!loaded.has(section.dbSection)) {
          plotsData[section.dbSection] = await plotsAPI.getPlotsBySection(section.dbSection);
          loaded.add(section.dbSection);
        }
      }
      setAllPlots(plotsData);
    } catch (error) {
      console.error('Error loading plots:', error);
    } finally {
      setLoading(false);
    }
  };

  /* ---------------------------------------------------------------- */
  /* AUTO-LAYOUT: Compute x,y for every plot to fit in a rectangle    */
  /* ---------------------------------------------------------------- */
  useEffect(() => {
    if (loading) return;

    const rects: PlotRect[] = [];
    let totalWidth = SECTION_PAD;

    // First pass: determine each section's max positions per row and total rows
    const sectionLayouts: Array<{
      section: SectionDef;
      rows: Array<{ row: number; positions: number; plots: PlotWithDetails[] }>;
      maxPositions: number;
      sectionWidth: number;
    }> = [];

    for (const section of SECTIONS) {
      const dbPlots = allPlots[section.dbSection] || [];
      const plots = dbPlots.filter(p => p.row_number >= section.minRow && p.row_number <= section.maxRow);

      const rowMap: Record<number, PlotWithDetails[]> = {};
      plots.forEach(p => {
        const r = p.row_number || 1;
        if (!rowMap[r]) rowMap[r] = [];
        rowMap[r].push(p);
      });

      const rows = Object.keys(rowMap)
        .map(Number)
        .sort((a, b) => a - b)
        .map(r => ({
          row: r,
          positions: Math.max(...rowMap[r].map(p => p.plot_position || 1), 1),
          plots: rowMap[r].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0)),
        }));

      const maxPositions = rows.length > 0 ? Math.max(...rows.map(r => r.positions)) : 8;
      const sectionWidth = maxPositions * (PLOT_W + PLOT_GAP) + SECTION_PAD * 2;

      sectionLayouts.push({ section, rows, maxPositions, sectionWidth });
    }

    // Find the max number of rows across all sections to normalize height
    const maxRowCount = Math.max(...sectionLayouts.map(s => s.rows.length), 1);
    const totalHeight = HEADER_HEIGHT + maxRowCount * (PLOT_H + ROW_GAP) + SECTION_PAD * 2;

    // Second pass: place plots
    let xOffset = SECTION_PAD;

    for (const layout of sectionLayouts) {
      const { section, rows, maxPositions, sectionWidth } = layout;

      // Road before this section (except for the first)
      if (layout !== sectionLayouts[0]) {
        xOffset += ROAD_WIDTH;
      }

      const sectionX = xOffset;

      // Place rows from top to bottom
      rows.forEach((rowData, rowIndex) => {
        const rowY = HEADER_HEIGHT + SECTION_PAD + rowIndex * (PLOT_H + ROW_GAP);

        rowData.plots.forEach(plot => {
          const pos = (plot.plot_position || 1) - 1;
          const plotX = sectionX + SECTION_PAD + pos * (PLOT_W + PLOT_GAP);

          const deceased = plot.deceased_records?.[0];
          const deceasedName = deceased ? `${deceased.first_name} ${deceased.last_name}` : null;

          let color: string;
          if (plot.status === 'occupied') color = '#f43f5e';
          else if (plot.status === 'reserved') color = '#f59e0b';
          else color = section.color;

          rects.push({
            id: plot.id,
            plotNumber: plot.plot_number,
            section: section.dbSection,
            sectionId: section.id,
            row: plot.row_number,
            position: plot.plot_position,
            status: plot.status,
            deceasedName,
            x: plotX,
            y: rowY,
            w: PLOT_W,
            h: PLOT_H,
            color,
          });
        });
      });

      xOffset += sectionWidth;
    }

    // Add final road + border
    xOffset += ROAD_WIDTH + SECTION_PAD;

    setPlotRects(rects);
    setCanvasSize({ w: xOffset, h: totalHeight });

    // Auto-fit zoom
    if (containerRef.current) {
      const containerW = containerRef.current.clientWidth;
      const containerH = containerRef.current.clientHeight - 120; // account for header
      const fitZoom = Math.min(containerW / xOffset, containerH / totalHeight, 2);
      setZoom(Math.max(fitZoom, 0.1));
      setPan({ x: 10, y: 10 });
    }
  }, [allPlots, loading]);

  /* ---------------------------------------------------------------- */
  /* DRAWING                                                           */
  /* ---------------------------------------------------------------- */
  const draw = useCallback(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    const dpr = window.devicePixelRatio || 1;
    const container = containerRef.current;
    if (!container) return;

    const displayW = container.clientWidth;
    const displayH = container.clientHeight - 120;

    canvas.width = displayW * dpr;
    canvas.height = displayH * dpr;
    canvas.style.width = `${displayW}px`;
    canvas.style.height = `${displayH}px`;
    ctx.setTransform(dpr, 0, 0, dpr, 0, 0);

    // Clear
    ctx.fillStyle = '#f9fafb';
    ctx.fillRect(0, 0, displayW, displayH);

    // Apply pan and zoom
    ctx.save();
    ctx.translate(pan.x, pan.y);
    ctx.scale(zoom, zoom);

    // Draw section backgrounds and roads
    let xOff = SECTION_PAD;
    for (let i = 0; i < SECTIONS.length; i++) {
      const section = SECTIONS[i];
      const layout = plotRects.filter(p => p.sectionId === section.id);

      // Calculate section width from layout
      const dbPlots = allPlots[section.dbSection] || [];
      const plots = dbPlots.filter(p => p.row_number >= section.minRow && p.row_number <= section.maxRow);
      const rowMap: Record<number, number> = {};
      plots.forEach(p => {
        const r = p.row_number || 1;
        rowMap[r] = Math.max(rowMap[r] || 0, p.plot_position || 1);
      });
      const maxPos = Math.max(...Object.values(rowMap), 1);
      const sectionWidth = maxPos * (PLOT_W + PLOT_GAP) + SECTION_PAD * 2;

      // Road before section
      if (i > 0) {
        ctx.fillStyle = '#fef3c7';
        ctx.fillRect(xOff, 0, ROAD_WIDTH, canvasSize.h);
        ctx.strokeStyle = '#d97706';
        ctx.lineWidth = 0.5;
        ctx.strokeRect(xOff, 0, ROAD_WIDTH, canvasSize.h);

        // Road label
        ctx.save();
        ctx.translate(xOff + ROAD_WIDTH / 2, canvasSize.h / 2);
        ctx.rotate(-Math.PI / 2);
        ctx.fillStyle = '#92400e';
        ctx.font = 'bold 9px sans-serif';
        ctx.textAlign = 'center';
        ctx.textBaseline = 'middle';
        ctx.fillText(section.westRoad, 0, 0);
        ctx.restore();

        xOff += ROAD_WIDTH;
      }

      // Section background
      ctx.fillStyle = section.color + '15';
      ctx.fillRect(xOff, 0, sectionWidth, canvasSize.h);
      ctx.strokeStyle = section.color + '40';
      ctx.lineWidth = 1;
      ctx.strokeRect(xOff, 0, sectionWidth, canvasSize.h);

      // Section header
      ctx.fillStyle = section.color;
      ctx.fillRect(xOff, 0, sectionWidth, HEADER_HEIGHT);
      ctx.fillStyle = '#ffffff';
      ctx.font = 'bold 11px sans-serif';
      ctx.textAlign = 'center';
      ctx.textBaseline = 'middle';
      ctx.fillText(section.id, xOff + sectionWidth / 2, HEADER_HEIGHT / 2);

      xOff += sectionWidth;
    }

    // Draw border at the end
    xOff += ROAD_WIDTH;
    ctx.fillStyle = '#374151';
    ctx.fillRect(xOff - ROAD_WIDTH, 0, 6, canvasSize.h);
    ctx.fillStyle = '#ffffff';
    ctx.save();
    ctx.translate(xOff - ROAD_WIDTH + 3, canvasSize.h / 2);
    ctx.rotate(-Math.PI / 2);
    ctx.font = 'bold 8px sans-serif';
    ctx.textAlign = 'center';
    ctx.fillText('PROPERTY BORDER', 0, 0);
    ctx.restore();

    // Draw first road (Azalea) on the left
    ctx.fillStyle = '#fef3c7';
    ctx.fillRect(0, 0, SECTION_PAD, canvasSize.h);

    // Draw all plots
    for (const rect of plotRects) {
      const isHovered = hoveredPlot?.id === rect.id;
      const isSelected = selectedPlot?.id === rect.id;
      const isDragging = dragPlot?.id === rect.id;

      ctx.fillStyle = isDragging ? '#fbbf24' : rect.color;
      ctx.globalAlpha = isHovered ? 1 : 0.85;

      const x = isDragging ? dragPlot!.x : rect.x;
      const y = isDragging ? dragPlot!.y : rect.y;

      // Plot rectangle
      ctx.beginPath();
      ctx.roundRect(x, y, rect.w, rect.h, 1.5);
      ctx.fill();

      // Border
      if (isSelected) {
        ctx.strokeStyle = '#facc15';
        ctx.lineWidth = 2;
        ctx.stroke();
      } else if (isHovered) {
        ctx.strokeStyle = '#ffffff';
        ctx.lineWidth = 1.5;
        ctx.stroke();
      }

      ctx.globalAlpha = 1;

      // Position number
      ctx.fillStyle = '#ffffff';
      ctx.font = `bold ${Math.max(6, Math.min(8, PLOT_W * 0.5))}px sans-serif`;
      ctx.textAlign = 'center';
      ctx.textBaseline = 'middle';
      ctx.fillText(String(rect.position), x + rect.w / 2, y + rect.h / 2);
    }

    // Draw Fodale Ave label at top
    ctx.fillStyle = '#374151';
    ctx.font = 'bold 10px sans-serif';
    ctx.textAlign = 'left';
    ctx.textBaseline = 'top';

    ctx.restore();
  }, [plotRects, canvasSize, allPlots, zoom, pan, hoveredPlot, selectedPlot, dragPlot]);

  useEffect(() => {
    draw();
  }, [draw]);

  useEffect(() => {
    const handleResize = () => draw();
    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, [draw]);

  /* ---------------------------------------------------------------- */
  /* MOUSE INTERACTION                                                 */
  /* ---------------------------------------------------------------- */
  const canvasToWorld = (clientX: number, clientY: number) => {
    const canvas = canvasRef.current;
    if (!canvas) return { x: 0, y: 0 };
    const rect = canvas.getBoundingClientRect();
    const cx = clientX - rect.left;
    const cy = clientY - rect.top;
    return {
      x: (cx - pan.x) / zoom,
      y: (cy - pan.y) / zoom,
    };
  };

  const findPlotAt = (wx: number, wy: number): PlotRect | null => {
    // Search in reverse for top-most
    for (let i = plotRects.length - 1; i >= 0; i--) {
      const r = plotRects[i];
      if (wx >= r.x && wx <= r.x + r.w && wy >= r.y && wy <= r.y + r.h) {
        return r;
      }
    }
    return null;
  };

  const handleMouseDown = (e: React.MouseEvent) => {
    const { x, y } = canvasToWorld(e.clientX, e.clientY);
    const plot = findPlotAt(x, y);

    if (editMode && plot) {
      setDragPlot({ ...plot });
      setDragOffset({ x: x - plot.x, y: y - plot.y });
      return;
    }

    // Start panning
    setIsPanning(true);
    setPanStart({ x: e.clientX, y: e.clientY });
    setPanStartOffset({ ...pan });
  };

  const handleMouseMove = (e: React.MouseEvent) => {
    if (isPanning) {
      const dx = e.clientX - panStart.x;
      const dy = e.clientY - panStart.y;
      setPan({ x: panStartOffset.x + dx, y: panStartOffset.y + dy });
      return;
    }

    if (dragPlot) {
      const { x, y } = canvasToWorld(e.clientX, e.clientY);
      setDragPlot(prev => prev ? { ...prev, x: x - dragOffset.x, y: y - dragOffset.y } : null);
      return;
    }

    const { x, y } = canvasToWorld(e.clientX, e.clientY);
    const plot = findPlotAt(x, y);
    setHoveredPlot(plot);

    const canvas = canvasRef.current;
    if (canvas) {
      canvas.style.cursor = plot ? (editMode ? 'grab' : 'pointer') : (isPanning ? 'grabbing' : 'default');
    }
  };

  const handleMouseUp = (e: React.MouseEvent) => {
    if (dragPlot) {
      // Update the plot position in the rects array
      setPlotRects(prev => prev.map(r =>
        r.id === dragPlot.id ? { ...r, x: dragPlot.x, y: dragPlot.y } : r
      ));
      // TODO: Save to Supabase map_coordinates
      setDragPlot(null);
    }

    if (isPanning) {
      setIsPanning(false);
      return;
    }

    // Click to select
    const { x, y } = canvasToWorld(e.clientX, e.clientY);
    const plot = findPlotAt(x, y);
    if (plot && !editMode) {
      setSelectedPlot(plot);
    }
  };

  const handleWheel = (e: React.WheelEvent) => {
    e.preventDefault();
    const delta = e.deltaY > 0 ? 0.9 : 1.1;
    const newZoom = Math.max(0.05, Math.min(10, zoom * delta));

    // Zoom toward mouse position
    const canvas = canvasRef.current;
    if (!canvas) return;
    const rect = canvas.getBoundingClientRect();
    const mx = e.clientX - rect.left;
    const my = e.clientY - rect.top;

    const newPanX = mx - (mx - pan.x) * (newZoom / zoom);
    const newPanY = my - (my - pan.y) * (newZoom / zoom);

    setZoom(newZoom);
    setPan({ x: newPanX, y: newPanY });
  };

  /* ---------------------------------------------------------------- */
  /* SEARCH                                                            */
  /* ---------------------------------------------------------------- */
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

  const scrollToPlot = (plotNumber: string) => {
    const rect = plotRects.find(r => r.plotNumber === plotNumber);
    if (!rect || !containerRef.current) return;

    const container = containerRef.current;
    const displayW = container.clientWidth;
    const displayH = container.clientHeight - 120;

    // Center the plot in the viewport at a readable zoom
    const targetZoom = 3;
    const centerX = displayW / 2 - rect.x * targetZoom;
    const centerY = displayH / 2 - rect.y * targetZoom;

    setZoom(targetZoom);
    setPan({ x: centerX, y: centerY });
    setSelectedPlot(rect);
    setShowSearch(false);
  };

  const scrollToSection = (sectionId: string) => {
    const sectionRects = plotRects.filter(r => r.sectionId === sectionId);
    if (sectionRects.length === 0 || !containerRef.current) return;

    const minX = Math.min(...sectionRects.map(r => r.x));
    const container = containerRef.current;
    const displayW = container.clientWidth;
    const displayH = container.clientHeight - 120;

    const targetZoom = 1.5;
    const centerX = displayW / 4 - minX * targetZoom;
    const centerY = 10;

    setZoom(targetZoom);
    setPan({ x: centerX, y: centerY });
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'occupied': return 'bg-rose-500';
      case 'reserved': return 'bg-amber-400';
      default: return 'bg-emerald-400';
    }
  };

  /* ---------------------------------------------------------------- */
  /* RENDER                                                            */
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
    <div ref={containerRef} className="h-screen bg-gray-50 flex flex-col overflow-hidden">
      {/* Header */}
      <div className="bg-white shadow-md border-b border-gray-200 z-50 flex-shrink-0">
        <div className="px-3 py-2">
          <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-2">
            <div className="flex items-center gap-4">
              <div>
                <h1 className="text-lg font-bold text-gray-800">Northwood Cemetery Map</h1>
                <p className="text-gray-500 text-xs">
                  Scroll to zoom, drag to pan {editMode && '| EDIT MODE: drag plots to reposition'}
                </p>
              </div>
              <button
                onClick={() => setEditMode(!editMode)}
                className={`px-3 py-1 text-xs rounded-lg font-medium transition-all ${
                  editMode
                    ? 'bg-amber-500 text-white shadow-lg'
                    : 'bg-gray-200 text-gray-600 hover:bg-gray-300'
                }`}
              >
                {editMode ? 'Exit Edit Mode' : 'Edit Layout'}
              </button>
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

          {/* Section Navigation */}
          <div className="flex gap-1.5 mt-1.5 justify-center flex-wrap">
            {SECTIONS.map((section) => (
              <button
                key={section.id}
                onClick={() => scrollToSection(section.id)}
                className="px-2.5 py-1 rounded-lg text-xs font-bold transition-all bg-gray-200 text-gray-600 hover:bg-gray-300"
                style={{ backgroundColor: section.color + '30', color: section.color }}
              >
                {section.id}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* Search Results Overlay */}
      {showSearch && searchResults.length > 0 && (
        <div className="absolute top-24 right-4 z-50 bg-white border border-gray-200 rounded-lg shadow-xl p-3 max-h-64 overflow-y-auto w-72">
          <div className="flex items-center justify-between mb-2">
            <h3 className="text-sm font-bold text-gray-800">
              {searchResults.length} result{searchResults.length !== 1 ? 's' : ''}
            </h3>
            <button onClick={() => { setShowSearch(false); setSearchResults([]); }} className="text-xs text-gray-500 hover:text-gray-700">
              Close
            </button>
          </div>
          <div className="grid gap-1.5">
            {searchResults.map((plot) => {
              const deceased = plot.deceased_records?.[0];
              const name = deceased ? `${deceased.first_name} ${deceased.last_name}` : null;
              return (
                <button
                  key={plot.id}
                  onClick={() => scrollToPlot(plot.plot_number)}
                  className="flex items-center justify-between p-2 bg-gray-50 rounded hover:bg-emerald-50 transition-all text-sm text-left w-full"
                >
                  <div>
                    <span className="font-semibold text-gray-800">{plot.plot_number}</span>
                    {name && <span className="ml-2 text-gray-600 text-xs">{name}</span>}
                  </div>
                  <span className={`w-3 h-3 rounded-full ${getStatusColor(plot.status)}`}></span>
                </button>
              );
            })}
          </div>
        </div>
      )}

      {/* Legend */}
      <div className="bg-white border-b border-gray-200 px-2 py-1 flex-shrink-0">
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
          <div className="text-gray-400">|</div>
          <div className="text-gray-500">
            Zoom: {Math.round(zoom * 100)}%
          </div>
          <button
            onClick={() => {
              if (containerRef.current && canvasSize.w > 0) {
                const displayW = containerRef.current.clientWidth;
                const displayH = containerRef.current.clientHeight - 120;
                const fitZoom = Math.min(displayW / canvasSize.w, displayH / canvasSize.h, 2);
                setZoom(Math.max(fitZoom, 0.1));
                setPan({ x: 10, y: 10 });
              }
            }}
            className="px-2 py-0.5 text-xs bg-gray-200 rounded hover:bg-gray-300 transition-all"
          >
            Fit All
          </button>
        </div>
      </div>

      {/* Canvas */}
      <div className="flex-1 relative overflow-hidden">
        <canvas
          ref={canvasRef}
          onMouseDown={handleMouseDown}
          onMouseMove={handleMouseMove}
          onMouseUp={handleMouseUp}
          onMouseLeave={() => { setIsPanning(false); setHoveredPlot(null); }}
          onWheel={handleWheel}
          className="block"
        />

        {/* Tooltip */}
        {hoveredPlot && !dragPlot && (
          <div
            className="absolute z-50 bg-gray-900 text-white text-xs rounded-lg px-3 py-2 pointer-events-none shadow-xl"
            style={{
              left: hoveredPlot.x * zoom + pan.x + 20,
              top: hoveredPlot.y * zoom + pan.y - 10,
            }}
          >
            <div className="font-bold">{hoveredPlot.plotNumber}</div>
            {hoveredPlot.deceasedName && (
              <div className="text-gray-300">{hoveredPlot.deceasedName}</div>
            )}
            <div className="text-gray-400 mt-0.5">
              Row {hoveredPlot.row}, Pos {hoveredPlot.position} | {hoveredPlot.status}
            </div>
          </div>
        )}

        {/* Selected Plot Panel */}
        {selectedPlot && !editMode && (
          <div className="absolute bottom-4 left-4 z-50 bg-white border border-gray-200 rounded-xl shadow-xl p-4 w-72">
            <div className="flex items-center justify-between mb-2">
              <h3 className="text-lg font-bold text-gray-800">{selectedPlot.plotNumber}</h3>
              <button onClick={() => setSelectedPlot(null)} className="text-gray-400 hover:text-gray-600 text-lg">&times;</button>
            </div>
            <div className="grid grid-cols-2 gap-2 text-sm mb-3">
              <div>
                <span className="text-gray-500">Section:</span>
                <span className="ml-1 font-medium">{selectedPlot.sectionId}</span>
              </div>
              <div>
                <span className="text-gray-500">Row:</span>
                <span className="ml-1 font-medium">{selectedPlot.row}</span>
              </div>
              <div>
                <span className="text-gray-500">Position:</span>
                <span className="ml-1 font-medium">{selectedPlot.position}</span>
              </div>
              <div>
                <span className="text-gray-500">Status:</span>
                <span className={`ml-1 font-medium ${
                  selectedPlot.status === 'occupied' ? 'text-rose-600' :
                  selectedPlot.status === 'reserved' ? 'text-amber-600' : 'text-emerald-600'
                }`}>{selectedPlot.status}</span>
              </div>
            </div>
            {selectedPlot.deceasedName && (
              <div className="text-sm mb-3">
                <span className="text-gray-500">Interred:</span>
                <span className="ml-1 font-medium text-gray-800">{selectedPlot.deceasedName}</span>
              </div>
            )}
            <Link
              href={`/plot/${selectedPlot.id}`}
              className="block w-full text-center px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-all text-sm font-medium"
            >
              View Full Details
            </Link>
          </div>
        )}
      </div>
    </div>
  );
}
