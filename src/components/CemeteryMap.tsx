'use client';

import React, { useState, useMemo } from 'react';
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
  const filteredPlots = useMemo(() => {
    return selectedSection && selectedSection !== 'all'
      ? plots.filter(plot => plot.section.toLowerCase() === selectedSection.toLowerCase())
      : plots;
  }, [plots, selectedSection]);

  // Group plots by row for grid layout
  const plotsByRow = useMemo(() => {
    const grouped: Record<number, PlotWithDetails[]> = {};
    filteredPlots.forEach(plot => {
      const row = plot.row_number || 1;
      if (!grouped[row]) {
        grouped[row] = [];
      }
      grouped[row].push(plot);
    });
    // Sort plots within each row by position
    Object.keys(grouped).forEach(row => {
      grouped[parseInt(row)].sort((a, b) => (a.plot_position || 0) - (b.plot_position || 0));
    });
    return grouped;
  }, [filteredPlots]);

  const rows = Object.keys(plotsByRow).map(Number).sort((a, b) => a - b);

  const handlePlotClick = (plot: PlotWithDetails) => {
    setSelectedPlot(plot);
    if (onPlotSelect) {
      onPlotSelect(plot);
    }
  };

  const getPlotColor = (plot: PlotWithDetails) => {
    if (plot.status === 'available') {
      return plot.plot_type === 'cremation' ? 'bg-purple-500' : 'bg-green-500';
    } else if (plot.status === 'reserved') {
      return 'bg-yellow-500';
    } else if (plot.status === 'occupied') {
      return 'bg-red-500';
    }
    return 'bg-gray-400';
  };

  const getPlotBorder = (plot: PlotWithDetails) => {
    if (selectedPlot?.id === plot.id) {
      return 'ring-2 ring-blue-600 ring-offset-1';
    }
    if (hoveredPlot === plot.id) {
      return 'ring-2 ring-gray-600';
    }
    return '';
  };

  // If no section is selected, show section overview
  if (!selectedSection || selectedSection === 'all') {
    return (
      <div className="relative w-full h-full bg-gray-100 dark:bg-gray-900 rounded-lg overflow-auto p-4">
        <div className="text-center mb-4">
          <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300">
            Select a section to view plots
          </h3>
          <p className="text-sm text-gray-500 dark:text-gray-400">
            {plots.length.toLocaleString()} total plots loaded
          </p>
        </div>
        
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-4xl mx-auto">
          {['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'].map(section => {
            const sectionPlots = plots.filter(p => p.section === section);
            const occupied = sectionPlots.filter(p => p.status === 'occupied').length;
            const available = sectionPlots.filter(p => p.status === 'available').length;
            
            return (
              <div
                key={section}
                className="bg-white dark:bg-gray-800 rounded-lg p-4 shadow-md border border-gray-200 dark:border-gray-700"
              >
                <h4 className="text-xl font-bold text-gray-800 dark:text-white mb-2">
                  Section {section}
                </h4>
                <div className="space-y-1 text-sm">
                  <div className="flex justify-between">
                    <span className="text-gray-600 dark:text-gray-400">Total:</span>
                    <span className="font-medium text-gray-900 dark:text-white">{sectionPlots.length}</span>
                  </div>
                  <div className="flex justify-between">
                    <span className="text-green-600">Available:</span>
                    <span className="font-medium text-green-600">{available}</span>
                  </div>
                  <div className="flex justify-between">
                    <span className="text-red-600">Occupied:</span>
                    <span className="font-medium text-red-600">{occupied}</span>
                  </div>
                </div>
                <div className="mt-3 h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
                  <div 
                    className="h-full bg-red-500" 
                    style={{ width: `${(occupied / sectionPlots.length) * 100}%` }}
                  />
                </div>
              </div>
            );
          })}
        </div>
      </div>
    );
  }

  return (
    <div className="relative w-full h-full bg-gray-100 dark:bg-gray-900 rounded-lg overflow-auto">
      {/* Section header */}
      <div className="sticky top-0 bg-gray-100 dark:bg-gray-900 p-3 border-b border-gray-200 dark:border-gray-700 z-10">
        <div className="flex justify-between items-center">
          <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300">
            Section {selectedSection.toUpperCase()} - {filteredPlots.length} plots
          </h3>
          <div className="text-sm text-gray-500 dark:text-gray-400">
            <span className="text-green-600 font-medium">
              {filteredPlots.filter(p => p.status === 'available').length} available
            </span>
            {' | '}
            <span className="text-red-600 font-medium">
              {filteredPlots.filter(p => p.status === 'occupied').length} occupied
            </span>
          </div>
        </div>
      </div>

      {/* Plot grid */}
      <div className="p-4">
        {rows.length > 0 ? (
          <div className="space-y-2">
            {rows.map(rowNum => (
              <div key={rowNum} className="flex items-center gap-1">
                <div className="w-12 text-xs text-gray-500 dark:text-gray-400 font-medium text-right pr-2">
                  Row {rowNum}
                </div>
                <div className="flex gap-1 flex-wrap">
                  {plotsByRow[rowNum].map(plot => (
                    <div
                      key={plot.id}
                      className={`
                        w-8 h-8 rounded cursor-pointer transition-all duration-150
                        ${getPlotColor(plot)} ${getPlotBorder(plot)}
                        hover:opacity-90 hover:scale-110
                        flex items-center justify-center
                      `}
                      onMouseEnter={() => setHoveredPlot(plot.id)}
                      onMouseLeave={() => setHoveredPlot(null)}
                      onClick={() => handlePlotClick(plot)}
                      title={`${plot.plot_number} - ${plot.status}`}
                    >
                      <span className="text-[8px] text-white font-bold">
                        {plot.plot_position}
                      </span>
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="text-center py-12 text-gray-500 dark:text-gray-400">
            No plots found for this section
          </div>
        )}
      </div>

      {/* Selected plot details panel */}
      {selectedPlot && (
        <div className="absolute bottom-4 right-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-4 max-w-sm border border-gray-200 dark:border-gray-700 z-20">
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
              <span className="text-gray-600 dark:text-gray-400">Section:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                Section {selectedPlot.section}
              </span>
            </div>
            
            <div className="flex justify-between">
              <span className="text-gray-600 dark:text-gray-400">Row / Position:</span>
              <span className="font-medium text-gray-900 dark:text-white">
                {selectedPlot.row_number} / {selectedPlot.plot_position}
              </span>
            </div>
            
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
                <span className="font-medium text-gray-900 dark:text-white text-right max-w-[180px] truncate">
                  {selectedPlot.owner_name}
                </span>
              </div>
            )}

            {selectedPlot.purchase_date && (
              <div className="flex justify-between">
                <span className="text-gray-600 dark:text-gray-400">Purchased:</span>
                <span className="font-medium text-gray-900 dark:text-white">
                  {new Date(selectedPlot.purchase_date).toLocaleDateString()}
                </span>
              </div>
            )}

            {selectedPlot.deceased_records && selectedPlot.deceased_records.length > 0 && (
              <div className="mt-3 pt-3 border-t border-gray-200 dark:border-gray-700">
                <p className="text-gray-600 dark:text-gray-400 mb-1">Interred:</p>
                {selectedPlot.deceased_records.map((deceased: any) => (
                  <div key={deceased.id} className="mb-1">
                    <p className="font-medium text-gray-900 dark:text-white">
                      {deceased.first_name} {deceased.middle_name ? deceased.middle_name + ' ' : ''}{deceased.last_name}
                    </p>
                    {deceased.birth_date && deceased.death_date && (
                      <p className="text-xs text-gray-500 dark:text-gray-400">
                        {new Date(deceased.birth_date).getFullYear()} - {new Date(deceased.death_date).getFullYear()}
                      </p>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>
      )}

      {/* Hover tooltip */}
      {hoveredPlot && !selectedPlot && (
        <div className="fixed bottom-4 left-4 bg-white dark:bg-gray-800 rounded-lg shadow-lg p-3 border border-gray-200 dark:border-gray-700 z-20 pointer-events-none">
          {(() => {
            const plot = filteredPlots.find(p => p.id === hoveredPlot);
            if (!plot) return null;
            return (
              <div className="text-sm">
                <p className="font-bold text-gray-900 dark:text-white">{plot.plot_number}</p>
                <p className="text-gray-600 dark:text-gray-400">
                  Status: <span className={
                    plot.status === 'available' ? 'text-green-600' :
                    plot.status === 'reserved' ? 'text-yellow-600' :
                    'text-red-600'
                  }>{plot.status}</span>
                </p>
                {plot.owner_name && (
                  <p className="text-gray-600 dark:text-gray-400">Owner: {plot.owner_name}</p>
                )}
              </div>
            );
          })()}
        </div>
      )}
    </div>
  );
}
