'use client';

import { useState, useEffect, useCallback } from 'react';

interface PlotCell {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  status: string;
  plot_type: string;
  owner_name?: string;
  deceased_records?: Array<{
    id: string;
    first_name: string;
    last_name: string;
    death_date?: string;
  }>;
}

interface BlockGridMoverProps {
  section: string;
  currentPlotId: string;
  currentPlotNumber: string;
  onMoveComplete?: () => void;
}

type MoveStep = 'select-destination' | 'confirm' | 'moving' | 'done';

export default function BlockGridMover({
  section,
  currentPlotId,
  currentPlotNumber,
  onMoveComplete,
}: BlockGridMoverProps) {
  const [plots, setPlots] = useState<PlotCell[]>([]);
  const [grid, setGrid] = useState<Record<number, Record<number, PlotCell>>>({});
  const [maxRow, setMaxRow] = useState(0);
  const [maxPosition, setMaxPosition] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  const [selectedDestination, setSelectedDestination] = useState<PlotCell | null>(null);
  const [step, setStep] = useState<MoveStep>('select-destination');
  const [moveResult, setMoveResult] = useState('');
  const [moveError, setMoveError] = useState('');

  const fetchSection = useCallback(async () => {
    setLoading(true);
    setError('');
    try {
      const res = await fetch(`/api/admin/plots/section/${section}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setPlots(json.plots);
      setGrid(json.grid);
      setMaxRow(json.maxRow);
      setMaxPosition(json.maxPosition);
    } catch (err: any) {
      setError(err.message || 'Failed to load section data');
    } finally {
      setLoading(false);
    }
  }, [section]);

  useEffect(() => {
    fetchSection();
  }, [fetchSection]);

  const handleCellClick = (plot: PlotCell) => {
    if (plot.id === currentPlotId) return; // Can't select self
    if (step !== 'select-destination') return;
    setSelectedDestination(plot);
  };

  const handleConfirmMove = async () => {
    if (!selectedDestination) return;
    setStep('moving');
    setMoveError('');

    try {
      const res = await fetch(`/api/admin/plots/${currentPlotId}/overwrite`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ destination_plot_id: selectedDestination.id }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);

      setMoveResult(json.message);
      setStep('done');
      // Refresh grid after move
      fetchSection();
      onMoveComplete?.();
    } catch (err: any) {
      setMoveError(err.message || 'Move failed');
      setStep('confirm');
    }
  };

  const handleReset = () => {
    setSelectedDestination(null);
    setStep('select-destination');
    setMoveResult('');
    setMoveError('');
  };

  // Status color mapping
  const getCellColor = (plot: PlotCell) => {
    if (plot.id === currentPlotId) return 'bg-blue-500 text-white border-blue-700 ring-4 ring-blue-300';
    if (selectedDestination?.id === plot.id) return 'bg-amber-400 text-white border-amber-600 ring-4 ring-amber-300';
    if (plot.status === 'occupied') return 'bg-red-100 text-red-800 border-red-300 hover:bg-red-200 cursor-pointer';
    if (plot.status === 'reserved') return 'bg-yellow-100 text-yellow-800 border-yellow-300 hover:bg-yellow-200 cursor-pointer';
    return 'bg-emerald-50 text-emerald-800 border-emerald-200 hover:bg-emerald-100 cursor-pointer';
  };

  const getOccupantName = (plot: PlotCell) => {
    if (plot.deceased_records && plot.deceased_records.length > 0) {
      const d = plot.deceased_records[0];
      return `${d.first_name} ${d.last_name}`;
    }
    return plot.owner_name || null;
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center py-12">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-emerald-600 mr-3"></div>
        <span className="text-gray-600">Loading Section {section} grid...</span>
      </div>
    );
  }

  if (error) {
    return (
      <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">
        {error}
      </div>
    );
  }

  return (
    <div className="space-y-4">
      {/* Legend */}
      <div className="flex flex-wrap items-center gap-4 text-xs">
        <div className="flex items-center gap-1.5">
          <div className="w-4 h-4 rounded bg-blue-500 border border-blue-700"></div>
          <span className="text-gray-600">Source (current plot)</span>
        </div>
        <div className="flex items-center gap-1.5">
          <div className="w-4 h-4 rounded bg-amber-400 border border-amber-600"></div>
          <span className="text-gray-600">Selected destination</span>
        </div>
        <div className="flex items-center gap-1.5">
          <div className="w-4 h-4 rounded bg-red-100 border border-red-300"></div>
          <span className="text-gray-600">Occupied</span>
        </div>
        <div className="flex items-center gap-1.5">
          <div className="w-4 h-4 rounded bg-yellow-100 border border-yellow-300"></div>
          <span className="text-gray-600">Reserved</span>
        </div>
        <div className="flex items-center gap-1.5">
          <div className="w-4 h-4 rounded bg-emerald-50 border border-emerald-200"></div>
          <span className="text-gray-600">Available</span>
        </div>
      </div>

      {/* Instructions */}
      {step === 'select-destination' && (
        <div className="bg-blue-50 border border-blue-200 rounded-lg px-4 py-3 text-sm text-blue-800">
          <strong>Step 1:</strong> Click any plot in the grid below to select it as the destination.
          All data from <strong>{currentPlotNumber}</strong> (blue) will be moved there.
        </div>
      )}

      {step === 'done' && (
        <div className="bg-green-50 border border-green-200 rounded-lg px-4 py-3 text-sm text-green-800">
          ✓ <strong>Move complete!</strong> {moveResult}
          <button
            onClick={handleReset}
            className="ml-3 underline text-green-700 hover:text-green-900"
          >
            Move again
          </button>
        </div>
      )}

      {moveError && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">
          {moveError}
        </div>
      )}

      {/* Grid */}
      <div className="overflow-x-auto">
        <div className="inline-block min-w-full">
          {/* Column headers (positions) */}
          <div className="flex items-center mb-1">
            <div className="w-16 shrink-0"></div>
            {Array.from({ length: maxPosition }, (_, i) => i + 1).map((pos) => (
              <div
                key={pos}
                className="w-28 shrink-0 text-center text-xs font-medium text-gray-500 px-1"
              >
                Pos {pos}
              </div>
            ))}
          </div>

          {/* Rows */}
          {Array.from({ length: maxRow }, (_, i) => i + 1).map((row) => (
            <div key={row} className="flex items-stretch mb-1">
              {/* Row label */}
              <div className="w-16 shrink-0 flex items-center justify-center text-xs font-medium text-gray-500 bg-gray-50 rounded border border-gray-200 mr-1">
                Row {row}
              </div>

              {/* Plot cells */}
              {Array.from({ length: maxPosition }, (_, i) => i + 1).map((pos) => {
                const plot = grid[row]?.[pos];
                if (!plot) {
                  return (
                    <div
                      key={pos}
                      className="w-28 shrink-0 h-16 mx-0.5 rounded border border-dashed border-gray-200 bg-gray-50 flex items-center justify-center"
                    >
                      <span className="text-xs text-gray-300">—</span>
                    </div>
                  );
                }

                const occupant = getOccupantName(plot);
                const isSource = plot.id === currentPlotId;
                const isSelected = selectedDestination?.id === plot.id;

                return (
                  <div
                    key={pos}
                    onClick={() => handleCellClick(plot)}
                    className={`w-28 shrink-0 h-16 mx-0.5 rounded border p-1 flex flex-col justify-between transition-all ${getCellColor(plot)} ${
                      isSource ? 'cursor-default' : ''
                    }`}
                    title={`${plot.plot_number}${occupant ? ` — ${occupant}` : ''}`}
                  >
                    <div className="text-xs font-bold leading-tight truncate">
                      {plot.plot_number}
                    </div>
                    {occupant && (
                      <div className="text-xs leading-tight truncate opacity-80">
                        {occupant}
                      </div>
                    )}
                    <div className="text-xs opacity-60 capitalize">{plot.status}</div>
                    {isSource && (
                      <div className="absolute -top-1 -right-1 bg-blue-600 text-white text-xs rounded-full w-4 h-4 flex items-center justify-center font-bold">
                        S
                      </div>
                    )}
                  </div>
                );
              })}
            </div>
          ))}
        </div>
      </div>

      {/* Confirmation panel */}
      {selectedDestination && step === 'select-destination' && (
        <div className="bg-amber-50 border border-amber-300 rounded-lg p-4 mt-4">
          <h4 className="font-semibold text-amber-900 mb-2">Confirm Move</h4>
          <div className="grid grid-cols-2 gap-4 text-sm mb-4">
            <div className="bg-white rounded border border-amber-200 p-3">
              <div className="text-xs text-gray-500 mb-1">FROM (source)</div>
              <div className="font-bold text-blue-700">{currentPlotNumber}</div>
              <div className="text-xs text-gray-500">Section {section}</div>
            </div>
            <div className="bg-white rounded border border-amber-200 p-3">
              <div className="text-xs text-gray-500 mb-1">TO (destination)</div>
              <div className="font-bold text-amber-700">{selectedDestination.plot_number}</div>
              <div className="text-xs text-gray-500">
                Section {selectedDestination.section} · Row {selectedDestination.row_number} · Pos {selectedDestination.plot_position}
              </div>
              {selectedDestination.status === 'occupied' && (
                <div className="text-xs text-red-600 mt-1 font-medium">
                  ⚠ This plot is occupied — existing data will be overwritten
                </div>
              )}
            </div>
          </div>
          <p className="text-sm text-amber-800 mb-4">
            All deceased records, burial services, reservations, and family connections from{' '}
            <strong>{currentPlotNumber}</strong> will be moved to{' '}
            <strong>{selectedDestination.plot_number}</strong>.
            {selectedDestination.status === 'occupied' && (
              <span className="text-red-700 font-medium">
                {' '}Any existing data at the destination will be overwritten.
              </span>
            )}
          </p>
          <div className="flex gap-3">
            <button
              onClick={handleReset}
              className="px-4 py-2 bg-white border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-50 text-sm font-medium"
            >
              Cancel
            </button>
            <button
              onClick={handleConfirmMove}
              className="px-4 py-2 bg-amber-600 text-white rounded-lg hover:bg-amber-700 text-sm font-medium"
            >
              ✓ Confirm Move to {selectedDestination.plot_number}
            </button>
          </div>
        </div>
      )}

      {step === 'moving' && (
        <div className="bg-blue-50 border border-blue-200 rounded-lg px-4 py-3 text-sm text-blue-800 flex items-center gap-2">
          <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-blue-600"></div>
          Moving data from {currentPlotNumber} to {selectedDestination?.plot_number}...
        </div>
      )}
    </div>
  );
}
