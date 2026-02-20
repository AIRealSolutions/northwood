'use client';

import { useSession } from 'next-auth/react';
import { useRouter, useParams } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';

interface DeceasedRecord {
  id: string;
  first_name: string;
  last_name: string;
  maiden_name?: string;
  birth_date?: string;
  death_date?: string;
  age_at_death?: number;
  notes?: string;
  plot_id: string;
}

interface BurialService {
  id: string;
  service_date?: string;
  service_type?: string;
  funeral_home?: string;
  notes?: string;
}

interface PlotReservation {
  id: string;
  reserved_for?: string;
  reservation_date?: string;
  contact_info?: string;
  notes?: string;
}

interface Plot {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  plot_type: string;
  status: 'available' | 'reserved' | 'occupied';
  size_width?: number;
  size_length?: number;
  price?: number;
  owner_name?: string;
  owner_contact?: string;
  purchase_date?: string;
  notes?: string;
  created_at: string;
  updated_at: string;
  deceased_records: DeceasedRecord[];
  burial_services: BurialService[];
  plot_reservations: PlotReservation[];
}

interface PlotSearchResult {
  id: string;
  plot_number: string;
  section: string;
  status: string;
  plot_type: string;
}

const STATUS_COLORS = {
  available: 'bg-green-100 text-green-800',
  reserved: 'bg-yellow-100 text-yellow-800',
  occupied: 'bg-red-100 text-red-800',
};

export default function AdminPlotDetailPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const params = useParams();
  const plotId = params.id as string;

  const [plot, setPlot] = useState<Plot | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  // Move modal state
  const [moveModalOpen, setMoveModalOpen] = useState(false);
  const [moveTarget, setMoveTarget] = useState<DeceasedRecord | null>(null);
  const [moveSearch, setMoveSearch] = useState('');
  const [moveSearchResults, setMoveSearchResults] = useState<PlotSearchResult[]>([]);
  const [moveSearchLoading, setMoveSearchLoading] = useState(false);
  const [selectedNewPlot, setSelectedNewPlot] = useState<PlotSearchResult | null>(null);
  const [moveReason, setMoveReason] = useState('');
  const [moveLoading, setMoveLoading] = useState(false);
  const [moveError, setMoveError] = useState('');
  const [moveSuccess, setMoveSuccess] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) {
      router.push('/auth/login?callbackUrl=/admin/plots');
      return;
    }
    if (session.user?.role !== 'admin') {
      router.push('/admin');
      return;
    }
    fetchPlot();
  }, [session, status, plotId]);

  const fetchPlot = async () => {
    try {
      setLoading(true);
      const res = await fetch(`/api/admin/plots/${plotId}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setPlot(json.data);
    } catch (err: any) {
      setError(err.message || 'Failed to load plot');
    } finally {
      setLoading(false);
    }
  };

  const handleMoveSearch = async (q: string) => {
    setMoveSearch(q);
    if (q.length < 2) {
      setMoveSearchResults([]);
      return;
    }
    setMoveSearchLoading(true);
    try {
      const res = await fetch(`/api/admin/plots/search?q=${encodeURIComponent(q)}`);
      const json = await res.json();
      setMoveSearchResults((json.data || []).filter((p: PlotSearchResult) => p.id !== plotId));
    } catch {
      setMoveSearchResults([]);
    } finally {
      setMoveSearchLoading(false);
    }
  };

  const handleMoveConfirm = async () => {
    if (!moveTarget || !selectedNewPlot) return;
    setMoveLoading(true);
    setMoveError('');
    setMoveSuccess('');
    try {
      const res = await fetch(`/api/admin/deceased/${moveTarget.id}/move`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ new_plot_id: selectedNewPlot.id, reason: moveReason }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setMoveSuccess(json.message);
      setTimeout(() => {
        setMoveModalOpen(false);
        setMoveTarget(null);
        setMoveSearch('');
        setMoveSearchResults([]);
        setSelectedNewPlot(null);
        setMoveReason('');
        setMoveSuccess('');
        fetchPlot();
      }, 1500);
    } catch (err: any) {
      setMoveError(err.message || 'Failed to move record');
    } finally {
      setMoveLoading(false);
    }
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600 mx-auto mb-4"></div>
          <p className="text-gray-600">Loading plot details...</p>
        </div>
      </div>
    );
  }

  if (error || !plot) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <p className="text-red-600 text-lg">{error || 'Plot not found'}</p>
          <Link href="/admin/plots" className="mt-4 inline-block text-emerald-600 hover:underline">
            ← Back to Plots
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white shadow-sm border-b border-gray-200">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-3">
              <Link href="/admin/plots" className="text-gray-500 hover:text-gray-700 text-sm">
                ← Plot Management
              </Link>
              <span className="text-gray-300">/</span>
              <h1 className="text-2xl font-bold text-gray-900">Plot {plot.plot_number}</h1>
              <span className={`px-2 py-1 text-xs font-medium rounded-full ${STATUS_COLORS[plot.status]}`}>
                {plot.status}
              </span>
            </div>
            <div className="flex gap-3">
              <Link
                href={`/admin/plots/${plot.id}/edit`}
                className="px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors font-medium text-sm"
              >
                Edit Plot
              </Link>
            </div>
          </div>
        </div>
      </header>

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Plot Details Card */}
          <div className="lg:col-span-1">
            <div className="bg-white rounded-lg shadow p-6">
              <h2 className="text-lg font-semibold text-gray-900 mb-4">Plot Details</h2>
              <dl className="space-y-3">
                <div>
                  <dt className="text-xs font-medium text-gray-500 uppercase">Plot Number</dt>
                  <dd className="text-sm text-gray-900 mt-1 font-medium">{plot.plot_number}</dd>
                </div>
                <div>
                  <dt className="text-xs font-medium text-gray-500 uppercase">Section</dt>
                  <dd className="text-sm text-gray-900 mt-1">Section {plot.section}</dd>
                </div>
                <div>
                  <dt className="text-xs font-medium text-gray-500 uppercase">Row / Position</dt>
                  <dd className="text-sm text-gray-900 mt-1">Row {plot.row_number}, Position {plot.plot_position}</dd>
                </div>
                <div>
                  <dt className="text-xs font-medium text-gray-500 uppercase">Type</dt>
                  <dd className="text-sm text-gray-900 mt-1 capitalize">{plot.plot_type}</dd>
                </div>
                <div>
                  <dt className="text-xs font-medium text-gray-500 uppercase">Status</dt>
                  <dd className="mt-1">
                    <span className={`px-2 py-1 text-xs font-medium rounded-full ${STATUS_COLORS[plot.status]}`}>
                      {plot.status}
                    </span>
                  </dd>
                </div>
                {(plot.size_width || plot.size_length) && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Dimensions</dt>
                    <dd className="text-sm text-gray-900 mt-1">
                      {plot.size_width && plot.size_length
                        ? `${plot.size_width} × ${plot.size_length} ft`
                        : plot.size_width
                        ? `${plot.size_width} ft wide`
                        : `${plot.size_length} ft long`}
                    </dd>
                  </div>
                )}
                {plot.price && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Price</dt>
                    <dd className="text-sm text-gray-900 mt-1">${plot.price.toLocaleString()}</dd>
                  </div>
                )}
                {plot.owner_name && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Owner</dt>
                    <dd className="text-sm text-gray-900 mt-1">{plot.owner_name}</dd>
                  </div>
                )}
                {plot.owner_contact && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Owner Contact</dt>
                    <dd className="text-sm text-gray-900 mt-1">{plot.owner_contact}</dd>
                  </div>
                )}
                {plot.purchase_date && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Purchase Date</dt>
                    <dd className="text-sm text-gray-900 mt-1">
                      {new Date(plot.purchase_date).toLocaleDateString()}
                    </dd>
                  </div>
                )}
                {plot.notes && (
                  <div>
                    <dt className="text-xs font-medium text-gray-500 uppercase">Notes</dt>
                    <dd className="text-sm text-gray-700 mt-1 whitespace-pre-wrap">{plot.notes}</dd>
                  </div>
                )}
                <div className="pt-2 border-t border-gray-100">
                  <dt className="text-xs font-medium text-gray-500 uppercase">Created</dt>
                  <dd className="text-xs text-gray-500 mt-1">
                    {new Date(plot.created_at).toLocaleDateString()}
                  </dd>
                </div>
              </dl>
            </div>
          </div>

          {/* Right Column */}
          <div className="lg:col-span-2 space-y-6">
            {/* Deceased Records */}
            <div className="bg-white rounded-lg shadow">
              <div className="px-6 py-4 border-b border-gray-200 flex items-center justify-between">
                <h2 className="text-lg font-semibold text-gray-900">
                  Deceased Records ({plot.deceased_records?.length || 0})
                </h2>
              </div>
              {plot.deceased_records && plot.deceased_records.length > 0 ? (
                <div className="divide-y divide-gray-100">
                  {plot.deceased_records.map((record) => (
                    <div key={record.id} className="px-6 py-4">
                      <div className="flex items-start justify-between">
                        <div>
                          <p className="text-sm font-semibold text-gray-900">
                            {record.first_name} {record.last_name}
                            {record.maiden_name && (
                              <span className="text-gray-500 font-normal"> née {record.maiden_name}</span>
                            )}
                          </p>
                          <div className="mt-1 flex gap-4 text-xs text-gray-500">
                            {record.birth_date && (
                              <span>Born: {new Date(record.birth_date).toLocaleDateString()}</span>
                            )}
                            {record.death_date && (
                              <span>Died: {new Date(record.death_date).toLocaleDateString()}</span>
                            )}
                            {record.age_at_death && (
                              <span>Age: {record.age_at_death}</span>
                            )}
                          </div>
                          {record.notes && (
                            <p className="text-xs text-gray-500 mt-1 italic">{record.notes}</p>
                          )}
                        </div>
                        <button
                          onClick={() => {
                            setMoveTarget(record);
                            setMoveModalOpen(true);
                            setMoveSearch('');
                            setMoveSearchResults([]);
                            setSelectedNewPlot(null);
                            setMoveReason('');
                            setMoveError('');
                            setMoveSuccess('');
                          }}
                          className="ml-4 px-3 py-1 text-xs bg-orange-50 text-orange-700 border border-orange-200 rounded-lg hover:bg-orange-100 transition-colors whitespace-nowrap"
                        >
                          Move to Another Plot
                        </button>
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <div className="px-6 py-8 text-center text-gray-500">
                  <p className="text-sm">No deceased records associated with this plot.</p>
                </div>
              )}
            </div>

            {/* Burial Services */}
            {plot.burial_services && plot.burial_services.length > 0 && (
              <div className="bg-white rounded-lg shadow">
                <div className="px-6 py-4 border-b border-gray-200">
                  <h2 className="text-lg font-semibold text-gray-900">
                    Burial Services ({plot.burial_services.length})
                  </h2>
                </div>
                <div className="divide-y divide-gray-100">
                  {plot.burial_services.map((service) => (
                    <div key={service.id} className="px-6 py-4">
                      <div className="flex gap-4 text-sm text-gray-700">
                        {service.service_date && (
                          <span>Date: {new Date(service.service_date).toLocaleDateString()}</span>
                        )}
                        {service.service_type && (
                          <span className="capitalize">Type: {service.service_type}</span>
                        )}
                        {service.funeral_home && (
                          <span>Funeral Home: {service.funeral_home}</span>
                        )}
                      </div>
                      {service.notes && (
                        <p className="text-xs text-gray-500 mt-1">{service.notes}</p>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Reservations */}
            {plot.plot_reservations && plot.plot_reservations.length > 0 && (
              <div className="bg-white rounded-lg shadow">
                <div className="px-6 py-4 border-b border-gray-200">
                  <h2 className="text-lg font-semibold text-gray-900">
                    Reservations ({plot.plot_reservations.length})
                  </h2>
                </div>
                <div className="divide-y divide-gray-100">
                  {plot.plot_reservations.map((res) => (
                    <div key={res.id} className="px-6 py-4">
                      <p className="text-sm font-medium text-gray-900">{res.reserved_for || 'Unknown'}</p>
                      <div className="flex gap-4 text-xs text-gray-500 mt-1">
                        {res.reservation_date && (
                          <span>Reserved: {new Date(res.reservation_date).toLocaleDateString()}</span>
                        )}
                        {res.contact_info && <span>Contact: {res.contact_info}</span>}
                      </div>
                      {res.notes && <p className="text-xs text-gray-500 mt-1">{res.notes}</p>}
                    </div>
                  ))}
                </div>
              </div>
            )}
          </div>
        </div>
      </main>

      {/* Move to Another Plot Modal */}
      {moveModalOpen && moveTarget && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-lg shadow-xl max-w-lg w-full">
            <div className="px-6 py-4 border-b border-gray-200">
              <h3 className="text-lg font-semibold text-gray-900">Move Record to Another Plot</h3>
              <p className="text-sm text-gray-600 mt-1">
                Moving: <strong>{moveTarget.first_name} {moveTarget.last_name}</strong>
              </p>
            </div>
            <div className="px-6 py-4 space-y-4">
              {moveSuccess ? (
                <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded-lg text-sm">
                  ✓ {moveSuccess}
                </div>
              ) : (
                <>
                  {/* Search for new plot */}
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">
                      Search for Destination Plot
                    </label>
                    <input
                      type="text"
                      value={moveSearch}
                      onChange={(e) => handleMoveSearch(e.target.value)}
                      placeholder="Enter plot number (e.g. A-001)..."
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
                    />
                    {moveSearchLoading && (
                      <p className="text-xs text-gray-500 mt-1">Searching...</p>
                    )}
                    {moveSearchResults.length > 0 && !selectedNewPlot && (
                      <div className="mt-2 border border-gray-200 rounded-lg divide-y divide-gray-100 max-h-48 overflow-y-auto">
                        {moveSearchResults.map((p) => (
                          <button
                            key={p.id}
                            onClick={() => {
                              setSelectedNewPlot(p);
                              setMoveSearch(p.plot_number);
                              setMoveSearchResults([]);
                            }}
                            className="w-full text-left px-3 py-2 hover:bg-gray-50 text-sm"
                          >
                            <span className="font-medium text-emerald-700">{p.plot_number}</span>
                            <span className="text-gray-500 ml-2">Section {p.section} · {p.plot_type}</span>
                            <span className={`ml-2 px-1.5 py-0.5 text-xs rounded-full ${STATUS_COLORS[p.status as keyof typeof STATUS_COLORS] || 'bg-gray-100 text-gray-600'}`}>
                              {p.status}
                            </span>
                          </button>
                        ))}
                      </div>
                    )}
                  </div>

                  {/* Selected plot confirmation */}
                  {selectedNewPlot && (
                    <div className="bg-emerald-50 border border-emerald-200 rounded-lg px-4 py-3">
                      <p className="text-sm font-medium text-emerald-800">
                        Destination: Plot {selectedNewPlot.plot_number}
                      </p>
                      <p className="text-xs text-emerald-600 mt-0.5">
                        Section {selectedNewPlot.section} · {selectedNewPlot.plot_type} · {selectedNewPlot.status}
                      </p>
                      <button
                        onClick={() => { setSelectedNewPlot(null); setMoveSearch(''); }}
                        className="text-xs text-emerald-700 underline mt-1"
                      >
                        Change
                      </button>
                    </div>
                  )}

                  {/* Reason */}
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-1">
                      Reason for Move <span className="text-gray-400">(optional)</span>
                    </label>
                    <textarea
                      value={moveReason}
                      onChange={(e) => setMoveReason(e.target.value)}
                      placeholder="e.g. Initial location was entered incorrectly..."
                      rows={2}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm resize-none"
                    />
                  </div>

                  {moveError && (
                    <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">
                      {moveError}
                    </div>
                  )}
                </>
              )}
            </div>
            <div className="px-6 py-4 border-t border-gray-200 flex justify-end gap-3">
              <button
                onClick={() => {
                  setMoveModalOpen(false);
                  setMoveTarget(null);
                  setMoveSearch('');
                  setMoveSearchResults([]);
                  setSelectedNewPlot(null);
                  setMoveReason('');
                  setMoveError('');
                  setMoveSuccess('');
                }}
                className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 text-sm"
                disabled={moveLoading}
              >
                {moveSuccess ? 'Close' : 'Cancel'}
              </button>
              {!moveSuccess && (
                <button
                  onClick={handleMoveConfirm}
                  disabled={!selectedNewPlot || moveLoading}
                  className="px-4 py-2 bg-orange-600 text-white rounded-lg hover:bg-orange-700 disabled:opacity-50 text-sm"
                >
                  {moveLoading ? 'Moving...' : 'Confirm Move'}
                </button>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
