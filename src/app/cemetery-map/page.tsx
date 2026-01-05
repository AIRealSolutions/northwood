'use client';

import { Suspense } from 'react';
import { useSearchParams } from 'next/navigation';
import CemeteryMapUnified from '@/components/CemeteryMapUnified';

function CemeteryMapContent() {
  const searchParams = useSearchParams();
  const highlightPlot = searchParams.get('highlight') || undefined;

  return <CemeteryMapUnified highlightPlot={highlightPlot} />;
}

export default function CemeteryMapPage() {
  return (
    <Suspense fallback={
      <div className="flex items-center justify-center h-screen">
        <div className="animate-spin rounded-full h-16 w-16 border-4 border-emerald-200 border-t-emerald-600"></div>
      </div>
    }>
      <CemeteryMapContent />
    </Suspense>
  );
}
