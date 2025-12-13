'use client';

import React, { useState, useEffect } from 'react';
import { PlotWithDetails } from '@/lib/supabase';

interface CemeteryMapProps {
  plots: PlotWithDetails[];
  onPlotSelect?: (plot: PlotWithDetails) => void;
  selectedSection?: string;
}

export default function CemeteryMap({ plots, onPlotSelect, selectedSection }: CemeteryMapProps) {
  const [hoveredPlot, setHoveredPlot] = useState<string | null>(null);
  const [selectedPlot, setSelectedPlot] = useState<PlotWithDetails | null>(null);

  // Filter plots by selected section
  const filteredPlots = selectedSection && selectedSection !== 'all'
    ? plots.filter(plot => plot.section.toLowerCase() === selectedSection.toLowerCase())
    : plots;

  const handlePlotClick = (plot: PlotWithDetails) => {
    setSelectedPlot(plot);
    if (onPlotSelect) {
      onPlotSelect(plot);
    }
  };

  const getPlotColor = (plot: PlotWithDetails) => {
    if (plot.status === 'available') {
      return plot.plot_type === 'cremation' ? '#a855f7' : '#22c55e'; // purple for cremation, green for available
    } else if (plot.status === 'reserved') {
      return '#eab308'; // yellow for reserved
    } else if (plot.status === 'occupied') {
      return '#ef4444'; // red for occupied
    }
    return '#9ca3af'; // gray default
  };

  const getPlotStroke = (plot: PlotWithDetails) => {
    if (selectedPlot?.id === plot.id) {
      return '#1e40af'; // blue border for selected
    }
    if (hoveredPlot === plot.id) {
      return '#374151'; // dark gray for hover
    }
    return '#6b7280'; // default gray border
  };

  // Calculate map dimensions based on plots
  const mapWidth = 1200;
  const mapHeight = 800;

  return (
    <div className="relative w-full h-full bg-gray-100 dark:bg-gray-900 rounded-lg overflow-hidden">
      <svg
        width="100%"
        height="100%"
        viewBox={`0 0 ${mapWidth} ${mapHeight}`}
        className="w-full h-full"
      >
        {/* Grid background */}
        <defs>
          <pattern id="grid" width="50" height="50" patternUnits="userSpaceOnUse">
            <path d="M 50 0 L 0 0 0 50" fill="none" stroke="#e5e7eb" strokeWidth="0.5" />
          </pattern>
        </defs>
        <rect width={mapWidth} height={mapHeight} fill="url(#grid)" />

        {/* Section labels */}
        {['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'].map((section, idx) => (
          <text
            key={section}
            x={100 + idx * 140}
            y={30}
            fontSize="20"
            fontWeight="bold"
            fill="#374151"
            className="dark:fill-gray-300"
          >
            Section {section}
          </text>
        ))}

        {/* Render plots */}
        {filteredPlots.map((plot) => {
          const coords = plot.map_coordinates;
          if (!coords) return null;

          return (
            <g
              key={plot.id}
              onMouseEnter={() => setHoveredPlot(plot.id)}
              onMouseLeave={() => setHoveredPlot(null)}
              onClick={() => handlePlotClick(plot)}
              className="cursor-pointer transition-all"
            >
              <rect
                x={coords.x_coordinate}
                y={coords.y_coordinate}
                width={coords.width}
                height={coords.height}
                fill={getPlotColor(plot)}
                stroke={getPlotStroke(plot)}
                strokeWidth={hoveredPlot === plot.id || selectedPlot?.id === plot.id ? 3 : 1.5}
                rx={2}
                opacity={hoveredPlot === plot.id ? 0.9 : 0.8}
                transform={`rotate(${coords.rotation || 0} ${coords.x_coordinate + coords.width / 2} ${coords.y_coordinate + coords.height / 2})`}
              />
              
              {/* Plot number label */}
              <text
                x={coords.x_coordinate + coords.width / 2}
                y={coords.y_coordinate + coords.height / 2}
                fontSize="8"
                fill="white"
                textAnchor="middle"
                dominantBaseline="middle"
                pointerEvents="none"
                fontWeight="600"
              >
                {plot.plot_number}
              </text>

              {/* Tooltip on hover */}
              {hoveredPlot === plot.id && (
                <g>
                  <rect
                    x={coords.x_coordinate + coords.width + 5}
                    y={coords.y_coordinate - 10}
                    width="150"
                    height="60"
                    fill="white"
                    stroke="#374151"
                    strokeWidth="1"
                    rx="4"
                    filter="drop-shadow(0 2px 4px rgba(0,0,0,0.1))"
                  />
                  <text
                    x={coords.x_coordinate + coords.width + 15}
                    y={coords.y_coordinate + 5}
                    fontSize="10"
                    fontWeight="bold"
                    fill="#111827"
                  >
                    {plot.plot_number}
                  </text>
                  <text
                    x={coords.x_coordinate + coords.width + 15}
                    y={coords.y_coordinate + 20}
                    fontSize="9"
                    fill="#6b7280"
                  >
                    Status: {plot.status}
                  </text>
                  <text
                    x={coords.x_coordinate + coords.width + 15}
                    y={coords.y_coordinate + 35}
                    fontSize="9"
                    fill="#6b7280"
                  >
                    Type: {plot.plot_type}
                  </text>
                </g>
              )}
            </g>
          );
        })}

        {/* Pathways */}
        <line x1="0" y1="400" x2={mapWidth} y2="400" stroke="#9ca3af" strokeWidth="3" strokeDasharray="5,5" />
      </svg>

      {/* Selected plot details panel */}
      {selectedPlot && (
        <div className="absolute bottom-4 right-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-4 max-w-sm border border-gray-200 dark:border-gray-700">
          <div className="flex justify-between items-start mb-2">
            <h3 className="text-lg font-bold text-gray-900 dark:text-white">
              {selectedPlot.plot_number}
            </h3>
            <button
              onClick={() => setSelectedPlot(null)}
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              ✕
            </button>
          </div>
          
          <div className="space-y-2 text-sm">
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Status:</span>
              <span className={`font-medium ${
                selectedPlot.status === 'available' ? 'text-green-600' :
                selectedPlot.status === 'reserved' ? 'text-yellow-600' :
                'text-red-600'
              }`}>
                {selectedPlot.status.charAt(0).toUpperCase() + selectedPlot.status.slice(1)}
              </span>
            </div>
            
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Type:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                {selectedPlot.plot_type.charAt(0).toUpperCase() + selectedPlot.plot_type.slice(1)}
              </span>
            </div>
            
            {selectedPlot.owner_name && (
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Owner:</span>
                <span className="font-medium text-gray-900 dark:text-white">
                  {selectedPlot.owner_name}
                </span>
              </div>
            )}
            
            {selectedPlot.price && (
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Price:</span>
                <span className="font-medium text-gray-900 dark:text-white">
                  ${selectedPlot.price.toLocaleString()}
                </span>
              </div>
            )}

            {selectedPlot.deceased_records && selectedPlot.deceased_records.length > 0 && (
              <div className="mt-3 pt-3 border-t border-gray-200 dark:border-gray-700">
                <p className="text-gray-600 dark:text-gray-400 mb-1">Interred:</p>
                {selectedPlot.deceased_records.map((deceased: any) => (
                  <p key={deceased.id} className="font-medium text-gray-900 dark:text-white">
                    {deceased.first_name} {deceased.last_name}
                    {deceased.birth_date && deceased.death_date && (
                      <span className="text-sm text-gray-500 dark:text-gray-400 ml-1">
                        ({new Date(deceased.birth_date).getFullYear()} - {new Date(deceased.death_date).getFullYear()})
                      </span>
                    )}
                  </p>
                ))}
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
