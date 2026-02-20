'use client';

import { useSession } from 'next-auth/react';
import { useRouter, useParams } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
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

interface AvailablePlot {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  plot_type: string;
}

const STATUS_COLORS = {
  available: 'bg-green-100 text-green-800 border-green-200',
  reserved: 'bg-yellow-100 text-yellow-800 border-yellow-200',
  occupied: 'bg-red-100 text-red-800 border-red-200',
};

export default function AdminPlotDetailPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const params = useParams();
  const plotId = params.id as string;

  const [plot, setPlot] = useState<Plot | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  // Mode: null = default view, 'edit-info' = edit form inline, 'move-block' = move to available
  const [mode, setMode] = useState<null | 'move-block'>(null);

  // Move-in-block state
  const [availablePlots, setAvailablePlots] = useState<AvailablePlot[]>([]);
  const [loadingAvailable, setLoadingAvailable] = useState(false);
  const [selectedDest, setSelectedDest] = useState<AvailablePlot | null>(null);
  const [moveNotes, setMoveNotes] = useState('');
  const [moving, setMoving] = useState(false);
  const [moveError, setMoveError] = useState('');
  const [moveSuccess, setMoveSuccess] = useState('');

  // Inline edit state
  const [editForm, setEditForm] = useState({
    plot_number: '',
    section: '',
    row_number: '',
    plot_position: '',
    plot_type: '',
    status: '',
    owner_name: '',
    owner_contact: '',
    purchase_date: '',
    price: '',
    notes: '',
  });
  const [editLoading, setEditLoading] = useState(false);
  const [editError, setEditError] = useState('');
  const [editSuccess, setEditSuccess] = useState('');
  const [showEditForm, setShowEditForm] = useState(false);

  // Add / Edit Deceased Record state
  const [showAddDeceased, setShowAddDeceased] = useState(false);
  const [editingDeceased, setEditingDeceased] = useState<DeceasedRecord | null>(null);
  const [deceasedForm, setDeceasedForm] = useState({
    first_name: '', last_name: '', middle_name: '', maiden_name: '',
    birth_date: '', death_date: '', burial_date: '', age_at_death: '',
    gender: '', veteran_status: false, military_branch: '',
    obituary: '', epitaph: '', next_of_kin: '', funeral_home: '',
    burial_permit_number: '', death_certificate_number: '', notes: '',
  });
  const [deceasedLoading, setDeceasedLoading] = useState(false);
  const [deceasedError, setDeceasedError] = useState('');
  const [deceasedSuccess, setDeceasedSuccess] = useState('');

  const openAddDeceased = () => {
    setEditingDeceased(null);
    setDeceasedForm({
      first_name: '', last_name: '', middle_name: '', maiden_name: '',
      birth_date: '', death_date: '', burial_date: '', age_at_death: '',
      gender: '', veteran_status: false, military_branch: '',
      obituary: '', epitaph: '', next_of_kin: '', funeral_home: '',
      burial_permit_number: '', death_certificate_number: '', notes: '',
    });
    setDeceasedError('');
    setDeceasedSuccess('');
    setShowAddDeceased(true);
  };

  const openEditDeceased = (record: DeceasedRecord) => {
    setEditingDeceased(record);
    setDeceasedForm({
      first_name: record.first_name || '',
      last_name: record.last_name || '',
      middle_name: (record as any).middle_name || '',
      maiden_name: record.maiden_name || '',
      birth_date: record.birth_date ? record.birth_date.split('T')[0] : '',
      death_date: record.death_date ? record.death_date.split('T')[0] : '',
      burial_date: (record as any).burial_date ? (record as any).burial_date.split('T')[0] : '',
      age_at_death: record.age_at_death ? String(record.age_at_death) : '',
      gender: (record as any).gender || '',
      veteran_status: (record as any).veteran_status || false,
      military_branch: (record as any).military_branch || '',
      obituary: (record as any).obituary || '',
      epitaph: (record as any).epitaph || '',
      next_of_kin: (record as any).next_of_kin || '',
      funeral_home: (record as any).funeral_home || '',
      burial_permit_number: (record as any).burial_permit_number || '',
      death_certificate_number: (record as any).death_certificate_number || '',
      notes: record.notes || '',
    });
    setDeceasedError('');
    setDeceasedSuccess('');
    setShowAddDeceased(true);
  };

  const handleDeceasedSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!plot) return;
    setDeceasedLoading(true);
    setDeceasedError('');
    setDeceasedSuccess('');
    try {
      const url = editingDeceased
        ? `/api/admin/deceased/${editingDeceased.id}`
        : '/api/admin/deceased';
      const method = editingDeceased ? 'PUT' : 'POST';
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ...deceasedForm, plot_id: plot.id }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setDeceasedSuccess(editingDeceased ? 'Record updated.' : 'Deceased record added.');
      setShowAddDeceased(false);
      setEditingDeceased(null);
      fetchPlot();
    } catch (err: any) {
      setDeceasedError(err.message || 'Failed to save record');
    } finally {
      setDeceasedLoading(false);
    }
  };

  const handleDeleteDeceased = async (recordId: string, name: string) => {
    if (!confirm(`Delete record for ${name}? This cannot be undone.`)) return;
    try {
      const res = await fetch(`/api/admin/deceased/${recordId}`, { method: 'DELETE' });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      fetchPlot();
    } catch (err: any) {
      alert(err.message || 'Failed to delete record');
    }
  };

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
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [session, status, plotId]);

  const fetchPlot = async () => {
    try {
      setLoading(true);
      const res = await fetch(`/api/admin/plots/${plotId}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setPlot(json.data);
      // Pre-fill edit form
      const p = json.data;
      setEditForm({
        plot_number: p.plot_number || '',
        section: p.section || '',
        row_number: String(p.row_number || ''),
        plot_position: String(p.plot_position || ''),
        plot_type: p.plot_type || 'standard',
        status: p.status || 'available',
        owner_name: p.owner_name || '',
        owner_contact: p.owner_contact || '',
        purchase_date: p.purchase_date ? p.purchase_date.split('T')[0] : '',
        price: p.price ? String(p.price) : '',
        notes: p.notes || '',
      });
    } catch (err: any) {
      setError(err.message || 'Failed to load plot');
    } finally {
      setLoading(false);
    }
  };

  // Load available plots in the SAME BLOCK (same section + same row_number) when Move mode is activated
  const loadAvailablePlots = useCallback(async (section: string, rowNumber: number) => {
    setLoadingAvailable(true);
    setAvailablePlots([]);
    try {
      const res = await fetch(`/api/admin/plots/section/${section}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      // Filter to only available plots in the SAME ROW (block) — exclude current plot
      const available = (json.plots || []).filter(
        (p: any) => p.status === 'available' && p.id !== plotId && p.row_number === rowNumber
      );
      setAvailablePlots(available);
    } catch {
      setAvailablePlots([]);
    } finally {
      setLoadingAvailable(false);
    }
  }, [plotId]);

  const handleEnterMoveMode = () => {
    setMode('move-block');
    setSelectedDest(null);
    setMoveNotes('');
    setMoveError('');
    setMoveSuccess('');
    if (plot) loadAvailablePlots(plot.section, plot.row_number);
  };

  const handleCancelMove = () => {
    setMode(null);
    setSelectedDest(null);
    setMoveNotes('');
    setMoveError('');
    setMoveSuccess('');
  };

  const handleConfirmMove = async () => {
    if (!selectedDest || !plot) return;
    setMoving(true);
    setMoveError('');
    try {
      const res = await fetch(`/api/admin/plots/${plotId}/overwrite`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          destination_plot_id: selectedDest.id,
          notes: moveNotes,
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setMoveSuccess(`✓ All data moved from ${plot.plot_number} to ${selectedDest.plot_number}. This plot is now available.`);
      // After 2 seconds, navigate to the destination plot
      setTimeout(() => {
        router.push(`/admin/plots/${selectedDest.id}`);
      }, 2500);
    } catch (err: any) {
      setMoveError(err.message || 'Move failed');
    } finally {
      setMoving(false);
    }
  };

  const handleEditSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setEditLoading(true);
    setEditError('');
    setEditSuccess('');
    try {
      const res = await fetch(`/api/admin/plots/${plotId}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          plot_number: editForm.plot_number,
          section: editForm.section,
          row_number: editForm.row_number,
          plot_position: editForm.plot_position,
          plot_type: editForm.plot_type,
          status: editForm.status,
          owner_name: editForm.owner_name || null,
          owner_contact: editForm.owner_contact || null,
          purchase_date: editForm.purchase_date || null,
          price: editForm.price || null,
          notes: editForm.notes || null,
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setEditSuccess('Plot information saved successfully.');
      setTimeout(() => {
        setShowEditForm(false);
        setEditSuccess('');
        fetchPlot();
      }, 1200);
    } catch (err: any) {
      setEditError(err.message || 'Failed to save');
    } finally {
      setEditLoading(false);
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

  // Group available plots by row for the move picker
  const availableByRow: Record<number, AvailablePlot[]> = {};
  for (const p of availablePlots) {
    if (!availableByRow[p.row_number]) availableByRow[p.row_number] = [];
    availableByRow[p.row_number].push(p);
  }
  const sortedRows = Object.keys(availableByRow).map(Number).sort((a, b) => a - b);

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-10">
        <div className="max-w-5xl mx-auto px-4 py-4">
          <div className="flex items-center justify-between gap-4">
            <div className="flex items-center gap-3 min-w-0">
              <Link href="/admin/plots" className="text-gray-400 hover:text-gray-600 text-sm shrink-0">
                ← Plot Management
              </Link>
              <span className="text-gray-300">/</span>
              <h1 className="text-xl font-bold text-gray-900 truncate">Plot {plot.plot_number}</h1>
              <span className={`px-2.5 py-0.5 text-xs font-semibold rounded-full border shrink-0 ${STATUS_COLORS[plot.status]}`}>
                {plot.status}
              </span>
            </div>
            {/* Action buttons — only show when not in move mode */}
            {mode !== 'move-block' && (
              <div className="flex gap-2 shrink-0">
                <button
                  onClick={() => setShowEditForm(!showEditForm)}
                  className={`px-4 py-2 rounded-lg text-sm font-medium border transition-colors ${
                    showEditForm
                      ? 'bg-emerald-600 text-white border-emerald-600'
                      : 'bg-white text-emerald-700 border-emerald-300 hover:bg-emerald-50'
                  }`}
                >
                  {showEditForm ? '✕ Close Edit' : '✏ Edit Plot Info'}
                </button>
                <button
                  onClick={handleEnterMoveMode}
                  className="px-4 py-2 rounded-lg text-sm font-medium border bg-white text-amber-700 border-amber-300 hover:bg-amber-50 transition-colors"
                >
                  ⇄ Move to Available Plot
                </button>
              </div>
            )}
            {mode === 'move-block' && !moveSuccess && (
              <button
                onClick={handleCancelMove}
                className="px-4 py-2 rounded-lg text-sm font-medium border bg-white text-gray-600 border-gray-300 hover:bg-gray-50 transition-colors shrink-0"
              >
                ✕ Cancel Move
              </button>
            )}
          </div>
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 py-6 space-y-6">

        {/* ===== EDIT PLOT INFO PANEL ===== */}
        {showEditForm && mode !== 'move-block' && (
          <div className="bg-white rounded-xl border border-emerald-200 shadow-sm">
            <div className="px-6 py-4 border-b border-emerald-100 bg-emerald-50 rounded-t-xl">
              <h2 className="text-base font-semibold text-emerald-900">Edit Plot Information</h2>
              <p className="text-xs text-emerald-700 mt-0.5">Update plot details, owner info, status, and position.</p>
            </div>
            <form onSubmit={handleEditSubmit} className="px-6 py-5 space-y-5">
              {/* Position */}
              <div>
                <h3 className="text-sm font-semibold text-gray-700 mb-3 uppercase tracking-wide">Position</h3>
                <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Plot Number</label>
                    <input
                      type="text"
                      value={editForm.plot_number}
                      onChange={e => setEditForm(f => ({ ...f, plot_number: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                      required
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Section</label>
                    <select
                      value={editForm.section}
                      onChange={e => setEditForm(f => ({ ...f, section: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                      required
                    >
                      {['A','B','C','D','E','F','G','H'].map(s => (
                        <option key={s} value={s}>Section {s}</option>
                      ))}
                    </select>
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Row</label>
                    <input
                      type="number"
                      min="1"
                      value={editForm.row_number}
                      onChange={e => setEditForm(f => ({ ...f, row_number: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                      required
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Position</label>
                    <input
                      type="number"
                      min="1"
                      value={editForm.plot_position}
                      onChange={e => setEditForm(f => ({ ...f, plot_position: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                      required
                    />
                  </div>
                </div>
              </div>

              {/* Type & Status */}
              <div>
                <h3 className="text-sm font-semibold text-gray-700 mb-3 uppercase tracking-wide">Type & Status</h3>
                <div className="grid grid-cols-2 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Plot Type</label>
                    <select
                      value={editForm.plot_type}
                      onChange={e => setEditForm(f => ({ ...f, plot_type: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    >
                      <option value="standard">Standard</option>
                      <option value="cremation">Cremation</option>
                      <option value="hybrid">Hybrid</option>
                    </select>
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Status</label>
                    <select
                      value={editForm.status}
                      onChange={e => setEditForm(f => ({ ...f, status: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    >
                      <option value="available">Available</option>
                      <option value="reserved">Reserved</option>
                      <option value="occupied">Occupied</option>
                    </select>
                  </div>
                </div>
              </div>

              {/* Owner */}
              <div>
                <h3 className="text-sm font-semibold text-gray-700 mb-3 uppercase tracking-wide">Owner Information</h3>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Owner Name</label>
                    <input
                      type="text"
                      value={editForm.owner_name}
                      onChange={e => setEditForm(f => ({ ...f, owner_name: e.target.value }))}
                      placeholder="Full name"
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Owner Contact</label>
                    <input
                      type="text"
                      value={editForm.owner_contact}
                      onChange={e => setEditForm(f => ({ ...f, owner_contact: e.target.value }))}
                      placeholder="Phone or email"
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Purchase Date</label>
                    <input
                      type="date"
                      value={editForm.purchase_date}
                      onChange={e => setEditForm(f => ({ ...f, purchase_date: e.target.value }))}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                </div>
              </div>

              {/* Price & Notes */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                <div>
                  <label className="block text-xs font-medium text-gray-600 mb-1">Price ($)</label>
                  <input
                    type="number"
                    min="0"
                    step="0.01"
                    value={editForm.price}
                    onChange={e => setEditForm(f => ({ ...f, price: e.target.value }))}
                    placeholder="e.g. 2000.00"
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-600 mb-1">Notes</label>
                  <input
                    type="text"
                    value={editForm.notes}
                    onChange={e => setEditForm(f => ({ ...f, notes: e.target.value }))}
                    placeholder="Any additional notes..."
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                  />
                </div>
              </div>

              {editError && (
                <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">{editError}</div>
              )}
              {editSuccess && (
                <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded-lg text-sm">{editSuccess}</div>
              )}

              <div className="flex justify-end gap-3 pt-2 border-t border-gray-100">
                <button
                  type="button"
                  onClick={() => { setShowEditForm(false); setEditError(''); setEditSuccess(''); }}
                  className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 text-sm font-medium"
                  disabled={editLoading}
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  disabled={editLoading}
                  className="px-5 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 text-sm font-medium disabled:opacity-50"
                >
                  {editLoading ? 'Saving...' : 'Save Changes'}
                </button>
              </div>
            </form>
          </div>
        )}

        {/* ===== MOVE TO AVAILABLE PLOT PANEL ===== */}
        {mode === 'move-block' && (
          <div className="bg-white rounded-xl border border-amber-200 shadow-sm">
            <div className="px-6 py-4 border-b border-amber-100 bg-amber-50 rounded-t-xl">
              <h2 className="text-base font-semibold text-amber-900">
                ⇄ Move Plot Data — Section {plot.section}
              </h2>
              <p className="text-sm text-amber-700 mt-1">
                Select an <strong>available</strong> plot in Section {plot.section} to move all data from{' '}
                <strong>{plot.plot_number}</strong> there. The current plot will become available.
              </p>
            </div>

            {moveSuccess ? (
              <div className="px-6 py-8 text-center">
                <div className="text-4xl mb-3">✅</div>
                <p className="text-green-800 font-semibold text-base">{moveSuccess}</p>
                <p className="text-sm text-gray-500 mt-2">Redirecting to the new plot location...</p>
              </div>
            ) : (
              <div className="px-6 py-5 space-y-5">
                {/* What gets moved */}
                <div className="bg-blue-50 border border-blue-100 rounded-lg px-4 py-3 text-sm text-blue-800">
                  <strong>What will be moved:</strong> All deceased records, burial services, reservations, and family connections from{' '}
                  <strong>{plot.plot_number}</strong> will be transferred to the selected destination.
                  Plot <strong>{plot.plot_number}</strong> will be marked <span className="font-semibold text-green-700">available</span>.
                </div>

                {/* Available plots picker */}
                {loadingAvailable ? (
                  <div className="flex items-center gap-2 text-sm text-gray-500 py-4">
                    <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-amber-600"></div>
                    Loading available plots in Block (Row {plot.row_number}, Section {plot.section})...
                  </div>
                ) : availablePlots.length === 0 ? (
                  <div className="bg-gray-50 border border-gray-200 rounded-lg px-4 py-6 text-center text-gray-500">
                    <div className="text-3xl mb-2">🔍</div>
                    <p className="font-medium">No available plots found in this block (Row {plot.row_number}, Section {plot.section})</p>
                    <p className="text-xs mt-1">All plots in this block are currently occupied or reserved.</p>
                  </div>
                ) : (
                  <div>
                    <div className="flex items-center justify-between mb-3">
                      <h3 className="text-sm font-semibold text-gray-700">
                        Available Plots in Block — Row {plot.row_number}, Section {plot.section}
                        <span className="ml-2 text-xs font-normal text-gray-400">({availablePlots.length} available)</span>
                      </h3>
                      {selectedDest && (
                        <button
                          onClick={() => setSelectedDest(null)}
                          className="text-xs text-amber-600 hover:text-amber-800 underline"
                        >
                          Change selection
                        </button>
                      )}
                    </div>

                    {/* Group by row */}
                    <div className="space-y-3 max-h-72 overflow-y-auto pr-1">
                      {sortedRows.map(rowNum => (
                        <div key={rowNum}>
                          <div className="text-xs font-semibold text-gray-400 uppercase tracking-wide mb-1.5">
                            Row {rowNum}
                          </div>
                          <div className="flex flex-wrap gap-2">
                            {availableByRow[rowNum]
                              .sort((a, b) => a.plot_position - b.plot_position)
                              .map(ap => {
                                const isSelected = selectedDest?.id === ap.id;
                                return (
                                  <button
                                    key={ap.id}
                                    onClick={() => setSelectedDest(isSelected ? null : ap)}
                                    className={`px-3 py-2 rounded-lg border text-sm font-medium transition-all ${
                                      isSelected
                                        ? 'bg-amber-500 text-white border-amber-600 ring-2 ring-amber-300 shadow-sm'
                                        : 'bg-green-50 text-green-800 border-green-200 hover:bg-green-100 hover:border-green-400'
                                    }`}
                                  >
                                    <div className="font-bold">{ap.plot_number}</div>
                                    <div className="text-xs opacity-75">Pos {ap.plot_position} · {ap.plot_type}</div>
                                  </button>
                                );
                              })}
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                )}

                {/* Selected destination confirmation */}
                {selectedDest && (
                  <div className="bg-amber-50 border border-amber-300 rounded-xl p-4">
                    <h4 className="text-sm font-semibold text-amber-900 mb-3">Confirm Move</h4>
                    <div className="grid grid-cols-2 gap-3 mb-4">
                      <div className="bg-white rounded-lg border border-amber-200 p-3">
                        <div className="text-xs text-gray-500 mb-1 uppercase tracking-wide">From (current)</div>
                        <div className="font-bold text-blue-700 text-base">{plot.plot_number}</div>
                        <div className="text-xs text-gray-500 mt-0.5">
                          Section {plot.section} · Row {plot.row_number} · Pos {plot.plot_position}
                        </div>
                        <div className="text-xs text-gray-500 mt-0.5 capitalize">{plot.plot_type}</div>
                        {plot.deceased_records.length > 0 && (
                          <div className="text-xs text-gray-600 mt-1 font-medium">
                            {plot.deceased_records.length} deceased record{plot.deceased_records.length > 1 ? 's' : ''}
                          </div>
                        )}
                      </div>
                      <div className="bg-white rounded-lg border border-amber-200 p-3">
                        <div className="text-xs text-gray-500 mb-1 uppercase tracking-wide">To (destination)</div>
                        <div className="font-bold text-amber-700 text-base">{selectedDest.plot_number}</div>
                        <div className="text-xs text-gray-500 mt-0.5">
                          Section {selectedDest.section} · Row {selectedDest.row_number} · Pos {selectedDest.plot_position}
                        </div>
                        <div className="text-xs text-gray-500 mt-0.5 capitalize">{selectedDest.plot_type}</div>
                        <div className="text-xs text-green-600 mt-1 font-medium">Currently available</div>
                      </div>
                    </div>

                    <div className="mb-4">
                      <label className="block text-xs font-medium text-gray-600 mb-1">
                        Reason for move <span className="text-gray-400">(optional — saved in audit log)</span>
                      </label>
                      <input
                        type="text"
                        value={moveNotes}
                        onChange={e => setMoveNotes(e.target.value)}
                        placeholder="e.g. Original plot number was entered incorrectly"
                        className="w-full px-3 py-2 border border-amber-200 rounded-lg text-sm focus:ring-2 focus:ring-amber-400 focus:border-transparent"
                      />
                    </div>

                    {moveError && (
                      <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm mb-3">
                        {moveError}
                      </div>
                    )}

                    <div className="flex gap-3">
                      <button
                        onClick={() => setSelectedDest(null)}
                        className="flex-1 px-4 py-2 bg-white border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-50 text-sm font-medium"
                        disabled={moving}
                      >
                        Choose Different Plot
                      </button>
                      <button
                        onClick={handleConfirmMove}
                        disabled={moving}
                        className="flex-1 px-4 py-2 bg-amber-600 text-white rounded-lg hover:bg-amber-700 text-sm font-semibold disabled:opacity-50"
                      >
                        {moving ? (
                          <span className="flex items-center justify-center gap-2">
                            <span className="animate-spin rounded-full h-4 w-4 border-b-2 border-white"></span>
                            Moving...
                          </span>
                        ) : (
                          `✓ Move to ${selectedDest.plot_number}`
                        )}
                      </button>
                    </div>
                  </div>
                )}
              </div>
            )}
          </div>
        )}

        {/* ===== PLOT DETAILS + RECORDS (always visible) ===== */}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">

          {/* Left: Plot Details Card */}
          <div className="lg:col-span-1">
            <div className="bg-white rounded-xl border border-gray-200 shadow-sm p-6">
              <h2 className="text-base font-semibold text-gray-900 mb-4">Plot Details</h2>
              <dl className="space-y-3">
                <DetailRow label="Plot Number" value={plot.plot_number} bold />
                <DetailRow label="Section" value={`Section ${plot.section}`} />
                <DetailRow label="Row / Position" value={`Row ${plot.row_number}, Position ${plot.plot_position}`} />
                <DetailRow label="Type" value={<span className="capitalize">{plot.plot_type}</span>} />
                <div>
                  <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">Status</dt>
                  <dd className="mt-1">
                    <span className={`px-2.5 py-0.5 text-xs font-semibold rounded-full border ${STATUS_COLORS[plot.status]}`}>
                      {plot.status}
                    </span>
                  </dd>
                </div>
                {(plot.size_width || plot.size_length) && (
                  <DetailRow
                    label="Dimensions"
                    value={`${plot.size_width ?? '?'} × ${plot.size_length ?? '?'} ft`}
                  />
                )}
                {plot.price && (
                  <DetailRow label="Price" value={`$${plot.price.toLocaleString()}`} />
                )}
                {plot.owner_name && (
                  <DetailRow label="Owner" value={plot.owner_name} />
                )}
                {plot.owner_contact && (
                  <DetailRow label="Owner Contact" value={plot.owner_contact} />
                )}
                {plot.purchase_date && (
                  <DetailRow
                    label="Purchase Date"
                    value={new Date(plot.purchase_date).toLocaleDateString()}
                  />
                )}
                {plot.notes && (
                  <div>
                    <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">Notes</dt>
                    <dd className="text-sm text-gray-700 mt-1 whitespace-pre-wrap">{plot.notes}</dd>
                  </div>
                )}
                <div className="pt-2 border-t border-gray-100">
                  <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">Created</dt>
                  <dd className="text-xs text-gray-400 mt-1">{new Date(plot.created_at).toLocaleDateString()}</dd>
                </div>
              </dl>
            </div>
          </div>

          {/* Right: Deceased Records + Services */}
          <div className="lg:col-span-2 space-y-5">

            {/* Deceased Records */}
            <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
              <div className="px-6 py-4 border-b border-gray-100 flex items-center justify-between">
                <h2 className="text-base font-semibold text-gray-900">
                  Deceased Records
                  <span className="ml-2 text-sm font-normal text-gray-400">
                    ({plot.deceased_records?.length || 0})
                  </span>
                </h2>
                <button
                  onClick={openAddDeceased}
                  className="inline-flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors"
                >
                  + Add Record
                </button>
              </div>

              {/* Add / Edit Deceased Form */}
              {showAddDeceased && (
                <div className="px-6 py-5 border-b border-emerald-100 bg-emerald-50">
                  <h3 className="text-sm font-semibold text-emerald-800 mb-4">
                    {editingDeceased ? `Edit: ${editingDeceased.first_name} ${editingDeceased.last_name}` : 'Add Deceased Record'}
                  </h3>
                  {deceasedError && (
                    <div className="mb-3 px-3 py-2 bg-red-50 border border-red-200 rounded text-xs text-red-700">{deceasedError}</div>
                  )}
                  <form onSubmit={handleDeceasedSubmit} className="space-y-4">
                    {/* Name row */}
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">First Name *</label>
                        <input type="text" required value={deceasedForm.first_name}
                          onChange={e => setDeceasedForm(f => ({ ...f, first_name: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Last Name *</label>
                        <input type="text" required value={deceasedForm.last_name}
                          onChange={e => setDeceasedForm(f => ({ ...f, last_name: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    </div>
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Middle Name</label>
                        <input type="text" value={deceasedForm.middle_name}
                          onChange={e => setDeceasedForm(f => ({ ...f, middle_name: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Maiden Name</label>
                        <input type="text" value={deceasedForm.maiden_name}
                          onChange={e => setDeceasedForm(f => ({ ...f, maiden_name: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    </div>
                    {/* Dates row */}
                    <div className="grid grid-cols-3 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Date of Birth</label>
                        <input type="date" value={deceasedForm.birth_date}
                          onChange={e => setDeceasedForm(f => ({ ...f, birth_date: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Date of Death</label>
                        <input type="date" value={deceasedForm.death_date}
                          onChange={e => setDeceasedForm(f => ({ ...f, death_date: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Burial Date</label>
                        <input type="date" value={deceasedForm.burial_date}
                          onChange={e => setDeceasedForm(f => ({ ...f, burial_date: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    </div>
                    {/* Age / Gender / Veteran */}
                    <div className="grid grid-cols-3 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Age at Death</label>
                        <input type="number" min="0" max="130" value={deceasedForm.age_at_death}
                          onChange={e => setDeceasedForm(f => ({ ...f, age_at_death: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Gender</label>
                        <select value={deceasedForm.gender}
                          onChange={e => setDeceasedForm(f => ({ ...f, gender: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent">
                          <option value="">—</option>
                          <option value="male">Male</option>
                          <option value="female">Female</option>
                          <option value="other">Other</option>
                        </select>
                      </div>
                      <div className="flex items-end pb-2">
                        <label className="flex items-center gap-2 text-xs font-medium text-gray-600 cursor-pointer">
                          <input type="checkbox" checked={deceasedForm.veteran_status}
                            onChange={e => setDeceasedForm(f => ({ ...f, veteran_status: e.target.checked }))}
                            className="rounded border-gray-300 text-emerald-600" />
                          Military Veteran
                        </label>
                      </div>
                    </div>
                    {deceasedForm.veteran_status && (
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Military Branch</label>
                        <input type="text" value={deceasedForm.military_branch}
                          onChange={e => setDeceasedForm(f => ({ ...f, military_branch: e.target.value }))}
                          placeholder="e.g. U.S. Army"
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    )}
                    {/* Next of Kin / Funeral Home */}
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Next of Kin</label>
                        <input type="text" value={deceasedForm.next_of_kin}
                          onChange={e => setDeceasedForm(f => ({ ...f, next_of_kin: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Funeral Home</label>
                        <input type="text" value={deceasedForm.funeral_home}
                          onChange={e => setDeceasedForm(f => ({ ...f, funeral_home: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    </div>
                    {/* Permit / Certificate */}
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Burial Permit #</label>
                        <input type="text" value={deceasedForm.burial_permit_number}
                          onChange={e => setDeceasedForm(f => ({ ...f, burial_permit_number: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">Death Certificate #</label>
                        <input type="text" value={deceasedForm.death_certificate_number}
                          onChange={e => setDeceasedForm(f => ({ ...f, death_certificate_number: e.target.value }))}
                          className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                      </div>
                    </div>
                    {/* Epitaph */}
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Epitaph</label>
                      <input type="text" value={deceasedForm.epitaph}
                        onChange={e => setDeceasedForm(f => ({ ...f, epitaph: e.target.value }))}
                        placeholder="Inscription or epitaph"
                        className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                    {/* Obituary */}
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Obituary</label>
                      <textarea rows={3} value={deceasedForm.obituary}
                        onChange={e => setDeceasedForm(f => ({ ...f, obituary: e.target.value }))}
                        className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none" />
                    </div>
                    {/* Notes */}
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Internal Notes</label>
                      <textarea rows={2} value={deceasedForm.notes}
                        onChange={e => setDeceasedForm(f => ({ ...f, notes: e.target.value }))}
                        className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none" />
                    </div>
                    {/* Actions */}
                    <div className="flex gap-3 pt-1">
                      <button type="submit" disabled={deceasedLoading}
                        className="px-4 py-2 text-sm font-medium bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 disabled:opacity-50 transition-colors">
                        {deceasedLoading ? 'Saving…' : (editingDeceased ? 'Update Record' : 'Add Record')}
                      </button>
                      <button type="button" onClick={() => { setShowAddDeceased(false); setEditingDeceased(null); }}
                        className="px-4 py-2 text-sm font-medium bg-white text-gray-700 border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors">
                        Cancel
                      </button>
                    </div>
                  </form>
                </div>
              )}

              {plot.deceased_records && plot.deceased_records.length > 0 ? (
                <div className="divide-y divide-gray-50">
                  {plot.deceased_records.map((record) => (
                    <div key={record.id} className="px-6 py-4">
                      <div className="flex items-start justify-between gap-3">
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-semibold text-gray-900">
                            {record.first_name} {record.last_name}
                            {record.maiden_name && (
                              <span className="text-gray-400 font-normal"> née {record.maiden_name}</span>
                            )}
                          </p>
                          <div className="mt-1 flex flex-wrap gap-3 text-xs text-gray-500">
                            {record.birth_date && (
                              <span>b. {new Date(record.birth_date).toLocaleDateString()}</span>
                            )}
                            {record.death_date && (
                              <span>d. {new Date(record.death_date).toLocaleDateString()}</span>
                            )}
                            {record.age_at_death && (
                              <span>Age {record.age_at_death}</span>
                            )}
                          </div>
                          {record.notes && (
                            <p className="text-xs text-gray-400 mt-1 italic">{record.notes}</p>
                          )}
                        </div>
                        <div className="flex items-center gap-2 flex-shrink-0">
                          <button
                            onClick={() => openEditDeceased(record)}
                            className="px-2.5 py-1 text-xs font-medium text-blue-700 bg-blue-50 border border-blue-200 rounded hover:bg-blue-100 transition-colors"
                          >
                            Edit
                          </button>
                          <button
                            onClick={() => handleDeleteDeceased(record.id, `${record.first_name} ${record.last_name}`)}
                            className="px-2.5 py-1 text-xs font-medium text-red-700 bg-red-50 border border-red-200 rounded hover:bg-red-100 transition-colors"
                          >
                            Delete
                          </button>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <div className="px-6 py-8 text-center text-gray-400">
                  <p className="text-sm">No deceased records associated with this plot.</p>
                  <p className="text-xs mt-1">Use the &ldquo;+ Add Record&rdquo; button above to add one.</p>
                </div>
              )}
            </div>

            {/* Burial Services */}
            {plot.burial_services && plot.burial_services.length > 0 && (
              <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                <div className="px-6 py-4 border-b border-gray-100">
                  <h2 className="text-base font-semibold text-gray-900">
                    Burial Services
                    <span className="ml-2 text-sm font-normal text-gray-400">({plot.burial_services.length})</span>
                  </h2>
                </div>
                <div className="divide-y divide-gray-50">
                  {plot.burial_services.map((service) => (
                    <div key={service.id} className="px-6 py-4">
                      <div className="flex flex-wrap gap-4 text-sm text-gray-700">
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
                        <p className="text-xs text-gray-400 mt-1">{service.notes}</p>
                      )}
                    </div>
                  ))}
                </div>
              </div>
            )}

            {/* Reservations */}
            {plot.plot_reservations && plot.plot_reservations.length > 0 && (
              <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                <div className="px-6 py-4 border-b border-gray-100">
                  <h2 className="text-base font-semibold text-gray-900">
                    Reservations
                    <span className="ml-2 text-sm font-normal text-gray-400">({plot.plot_reservations.length})</span>
                  </h2>
                </div>
                <div className="divide-y divide-gray-50">
                  {plot.plot_reservations.map((res) => (
                    <div key={res.id} className="px-6 py-4">
                      <p className="text-sm font-medium text-gray-900">{res.reserved_for || 'Unknown'}</p>
                      <div className="flex flex-wrap gap-3 text-xs text-gray-400 mt-1">
                        {res.reservation_date && (
                          <span>Reserved: {new Date(res.reservation_date).toLocaleDateString()}</span>
                        )}
                        {res.contact_info && <span>Contact: {res.contact_info}</span>}
                      </div>
                      {res.notes && <p className="text-xs text-gray-400 mt-1">{res.notes}</p>}
                    </div>
                  ))}
                </div>
              </div>
            )}
          </div>
        </div>
      </main>
    </div>
  );
}

// Small helper component for detail rows
function DetailRow({ label, value, bold }: { label: string; value: React.ReactNode; bold?: boolean }) {
  return (
    <div>
      <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">{label}</dt>
      <dd className={`text-sm text-gray-900 mt-0.5 ${bold ? 'font-semibold' : ''}`}>{value}</dd>
    </div>
  );
}
