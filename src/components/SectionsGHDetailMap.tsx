'use client';

import React, { useState, useRef, useEffect } from 'react';

export default function SectionsGHDetailMap() {
  const [zoom, setZoom] = useState(1);
  const [pan, setPan] = useState({ x: 0, y: 0 });
  const [isDragging, setIsDragging] = useState(false);
  const [dragStart, setDragStart] = useState({ x: 0, y: 0 });
  const svgRef = useRef<SVGSVGElement>(null);

  // Plot dimensions
  const PLOT_WIDTH = 40;
  const PLOT_HEIGHT = 100;
  const PLOT_SPACING = 5;
  const ROW_SPACING = 10;

  // Section dimensions
  const SECTION_WIDTH = 800;
  const ROAD_WIDTH = 100;

  const handleWheel = (e: React.WheelEvent) => {
    e.preventDefault();
    const delta = e.deltaY > 0 ? 0.9 : 1.1;
    setZoom(prev => Math.max(0.5, Math.min(10, prev * delta)));
  };

  const handleMouseDown = (e: React.MouseEvent) => {
    setIsDragging(true);
    setDragStart({ x: e.clientX - pan.x, y: e.clientY - pan.y });
  };

  const handleMouseMove = (e: React.MouseEvent) => {
    if (isDragging) {
      setPan({
        x: e.clientX - dragStart.x,
        y: e.clientY - dragStart.y
      });
    }
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  const resetView = () => {
    setZoom(1);
    setPan({ x: 0, y: 0 });
  };

  // Generate plot rectangles for a standard 2x4 block
  const renderPlotBlock = (x: number, y: number, positions: number[]) => {
    const plots = [];
    
    // Positions 1-4 (front row, closest to road)
    for (let i = 0; i < 4; i++) {
      const pos = i + 1;
      if (positions.includes(pos)) {
        plots.push(
          <rect
            key={`${x}-${y}-${pos}`}
            x={x}
            y={y + (i * (PLOT_HEIGHT + PLOT_SPACING))}
            width={PLOT_WIDTH}
            height={PLOT_HEIGHT}
            fill="white"
            stroke="#666"
            strokeWidth="2"
          />
        );
      }
    }
    
    // Positions 5-8 (back row)
    for (let i = 0; i < 4; i++) {
      const pos = i + 5;
      if (positions.includes(pos)) {
        plots.push(
          <rect
            key={`${x}-${y}-${pos}`}
            x={x + PLOT_WIDTH + PLOT_SPACING}
            y={y + (i * (PLOT_HEIGHT + PLOT_SPACING))}
            width={PLOT_WIDTH}
            height={PLOT_HEIGHT}
            fill="white"
            stroke="#666"
            strokeWidth="2"
          />
        );
      }
    }
    
    return plots;
  };

  // Section G rows with their plot configurations
  const sectionGRows = [
    // Row 1-37 (west strip) - ascending
    ...Array.from({ length: 37 }, (_, i) => ({
      row: i + 1,
      positions: [1, 2, 3, 4, 5, 6, 7, 8], // Standard 8 plots
      strip: 'west'
    })),
    // Row 38+ (east strip) - descending
    ...Array.from({ length: 37 }, (_, i) => ({
      row: i + 38,
      positions: [1, 2, 3, 4, 5, 6, 7, 8],
      strip: 'east'
    }))
  ];

  // Section H rows with their plot configurations
  const sectionHRows = [
    // Row 1-37 (west strip)
    ...Array.from({ length: 37 }, (_, i) => ({
      row: i + 1,
      positions: [1, 2, 3, 4, 5, 6, 7, 8],
      strip: 'west'
    })),
    // Row 38-74 (east strip)
    ...Array.from({ length: 37 }, (_, i) => ({
      row: i + 38,
      positions: [1, 2, 3, 4, 5, 6, 7, 8],
      strip: 'east'
    }))
  ];

  const renderSection = (
    sectionName: string,
    rows: typeof sectionGRows,
    startX: number,
    westRoad: string,
    eastRoad: string
  ) => {
    const elements = [];
    
    // Section background
    elements.push(
      <rect
        key={`${sectionName}-bg`}
        x={startX}
        y={0}
        width={SECTION_WIDTH}
        height={5000}
        fill="#f0f0f0"
        opacity="0.3"
      />
    );

    // Section label
    elements.push(
      <text
        key={`${sectionName}-label`}
        x={startX + SECTION_WIDTH / 2}
        y={50}
        textAnchor="middle"
        fontSize="32"
        fontWeight="bold"
        fill="#333"
      >
        Section {sectionName}
      </text>
    );

    // West road label
    elements.push(
      <text
        key={`${sectionName}-west-road`}
        x={startX - 50}
        y={2500}
        textAnchor="middle"
        fontSize="20"
        fontWeight="bold"
        fill="#8B4513"
        transform={`rotate(-90, ${startX - 50}, 2500)`}
      >
        {westRoad} Drive
      </text>
    );

    // East road label
    elements.push(
      <text
        key={`${sectionName}-east-road`}
        x={startX + SECTION_WIDTH + 50}
        y={2500}
        textAnchor="middle"
        fontSize="20"
        fontWeight="bold"
        fill="#8B4513"
        transform={`rotate(90, ${startX + SECTION_WIDTH + 50}, 2500)`}
      >
        {eastRoad} Drive
      </text>
    );

    // Render west strip (rows 1-37)
    const westRows = rows.filter(r => r.strip === 'west');
    westRows.reverse().forEach((rowData, index) => {
      const y = 100 + (index * (PLOT_HEIGHT * 4 + PLOT_SPACING * 3 + ROW_SPACING));
      const x = startX + 150;
      
      // Row label
      elements.push(
        <text
          key={`${sectionName}-row-${rowData.row}`}
          x={x - 20}
          y={y + 200}
          textAnchor="end"
          fontSize="14"
          fill="#666"
        >
          Row {rowData.row}
        </text>
      );
      
      // Plot blocks
      elements.push(...renderPlotBlock(x, y, rowData.positions));
    });

    // Render east strip (rows 38+)
    const eastRows = rows.filter(r => r.strip === 'east');
    eastRows.forEach((rowData, index) => {
      const y = 100 + (index * (PLOT_HEIGHT * 4 + PLOT_SPACING * 3 + ROW_SPACING));
      const x = startX + SECTION_WIDTH - 250;
      
      // Row label
      elements.push(
        <text
          key={`${sectionName}-row-${rowData.row}`}
          x={x + (PLOT_WIDTH * 2 + PLOT_SPACING) + 20}
          y={y + 200}
          textAnchor="start"
          fontSize="14"
          fill="#666"
        >
          Row {rowData.row}
        </text>
      );
      
      // Plot blocks
      elements.push(...renderPlotBlock(x, y, rowData.positions));
    });

    return elements;
  };

  return (
    <div className="h-screen bg-gray-900 flex flex-col">
      {/* Header */}
      <div className="bg-gray-800 text-white p-4 shadow-lg">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold">Sections G & H - Detailed Plot Map</h1>
            <p className="text-sm text-gray-300">Based on Official Plat Drawing - Tide Water Engineering</p>
          </div>
          <div className="flex items-center gap-4">
            <div className="text-sm">
              <span className="text-gray-400">Zoom:</span> {zoom.toFixed(2)}x
            </div>
            <button
              onClick={() => setZoom(z => Math.min(10, z * 1.2))}
              className="px-3 py-1 bg-blue-600 hover:bg-blue-700 rounded text-sm"
            >
              Zoom In
            </button>
            <button
              onClick={() => setZoom(z => Math.max(0.5, z / 1.2))}
              className="px-3 py-1 bg-blue-600 hover:bg-blue-700 rounded text-sm"
            >
              Zoom Out
            </button>
            <button
              onClick={resetView}
              className="px-3 py-1 bg-green-600 hover:bg-green-700 rounded text-sm"
            >
              Reset View
            </button>
          </div>
        </div>
      </div>

      {/* Instructions */}
      <div className="bg-yellow-100 border-l-4 border-yellow-500 p-3 text-sm">
        <p className="font-semibold text-yellow-800">Instructions:</p>
        <ul className="text-yellow-700 mt-1 space-y-1">
          <li>• <strong>Scroll wheel</strong> to zoom in/out</li>
          <li>• <strong>Click and drag</strong> to pan around the map</li>
          <li>• <strong>White rectangles</strong> represent individual burial plots</li>
          <li>• Plot outlines are accurate - numbering to be added later</li>
        </ul>
      </div>

      {/* SVG Canvas */}
      <div 
        className="flex-1 overflow-hidden relative cursor-move"
        onWheel={handleWheel}
        onMouseDown={handleMouseDown}
        onMouseMove={handleMouseMove}
        onMouseUp={handleMouseUp}
        onMouseLeave={handleMouseUp}
      >
        <svg
          ref={svgRef}
          width="100%"
          height="100%"
          style={{
            transform: `translate(${pan.x}px, ${pan.y}px) scale(${zoom})`,
            transformOrigin: 'center center',
            transition: isDragging ? 'none' : 'transform 0.1s ease-out'
          }}
        >
          {/* Grid background */}
          <defs>
            <pattern id="grid" width="100" height="100" patternUnits="userSpaceOnUse">
              <path d="M 100 0 L 0 0 0 100" fill="none" stroke="#ddd" strokeWidth="1"/>
            </pattern>
          </defs>
          <rect width="10000" height="10000" fill="url(#grid)" />

          {/* North indicator */}
          <g transform="translate(50, 50)">
            <text fontSize="16" fontWeight="bold" fill="#333">↑ NORTH (Fodale Ave)</text>
          </g>

          {/* Section G */}
          {renderSection('G', sectionGRows, 200, 'Gardenia', 'Heather')}

          {/* Section H */}
          {renderSection('H', sectionHRows, 200 + SECTION_WIDTH + ROAD_WIDTH + 100, 'Heather', 'Hydrangia')}

          {/* South indicator */}
          <g transform="translate(50, 4950)">
            <text fontSize="16" fontWeight="bold" fill="#333">↓ SOUTH (Sweet Bay)</text>
          </g>
        </svg>
      </div>

      {/* Legend */}
      <div className="bg-gray-800 text-white p-3 text-sm">
        <div className="flex items-center gap-6">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 bg-white border-2 border-gray-600"></div>
            <span>Individual Plot</span>
          </div>
          <div className="text-gray-400">
            Standard Block: 2 columns × 4 rows = 8 plots
          </div>
          <div className="text-gray-400">
            Positions 1-4 (front row) | Positions 5-8 (back row)
          </div>
        </div>
      </div>
    </div>
  );
}
