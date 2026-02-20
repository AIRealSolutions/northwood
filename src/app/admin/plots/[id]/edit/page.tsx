'use client';

import { useSession } from 'next-auth/react';
import { useRouter, useParams } from 'next/navigation';
import { useEffect, useState } from 'react';
import Link from 'next/link';
import PlotForm from '@/components/admin/PlotForm';

interface Plot {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  plot_type: string;
  status: string;
  size_width?: number;
  size_length?: number;
  price?: number;
  owner_name?: string;
  owner_contact?: string;
  purchase_date?: string;
  notes?: string;
}

export default function EditPlotPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const params = useParams();
  const plotId = params.id as string;

  const [plot, setPlot] = useState<Plot | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    if (status === 'loading') return;
    if (!session) {
      router.push(`/auth/login?callbackUrl=/admin/plots/${plotId}/edit`);
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

  if (status === 'loading' || loading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-emerald-600"></div>
      </div>
    );
  }

  if (error || !plot) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50">
        <div className="text-center">
          <p className="text-red-600">{error || 'Plot not found'}</p>
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
        <div className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
          <div className="flex items-center space-x-3">
            <Link href={`/admin/plots/${plotId}`} className="text-gray-500 hover:text-gray-700 text-sm">
              ← Plot {plot.plot_number}
            </Link>
            <span className="text-gray-300">/</span>
            <h1 className="text-2xl font-bold text-gray-900">Edit Plot</h1>
          </div>
        </div>
      </header>

      <main className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <PlotForm
          mode="edit"
          plotId={plotId}
          initialData={{
            plot_number: plot.plot_number,
            section: plot.section,
            row_number: plot.row_number.toString(),
            plot_position: plot.plot_position.toString(),
            plot_type: plot.plot_type,
            status: plot.status,
            size_width: plot.size_width?.toString() || '',
            size_length: plot.size_length?.toString() || '',
            price: plot.price?.toString() || '',
            owner_name: plot.owner_name || '',
            owner_contact: plot.owner_contact || '',
            purchase_date: plot.purchase_date
              ? new Date(plot.purchase_date).toISOString().split('T')[0]
              : '',
            notes: plot.notes || '',
          }}
        />
      </main>
    </div>
  );
}
