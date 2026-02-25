'use client';

import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import { useEffect, useState, useCallback } from 'react';
import Link from 'next/link';

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
  plot_id?: string;
  plot?: {
    id: string;
    plot_number: string;
    section: string;
    row_number: number;
    plot_position: number;
  };
}

interface PlotOption {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  status: string;
}

const BLANK_DECEASED: Omit<DeceasedRecord, 'id'> = {
  first_name: '',
  last_name: '',
  middle_name: '',
  maiden_name: '',
  birth_date: '',
  death_date: '',
  buria  burial_date: '',
  age_at_death: undefined,
  gender: '',
  veteran_status: false,
  military_branch: '',
  obituary: '',
  epitaph: '',
  next_of_kin: '',
  funeral_home: '',
  burial_permit_number: '',
  death_certificate_number: '',
  notes: '',
  plot_id: '',
};

export default function AdminRecordsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [records, setRecords] = useState<DeceasedRecord[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [currentPage, setCurrentPage] = useState(1);
  const [totalCount, setTotalCount] = useState(0);
  const pageSize = 25;

  // Modal state
  const [showModal, setShowModal] = useState(false);
  const [editingRecord, setEditingRecord] = useState<DeceasedRecord | null>(null);
  const [formData, setFormData] = useState<Omit<DeceasedRecord, 'id'>>({ ...BLANK_DECEASED });
  const [formLoading, setFormLoading] = useState(false);
  const [formError, setFormError] = useState('');
  const [formSuccess, setFormSuccess] = useState('');

  // Plot search for adding new occupant
  const [showPlotSearch, setShowPlotSearch] = useState(false);
  const [plotSearchTerm, setPlotSearchTerm] = useState('');
  const [availablePlots, setAvailablePlots] = useState<PlotOption[]>([]);
  const [plotSearchLoading, setPlotSearchLoading] = useState(false);

  // Auth check
  useEffect(() => {
    if (status === 'loading') return;

    if (!session) {
      router.push('/auth/login?callbackUrl=/admin/records');
      return;
    }

    if (session.user?.role !== 'admin' && session.user?.role !== 'superintendent') {
      router.push('/');
      return;
    }

    loadRecords();
  }, [session, status, router, currentPage, searchTerm]);

  const loadRecords = async () => {
    try {
      setLoading(true);
      const params = new URLSearchParams({
        page: String(currentPage),
        pageSize: String(pageSize),
        search: searchTerm,
      });

      const res = await fetch(`/api/admin/deceased?${params}`);
      if (!res.ok) throw new Error('Failed to load records');

      const json = await res.json();
      setRecords(json.data || []);
      setTotalCount(json.count || 0);
    } catch (error) {
      console.error('Error loading records:', error);
    } finally {
      setLoading(false);
    }
  };

  const searchPlots = useCallback(async (query: string) => {
    if (!query.trim()) {
      setAvailablePlots([]);
      return;
    }

    try {
      setPlotSearchLoading(true);
      const res = await fetch(`/api/admin/plots/search?q=${encodeURIComponent(query)}&status=available`);
      if (!res.ok) throw new Error('Failed to search plots');

      const json = await res.json();
      setAvailablePlots(json.data || []);
    } catch (error) {
      console.error('Error searching plots:', error);
    } finally {
      setPlotSearchLoading(false);
    }
  }, []);

  const openAddModal = () => {
    setEditingRecord(null);
    setFormData({ ...BLANK_DECEASED });
    setFormError('');
    setFormSuccess('');
    setShowPlotSearch(false);
    setPlotSearchTerm('');
    setAvailablePlots([]);
    setShowModal(true);
  };

  const openEditModal = (record: DeceasedRecord) => {
    setEditingRecord(record);
    setFormData({
      first_name: record.first_name || '',
      last_name: record.last_name || '',
      middle_name: record.middle_name || '',
      maiden_name: record.maiden_name || '',
      birth_date: record.birth_date || '',
      death_date: record.death_date || '',
      burial_date: record.burial_date || '',
      age_at_death: record.age_at_death ?? undefined,
      gender: record.gender || '',
      veteran_status: record.veteran_status || false,
      military_branch: record.military_branch || '',
      obituary: record.obituary || '',
      epitaph: record.epitaph || '',
      next_of_kin: record.next_of_kin || '',
      funeral_home: record.funeral_home || '',
      burial_permit_number: record.burial_permit_number || '',
      death_certificate_number: record.death_certificate_number || '',
      notes: record.notes || '',
      plot_id: record.plot_id || '',
    });
    setFormError('');
    setFormSuccess('');
    setShowPlotSearch(false);
    setShowModal(true);
  };

  const selectPlot = (plot: PlotOption) => {
    setFormData((prev) => ({
      ...prev,
      plot_id: plot.id,
    }));
    setShowPlotSearch(false);
    setPlotSearchTerm('');
    setAvailablePlots([]);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setFormLoading(true);
    setFormError('');
    setFormSuccess('');

    try {
      const url = editingRecord
        ? `/api/admin/deceased/${editingRecord.id}`
        : '/api/admin/deceased';

      const method = editingRecord ? 'PUT' : 'POST';

      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      const json = await res.json();

      if (!res.ok) {
        throw new Error(json.error || 'Failed to save record');
      }

      setFormSuccess(editingRecord ? 'Record updated successfully!' : 'Record created successfully!');
      setTimeout(() => {
        setShowModal(false);
        loadRecords();
      }, 1000);
    } catch (error) {
      setFormError(error instanceof Error ? error.message : 'An error occurred');
    } finally {
      setFormLoading(false);
    }
  };

  const handleDelete = async (recordId: string, name: string) => {
    if (!confirm(`Are you sure you want to delete ${name}? This cannot be undone.`)) {
      return;
    }

    try {
      const res = await fetch(`/api/admin/deceased/${recordId}`, {
        method: 'DELETE',
      });

      if (!res.ok) {
        const json = await res.json();
        throw new Error(json.error || 'Failed to delete record');
      }

      loadRecords();
    } catch (error) {
      alert(error instanceof Error ? error.message : 'Failed to delete record');
    }
  };

  const handleSearch = () => {
    setCurrentPage(1);
    loadRecords();
  };

  const totalPages = Math.ceil(totalCount / pageSize);

  const formatDate = (dateString?: string) => {
    if (!dateString) return '—';
    const normalized = dateString.includes('T') ? dateString : dateString + 'T00:00:00';
    return new Date(normalized).toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
    });
  };

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600 mx-auto"></div>
          <p className="mt-4 text-gray-600">Loading records...</p>
        </div>
      </div>
    );
  }

  if (!session || (session.user?.role !== 'admin' && session.user?.role !== 'superintendent')) {
    return null;
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header */}
      <header className="bg-white shadow">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
          <div className="flex justify-between items-center">
            <div>
              <h1 className="text-3xl font-bold text-gray-900">Deceased Records</h1>
              <p className="mt-1 text-sm text-gray-600">
                Manage all deceased occupants in the cemetery
              </p>
            </div>
            <div className="flex gap-3">
              <Link
                href="/admin"
                className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 transition-colors"
              >
                ← Back to Admin
              </Link>
              <button
                onClick={openAddModal}
                className="px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors font-medium"
              >
                + Add New Occupant
              </button>
            </div>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {/* Search Bar */}
        <div className="bg-white rounded-lg shadow p-6 mb-8">
          <div className="flex gap-3">
            <input
              type="text"
              placeholder="Search by name..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              onKeyDown={(e) => e.key === 'Enter' && handleSearch()}
              className="flex-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
            />
            <button
              onClick={handleSearch}
              className="px-6 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 transition-colors font-medium"
            >
              Search
            </button>
            {searchTerm && (
              <button
                onClick={() => {
                  setSearchTerm('');
                  setCurrentPage(1);
                }}
                className="px-6 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition-colors"
              >
                Clear
              </button>
            )}
          </div>
        </div>

        {/* Records Table */}
        <div className="bg-white rounded-lg shadow overflow-hidden">
          {records.length === 0 ? (
            <div className="px-6 py-12 text-center text-gray-500">
              <p className="text-lg font-medium">No records found</p>
              <p className="text-sm mt-1">
                {searchTerm ? 'Try adjusting your search terms' : 'Click "Add New Occupant" to create one'}
              </p>
            </div>
          ) : (
            <>
              <div className="overflow-x-auto">
                <table className="w-full">
                  <thead className="bg-gray-50 border-b border-gray-200">
                    <tr>
                      <th className="px-6 py-3 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Name
                      </th>
                      <th className="px-6 py-3 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Birth / Death
                      </th>
                      <th className="px-6 py-3 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Plot
                      </th>
                      <th className="px-6 py-3 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Veteran
                      </th>
                      <th className="px-6 py-3 text-right text-xs font-semibold text-gray-600 uppercase tracking-wider">
                        Actions
                      </th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-200">
                    {records.map((record) => (
                      <tr key={record.id} className="hover:bg-gray-50">
                        <td className="px-6 py-4">
                          <div className="font-medium text-gray-900">
                            {record.first_name} {record.last_name}
                          </div>
                          {record.middle_name && (
                            <div className="text-xs text-gray-500">
                              Middle: {record.middle_name}
                            </div>
                          )}
                          {record.maiden_name && (
                            <div className="text-xs text-gray-500">
                              Maiden: {record.maiden_name}
                            </div>
                          )}
                        </td>
                        <td className="px-6 py-4 text-sm text-gray-700">
                          <div>b. {formatDate(record.birth_date)}</div>
                          <div>d. {formatDate(record.death_date)}</div>
                        </td>
                        <td className="px-6 py-4 text-sm text-gray-700">
                          {record.plot ? (
                            <Link
                              href={`/admin/plots/${record.plot.id}`}
                              className="text-emerald-600 hover:text-emerald-800 font-medium"
                            >
                              {record.plot.plot_number}
                            </Link>
                          ) : (
                            <span className="text-gray-400">—</span>
                          )}
                        </td>
                        <td className="px-6 py-4 text-sm text-gray-700">
                          {record.veteran_status ? (
                            <span className="inline-flex items-center px-2 py-1 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                              ✓ Veteran
                            </span>
                          ) : (
                            <span className="text-gray-400">—</span>
                          )}
                        </td>
                        <td className="px-6 py-4 text-right text-sm">
                          <div className="flex items-center justify-end gap-3">
                            <button
                              onClick={() => openEditModal(record)}
                              className="text-emerald-600 hover:text-emerald-800 font-medium"
                            >
                              Edit
                            </button>
                            <button
                              onClick={() =>
                                handleDelete(record.id, `${record.first_name} ${record.last_name}`)
                              }
                              className="text-red-600 hover:text-red-800 font-medium"
                            >
                              Delete
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>

              {/* Pagination */}
              <div className="px-6 py-4 border-t border-gray-200 flex items-center justify-between">
                <p className="text-sm text-gray-700">
                  Showing {((currentPage - 1) * pageSize) + 1}–{Math.min(currentPage * pageSize, totalCount)} of{' '}
                  {totalCount.toLocaleString()} records
                </p>
                <div className="flex gap-2">
                  <button
                    onClick={() => setCurrentPage(1)}
                    disabled={currentPage === 1}
                    className="px-3 py-1 text-sm border rounded disabled:opacity-40 hover:bg-gray-50"
                  >
                    First
                  </button>
                  <button
                    onClick={() => setCurrentPage((p) => Math.max(1, p - 1))}
                    disabled={currentPage === 1}
                    className="px-3 py-1 text-sm border rounded disabled:opacity-40 hover:bg-gray-50"
                  >
                    Previous
                  </button>
                  <span className="px-3 py-1 text-sm text-gray-700">
                    Page {currentPage} of {totalPages}
                  </span>
                  <button
                    onClick={() => setCurrentPage((p) => Math.min(totalPages, p + 1))}
                    disabled={currentPage === totalPages}
                    className="px-3 py-1 text-sm border rounded disabled:opacity-40 hover:bg-gray-50"
                  >
                    Next
                  </button>
                  <button
                    onClick={() => setCurrentPage(totalPages)}
                    disabled={currentPage === totalPages}
                    className="px-3 py-1 text-sm border rounded disabled:opacity-40 hover:bg-gray-50"
                  >
                    Last
                  </button>
                </div>
              </div>
            </>
          )}
        </div>
      </main>

      {/* Modal */}
      {showModal && (
        <div className="fixed inset-0 bg-black/50 flex items-start justify-center z-50 p-4 overflow-y-auto">
          <div className="bg-white rounded-xl shadow-2xl w-full max-w-2xl my-8">
            <div className="px-6 py-4 border-b border-gray-100 flex items-center justify-between">
              <h2 className="text-lg font-semibold text-gray-900">
                {editingRecord ? `Edit — ${editingRecord.first_name} ${editingRecord.last_name}` : 'Add New Occupant'}
              </h2>
              <button
                onClick={() => setShowModal(false)}
                className="text-gray-400 hover:text-gray-600 text-xl leading-none"
              >
                ×
              </button>
            </div>

            {formError && (
              <div className="mx-6 mt-4 px-4 py-3 bg-red-50 border border-red-200 text-red-700 rounded-lg text-sm">
                {formError}
              </div>
            )}

            {formSuccess && (
              <div className="mx-6 mt-4 px-4 py-3 bg-green-50 border border-green-200 text-green-700 rounded-lg text-sm">
                {formSuccess}
              </div>
            )}

            <form onSubmit={handleSubmit} className="px-6 py-5 space-y-5 max-h-[calc(100vh-200px)] overflow-y-auto">
              {/* Plot Selection (only for new records) */}
              {!editingRecord && (
                <section className="bg-emerald-50 border border-emerald-200 rounded-lg p-4">
                  <h3 className="text-sm font-semibold text-emerald-900 mb-3">
                    Step 1: Select Plot
                  </h3>
                  {formData.plot_id ? (
                    <div className="flex items-center justify-between">
                      <div className="text-sm text-emerald-800">
                        <p className="font-medium">Plot selected</p>
                        <p className="text-xs text-emerald-700 mt-1">
                          You can change this by clicking "Search Again"
                        </p>
                      </div>
                      <button
                        type="button"
                        onClick={() => {
                          setShowPlotSearch(true);
                          setPlotSearchTerm('');
                          setAvailablePlots([]);
                        }}
                        className="px-3 py-1 text-sm bg-emerald-600 text-white rounded hover:bg-emerald-700"
                      >
                        Search Again
                      </button>
                    </div>
                  ) : (
                    <button
                      type="button"
                      onClick={() => setShowPlotSearch(!showPlotSearch)}
                      className="w-full px-4 py-2 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 font-medium"
                    >
                      {showPlotSearch ? 'Hide Plot Search' : 'Search for Available Plot'}
                    </button>
                  )}

                  {showPlotSearch && (
                    <div className="mt-4 space-y-3">
                      <div className="flex gap-2">
                        <input
                          type="text"
                          placeholder="Search by plot number or section..."
                          value={plotSearchTerm}
                          onChange={(e) => setPlotSearchTerm(e.target.value)}
                          onKeyDown={(e) => {
                            if (e.key === 'Enter') {
                              searchPlots(plotSearchTerm);
                            }
                          }}
                          className="flex-1 px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                        />
                        <button
                          type="button"
                          onClick={() => searchPlots(plotSearchTerm)}
                          disabled={plotSearchLoading}
                          className="px-4 py-2 text-sm bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 disabled:opacity-50"
                        >
                          {plotSearchLoading ? 'Searching...' : 'Search'}
                        </button>
                      </div>

                      {availablePlots.length > 0 && (
                        <div className="border border-gray-200 rounded-lg max-h-40 overflow-y-auto">
                          {availablePlots.map((plot) => (
                            <button
                              key={plot.id}
                              type="button"
                              onClick={() => selectPlot(plot)}
                              className="w-full text-left px-4 py-2 hover:bg-emerald-50 border-b border-gray-100 last:border-b-0 text-sm"
                            >
                              <div className="font-medium text-gray-900">{plot.plot_number}</div>
                              <div className="text-xs text-gray-600">
                                Section {plot.section} · Row {plot.row_number} · Position {plot.plot_position}
                              </div>
                            </button>
                          ))}
                        </div>
                      )}

                      {plotSearchTerm && availablePlots.length === 0 && !plotSearchLoading && (
                        <p className="text-sm text-gray-600">No available plots found</p>
                      )}
                    </div>
                  )}
                </section>
              )}

              {/* Name */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Name</h3>
                <div className="grid grid-cols-2 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">
                      First Name <span className="text-red-500">*</span>
                    </label>
                    <input
                      type="text"
                      required
                      value={formData.first_name}
                      onChange={(e) => setFormData((f) => ({ ...f, first_name: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">
                      Last Name <span className="text-red-500">*</span>
                    </label>
                    <input
                      type="text"
                      required
                      value={formData.last_name}
                      onChange={(e) => setFormData((f) => ({ ...f, last_name: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Middle Name</label>
                    <input
                      type="text"
                      value={formData.middle_name}
                      onChange={(e) => setFormData((f) => ({ ...f, middle_name: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Maiden Name</label>
                    <input
                      type="text"
                      value={formData.maiden_name}
                      onChange={(e) => setFormData((f) => ({ ...f, maiden_name: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                </div>
              </section>

              {/* Dates */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Dates</h3>
                <div className="grid grid-cols-3 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Date of Birth</label>
                    <input
                      type="date"
                      value={formData.birth_date}
                      onChange={(e) => setFormData((f) => ({ ...f, birth_date: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Date of Death</label>
                    <input
                      type="date"
                      value={formData.death_date}
                      onChange={(e) => setFormData((f) => ({ ...f, death_date: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Burial Date</label>
                    <input
                      type="date"
                      value={formData.burial_date}
                      onChange={(e) => setFormData((f) => ({ ...f, burial_date: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                </div>
              </section>

              {/* Personal */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Personal</h3>
                <div className="grid grid-cols-3 gap-3 items-end">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Age at Death</label>
                    <input
                      type="number"
                      min="0"
                      max="130"
                      value={formData.age_at_death ?? ''}
                      onChange={(e) => setFormData((f) => ({ ...f, age_at_death: e.target.value ? parseInt(e.target.value) : undefined }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Gender</label>
                    <select
                      value={formData.gender}
                      onChange={(e) => setFormData((f) => ({ ...f, gender: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    >
                      <option value="">—</option>
                      <option value="male">Male</option>
                      <option value="female">Female</option>
                      <option value="other">Other</option>
                    </select>
                  </div>
                  <div className="pb-2">
                    <label className="flex items-center gap-2 text-xs font-medium text-gray-600 cursor-pointer">
                      <input
                        type="checkbox"
                        checked={formData.veteran_status}
                        onChange={(e) => setFormData((f) => ({ ...f, veteran_status: e.target.checked }))}
                        className="rounded border-gray-300 text-emerald-600"
                      />
                      Military Veteran
                    </label>
                  </div>
                </div>
                {formData.veteran_status && (
                  <div className="mt-3">
                    <label className="block text-xs font-medium text-gray-600 mb-1">Military Branch</label>
                    <input
                      type="text"
                      value={formData.military_branch}
                      onChange={(e) => setFormData((f) => ({ ...f, military_branch: e.target.value }))}
                      placeholder="e.g. U.S. Army"
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                )}
              </section>

              {/* Documentation */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">Documentation</h3>
                <div className="grid grid-cols-2 gap-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Next of Kin</label>
                    <input
                      type="text"
                      value={formData.next_of_kin}
                      onChange={(e) => setFormData((f) => ({ ...f, next_of_kin: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Funeral Home</label>
                    <input
                      type="text"
                      value={formData.funeral_home}
                      onChange={(e) => setFormData((f) => ({ ...f, funeral_home: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Burial Permit #</label>
                    <input
                      type="text"
                      value={formData.burial_permit_number}
                      onChange={(e) => setFormData((f) => ({ ...f, burial_permit_number: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Death Certificate #</label>
                    <input
                      type="text"
                      value={formData.death_certificate_number}
                      onChange={(e) => setFormData((f) => ({ ...f, death_certificate_number: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                </div>
              </section>

              {/* Inscription & Obituary */}
              <section>
                <h3 className="text-xs font-semibold text-gray-400 uppercase tracking-widest mb-3">
                  Inscription & Obituary
                </h3>
                <div className="space-y-3">
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Epitaph / Inscription</label>
                    <input
                      type="text"
                      value={formData.epitaph}
                      onChange={(e) => setFormData((f) => ({ ...f, epitaph: e.target.value }))}
                      placeholder="Inscription on marker"
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Obituary</label>
                    <textarea
                      rows={3}
                      value={formData.obituary}
                      onChange={(e) => setFormData((f) => ({ ...f, obituary: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none"
                    />
                  </div>
                  <div>
                    <label className="block text-xs font-medium text-gray-600 mb-1">Internal Notes</label>
                    <textarea
                      rows={2}
                      value={formData.notes}
                      onChange={(e) => setFormData((f) => ({ ...f, notes: e.target.value }))}
                      className="w-full px-3 py-2 text-sm border border-gray-300 rounded-lg focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none"
                    />
                  </div>
                </div>
              </section>

              {/* Modal actions */}
              <div className="flex gap-3 pt-2 border-t border-gray-100">
                <button
                  type="button"
                  onClick={() => setShowModal(false)}
                  disabled={formLoading}
                  className="flex-1 px-4 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 font-medium disabled:opacity-50"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  disabled={formLoading || (!editingRecord && !formData.plot_id)}
                  className="flex-1 px-4 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 font-medium disabled:opacity-50"
                >
                  {formLoading ? 'Saving...' : editingRecord ? 'Update Record' : 'Create Record'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
