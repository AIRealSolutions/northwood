'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';

interface PlotFormData {
  plot_number: string;
  section: string;
  row_number: string;
  plot_position: string;
  plot_type: string;
  status: string;
  size_width: string;
  size_length: string;
  price: string;
  owner_name: string;
  owner_contact: string;
  purchase_date: string;
  notes: string;
}

interface PlotFormProps {
  initialData?: Partial<PlotFormData>;
  plotId?: string;
  mode: 'create' | 'edit';
}

const SECTIONS = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
const PLOT_TYPES = ['standard', 'cremation', 'hybrid'];
const STATUSES = ['available', 'reserved', 'occupied'];

export default function PlotForm({ initialData, plotId, mode }: PlotFormProps) {
  const router = useRouter();
  const [formData, setFormData] = useState<PlotFormData>({
    plot_number: initialData?.plot_number || '',
    section: initialData?.section || '',
    row_number: initialData?.row_number || '',
    plot_position: initialData?.plot_position || '',
    plot_type: initialData?.plot_type || 'standard',
    status: initialData?.status || 'available',
    size_width: initialData?.size_width || '',
    size_length: initialData?.size_length || '',
    price: initialData?.price || '',
    owner_name: initialData?.owner_name || '',
    owner_contact: initialData?.owner_contact || '',
    purchase_date: initialData?.purchase_date || '',
    notes: initialData?.notes || '',
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState('');

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>
  ) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    setSuccess('');

    try {
      const url = mode === 'create' ? '/api/admin/plots' : `/api/admin/plots/${plotId}`;
      const method = mode === 'create' ? 'POST' : 'PUT';

      // In edit mode, only send position fields
      const body =
        mode === 'edit'
          ? {
              plot_number: formData.plot_number,
              section: formData.section,
              row_number: formData.row_number,
              plot_position: formData.plot_position,
            }
          : formData;

      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      });

      const json = await res.json();
      if (!res.ok) throw new Error(json.error || 'Failed to save');

      setSuccess(mode === 'create' ? 'Plot created successfully!' : 'Plot position updated successfully!');
      setTimeout(() => {
        if (mode === 'create') {
          router.push(`/admin/plots/${json.data.id}`);
        } else {
          router.push(`/admin/plots/${plotId}`);
        }
      }, 1000);
    } catch (err: any) {
      setError(err.message || 'Failed to save plot');
    } finally {
      setLoading(false);
    }
  };

  // ─── EDIT MODE: position-only form ───────────────────────────────────────────
  if (mode === 'edit') {
    return (
      <form onSubmit={handleSubmit} className="space-y-6">
        {error && (
          <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">
            {error}
          </div>
        )}
        {success && (
          <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded-lg text-sm">
            ✓ {success}
          </div>
        )}

        <div className="bg-white rounded-lg shadow p-6">
          <h3 className="text-base font-semibold text-gray-900 mb-1">Update Plot Position</h3>
          <p className="text-sm text-gray-500 mb-5">
            Only the physical location fields can be changed here. Use this to correct a plot that was
            entered in the wrong section, row, or position.
          </p>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-5">
            {/* Plot Number */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Plot Number <span className="text-red-500">*</span>
              </label>
              <input
                type="text"
                name="plot_number"
                value={formData.plot_number}
                onChange={handleChange}
                required
                placeholder="e.g. NW-A-001-1"
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
              />
              <p className="text-xs text-gray-400 mt-1">Official plot identifier</p>
            </div>

            {/* Section */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Section <span className="text-red-500">*</span>
              </label>
              <select
                name="section"
                value={formData.section}
                onChange={handleChange}
                required
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
              >
                <option value="">Select Section</option>
                {SECTIONS.map((s) => (
                  <option key={s} value={s}>
                    Section {s}
                  </option>
                ))}
              </select>
              <p className="text-xs text-gray-400 mt-1">Cemetery section (block)</p>
            </div>

            {/* Row Number */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Row Number <span className="text-red-500">*</span>
              </label>
              <input
                type="number"
                name="row_number"
                value={formData.row_number}
                onChange={handleChange}
                required
                min="1"
                placeholder="e.g. 1"
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
              />
              <p className="text-xs text-gray-400 mt-1">Row within the section</p>
            </div>

            {/* Plot Position */}
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                Plot Position <span className="text-red-500">*</span>
              </label>
              <input
                type="number"
                name="plot_position"
                value={formData.plot_position}
                onChange={handleChange}
                required
                min="1"
                placeholder="e.g. 3"
                className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
              />
              <p className="text-xs text-gray-400 mt-1">Position within the row</p>
            </div>
          </div>
        </div>

        {/* Actions */}
        <div className="flex justify-end gap-4">
          <button
            type="button"
            onClick={() => router.back()}
            className="px-6 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 font-medium"
            disabled={loading}
          >
            Cancel
          </button>
          <button
            type="submit"
            disabled={loading}
            className="px-6 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 font-medium disabled:opacity-50"
          >
            {loading ? 'Saving...' : 'Update Position'}
          </button>
        </div>
      </form>
    );
  }

  // ─── CREATE MODE: full form ───────────────────────────────────────────────────
  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      {error && (
        <div className="bg-red-50 border border-red-200 text-red-700 px-4 py-3 rounded-lg text-sm">
          {error}
        </div>
      )}
      {success && (
        <div className="bg-green-50 border border-green-200 text-green-700 px-4 py-3 rounded-lg text-sm">
          ✓ {success}
        </div>
      )}

      {/* Core Plot Location */}
      <div className="bg-white rounded-lg shadow p-6">
        <h3 className="text-base font-semibold text-gray-900 mb-4">Plot Location</h3>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Plot Number <span className="text-red-500">*</span>
            </label>
            <input
              type="text"
              name="plot_number"
              value={formData.plot_number}
              onChange={handleChange}
              required
              placeholder="e.g. NW-A-001-1"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Section <span className="text-red-500">*</span>
            </label>
            <select
              name="section"
              value={formData.section}
              onChange={handleChange}
              required
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            >
              <option value="">Select Section</option>
              {SECTIONS.map((s) => (
                <option key={s} value={s}>
                  Section {s}
                </option>
              ))}
            </select>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Row Number <span className="text-red-500">*</span>
            </label>
            <input
              type="number"
              name="row_number"
              value={formData.row_number}
              onChange={handleChange}
              required
              min="1"
              placeholder="e.g. 1"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Plot Position <span className="text-red-500">*</span>
            </label>
            <input
              type="number"
              name="plot_position"
              value={formData.plot_position}
              onChange={handleChange}
              required
              min="1"
              placeholder="e.g. 1"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
        </div>
      </div>

      {/* Plot Type & Status */}
      <div className="bg-white rounded-lg shadow p-6">
        <h3 className="text-base font-semibold text-gray-900 mb-4">Plot Type & Status</h3>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Plot Type <span className="text-red-500">*</span>
            </label>
            <select
              name="plot_type"
              value={formData.plot_type}
              onChange={handleChange}
              required
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            >
              {PLOT_TYPES.map((t) => (
                <option key={t} value={t}>
                  {t.charAt(0).toUpperCase() + t.slice(1)}
                </option>
              ))}
            </select>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Status</label>
            <select
              name="status"
              value={formData.status}
              onChange={handleChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            >
              {STATUSES.map((s) => (
                <option key={s} value={s}>
                  {s.charAt(0).toUpperCase() + s.slice(1)}
                </option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Dimensions & Pricing */}
      <div className="bg-white rounded-lg shadow p-6">
        <h3 className="text-base font-semibold text-gray-900 mb-4">Dimensions & Pricing</h3>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Width (ft)</label>
            <input
              type="number"
              name="size_width"
              value={formData.size_width}
              onChange={handleChange}
              step="0.1"
              min="0"
              placeholder="e.g. 4.0"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Length (ft)</label>
            <input
              type="number"
              name="size_length"
              value={formData.size_length}
              onChange={handleChange}
              step="0.1"
              min="0"
              placeholder="e.g. 8.0"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Price ($)</label>
            <input
              type="number"
              name="price"
              value={formData.price}
              onChange={handleChange}
              step="0.01"
              min="0"
              placeholder="e.g. 1500.00"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
        </div>
      </div>

      {/* Owner Information */}
      <div className="bg-white rounded-lg shadow p-6">
        <h3 className="text-base font-semibold text-gray-900 mb-4">Owner Information</h3>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Owner Name</label>
            <input
              type="text"
              name="owner_name"
              value={formData.owner_name}
              onChange={handleChange}
              placeholder="Full name"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Owner Contact</label>
            <input
              type="text"
              name="owner_contact"
              value={formData.owner_contact}
              onChange={handleChange}
              placeholder="Phone or email"
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Purchase Date</label>
            <input
              type="date"
              name="purchase_date"
              value={formData.purchase_date}
              onChange={handleChange}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm"
            />
          </div>
        </div>
      </div>

      {/* Notes */}
      <div className="bg-white rounded-lg shadow p-6">
        <h3 className="text-base font-semibold text-gray-900 mb-4">Notes</h3>
        <textarea
          name="notes"
          value={formData.notes}
          onChange={handleChange}
          rows={4}
          placeholder="Any additional notes about this plot..."
          className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-emerald-500 text-sm resize-none"
        />
      </div>

      {/* Actions */}
      <div className="flex justify-end gap-4">
        <button
          type="button"
          onClick={() => router.back()}
          className="px-6 py-2 bg-gray-100 text-gray-700 rounded-lg hover:bg-gray-200 font-medium"
          disabled={loading}
        >
          Cancel
        </button>
        <button
          type="submit"
          disabled={loading}
          className="px-6 py-2 bg-emerald-600 text-white rounded-lg hover:bg-emerald-700 font-medium disabled:opacity-50"
        >
          {loading ? 'Creating...' : 'Create Plot'}
        </button>
      </div>
    </form>
  );
}
