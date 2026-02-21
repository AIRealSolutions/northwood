'use client';

import { useSession } from 'next-auth/react';
import { useRouter, useParams } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

/* ─────────────────────────── Types ─────────────────────────── */

interface DeceasedRecord {
  id: string;
  first_name: string;
  last_name: string;
  middle_name?: string;
  maiden_name?: string;
  birth_date?: string;
  death_date?: string;
  burial_date?: string;
  age_at_death?: number;
  gender?: string;
  veteran_status?: boolean;
  military_branch?: string;
  obituary?: string;
  epitaph?: string;
  next_of_kin?: string;
  funeral_home?: string;
  burial_permit_number?: string;
  death_certificate_number?: string;
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

/* ─────────────────────────── Constants ─────────────────────── */

const STATUS_COLORS = {
  available: 'bg-green-100 text-green-800 border-green-200',
  reserved:  'bg-yellow-100 text-yellow-800 border-yellow-200',
  occupied:  'bg-red-100 text-red-800 border-red-200',
};

const BLANK_DECEASED = {
  first_name: '', last_name: '', middle_name: '', maiden_name: '',
  birth_date: '', death_date: '', burial_date: '', age_at_death: '',
  gender: '', veteran_status: false, military_branch: '',
  obituary: '', epitaph: '', next_of_kin: '', funeral_home: '',
  burial_permit_number: '', death_certificate_number: '', notes: '',
};

/* ─────────────────────────── Component ─────────────────────── */

export default function AdminPlotDetailPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const params = useParams();
  const plotId = params.id as string;

  // ── Data ──
  const [plot, setPlot] = useState<Plot | null>(null);
  const [loading, setLoading] = useState(true);
  const [pageError, setPageError] = useState('');

  // ── Active tab: 'view' | 'edit' | 'move' ──
  const [tab, setTab] = useState<'view' | 'edit' | 'move'>('view');

  // ── Edit form ──
  const [editForm, setEditForm] = useState({
    plot_number: '', section: '', row_number: '', plot_position: '',
    plot_type: 'standard', status: 'available',
    owner_name: '', owner_contact: '', purchase_date: '', price: '', notes: '',
  });
  const [editLoading, setEditLoading] = useState(false);
  const [editError, setEditError]   = useState('');
  const [editSuccess, setEditSuccess] = useState('');

  // ── Move state ──
  const [availablePlots, setAvailablePlots]     = useState<AvailablePlot[]>([]);
  const [loadingAvailable, setLoadingAvailable] = useState(false);
  const [selectedDest, setSelectedDest]         = useState<AvailablePlot | null>(null);
  const [moveNotes, setMoveNotes]               = useState('');
  const [moving, setMoving]                     = useState(false);
  const [moveError, setMoveError]               = useState('');
  const [moveSuccess, setMoveSuccess]           = useState('');

  // ── Deceased record modal ──
  const [deceasedModal, setDeceasedModal]       = useState(false);
  const [editingDeceased, setEditingDeceased]   = useState<DeceasedRecord | null>(null);
  const [deceasedForm, setDeceasedForm]         = useState({ ...BLANK_DECEASED });
  const [deceasedLoading, setDeceasedLoading]   = useState(false);
  const [deceasedError, setDeceasedError]       = useState('');

  /* ── Auth guard ── */
  useEffect(() => {
    if (status === 'loading') return;
    if (!session) { router.push('/auth/login?callbackUrl=/admin/plots'); return; }
    if (session.user?.role !== 'admin') { router.push('/admin'); return; }
    fetchPlot();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [session, status, plotId]);

  /* ── Fetch plot ── */
  const fetchPlot = async () => {
    try {
      setLoading(true);
      const res  = await fetch(`/api/admin/plots/${plotId}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      const p = json.data as Plot;
      setPlot(p);
      setEditForm({
        plot_number:  p.plot_number  || '',
        section:      p.section      || '',
        row_number:   String(p.row_number   || ''),
        plot_position:String(p.plot_position|| ''),
        plot_type:    p.plot_type    || 'standard',
        status:       p.status       || 'available',
        owner_name:   p.owner_name   || '',
        owner_contact:p.owner_contact|| '',
        purchase_date:p.purchase_date ? p.purchase_date.split('T')[0] : '',
        price:        p.price ? String(p.price) : '',
        notes:        p.notes        || '',
      });
    } catch (err: any) {
      setPageError(err.message || 'Failed to load plot');
    } finally {
      setLoading(false);
    }
  };

  /* ── Load available plots for move tab ── */
  const loadAvailablePlots = useCallback(async (section: string, rowNumber: number) => {
    setLoadingAvailable(true);
    setAvailablePlots([]);
    try {
      const res  = await fetch(`/api/admin/plots/section/${section}`);
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
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

  /* ── Tab switch ── */
  const switchTab = (next: 'view' | 'edit' | 'move') => {
    setTab(next);
    setEditError(''); setEditSuccess('');
    setMoveError(''); setMoveSuccess('');
    setSelectedDest(null); setMoveNotes('');
    if (next === 'move' && plot) loadAvailablePlots(plot.section, plot.row_number);
  };

  /* ── Edit submit ── */
  const handleEditSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setEditLoading(true); setEditError(''); setEditSuccess('');
    try {
      const res  = await fetch(`/api/admin/plots/${plotId}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          plot_number:   editForm.plot_number,
          section:       editForm.section,
          row_number:    editForm.row_number,
          plot_position: editForm.plot_position,
          plot_type:     editForm.plot_type,
          status:        editForm.status,
          owner_name:    editForm.owner_name    || null,
          owner_contact: editForm.owner_contact || null,
          purchase_date: editForm.purchase_date || null,
          price:         editForm.price         || null,
          notes:         editForm.notes         || null,
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setEditSuccess('Changes saved successfully.');
      await fetchPlot();
      setTimeout(() => { setEditSuccess(''); switchTab('view'); }, 1400);
    } catch (err: any) {
      setEditError(err.message || 'Failed to save');
    } finally {
      setEditLoading(false);
    }
  };

  /* ── Move confirm ── */
  const handleConfirmMove = async () => {
    if (!selectedDest || !plot) return;
    setMoving(true); setMoveError('');
    try {
      const res  = await fetch(`/api/admin/plots/${plotId}/overwrite`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ destination_plot_id: selectedDest.id, notes: moveNotes }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setMoveSuccess(`All data moved to ${selectedDest.plot_number}. Redirecting...`);
      setTimeout(() => router.push(`/admin/plots/${selectedDest.id}`), 2000);
    } catch (err: any) {
      setMoveError(err.message || 'Move failed');
    } finally {
      setMoving(false);
    }
  };

  /* ── Deceased modal helpers ── */
  const openAddDeceased = () => {
    setEditingDeceased(null);
    setDeceasedForm({ ...BLANK_DECEASED });
    setDeceasedError('');
    setDeceasedModal(true);
  };

  const openEditDeceased = (r: DeceasedRecord) => {
    setEditingDeceased(r);
    setDeceasedForm({
      first_name:               r.first_name || '',
      last_name:                r.last_name  || '',
      middle_name:              r.middle_name || '',
      maiden_name:              r.maiden_name || '',
      birth_date:               r.birth_date  ? r.birth_date.split('T')[0]  : '',
      death_date:               r.death_date  ? r.death_date.split('T')[0]  : '',
      burial_date:              r.burial_date ? r.burial_date.split('T')[0] : '',
      age_at_death:             r.age_at_death ? String(r.age_at_death) : '',
      gender:                   r.gender || '',
      veteran_status:           r.veteran_status || false,
      military_branch:          r.military_branch || '',
      obituary:                 r.obituary || '',
      epitaph:                  r.epitaph  || '',
      next_of_kin:              r.next_of_kin || '',
      funeral_home:             r.funeral_home || '',
      burial_permit_number:     r.burial_permit_number || '',
      death_certificate_number: r.death_certificate_number || '',
      notes:                    r.notes || '',
    });
    setDeceasedError('');
    setDeceasedModal(true);
  };

  const handleDeceasedSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!plot) return;
    setDeceasedLoading(true); setDeceasedError('');
    try {
      const url    = editingDeceased ? `/api/admin/deceased/${editingDeceased.id}` : '/api/admin/deceased';
      const method = editingDeceased ? 'PUT' : 'POST';
      const res    = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ...deceasedForm, plot_id: plot.id }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      setDeceasedModal(false);
      await fetchPlot();
    } catch (err: any) {
      setDeceasedError(err.message || 'Failed to save record');
    } finally {
      setDeceasedLoading(false);
    }
  };

  const handleDeleteDeceased = async (recordId: string, name: string) => {
    if (!confirm(`Remove record for ${name}? This cannot be undone.`)) return;
    try {
      const res  = await fetch(`/api/admin/deceased/${recordId}`, { method: 'DELETE' });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error);
      await fetchPlot();
    } catch (err: any) {
      alert(err.message || 'Failed to delete record');
    }
  };

  /* ─────────────────── Render guards ─────────────────── */

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600 mx-auto mb-4" />
          <p className="text-gray-500 text-sm">Loading plot…</p>
        </div>
      </div>
    );
  }

  if (pageError || !plot) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <p className="text-red-600">{pageError || 'Plot not found'}</p>
          <Link href="/admin/plots" className="mt-4 inline-block text-emerald-600 hover:underline text-sm">
            ← Back to Plots
          </Link>
        </div>
      </div>
    );
  }

  /* ─────────────────── JSX ─────────────────── */

  return (
    <div className="min-h-screen bg-gray-50">

      {/* ── Sticky header ── */}
      <header className="bg-white border-b border-gray-200 sticky top-0 z-20 shadow-sm">
        <div className="max-w-5xl mx-auto px-4 py-3 flex items-center justify-between gap-4">
          <div className="flex items-center gap-3 min-w-0">
            <Link href="/admin/plots" className="text-gray-400 hover:text-gray-600 text-sm shrink-0">
              ← Plots
            </Link>
            <span className="text-gray-300">/</span>
            <h1 className="text-lg font-bold text-gray-900 truncate">{plot.plot_number}</h1>
            <span className={`px-2.5 py-0.5 text-xs font-semibold rounded-full border shrink-0 ${STATUS_COLORS[plot.status]}`}>
              {plot.status}
            </span>
          </div>
          <p className="text-xs text-gray-400 hidden sm:block shrink-0">
            Section {plot.section} · Row {plot.row_number} · Position {plot.plot_position}
          </p>
        </div>

        {/* ── Tab bar ── */}
        <div className="max-w-5xl mx-auto px-4 flex gap-1 pb-0">
          {(['view', 'edit', 'move'] as const).map((t) => {
            const labels: Record<string, string> = {
              view: 'View Details',
              edit: 'Edit Details',
              move: 'Move in Block',
            };
            const active = tab === t;
            return (
              <button
                key={t}
                onClick={() => switchTab(t)}
                className={`px-4 py-2.5 text-sm font-medium border-b-2 transition-colors whitespace-nowrap ${
                  active
                    ? t === 'move'
                      ? 'border-amber-500 text-amber-700'
                      : 'border-emerald-500 text-emerald-700'
                    : 'border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300'
                }`}
              >
                {t === 'view' && '📋 '}
                {t === 'edit' && '✏️ '}
                {t === 'move' && '⇄ '}
                {labels[t]}
              </button>
            );
          })}
        </div>
      </header>

      <main className="max-w-5xl mx-auto px-4 py-6">

        {/* ══════════════════════════════════════════
            TAB: VIEW
        ══════════════════════════════════════════ */}
        {tab === 'view' && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">

            {/* Left: Plot info card */}
            <div className="lg:col-span-1 space-y-5">
              <div className="bg-white rounded-xl border border-gray-200 shadow-sm p-5">
                <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-4">Plot Information</h2>
                <dl className="space-y-3">
                  <DRow label="Plot Number" value={plot.plot_number} bold />
                  <DRow label="Section"     value={`Section ${plot.section}`} />
                  <DRow label="Row / Position" value={`Row ${plot.row_number}, Position ${plot.plot_position}`} />
                  <DRow label="Type" value={<span className="capitalize">{plot.plot_type}</span>} />
                  <div>
                    <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">Status</dt>
                    <dd className="mt-1">
                      <span className={`px-2.5 py-0.5 text-xs font-semibold rounded-full border ${STATUS_COLORS[plot.status]}`}>
                        {plot.status}
                      </span>
                    </dd>
                  </div>
                  {(plot.size_width || plot.size_length) && (
                    <DRow label="Dimensions" value={`${plot.size_width ?? '?'} × ${plot.size_length ?? '?'} ft`} />
                  )}
                  {plot.price && <DRow label="Price" value={`$${plot.price.toLocaleString()}`} />}
                </dl>
              </div>

              {(plot.owner_name || plot.owner_contact || plot.purchase_date) && (
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm p-5">
                  <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-4">Owner</h2>
                  <dl className="space-y-3">
                    {plot.owner_name    && <DRow label="Name"          value={plot.owner_name} />}
                    {plot.owner_contact && <DRow label="Contact"       value={plot.owner_contact} />}
                    {plot.purchase_date && <DRow label="Purchase Date" value={new Date(plot.purchase_date).toLocaleDateString()} />}
                  </dl>
                </div>
              )}

              {plot.notes && (
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm p-5">
                  <h2 className="text-sm font-semibold text-gray-500 uppercase tracking-wide mb-2">Notes</h2>
                  <p className="text-sm text-gray-700 whitespace-pre-wrap">{plot.notes}</p>
                </div>
              )}
            </div>

            {/* Right: Records */}
            <div className="lg:col-span-2 space-y-5">

              {/* Deceased Records */}
              <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                <div className="px-5 py-4 border-b border-gray-100 flex items-center justify-between">
                  <h2 className="text-sm font-semibold text-gray-900">
                    Deceased Records
                    <span className="ml-2 text-xs font-normal text-gray-400">({plot.deceased_records?.length || 0})</span>
                  </h2>
                  <button
                    onClick={openAddDeceased}
                    className="px-3 py-1.5 text-xs font-medium bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors"
                  >
                    + Add Record
                  </button>
                </div>

                {plot.deceased_records && plot.deceased_records.length > 0 ? (
                  <div className="divide-y divide-gray-50">
                    {plot.deceased_records.map((rec) => (
                      <div key={rec.id} className="px-5 py-4">
                        <div className="flex items-start justify-between gap-3">
                          <div>
                            <p className="font-semibold text-gray-900 text-sm">
                              {rec.first_name} {rec.middle_name ? `${rec.middle_name} ` : ''}{rec.last_name}
                              {rec.maiden_name && <span className="text-gray-400 font-normal"> (née {rec.maiden_name})</span>}
                            </p>
                            <div className="flex flex-wrap gap-3 text-xs text-gray-500 mt-1">
                              {rec.birth_date && <span>b. {new Date(rec.birth_date).toLocaleDateString()}</span>}
                              {rec.death_date && <span>d. {new Date(rec.death_date).toLocaleDateString()}</span>}
                              {rec.age_at_death && <span>Age {rec.age_at_death}</span>}
                              {rec.veteran_status && (
                                <span className="text-blue-600 font-medium">
                                  ★ Veteran{rec.military_branch ? ` — ${rec.military_branch}` : ''}
                                </span>
                              )}
                            </div>
                            {rec.epitaph && <p className="text-xs text-gray-400 italic mt-1">"{rec.epitaph}"</p>}
                          </div>
                          <div className="flex gap-2 shrink-0">
                            <button
                              onClick={() => openEditDeceased(rec)}
                              className="text-xs text-emerald-600 hover:text-emerald-800 font-medium"
                            >
                              Edit
                            </button>
                            <button
                              onClick={() => handleDeleteDeceased(rec.id, `${rec.first_name} ${rec.last_name}`)}
                              className="text-xs text-red-500 hover:text-red-700 font-medium"
                            >
                              Remove
                            </button>
                          </div>
                        </div>
                      </div>
                    ))}
                  </div>
                ) : (
                  <div className="px-5 py-8 text-center text-gray-400">
                    <p className="text-sm">No deceased records for this plot.</p>
                    <button onClick={openAddDeceased} className="mt-2 text-xs text-emerald-600 hover:underline">
                      Add the first record →
                    </button>
                  </div>
                )}
              </div>

              {/* Burial Services */}
              {plot.burial_services && plot.burial_services.length > 0 && (
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                  <div className="px-5 py-4 border-b border-gray-100">
                    <h2 className="text-sm font-semibold text-gray-900">
                      Burial Services
                      <span className="ml-2 text-xs font-normal text-gray-400">({plot.burial_services.length})</span>
                    </h2>
                  </div>
                  <div className="divide-y divide-gray-50">
                    {plot.burial_services.map((svc) => (
                      <div key={svc.id} className="px-5 py-4">
                        <p className="text-sm font-medium text-gray-900 capitalize">{svc.service_type || 'Service'}</p>
                        <div className="flex flex-wrap gap-3 text-xs text-gray-400 mt-1">
                          {svc.service_date && <span>{new Date(svc.service_date).toLocaleDateString()}</span>}
                          {svc.funeral_home && <span>{svc.funeral_home}</span>}
                        </div>
                        {svc.notes && <p className="text-xs text-gray-400 mt-1">{svc.notes}</p>}
                      </div>
                    ))}
                  </div>
                </div>
              )}

              {/* Reservations */}
              {plot.plot_reservations && plot.plot_reservations.length > 0 && (
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                  <div className="px-5 py-4 border-b border-gray-100">
                    <h2 className="text-sm font-semibold text-gray-900">
                      Reservations
                      <span className="ml-2 text-xs font-normal text-gray-400">({plot.plot_reservations.length})</span>
                    </h2>
                  </div>
                  <div className="divide-y divide-gray-50">
                    {plot.plot_reservations.map((res) => (
                      <div key={res.id} className="px-5 py-4">
                        <p className="text-sm font-medium text-gray-900">{res.reserved_for || 'Unknown'}</p>
                        <div className="flex flex-wrap gap-3 text-xs text-gray-400 mt-1">
                          {res.reservation_date && <span>Reserved: {new Date(res.reservation_date).toLocaleDateString()}</span>}
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
        )}

        {/* ══════════════════════════════════════════
            TAB: EDIT DETAILS
        ══════════════════════════════════════════ */}
        {tab === 'edit' && (
          <div className="max-w-2xl mx-auto">
            <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
              <div className="px-6 py-4 border-b border-gray-100">
                <h2 className="text-base font-semibold text-gray-900">Edit Plot Details</h2>
                <p className="text-xs text-gray-500 mt-0.5">Update location info, ownership, status, and notes.</p>
              </div>

              {editSuccess && (
                <div className="mx-6 mt-4 px-4 py-3 bg-green-50 border border-green-200 text-green-800 rounded-lg text-sm">
                  {editSuccess}
                </div>
              )}
              {editError && (
                <div className="mx-6 mt-4 px-4 py-3 bg-red-50 border border-red-200 text-red-700 rounded-lg text-sm">
                  {editError}
                </div>
              )}

              <form onSubmit={handleEditSubmit} className="px-6 py-5 space-y-6">

                {/* Location */}
                <section>
                  <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Location</h3>
                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Plot Number</label>
                      <input type="text" required value={editForm.plot_number}
                        onChange={e => setEditForm(f => ({ ...f, plot_number: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Section</label>
                      <select value={editForm.section}
                        onChange={e => setEditForm(f => ({ ...f, section: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" required>
                        {['A','B','C','D','E','F','G','H'].map(s => (
                          <option key={s} value={s}>Section {s}</option>
                        ))}
                      </select>
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Row</label>
                      <input type="number" min="1" required value={editForm.row_number}
                        onChange={e => setEditForm(f => ({ ...f, row_number: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Position</label>
                      <input type="number" min="1" required value={editForm.plot_position}
                        onChange={e => setEditForm(f => ({ ...f, plot_position: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                  </div>
                </section>

                {/* Type & Status */}
                <section>
                  <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Type & Status</h3>
                  <div className="grid grid-cols-2 gap-3">
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Plot Type</label>
                      <select value={editForm.plot_type}
                        onChange={e => setEditForm(f => ({ ...f, plot_type: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent">
                        <option value="standard">Standard</option>
                        <option value="cremation">Cremation</option>
                        <option value="hybrid">Hybrid</option>
                      </select>
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Status</label>
                      <select value={editForm.status}
                        onChange={e => setEditForm(f => ({ ...f, status: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent">
                        <option value="available">Available</option>
                        <option value="reserved">Reserved</option>
                        <option value="occupied">Occupied</option>
                      </select>
                    </div>
                  </div>
                </section>

                {/* Owner */}
                <section>
                  <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Ownership</h3>
                  <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Owner Name</label>
                      <input type="text" value={editForm.owner_name}
                        onChange={e => setEditForm(f => ({ ...f, owner_name: e.target.value }))}
                        placeholder="Full name"
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Contact</label>
                      <input type="text" value={editForm.owner_contact}
                        onChange={e => setEditForm(f => ({ ...f, owner_contact: e.target.value }))}
                        placeholder="Phone or email"
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                    <div>
                      <label className="block text-xs font-medium text-gray-600 mb-1">Purchase Date</label>
                      <input type="date" value={editForm.purchase_date}
                        onChange={e => setEditForm(f => ({ ...f, purchase_date: e.target.value }))}
                        className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                    </div>
                  </div>
                  <div className="mt-3">
                    <label className="block text-xs font-medium text-gray-600 mb-1">Price</label>
                    <input type="number" min="0" step="0.01" value={editForm.price}
                      onChange={e => setEditForm(f => ({ ...f, price: e.target.value }))}
                      placeholder="0.00"
                      className="w-full sm:w-48 px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                  </div>
                </section>

                {/* Notes */}
                <section>
                  <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Notes</h3>
                  <textarea rows={3} value={editForm.notes}
                    onChange={e => setEditForm(f => ({ ...f, notes: e.target.value }))}
                    placeholder="Internal notes about this plot…"
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none" />
                </section>

                {/* Actions */}
                <div className="flex items-center gap-3 pt-2 border-t border-gray-100">
                  <button type="button" onClick={() => switchTab('view')}
                    className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 text-sm font-medium"
                    disabled={editLoading}>
                    Cancel
                  </button>
                  <button type="submit" disabled={editLoading}
                    className="px-6 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 text-sm font-semibold disabled:opacity-50">
                    {editLoading ? 'Saving…' : 'Save Changes'}
                  </button>
                </div>
              </form>
            </div>
          </div>
        )}

        {/* ══════════════════════════════════════════
            TAB: MOVE IN BLOCK
        ══════════════════════════════════════════ */}
        {tab === 'move' && (
          <div className="max-w-2xl mx-auto space-y-5">

            {/* Context banner */}
            <div className="bg-amber-50 border border-amber-200 rounded-xl px-5 py-4">
              <h2 className="text-sm font-semibold text-amber-900 mb-1">Move Plot Data — Block {plot.section}{plot.row_number}</h2>
              <p className="text-sm text-amber-800">
                Select an <strong>available</strong> plot in the same block (Section {plot.section}, Row {plot.row_number}).
                All records will transfer to the new location and <strong>{plot.plot_number}</strong> will become available.
              </p>
            </div>

            {moveSuccess ? (
              <div className="bg-white rounded-xl border border-green-200 shadow-sm px-6 py-10 text-center">
                <div className="text-4xl mb-3">✅</div>
                <p className="text-green-800 font-semibold">{moveSuccess}</p>
              </div>
            ) : (
              <>
                {/* Step 1: Pick destination */}
                <div className="bg-white rounded-xl border border-gray-200 shadow-sm">
                  <div className="px-5 py-4 border-b border-gray-100 flex items-center justify-between">
                    <h3 className="text-sm font-semibold text-gray-900">
                      Step 1 — Choose Destination
                    </h3>
                    {selectedDest && (
                      <button onClick={() => setSelectedDest(null)}
                        className="text-xs text-amber-600 hover:text-amber-800 underline">
                        Change
                      </button>
                    )}
                  </div>

                  <div className="px-5 py-4">
                    {loadingAvailable ? (
                      <div className="flex items-center gap-2 text-sm text-gray-400 py-4">
                        <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-amber-500" />
                        Loading available plots…
                      </div>
                    ) : availablePlots.length === 0 ? (
                      <div className="text-center py-8 text-gray-400">
                        <p className="text-sm font-medium">No available plots in Block {plot.section}{plot.row_number}</p>
                        <p className="text-xs mt-1">All positions in this row are occupied or reserved.</p>
                      </div>
                    ) : (
                      <div className="flex flex-wrap gap-2">
                        {availablePlots
                          .sort((a, b) => a.plot_position - b.plot_position)
                          .map(ap => {
                            const sel = selectedDest?.id === ap.id;
                            return (
                              <button key={ap.id} onClick={() => setSelectedDest(sel ? null : ap)}
                                className={`px-4 py-3 rounded-lg border text-sm font-medium transition-all ${
                                  sel
                                    ? 'bg-amber-500 text-white border-amber-600 ring-2 ring-amber-300 shadow'
                                    : 'bg-green-50 text-green-800 border-green-200 hover:bg-green-100 hover:border-green-400'
                                }`}>
                                <div className="font-bold">{ap.plot_number}</div>
                                <div className="text-xs opacity-75 mt-0.5">Position {ap.plot_position} · {ap.plot_type}</div>
                              </button>
                            );
                          })}
                      </div>
                    )}
                  </div>
                </div>

                {/* Step 2: Confirm */}
                {selectedDest && (
                  <div className="bg-white rounded-xl border border-amber-200 shadow-sm">
                    <div className="px-5 py-4 border-b border-amber-100">
                      <h3 className="text-sm font-semibold text-gray-900">Step 2 — Confirm Move</h3>
                    </div>
                    <div className="px-5 py-4 space-y-4">

                      {/* From → To summary */}
                      <div className="grid grid-cols-2 gap-3">
                        <div className="bg-gray-50 rounded-lg border border-gray-200 p-4">
                          <p className="text-xs text-gray-400 uppercase tracking-wide mb-1">From</p>
                          <p className="font-bold text-gray-900">{plot.plot_number}</p>
                          <p className="text-xs text-gray-500 mt-0.5">Section {plot.section} · Row {plot.row_number} · Pos {plot.plot_position}</p>
                          <p className="text-xs text-gray-500 capitalize mt-0.5">{plot.plot_type}</p>
                          {plot.deceased_records.length > 0 && (
                            <p className="text-xs text-gray-600 mt-2 font-medium">
                              {plot.deceased_records.length} record{plot.deceased_records.length > 1 ? 's' : ''} will transfer
                            </p>
                          )}
                          <span className="inline-block mt-2 px-2 py-0.5 text-xs font-semibold rounded-full bg-red-100 text-red-700 border border-red-200">
                            → becomes available
                          </span>
                        </div>
                        <div className="bg-amber-50 rounded-lg border border-amber-200 p-4">
                          <p className="text-xs text-gray-400 uppercase tracking-wide mb-1">To</p>
                          <p className="font-bold text-amber-800">{selectedDest.plot_number}</p>
                          <p className="text-xs text-gray-500 mt-0.5">Section {selectedDest.section} · Row {selectedDest.row_number} · Pos {selectedDest.plot_position}</p>
                          <p className="text-xs text-gray-500 capitalize mt-0.5">{selectedDest.plot_type}</p>
                          <span className="inline-block mt-2 px-2 py-0.5 text-xs font-semibold rounded-full bg-green-100 text-green-700 border border-green-200">
                            currently available
                          </span>
                        </div>
                      </div>

                      {/* Reason */}
                      <div>
                        <label className="block text-xs font-medium text-gray-600 mb-1">
                          Reason for move <span className="text-gray-400">(optional)</span>
                        </label>
                        <input type="text" value={moveNotes} onChange={e => setMoveNotes(e.target.value)}
                          placeholder="e.g. Plot number was entered incorrectly"
                          className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-amber-400 focus:border-transparent" />
                      </div>

                      {moveError && (
                        <div className="px-4 py-3 bg-red-50 border border-red-200 text-red-700 rounded-lg text-sm">
                          {moveError}
                        </div>
                      )}

                      <div className="flex gap-3 pt-1">
                        <button onClick={() => setSelectedDest(null)} disabled={moving}
                          className="flex-1 px-4 py-2 bg-white border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-50 text-sm font-medium">
                          Back
                        </button>
                        <button onClick={handleConfirmMove} disabled={moving}
                          className="flex-1 px-4 py-2 bg-amber-600 text-white rounded-lg hover:bg-amber-700 text-sm font-semibold disabled:opacity-50">
                          {moving ? (
                            <span className="flex items-center justify-center gap-2">
                              <span className="animate-spin rounded-full h-4 w-4 border-b-2 border-white" />
                              Moving…
                            </span>
                          ) : `Move to ${selectedDest.plot_number}`}
                        </button>
                      </div>
                    </div>
                  </div>
                )}
              </>
            )}
          </div>
        )}

      </main>

      {/* ══════════════════════════════════════════
          DECEASED RECORD MODAL (all tabs)
      ══════════════════════════════════════════ */}
      {deceasedModal && (
        <div className="fixed inset-0 bg-black/50 flex items-start justify-center z-50 p-4 overflow-y-auto">
          <div className="bg-white rounded-xl shadow-2xl w-full max-w-2xl my-8">
            <div className="px-6 py-4 border-b border-gray-100 flex items-center justify-between">
              <h2 className="text-base font-semibold text-gray-900">
                {editingDeceased
                  ? `Edit — ${editingDeceased.first_name} ${editingDeceased.last_name}`
                  : 'Add Deceased Record'}
              </h2>
              <button onClick={() => setDeceasedModal(false)}
                className="text-gray-400 hover:text-gray-600 text-xl leading-none">×</button>
            </div>

            {deceasedError && (
              <div className="mx-6 mt-4 px-4 py-3 bg-red-50 border border-red-200 text-red-700 rounded-lg text-sm">
                {deceasedError}
              </div>
            )}

            <form onSubmit={handleDeceasedSubmit} className="px-6 py-5 space-y-5">

              {/* Name */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Name</h3>
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
              </section>

              {/* Dates */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Dates</h3>
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
              </section>

              {/* Personal */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Personal</h3>
                <div className="grid grid-cols-3 gap-3 items-end">
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
                  <div className="pb-2">
                    <label className="flex items-center gap-2 text-xs font-medium text-gray-600 cursor-pointer">
                      <input type="checkbox" checked={deceasedForm.veteran_status}
                        onChange={e => setDeceasedForm(f => ({ ...f, veteran_status: e.target.checked }))}
                        className="rounded border-gray-300 text-emerald-600" />
                      Military Veteran
                    </label>
                  </div>
                </div>
                {deceasedForm.veteran_status && (
                  <div className="mt-3">
                    <label className="block text-xs font-medium text-gray-600 mb-1">Military Branch</label>
                    <input type="text" value={deceasedForm.military_branch}
                      onChange={e => setDeceasedForm(f => ({ ...f, military_branch: e.target.value }))}
                      placeholder="e.g. U.S. Army"
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                  </div>
                )}
              </section>

              {/* Documentation */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Documentation</h3>
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
              </section>

              {/* Inscription & Obituary */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Inscription & Obituary</h3>
                <div className="space-y-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Epitaph / Inscription</label>
                    <input type="text" value={deceasedForm.epitaph}
                      onChange={e => setDeceasedForm(f => ({ ...f, epitaph: e.target.value }))}
                      placeholder="Inscription on marker"
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent" />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Obituary</label>
                    <textarea rows={3} value={deceasedForm.obituary}
                      onChange={e => setDeceasedForm(f => ({ ...f, obituary: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none" />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Internal Notes</label>
                    <textarea rows={2} value={deceasedForm.notes}
                      onChange={e => setDeceasedForm(f => ({ ...f, notes: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none" />
                  </div>
                </div>
              </section>

              {/* Modal actions */}
              <div className="flex gap-3 pt-2 border-t border-gray-100">
                <button type="button" onClick={() => setDeceasedModal(false)} disabled={deceasedLoading}
                  className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 text-sm font-medium">
                  Cancel
                </button>
                <button type="submit" disabled={deceasedLoading}
                  className="px-6 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 text-sm font-semibold disabled:opacity-50">
                  {deceasedLoading ? 'Saving…' : editingDeceased ? 'Save Changes' : 'Add Record'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}

/* ─────────────────────────── Helper ─────────────────────────── */
function DRow({ label, value, bold }: { label: string; value: React.ReactNode; bold?: boolean }) {
  return (
    <div>
      <dt className="text-xs font-medium text-gray-400 uppercase tracking-wide">{label}</dt>
      <dd className={`text-sm text-gray-900 mt-0.5 ${bold ? 'font-semibold' : ''}`}>{value}</dd>
    </div>
  );
}
