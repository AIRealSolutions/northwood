'use client';

import { Suspense } from 'react';
import dynamic from 'next/dynamic';

// Dynamic import to avoid SSR issues with canvas
const CemeteryMapCanvas = dynamic(() => import('@/components/CemeteryMapCanvas'), {
  ssr: false,
  loading: () => (
    <div className="flex items-center justify-center h-screen">
      <div className="animate-spin rounded-full h-16 w-16 border-4 border-emerald-200 border-t-emerald-600"></div>
    </div>
  ),
});

export default function CemeteryMapPage() {
  return (
    <Suspense fallback={
      <div className="flex items-center justify-center h-screen">
        <div className="animate-spin rounded-full h-16 w-16 border-4 border-emerald-200 border-t-emerald-600"></div>
      </div>
    }>
      <CemeteryMapCanvas />
    </Suspense>
  );
}
