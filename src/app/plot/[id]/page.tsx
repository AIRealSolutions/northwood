'use client';

// Prevent static prerendering - this page requires runtime data
export const dynamic = 'force-dynamic';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { useParams } from 'next/navigation';
import { useSession } from 'next-auth/react';
import { plotsAPI, PlotWithDetails, DeceasedRecord } from '@/lib/supabase';
import { RELATIONSHIP_GROUPS, getRelationship, deriveOccupantRelationship, getRelationshipCategory } from '@/lib/relationships';

// ─── Types ────────────────────────────────────────────────────────────────────

interface PlotConnection {
  id: string;
  relationship: string;
  member_relationship?: string;
  occupant_relationship?: string;
  user_first_name?: string | null;
  user_last_name?: string | null;
  deceased_records?: { id: string; first_name: string; last_name: string } | null;
}

// ─── Connect with Descendants Component ───────────────────────────────────────

function ConnectWithDescendants({
  plot,
  deceased,
}: {
  plot: PlotWithDetails;
  deceased: DeceasedRecord[];
}) {
  const { data: session } = useSession();
  const [connections, setConnections] = useState<PlotConnection[]>([]);
  const [showForm, setShowForm] = useState(false);
  const [form, setForm] = useState({ deceased_id: '', member_relationship: '', notes: '' });
  const selectedRelDef = getRelationship(form.member_relationship);
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState('');
  const [loadingConnections, setLoadingConnections] = useState(true);

  // Load existing approved connections for this plot
  useEffect(() => {
    const load = async () => {
      try {
        const res = await fetch(`/api/connections?plot_id=${plot.id}`);
        const data = await res.json();
        setConnections(data.connections || []);
      } catch {
        // ignore
      } finally {
        setLoadingConnections(false);
      }
    };
    if (plot?.id) load();
  }, [plot?.id]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!form.member_relationship.trim()) {
      setError('Please select your relationship to the occupant(s).');
      return;
    }
    setSubmitting(true);
    setError('');
    try {
      const res = await fetch('/api/connections', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          plot_id: plot.id,
          deceased_id: form.deceased_id || null,
          relationship: form.member_relationship,
          member_relationship: form.member_relationship,
          occupant_relationship: deriveOccupantRelationship(form.member_relationship),
          relationship_category: getRelationshipCategory(form.member_relationship),
          notes: form.notes,
        }),
      });
      if (!res.ok) {
        const d = await res.json();
        throw new Error(d.error || 'Submission failed');
      }
      setSubmitted(true);
      setShowForm(false);
    } catch (e: unknown) {
      setError(e instanceof Error ? e.message : 'Submission failed. Please try again.');
    } finally {
      setSubmitting(false);
    }
  };

  // Count of approved connections
  const connectionCount = connections.length;

  return (
    <div className="bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-900/20 dark:to-emerald-900/20 border border-green-200 dark:border-green-700 rounded-xl p-6 mt-6">
      {/* Header */}
      <div className="flex items-start justify-between gap-4 mb-4">
        <div>
          <h2 className="text-lg font-bold text-green-900 dark:text-green-100 flex items-center gap-2">
            <span className="text-2xl">🌳</span>
            Connect with Descendants
          </h2>
          <p className="text-sm text-green-700 dark:text-green-300 mt-1">
            Are you a family member or descendant of someone interred in this plot?
            Register your connection to be part of the Northwood family network.
          </p>
        </div>
        {connectionCount > 0 && (
          <div className="flex-shrink-0 bg-green-100 dark:bg-green-800 text-green-800 dark:text-green-100 text-sm font-bold px-3 py-1.5 rounded-full">
            {connectionCount} {connectionCount === 1 ? 'family' : 'families'} connected
          </div>
        )}
      </div>

      {/* Existing connections summary */}
      {!loadingConnections && connectionCount > 0 && (
        <div className="mb-4 flex flex-wrap gap-2">
          {connections.map(c => {
            const memberName = [c.user_first_name, c.user_last_name].filter(Boolean).join(' ');
            const def = c.member_relationship ? getRelationship(c.member_relationship) : null;
            // Use def.label (what the member is, e.g. "Grandson") not def.inverse (what the occupant is to them)
            const relationshipLabel = def ? def.label.replace(/ \(.*?\)/g, '').replace(/ —.*$/, '').trim() : (c.occupant_relationship || c.relationship);
            return (
              <span
                key={c.id}
                className="inline-flex items-center gap-1.5 px-3 py-1 bg-white dark:bg-green-900 border border-green-200 dark:border-green-600 rounded-full text-xs text-green-800 dark:text-green-200"
              >
                <span>👤</span>
                {memberName && (
                  <span className="font-semibold">{memberName}</span>
                )}
                {memberName && <span className="text-green-400 dark:text-green-500">·</span>}
                <span>{relationshipLabel}</span>
                {c.deceased_records && (
                  <span className="text-green-500 dark:text-green-400">
                    {' '}of {c.deceased_records.first_name} {c.deceased_records.last_name}
                  </span>
                )}
              </span>
            );
          })}
        </div>
      )}

      {/* Already submitted */}
      {submitted && (
        <div className="p-4 bg-green-100 dark:bg-green-800 border border-green-300 dark:border-green-600 rounded-xl text-green-800 dark:text-green-100 text-sm">
          <p className="font-semibold mb-1">✓ Connection request submitted!</p>
          <p>
            Thank you for registering your family connection. The cemetery committee will review your
            request and approve it shortly. You can view the status in{' '}
            <Link href="/my-connections" className="underline font-medium">My Connections</Link>.
          </p>
        </div>
      )}

      {/* Not logged in */}
      {!session && !submitted && (
        <div className="bg-white dark:bg-gray-800 rounded-xl border border-green-200 dark:border-green-700 p-5">
          <p className="text-sm text-gray-700 dark:text-gray-300 mb-4">
            <strong>Register a free account</strong> to connect your family to this plot and be part of
            the Northwood Cemetery family network. Once approved, your connection will be visible to
            other family members.
          </p>
          <div className="flex flex-col sm:flex-row gap-3">
            <Link
              href={`/auth/register?callbackUrl=/plot/${plot.id}`}
              className="flex-1 text-center px-5 py-2.5 bg-green-700 hover:bg-green-800 text-white font-semibold rounded-xl text-sm transition-colors"
            >
              Create Free Account
            </Link>
            <Link
              href={`/auth/login?callbackUrl=/plot/${plot.id}`}
              className="flex-1 text-center px-5 py-2.5 bg-white dark:bg-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600 border border-gray-300 dark:border-gray-500 text-gray-700 dark:text-gray-200 font-semibold rounded-xl text-sm transition-colors"
            >
              Sign In
            </Link>
          </div>
        </div>
      )}

      {/* Logged in — show form or button */}
      {session && !submitted && (
        <>
          {!showForm ? (
            <button
              onClick={() => setShowForm(true)}
              className="w-full py-2.5 px-5 bg-green-700 hover:bg-green-800 text-white font-semibold rounded-xl text-sm transition-colors"
            >
              + Connect My Family to This Plot
            </button>
          ) : (
            <form onSubmit={handleSubmit} className="bg-white dark:bg-gray-800 rounded-xl border border-green-200 dark:border-green-700 p-5 space-y-4">
              <h3 className="font-semibold text-gray-900 dark:text-white text-sm">Register Your Family Connection</h3>

              {error && (
                <div className="p-3 bg-red-50 dark:bg-red-900/30 border border-red-200 dark:border-red-700 rounded-lg text-red-700 dark:text-red-300 text-sm">
                  {error}
                </div>
              )}

              {/* Select specific occupant (optional) */}
              {deceased.length > 0 && (
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Connected to (optional)
                    <span className="text-gray-400 font-normal ml-1">— leave blank to connect to the entire plot</span>
                  </label>
                  <select
                    value={form.deceased_id}
                    onChange={e => setForm(f => ({ ...f, deceased_id: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-4 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
                  >
                    <option value="">All occupants in this plot</option>
                    {deceased.map((d: DeceasedRecord) => {
                      const name = [d.first_name, d.middle_name, d.last_name].filter(Boolean).join(' ');
                      return (
                        <option key={d.id} value={d.id}>{name}</option>
                      );
                    })}
                  </select>
                </div>
              )}

              {/* Relationship — structured dropdown */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                  I am the occupant&apos;s… *
                </label>
                <select
                  value={form.member_relationship}
                  onChange={e => setForm(f => ({ ...f, member_relationship: e.target.value }))}
                  required
                  className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-4 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
                >
                  <option value="">— Select your relationship —</option>
                  {RELATIONSHIP_GROUPS.map(group => (
                    <optgroup key={group.label} label={group.label}>
                      {group.values.map(rel => (
                        <option key={rel.value} value={rel.value}>{rel.label}</option>
                      ))}
                    </optgroup>
                  ))}
                </select>
                {/* Live preview of both sides */}
                {selectedRelDef && (
                  <div className="mt-2 p-3 bg-green-50 dark:bg-green-900/30 border border-green-200 dark:border-green-700 rounded-lg text-xs space-y-1">
                    <p className="text-green-800 dark:text-green-200">
                      <span className="font-semibold">You are:</span> the occupant&apos;s <span className="font-bold">{selectedRelDef.label.replace(' (specify in notes)', '')}</span>
                    </p>
                    <p className="text-green-700 dark:text-green-300">
                      <span className="font-semibold">The occupant is:</span> your <span className="font-bold">{selectedRelDef.inverseLabel}</span>
                    </p>
                  </div>
                )}
              </div>

              {/* Notes */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                  Additional Notes
                  <span className="text-gray-400 font-normal ml-1">(optional)</span>
                </label>
                <textarea
                  value={form.notes}
                  onChange={e => setForm(f => ({ ...f, notes: e.target.value }))}
                  rows={3}
                  placeholder="Any additional context about your family connection..."
                  className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-4 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-green-500 focus:border-transparent"
                />
              </div>

              <p className="text-xs text-gray-400 dark:text-gray-500">
                Your connection will be reviewed by the cemetery committee before it appears publicly.
                Your personal contact information will not be shared.
              </p>

              <div className="flex gap-3">
                <button
                  type="submit"
                  disabled={submitting}
                  className="flex-1 py-2.5 bg-green-700 hover:bg-green-800 text-white font-semibold rounded-xl text-sm transition-colors disabled:opacity-50"
                >
                  {submitting ? 'Submitting...' : 'Submit Connection Request'}
                </button>
                <button
                  type="button"
                  onClick={() => { setShowForm(false); setError(''); }}
                  className="px-5 py-2.5 bg-gray-100 dark:bg-gray-700 hover:bg-gray-200 dark:hover:bg-gray-600 text-gray-700 dark:text-gray-300 font-medium rounded-xl text-sm transition-colors"
                >
                  Cancel
                </button>
              </div>
            </form>
          )}
        </>
      )}
    </div>
  );
}

// ─── Main Page ─────────────────────────────────────────────────────────────────

export default function PlotDetailsPage() {
  const params = useParams();
  const plotId = params.id as string;
  
  const [plot, setPlot] = useState<PlotWithDetails | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (plotId) {
      loadPlotDetails();
    }
  }, [plotId]);

  const loadPlotDetails = async () => {
    try {
      setLoading(true);
      setError(null);
      const data = await plotsAPI.getPlotById(plotId);
      if (!data) {
        setError('Plot not found');
      } else {
        setPlot(data);
      }
    } catch (err) {
      console.error('Error loading plot:', err);
      setError('Failed to load plot details');
    } finally {
      setLoading(false);
    }
  };

  const formatDate = (dateString?: string) => {
    if (!dateString) return 'Unknown';
    // Append T00:00:00 to treat the date as local time, preventing UTC offset from shifting the day
    const normalized = dateString.includes('T') ? dateString : dateString + 'T00:00:00';
    return new Date(normalized).toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  const calculateAge = (birthDate?: string, deathDate?: string) => {
    if (!birthDate || !deathDate) return null;
    const birth = new Date(birthDate.includes('T') ? birthDate : birthDate + 'T00:00:00');
    const death = new Date(deathDate.includes('T') ? deathDate : deathDate + 'T00:00:00');
    let age = death.getFullYear() - birth.getFullYear();
    const monthDiff = death.getMonth() - birth.getMonth();
    if (monthDiff < 0 || (monthDiff === 0 && death.getDate() < birth.getDate())) {
      age--;
    }
    return age;
  };

  const getSectionRoads = (section: string): { west: string; east: string } => {
    const roadMap: Record<string, { west: string; east: string }> = {
      'A': { west: 'Azalea (W Border)', east: 'Beech' },
      'B': { west: 'Beech', east: 'Chinquapin' },
      'C': { west: 'Chinquapin', east: 'Dogwood' },
      'D': { west: 'Dogwood', east: 'Elm' },
      'E': { west: 'Elm', east: 'Fig' },
      'F': { west: 'Fig', east: 'Gardenia' },
      'G': { west: 'Gardenia', east: 'Heather' },
      'H': { west: 'Heather', east: 'Hibiscus (E Border)' },
    };
    return roadMap[section.toUpperCase()] || { west: section, east: section };
  };

  const getBlockInfo = (rowNumber: number): string => {
    if (rowNumber <= 36) {
      return 'Block 1 (South section, rows ascending from Sweet Bay)';
    } else {
      return 'Block 2 (North section, rows descending from Mitchell St)';
    }
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'available': return 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-200';
      case 'reserved': return 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-200';
      case 'occupied': return 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-200';
      default: return 'bg-gray-100 text-gray-800 dark:bg-gray-900 dark:text-gray-200';
    }
  };

  if (loading) {
    return (
      <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
        <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
          <div className="container mx-auto px-4 py-4 flex justify-between items-center">
            <Link href="/" className="text-2xl font-bold text-black dark:text-white">
              Northwood Cemetery
            </Link>
          </div>
        </header>
        <main className="flex-grow container mx-auto px-4 py-8 flex items-center justify-center">
          <div className="text-center">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
            <p className="text-gray-500 dark:text-gray-400">Loading plot details...</p>
          </div>
        </main>
      </div>
    );
  }

  if (error || !plot) {
    return (
      <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
        <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
          <div className="container mx-auto px-4 py-4 flex justify-between items-center">
            <Link href="/" className="text-2xl font-bold text-black dark:text-white">
              Northwood Cemetery
            </Link>
          </div>
        </header>
        <main className="flex-grow container mx-auto px-4 py-8 flex items-center justify-center">
          <div className="text-center">
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">Plot Not Found</h1>
            <p className="text-gray-500 dark:text-gray-400 mb-6">{error || 'The requested plot could not be found.'}</p>
            <Link href="/cemetery-map" className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg">
              Return to Cemetery Map
            </Link>
          </div>
        </main>
      </div>
    );
  }

  const deceased = plot.deceased_records || [];
  const hasDeceased = deceased.length > 0;

  return (
    <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
      <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <Link href="/" className="text-2xl font-bold text-black dark:text-white">
            Northwood Cemetery
          </Link>
          <nav className="hidden md:flex space-x-6">
            <Link href="/cemetery-map" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Cemetery Map
            </Link>
            <Link href="/records" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Records
            </Link>
            <Link href="/burial-services" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Burial Services
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        {/* Breadcrumb */}
        <nav className="mb-6 text-sm">
          <ol className="flex items-center space-x-2">
            <li><Link href="/" className="text-blue-600 hover:underline">Home</Link></li>
            <li className="text-gray-400">/</li>
            <li><Link href="/cemetery-map" className="text-blue-600 hover:underline">Cemetery Map</Link></li>
            <li className="text-gray-400">/</li>
            <li><Link href={`/cemetery-map?section=${plot.section.toLowerCase()}`} className="text-blue-600 hover:underline">Section {plot.section}</Link></li>
            <li className="text-gray-400">/</li>
            <li className="text-gray-600 dark:text-gray-400">{plot.plot_number}</li>
          </ol>
        </nav>

        {/* Plot Header */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-6">
          <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
            <div>
              <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
                Plot {plot.plot_number}
              </h1>
              <p className="text-gray-600 dark:text-gray-400">
                Section {plot.section} (Between {getSectionRoads(plot.section).west} & {getSectionRoads(plot.section).east}) • Row {plot.row_number} • Position {plot.plot_position}
              </p>
              <p className="text-sm text-gray-500 dark:text-gray-500 mt-1">
                {getBlockInfo(plot.row_number || 1)}
              </p>
            </div>
            <div className="flex flex-col items-end gap-3">
              <div className="flex items-center gap-4">
                <span className={`px-4 py-2 rounded-full text-sm font-medium ${getStatusColor(plot.status)}`}>
                  {plot.status.charAt(0).toUpperCase() + plot.status.slice(1)}
                </span>
                <span className="px-4 py-2 bg-gray-100 dark:bg-gray-700 rounded-full text-sm font-medium text-gray-700 dark:text-gray-300">
                  {plot.plot_type.charAt(0).toUpperCase() + plot.plot_type.slice(1)}
                </span>
              </div>
              <Link 
                href={`/cemetery-map?highlight=${plot.plot_number}`}
                className="inline-flex items-center gap-2 px-4 py-2 bg-emerald-600 hover:bg-emerald-700 text-white rounded-lg transition-all font-medium shadow-md hover:shadow-lg"
              >
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                </svg>
                Show on Map
              </Link>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
          {/* Primary Section: Deceased Records + Connect with Descendants */}
          <div className="lg:col-span-2">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-gray-900 dark:text-white mb-4 flex items-center">
                <svg className="w-6 h-6 mr-2 text-gray-600 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                </svg>
                Interred Individuals
              </h2>
              
              {hasDeceased ? (
                <div className="space-y-6">
                  {deceased.map((person: DeceasedRecord, index: number) => {
                    const age = calculateAge(person.birth_date, person.death_date);
                    const fullName = [person.first_name, person.middle_name, person.last_name]
                      .filter(Boolean)
                      .join(' ');
                    
                    return (
                      <div key={person.id} className={`${index > 0 ? 'border-t border-gray-200 dark:border-gray-700 pt-6' : ''}`}>
                        {/* Name and Dates - Primary Display */}
                        <div className="mb-4">
                          <div className="flex items-start justify-between gap-3 flex-wrap">
                            <h3 className="text-2xl font-bold text-gray-900 dark:text-white mb-1">
                              {fullName}
                            </h3>
                            <Link
                              href={`/cemetery-committee?section=change-request&plot=${encodeURIComponent(plot.plot_number)}&occupant=${encodeURIComponent(fullName)}&type=occupant_details`}
                              className="flex-shrink-0 inline-flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium bg-amber-50 hover:bg-amber-100 border border-amber-300 text-amber-800 rounded-lg transition-colors"
                            >
                              <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                              </svg>
                              Submit Correction
                            </Link>
                          </div>
                          {person.maiden_name && (
                            <p className="text-gray-600 dark:text-gray-400 italic mb-2">
                              née {person.maiden_name}
                            </p>
                          )}
                          <p className="text-lg text-gray-700 dark:text-gray-300">
                            {formatDate(person.birth_date)} — {formatDate(person.death_date)}
                            {age !== null && (
                              <span className="text-gray-500 dark:text-gray-400 ml-2">
                                (Age {age})
                              </span>
                            )}
                          </p>
                        </div>

                        {/* Details Grid */}
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-4 bg-gray-50 dark:bg-gray-900 rounded-lg p-4">
                          {person.burial_date && (
                            <div>
                              <p className="text-sm text-gray-500 dark:text-gray-400">Burial Date</p>
                              <p className="font-medium text-gray-900 dark:text-white">{formatDate(person.burial_date)}</p>
                            </div>
                          )}
                          {person.gender && (
                            <div>
                              <p className="text-sm text-gray-500 dark:text-gray-400">Gender</p>
                              <p className="font-medium text-gray-900 dark:text-white">{person.gender}</p>
                            </div>
                          )}
                          {person.veteran_status && (
                            <div>
                              <p className="text-sm text-gray-500 dark:text-gray-400">Veteran Status</p>
                              <p className="font-medium text-gray-900 dark:text-white">
                                Veteran {person.military_branch && `- ${person.military_branch}`}
                              </p>
                            </div>
                          )}
                          {person.funeral_home && (
                            <div>
                              <p className="text-sm text-gray-500 dark:text-gray-400">Funeral Home</p>
                              <p className="font-medium text-gray-900 dark:text-white">{person.funeral_home}</p>
                            </div>
                          )}
                          {person.next_of_kin && (
                            <div className="md:col-span-2">
                              <p className="text-sm text-gray-500 dark:text-gray-400">Next of Kin</p>
                              <p className="font-medium text-gray-900 dark:text-white">{person.next_of_kin}</p>
                            </div>
                          )}
                        </div>

                        {/* Epitaph */}
                        {person.epitaph && (
                          <div className="mt-4 p-4 bg-gray-100 dark:bg-gray-700 rounded-lg border-l-4 border-gray-400 dark:border-gray-500">
                            <p className="italic text-gray-700 dark:text-gray-300 text-center">
                              &ldquo;{person.epitaph}&rdquo;
                            </p>
                          </div>
                        )}

                        {/* Obituary */}
                        {person.obituary && (
                          <div className="mt-4">
                            <h4 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">Obituary</h4>
                            <p className="text-gray-600 dark:text-gray-400 whitespace-pre-line">{person.obituary}</p>
                          </div>
                        )}
                      </div>
                    );
                  })}
                </div>
              ) : (
                <div className="text-center py-8 bg-gray-50 dark:bg-gray-900 rounded-lg">
                  <svg className="w-16 h-16 mx-auto text-gray-300 dark:text-gray-600 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                  </svg>
                  <p className="text-gray-500 dark:text-gray-400 mb-2">No burial records for this plot</p>
                  <p className="text-sm text-gray-400 dark:text-gray-500">
                    This plot is currently {plot.status}
                  </p>
                </div>
              )}
            </div>

            {/* Connect with Descendants — only for occupied plots */}
            {hasDeceased && (
              <ConnectWithDescendants plot={plot} deceased={deceased} />
            )}
          </div>

          {/* Secondary Section: Owner & Plot Info */}
          <div className="lg:col-span-1 space-y-6">
            {/* Owner Information */}
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4 flex items-center">
                <svg className="w-5 h-5 mr-2 text-gray-600 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
                </svg>
                Ownership Information
              </h2>
              
              {plot.owner_name ? (
                <div className="space-y-3">
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Owner Name</p>
                    <p className="font-medium text-gray-900 dark:text-white">{plot.owner_name}</p>
                  </div>
                  {plot.owner_contact && (
                    <div>
                      <p className="text-sm text-gray-500 dark:text-gray-400">Contact</p>
                      <p className="font-medium text-gray-900 dark:text-white">{plot.owner_contact}</p>
                    </div>
                  )}
                  {plot.purchase_date && (
                    <div>
                      <p className="text-sm text-gray-500 dark:text-gray-400">Purchase Date</p>
                      <p className="font-medium text-gray-900 dark:text-white">{formatDate(plot.purchase_date)}</p>
                    </div>
                  )}
                </div>
              ) : (
                <p className="text-gray-500 dark:text-gray-400 text-sm">No owner information on file</p>
              )}
            </div>

            {/* Plot Details */}
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4 flex items-center">
                <svg className="w-5 h-5 mr-2 text-gray-600 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                </svg>
                Plot Details
              </h2>
              
              <div className="space-y-3">
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Plot Number</span>
                  <span className="font-medium text-gray-900 dark:text-white">{plot.plot_number}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Section</span>
                  <span className="font-medium text-gray-900 dark:text-white">{plot.section}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Row</span>
                  <span className="font-medium text-gray-900 dark:text-white">{plot.row_number}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Position</span>
                  <span className="font-medium text-gray-900 dark:text-white">{plot.plot_position}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Type</span>
                  <span className="font-medium text-gray-900 dark:text-white capitalize">{plot.plot_type}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-gray-500 dark:text-gray-400">Status</span>
                  <span className={`px-2 py-1 rounded text-xs font-medium ${getStatusColor(plot.status)}`}>
                    {plot.status.charAt(0).toUpperCase() + plot.status.slice(1)}
                  </span>
                </div>
                {plot.size_width && plot.size_length && (
                  <div className="flex justify-between">
                    <span className="text-gray-500 dark:text-gray-400">Dimensions</span>
                    <span className="font-medium text-gray-900 dark:text-white">
                      {plot.size_width}&apos; × {plot.size_length}&apos;
                    </span>
                  </div>
                )}
                {plot.price && (
                  <div className="flex justify-between">
                    <span className="text-gray-500 dark:text-gray-400">Price</span>
                    <span className="font-medium text-gray-900 dark:text-white">
                      ${plot.price.toLocaleString()}
                    </span>
                  </div>
                )}
              </div>
            </div>

            {/* Notes */}
            {plot.notes && (
              <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
                <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4 flex items-center">
                  <svg className="w-5 h-5 mr-2 text-gray-600 dark:text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                  </svg>
                  Notes
                </h2>
                <p className="text-gray-600 dark:text-gray-400 whitespace-pre-line">{plot.notes}</p>
              </div>
            )}

            {/* Actions */}
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Actions</h2>
              <div className="space-y-3">
                <Link 
                  href={`/cemetery-map?section=${plot.section.toLowerCase()}`}
                  className="block w-full text-center bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg transition-colors"
                >
                  View on Map
                </Link>
                <Link 
                  href="/records"
                  className="block w-full text-center bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-700 dark:text-gray-300 px-4 py-2 rounded-lg transition-colors"
                >
                  Browse All Records
                </Link>
                <Link
                  href={`/cemetery-committee?section=change-request&plot=${encodeURIComponent(plot.plot_number)}&occupant=${encodeURIComponent(deceased.map((d: DeceasedRecord) => [d.first_name, d.last_name].filter(Boolean).join(' ')).join(', '))}`}
                  className="block w-full text-center bg-amber-50 hover:bg-amber-100 border border-amber-300 text-amber-800 px-4 py-2 rounded-lg transition-colors font-medium"
                >
                  ✏️ Submit a Correction
                </Link>
                <Link
                  href="/my-connections"
                  className="block w-full text-center bg-green-50 hover:bg-green-100 border border-green-300 text-green-800 px-4 py-2 rounded-lg transition-colors font-medium"
                >
                  🌳 My Family Connections
                </Link>
              </div>
            </div>

            {/* Correction Notice */}
            <div className="bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-700 rounded-lg p-4">
              <p className="text-sm text-amber-800 dark:text-amber-300 font-medium mb-1">Know something we don&apos;t?</p>
              <p className="text-xs text-amber-700 dark:text-amber-400">
                If you have additional information, photos, or corrections for this plot, please submit a request to the Cemetery Committee.
              </p>
              <Link
                href={`/cemetery-committee?section=change-request&plot=${encodeURIComponent(plot.plot_number)}`}
                className="inline-block mt-2 text-xs font-medium text-amber-700 dark:text-amber-300 underline hover:no-underline"
              >
                Submit a correction or media →
              </Link>
            </div>
          </div>
        </div>
      </main>

      <footer className="bg-white dark:bg-black border-t border-gray-200 dark:border-gray-800 py-6 mt-8">
        <div className="container mx-auto px-4">
          <p className="text-center text-gray-500 dark:text-gray-400 text-sm">
            Northwood Cemetery Management System - Southport, NC
          </p>
        </div>
      </footer>
    </div>
  );
}
