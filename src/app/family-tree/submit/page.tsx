'use client';
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';
import { useSession } from 'next-auth/react';

// ─── Types ────────────────────────────────────────────────────────────────────
interface DeceasedRecord {
  id: string;
  first_name: string;
  middle_name?: string;
  last_name: string;
  birth_date?: string;
  death_date?: string;
  plots?: { plot_number: string; section: string } | null;
}

interface TreeNode {
  id: string;
  deceased_id?: string;
  first_name: string;
  middle_name?: string;
  last_name: string;
  maiden_name?: string;
  birth_year?: number;
  death_year?: number;
  is_living: boolean;
  gender?: string;
  status: string;
}

// ─── Relationship options ─────────────────────────────────────────────────────
const RELATIONSHIP_OPTIONS = [
  { value: 'parent',          label: 'Parent (Father / Mother)',    inverse: 'child' },
  { value: 'child',           label: 'Child (Son / Daughter)',      inverse: 'parent' },
  { value: 'spouse',          label: 'Spouse / Partner',            inverse: 'spouse' },
  { value: 'sibling',         label: 'Sibling',                     inverse: 'sibling' },
  { value: 'grandparent',     label: 'Grandparent',                 inverse: 'grandchild' },
  { value: 'grandchild',      label: 'Grandchild',                  inverse: 'grandparent' },
  { value: 'great_grandparent', label: 'Great-Grandparent',         inverse: 'great_grandchild' },
  { value: 'great_grandchild', label: 'Great-Grandchild',           inverse: 'great_grandparent' },
  { value: 'aunt_uncle',      label: 'Aunt / Uncle',                inverse: 'nephew_niece' },
  { value: 'nephew_niece',    label: 'Nephew / Niece',              inverse: 'aunt_uncle' },
  { value: 'first_cousin',    label: '1st Cousin',                  inverse: 'first_cousin' },
  { value: 'step_parent',     label: 'Step-Parent',                 inverse: 'step_child' },
  { value: 'step_child',      label: 'Step-Child',                  inverse: 'step_parent' },
  { value: 'in_law',          label: 'In-Law',                      inverse: 'in_law' },
  { value: 'other',           label: 'Other (describe in notes)',   inverse: 'other' },
];

// ─── Step indicator ───────────────────────────────────────────────────────────
function StepIndicator({ current, total }: { current: number; total: number }) {
  return (
    <div className="flex items-center gap-2 mb-8">
      {Array.from({ length: total }, (_, i) => (
        <React.Fragment key={i}>
          <div className={`w-8 h-8 rounded-full flex items-center justify-center text-sm font-bold transition-colors ${
            i + 1 === current
              ? 'bg-emerald-700 text-white'
              : i + 1 < current
              ? 'bg-emerald-200 text-emerald-800'
              : 'bg-gray-200 text-gray-500'
          }`}>
            {i + 1 < current ? '✓' : i + 1}
          </div>
          {i < total - 1 && (
            <div className={`flex-1 h-1 rounded ${i + 1 < current ? 'bg-emerald-300' : 'bg-gray-200'}`} />
          )}
        </React.Fragment>
      ))}
    </div>
  );
}

// ─── Main component ───────────────────────────────────────────────────────────
export default function FamilyTreeSubmitPage() {
  const { data: session } = useSession();

  // Step 1: Choose anchor (deceased person already in cemetery)
  const [step, setStep] = useState(1);
  const [deceasedSearch, setDeceasedSearch] = useState('');
  const [deceasedResults, setDeceasedResults] = useState<DeceasedRecord[]>([]);
  const [searchingDeceased, setSearchingDeceased] = useState(false);
  const [anchorDeceased, setAnchorDeceased] = useState<DeceasedRecord | null>(null);
  const [anchorNode, setAnchorNode] = useState<TreeNode | null>(null);

  // Step 2: Add person being related
  const [personForm, setPersonForm] = useState({
    first_name: '',
    middle_name: '',
    last_name: '',
    maiden_name: '',
    birth_year: '',
    death_year: '',
    is_living: true,
    gender: 'unknown',
  });

  // Step 3: Relationship
  const [relationshipType, setRelationshipType] = useState('');
  const [relNotes, setRelNotes] = useState('');

  // Submitter info (for guests)
  const [submitterName, setSubmitterName] = useState('');
  const [submitterEmail, setSubmitterEmail] = useState('');

  // Submission state
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState('');

  // ── Search deceased records ──────────────────────────────────────────────────
  const searchDeceased = useCallback(async (term: string) => {
    if (term.length < 2) { setDeceasedResults([]); return; }
    setSearchingDeceased(true);
    try {
      const res = await fetch(`/api/family-tree/search-deceased?q=${encodeURIComponent(term)}`);
      const data = await res.json();
      setDeceasedResults(data.records || []);
    } catch {
      setDeceasedResults([]);
    } finally {
      setSearchingDeceased(false);
    }
  }, []);

  useEffect(() => {
    const t = setTimeout(() => searchDeceased(deceasedSearch), 300);
    return () => clearTimeout(t);
  }, [deceasedSearch, searchDeceased]);

  // ── Select anchor deceased ────────────────────────────────────────────────────
  const selectAnchor = async (record: DeceasedRecord) => {
    setAnchorDeceased(record);
    setDeceasedResults([]);
    setDeceasedSearch('');
    // Check if a tree node already exists for this deceased person
    try {
      const res = await fetch(`/api/family-tree/node-for-deceased?deceased_id=${record.id}`);
      const data = await res.json();
      setAnchorNode(data.node || null);
    } catch {
      setAnchorNode(null);
    }
    setStep(2);
  };

  // ── Submit ────────────────────────────────────────────────────────────────────
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!anchorDeceased) return;
    if (!personForm.first_name.trim() || !personForm.last_name.trim()) {
      setError('Please enter the first and last name of the person being added.');
      return;
    }
    if (!relationshipType) {
      setError('Please select the relationship type.');
      return;
    }
    setSubmitting(true);
    setError('');

    try {
      const relDef = RELATIONSHIP_OPTIONS.find(r => r.value === relationshipType);

      // Step A: Ensure anchor node exists
      let anchorNodeId = anchorNode?.id;
      if (!anchorNodeId) {
        // Create a node for the anchor deceased
        const anchorRes = await fetch('/api/family-tree', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            deceased_id: anchorDeceased.id,
            first_name: anchorDeceased.first_name,
            middle_name: anchorDeceased.middle_name || '',
            last_name: anchorDeceased.last_name,
            is_living: false,
            submitted_by_name: submitterName || session?.user?.name || '',
            submitted_by_email: submitterEmail || session?.user?.email || '',
          }),
        });
        const anchorData = await anchorRes.json();
        if (!anchorRes.ok) throw new Error(anchorData.error || 'Failed to create anchor node');
        anchorNodeId = anchorData.node.id;
      }

      // Step B: Create the new person node + relationship in one call
      const res = await fetch('/api/family-tree', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          first_name: personForm.first_name.trim(),
          middle_name: personForm.middle_name.trim() || undefined,
          last_name: personForm.last_name.trim(),
          maiden_name: personForm.maiden_name.trim() || undefined,
          birth_year: personForm.birth_year ? parseInt(personForm.birth_year) : undefined,
          death_year: personForm.death_year ? parseInt(personForm.death_year) : undefined,
          is_living: personForm.is_living,
          gender: personForm.gender,
          submitted_by_name: submitterName || session?.user?.name || '',
          submitted_by_email: submitterEmail || session?.user?.email || '',
          // Relationship to anchor
          relate_to_node_id: anchorNodeId,
          relationship_type: relationshipType,
          inverse_type: relDef?.inverse || '',
          notes: relNotes.trim() || undefined,
        }),
      });

      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Submission failed');
      setSubmitted(true);
    } catch (err: any) {
      setError(err.message || 'Something went wrong. Please try again.');
    } finally {
      setSubmitting(false);
    }
  };

  // ─── Submitted success screen ─────────────────────────────────────────────
  if (submitted) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center px-4">
        <div className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-10 max-w-lg w-full text-center shadow-sm">
          <div className="text-5xl mb-4">🌳</div>
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-3">Submission Received!</h2>
          <p className="text-gray-600 dark:text-gray-400 mb-6">
            Thank you for contributing to the Northwood family tree. Your submission will be reviewed
            by the cemetery committee and added to the tree once approved.
          </p>
          <div className="flex flex-col sm:flex-row gap-3 justify-center">
            <button
              onClick={() => { setSubmitted(false); setStep(1); setAnchorDeceased(null); setAnchorNode(null); setPersonForm({ first_name: '', middle_name: '', last_name: '', maiden_name: '', birth_year: '', death_year: '', is_living: true, gender: 'unknown' }); setRelationshipType(''); setRelNotes(''); }}
              className="px-5 py-2.5 bg-emerald-700 hover:bg-emerald-800 text-white font-semibold rounded-xl text-sm transition-colors"
            >
              Add Another Person
            </button>
            <Link
              href="/family-tree"
              className="px-5 py-2.5 bg-white dark:bg-gray-700 hover:bg-gray-50 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-200 font-semibold rounded-xl text-sm transition-colors text-center"
            >
              View Family Tree
            </Link>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 shadow-sm">
        <div className="max-w-3xl mx-auto px-4 py-4 flex items-center gap-3">
          <Link href="/family-tree" className="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300 text-sm">
            ← Family Tree
          </Link>
          <span className="text-gray-300 dark:text-gray-600">|</span>
          <h1 className="text-lg font-bold text-gray-900 dark:text-white">🌳 Add a Family Connection</h1>
        </div>
      </header>

      <main className="max-w-3xl mx-auto px-4 py-8">
        {/* Info banner */}
        <div className="bg-emerald-50 dark:bg-emerald-900/20 border border-emerald-200 dark:border-emerald-700 rounded-xl p-4 mb-6">
          <p className="text-sm text-emerald-800 dark:text-emerald-200">
            <strong>Help build the Northwood family tree.</strong> Connect living family members and
            other deceased relatives to people already in the cemetery. All submissions are reviewed
            by the cemetery committee before appearing publicly.
          </p>
        </div>

        <StepIndicator current={step} total={3} />

        {/* ── Step 1: Find the deceased anchor ── */}
        {step === 1 && (
          <div className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-6 shadow-sm">
            <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-1">
              Step 1: Find the Deceased Person
            </h2>
            <p className="text-sm text-gray-500 dark:text-gray-400 mb-5">
              Search for the person already buried at Northwood Cemetery that you want to connect a
              family member to.
            </p>
            <div className="relative">
              <input
                type="text"
                value={deceasedSearch}
                onChange={e => setDeceasedSearch(e.target.value)}
                placeholder="Search by name…"
                className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-4 py-3 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                autoFocus
              />
              {searchingDeceased && (
                <div className="absolute right-3 top-3 text-gray-400 text-xs">Searching…</div>
              )}
            </div>

            {deceasedResults.length > 0 && (
              <div className="mt-2 border border-gray-200 dark:border-gray-600 rounded-xl overflow-hidden shadow-sm">
                {deceasedResults.map(r => (
                  <button
                    key={r.id}
                    onClick={() => selectAnchor(r)}
                    className="w-full text-left px-4 py-3 hover:bg-emerald-50 dark:hover:bg-emerald-900/20 border-b border-gray-100 dark:border-gray-700 last:border-0 transition-colors"
                  >
                    <p className="font-semibold text-gray-900 dark:text-white text-sm">
                      {r.first_name} {r.middle_name ? `${r.middle_name} ` : ''}{r.last_name}
                    </p>
                    <p className="text-xs text-gray-500 dark:text-gray-400">
                      {r.birth_date ? new Date(r.birth_date + 'T00:00:00').getFullYear() : '?'}
                      {' – '}
                      {r.death_date ? new Date(r.death_date + 'T00:00:00').getFullYear() : '?'}
                      {r.plots ? ` · Plot ${r.plots.plot_number} (Section ${r.plots.section})` : ''}
                    </p>
                  </button>
                ))}
              </div>
            )}

            {deceasedSearch.length >= 2 && !searchingDeceased && deceasedResults.length === 0 && (
              <p className="mt-3 text-sm text-gray-500 dark:text-gray-400 text-center">
                No records found for &ldquo;{deceasedSearch}&rdquo;.
              </p>
            )}
          </div>
        )}

        {/* ── Step 2: Add the family member ── */}
        {step === 2 && anchorDeceased && (
          <div className="space-y-5">
            {/* Anchor card */}
            <div className="bg-emerald-50 dark:bg-emerald-900/20 border border-emerald-200 dark:border-emerald-700 rounded-xl p-4 flex items-center justify-between">
              <div>
                <p className="text-xs font-semibold text-emerald-600 dark:text-emerald-400 uppercase tracking-wide mb-0.5">
                  Connecting to
                </p>
                <p className="font-bold text-gray-900 dark:text-white">
                  {anchorDeceased.first_name} {anchorDeceased.last_name}
                </p>
                {(anchorDeceased.birth_date || anchorDeceased.death_date) && (
                  <p className="text-xs text-gray-500 dark:text-gray-400">
                    {anchorDeceased.birth_date ? new Date(anchorDeceased.birth_date + 'T00:00:00').getFullYear() : '?'}
                    {' – '}
                    {anchorDeceased.death_date ? new Date(anchorDeceased.death_date + 'T00:00:00').getFullYear() : '?'}
                  </p>
                )}
              </div>
              <button
                onClick={() => { setStep(1); setAnchorDeceased(null); setAnchorNode(null); }}
                className="text-xs text-gray-400 hover:text-gray-600 dark:hover:text-gray-300"
              >
                Change
              </button>
            </div>

            <div className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-6 shadow-sm">
              <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-1">
                Step 2: Enter the Family Member&apos;s Details
              </h2>
              <p className="text-sm text-gray-500 dark:text-gray-400 mb-5">
                This can be a living relative or another deceased person not yet in the system.
              </p>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    First Name *
                  </label>
                  <input
                    type="text"
                    value={personForm.first_name}
                    onChange={e => setPersonForm(f => ({ ...f, first_name: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="First name"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Middle Name
                  </label>
                  <input
                    type="text"
                    value={personForm.middle_name}
                    onChange={e => setPersonForm(f => ({ ...f, middle_name: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="Middle name (optional)"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Last Name *
                  </label>
                  <input
                    type="text"
                    value={personForm.last_name}
                    onChange={e => setPersonForm(f => ({ ...f, last_name: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="Last name"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Maiden Name
                  </label>
                  <input
                    type="text"
                    value={personForm.maiden_name}
                    onChange={e => setPersonForm(f => ({ ...f, maiden_name: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="Maiden name (optional)"
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Birth Year
                  </label>
                  <input
                    type="number"
                    value={personForm.birth_year}
                    onChange={e => setPersonForm(f => ({ ...f, birth_year: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="e.g. 1945"
                    min="1800"
                    max={new Date().getFullYear()}
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Death Year
                    <span className="text-gray-400 font-normal ml-1">(leave blank if living)</span>
                  </label>
                  <input
                    type="number"
                    value={personForm.death_year}
                    onChange={e => setPersonForm(f => ({ ...f, death_year: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    placeholder="e.g. 2010"
                    min="1800"
                    max={new Date().getFullYear()}
                  />
                </div>
                <div>
                  <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Gender
                  </label>
                  <select
                    value={personForm.gender}
                    onChange={e => setPersonForm(f => ({ ...f, gender: e.target.value }))}
                    className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                  >
                    <option value="unknown">Unknown / Prefer not to say</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                  </select>
                </div>
                <div className="flex items-center gap-3 pt-5">
                  <input
                    type="checkbox"
                    id="is_living"
                    checked={personForm.is_living}
                    onChange={e => setPersonForm(f => ({ ...f, is_living: e.target.checked }))}
                    className="w-4 h-4 text-emerald-600 rounded"
                  />
                  <label htmlFor="is_living" className="text-sm text-gray-700 dark:text-gray-300">
                    This person is living
                  </label>
                </div>
              </div>

              <div className="mt-5 flex gap-3">
                <button
                  onClick={() => setStep(1)}
                  className="px-4 py-2.5 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-200 font-semibold rounded-xl text-sm hover:bg-gray-50 transition-colors"
                >
                  ← Back
                </button>
                <button
                  onClick={() => {
                    if (!personForm.first_name.trim() || !personForm.last_name.trim()) {
                      setError('Please enter first and last name.');
                      return;
                    }
                    setError('');
                    setStep(3);
                  }}
                  className="flex-1 px-4 py-2.5 bg-emerald-700 hover:bg-emerald-800 text-white font-semibold rounded-xl text-sm transition-colors"
                >
                  Continue →
                </button>
              </div>
              {error && <p className="mt-3 text-sm text-red-600 dark:text-red-400">{error}</p>}
            </div>
          </div>
        )}

        {/* ── Step 3: Relationship + submitter + submit ── */}
        {step === 3 && anchorDeceased && (
          <form onSubmit={handleSubmit} className="space-y-5">
            {/* Summary cards */}
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="bg-emerald-50 dark:bg-emerald-900/20 border border-emerald-200 dark:border-emerald-700 rounded-xl p-4">
                <p className="text-xs font-semibold text-emerald-600 dark:text-emerald-400 uppercase tracking-wide mb-1">
                  Deceased (in cemetery)
                </p>
                <p className="font-bold text-gray-900 dark:text-white text-sm">
                  {anchorDeceased.first_name} {anchorDeceased.last_name}
                </p>
              </div>
              <div className="bg-blue-50 dark:bg-blue-900/20 border border-blue-200 dark:border-blue-700 rounded-xl p-4">
                <p className="text-xs font-semibold text-blue-600 dark:text-blue-400 uppercase tracking-wide mb-1">
                  Family Member Being Added
                </p>
                <p className="font-bold text-gray-900 dark:text-white text-sm">
                  {personForm.first_name} {personForm.last_name}
                  {personForm.is_living ? ' (Living)' : ''}
                </p>
              </div>
            </div>

            <div className="bg-white dark:bg-gray-800 rounded-2xl border border-gray-200 dark:border-gray-700 p-6 shadow-sm space-y-5">
              <div>
                <h2 className="text-lg font-bold text-gray-900 dark:text-white mb-1">
                  Step 3: Define the Relationship
                </h2>
                <p className="text-sm text-gray-500 dark:text-gray-400">
                  How is <strong>{personForm.first_name} {personForm.last_name}</strong> related to{' '}
                  <strong>{anchorDeceased.first_name} {anchorDeceased.last_name}</strong>?
                </p>
              </div>

              <div>
                <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                  {personForm.first_name} is the _____ of {anchorDeceased.first_name} *
                </label>
                <select
                  value={relationshipType}
                  onChange={e => setRelationshipType(e.target.value)}
                  required
                  className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                >
                  <option value="">— Select relationship —</option>
                  {RELATIONSHIP_OPTIONS.map(r => (
                    <option key={r.value} value={r.value}>{r.label}</option>
                  ))}
                </select>
                {relationshipType && (() => {
                  const def = RELATIONSHIP_OPTIONS.find(r => r.value === relationshipType);
                  return def ? (
                    <div className="mt-2 p-3 bg-emerald-50 dark:bg-emerald-900/30 border border-emerald-200 dark:border-emerald-700 rounded-lg text-xs space-y-1">
                      <p className="text-emerald-800 dark:text-emerald-200">
                        <strong>{personForm.first_name}</strong> is the <strong>{def.label.replace(' (describe in notes)', '')}</strong> of <strong>{anchorDeceased.first_name}</strong>
                      </p>
                      <p className="text-emerald-700 dark:text-emerald-300">
                        <strong>{anchorDeceased.first_name}</strong> is the <strong>{def.inverse}</strong> of <strong>{personForm.first_name}</strong>
                      </p>
                    </div>
                  ) : null;
                })()}
              </div>

              <div>
                <label className="block text-xs font-medium text-gray-700 dark:text-gray-300 mb-1">
                  Additional Notes
                  <span className="text-gray-400 font-normal ml-1">(optional)</span>
                </label>
                <textarea
                  value={relNotes}
                  onChange={e => setRelNotes(e.target.value)}
                  rows={2}
                  className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                  placeholder="Any additional context about this relationship…"
                />
              </div>

              {/* Submitter info for guests */}
              {!session && (
                <div className="pt-2 border-t border-gray-100 dark:border-gray-700 space-y-3">
                  <p className="text-xs font-semibold text-gray-500 dark:text-gray-400 uppercase tracking-wide">
                    Your Contact Info (optional, for follow-up)
                  </p>
                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                    <input
                      type="text"
                      value={submitterName}
                      onChange={e => setSubmitterName(e.target.value)}
                      placeholder="Your name"
                      className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                    <input
                      type="email"
                      value={submitterEmail}
                      onChange={e => setSubmitterEmail(e.target.value)}
                      placeholder="Your email"
                      className="w-full border border-gray-300 dark:border-gray-600 rounded-xl px-3 py-2.5 text-sm bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
                    />
                  </div>
                </div>
              )}

              {error && (
                <div className="p-3 bg-red-50 dark:bg-red-900/30 border border-red-200 dark:border-red-700 rounded-lg text-sm text-red-700 dark:text-red-300">
                  {error}
                </div>
              )}

              <div className="flex gap-3 pt-2">
                <button
                  type="button"
                  onClick={() => setStep(2)}
                  className="px-4 py-2.5 bg-white dark:bg-gray-700 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-200 font-semibold rounded-xl text-sm hover:bg-gray-50 transition-colors"
                >
                  ← Back
                </button>
                <button
                  type="submit"
                  disabled={submitting}
                  className="flex-1 px-4 py-2.5 bg-emerald-700 hover:bg-emerald-800 disabled:opacity-50 text-white font-semibold rounded-xl text-sm transition-colors"
                >
                  {submitting ? 'Submitting…' : 'Submit for Review'}
                </button>
              </div>
            </div>
          </form>
        )}
      </main>
    </div>
  );
}
