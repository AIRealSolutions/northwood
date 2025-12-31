'use client';

// Prevent static prerendering - this page requires runtime data
export const dynamic = 'force-dynamic';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';
import CemeteryMap from '@/components/CemeteryMap';
import { plotsAPI, PlotWithDetails } from '@/lib/supabase';

export default function CemeteryMapPage() {
  const searchParams = useSearchParams();
  const initialSection = searchParams.get('section') || 'all';
  
  const [plots, setPlots] = useState<PlotWithDetails[]>([]);
  const [loading, setLoading] = useState(false);
  const [selectedSection, setSelectedSection] = useState(initialSection);
  const [viewMode, setViewMode] = useState('standard');
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedPlot, setSelectedPlot] = useState<PlotWithDetails | null>(null);
  const [sectionSummary, setSectionSummary] = useState<any[]>([]);

  // Load section summary on mount
  useEffect(() => {
    loadSectionSummary();
  }, []);

  // Load plots when section changes
  useEffect(() => {
    if (selectedSection !== 'all') {
      loadPlotsBySection(selectedSection);
    } else {
      setPlots([]);
    }
  }, [selectedSection]);

  const loadSectionSummary = async () => {
    try {
      const summary = await plotsAPI.getSectionSummary();
      setSectionSummary(summary);
    } catch (error) {
      console.error('Error loading section summary:', error);
    }
  };

  const loadPlotsBySection = async (section: string) => {
    try {
      setLoading(true);
      const data = await plotsAPI.getPlotsBySection(section.toUpperCase());
      setPlots(data);
    } catch (error) {
      console.error('Error loading plots:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSectionChange = (section: string) => {
    setSelectedSection(section);
    setSelectedPlot(null);
    setSearchTerm('');
  };

  const handleSearch = async () => {
    if (!searchTerm.trim()) {
      if (selectedSection !== 'all') {
        loadPlotsBySection(selectedSection);
      }
      return;
    }

    try {
      setLoading(true);
      const data = await plotsAPI.searchByPlotNumber(searchTerm);
      setPlots(data);
      // If search returns results from a single section, auto-select it
      if (data.length > 0) {
        const sections = [...new Set(data.map(p => p.section))];
        if (sections.length === 1) {
          setSelectedSection(sections[0].toLowerCase());
        }
      }
    } catch (error) {
      console.error('Error searching plots:', error);
    } finally {
      setLoading(false);
    }
  };

  const filteredPlots = plots.filter(plot => {
    if (viewMode === 'cremation') {
      return plot.plot_type === 'cremation';
    } else if (viewMode === 'hybrid') {
      return plot.plot_type === 'hybrid';
    }
    return true;
  });

  // Calculate totals from section summary
  const totalPlots = sectionSummary.reduce((sum, s) => sum + s.total, 0);
  const totalAvailable = sectionSummary.reduce((sum, s) => sum + s.available, 0);
  const totalOccupied = sectionSummary.reduce((sum, s) => sum + s.occupied, 0);

  return (
    <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
      <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <Link href="/" className="text-2xl font-bold text-black dark:text-white">
            Northwood Cemetery
          </Link>
          <nav className="hidden md:flex space-x-6">
            <Link href="/cemetery-map" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
              Cemetery Map
            </Link>
            <Link href="/records" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Records
            </Link>
            <Link href="/burial-services" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Burial Services
            </Link>
            <Link href="/fundraising" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Fundraising
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Cemetery Map</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Interactive map of Northwood Cemetery with {totalPlots.toLocaleString()} plots across 8 sections.
            Click any plot to view details.
          </p>
        </div>

        {/* Section Summary Cards */}
        <div className="grid grid-cols-4 md:grid-cols-9 gap-2 mb-6">
          <button
            onClick={() => handleSectionChange('all')}
            className={`p-3 rounded-lg text-center transition-colors ${
              selectedSection === 'all'
                ? 'bg-gray-800 text-white'
                : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700'
            }`}
          >
            <div className="font-bold text-sm">All</div>
            <div className="text-xs opacity-75">{totalPlots}</div>
          </button>
          {sectionSummary.map(section => (
            <button
              key={section.section}
              onClick={() => handleSectionChange(section.section.toLowerCase())}
              className={`p-3 rounded-lg text-center transition-colors ${
                selectedSection === section.section.toLowerCase()
                  ? 'bg-blue-600 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700'
              }`}
            >
              <div className="font-bold">{section.section}</div>
              <div className="text-xs opacity-75">{section.total}</div>
              <div className="text-xs">
                <span className={selectedSection === section.section.toLowerCase() ? 'text-green-200' : 'text-green-600'}>
                  {section.available}
                </span>
                {' / '}
                <span className={selectedSection === section.section.toLowerCase() ? 'text-red-200' : 'text-red-600'}>
                  {section.occupied}
                </span>
              </div>
            </button>
          ))}
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
          <div className="flex flex-col md:flex-row gap-4 mb-6">
            <div className="flex-1">
              <label htmlFor="section-select" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Cemetery Section
              </label>
              <select
                id="section-select"
                value={selectedSection}
                onChange={(e) => handleSectionChange(e.target.value)}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                <option value="all">Overview - All Sections</option>
                <option value="a">Section A ({sectionSummary.find(s => s.section === 'A')?.total || 0} plots)</option>
                <option value="b">Section B ({sectionSummary.find(s => s.section === 'B')?.total || 0} plots)</option>
                <option value="c">Section C ({sectionSummary.find(s => s.section === 'C')?.total || 0} plots)</option>
                <option value="d">Section D ({sectionSummary.find(s => s.section === 'D')?.total || 0} plots)</option>
                <option value="e">Section E ({sectionSummary.find(s => s.section === 'E')?.total || 0} plots)</option>
                <option value="f">Section F ({sectionSummary.find(s => s.section === 'F')?.total || 0} plots)</option>
                <option value="g">Section G ({sectionSummary.find(s => s.section === 'G')?.total || 0} plots)</option>
                <option value="h">Section H ({sectionSummary.find(s => s.section === 'H')?.total || 0} plots)</option>
              </select>
            </div>
            <div className="flex-1">
              <label htmlFor="view-mode" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                View Mode
              </label>
              <select
                id="view-mode"
                value={viewMode}
                onChange={(e) => setViewMode(e.target.value)}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                <option value="standard">All Plots</option>
                <option value="cremation">Cremation Only</option>
                <option value="hybrid">Hybrid Only</option>
              </select>
            </div>
            <div className="flex-1">
              <label htmlFor="search" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Search Plot Number
              </label>
              <div className="flex gap-2">
                <input
                  type="text"
                  id="search"
                  placeholder="e.g., NW-A-001"
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                  onKeyPress={(e) => e.key === 'Enter' && handleSearch()}
                  className="flex-1 rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                />
                <button 
                  onClick={handleSearch}
                  className="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-md transition-colors"
                >
                  Search
                </button>
              </div>
            </div>
          </div>

          {loading ? (
            <div className="bg-gray-100 dark:bg-gray-900 border border-gray-200 dark:border-gray-700 rounded-lg h-[500px] flex items-center justify-center">
              <div className="text-center">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
                <p className="text-gray-500 dark:text-gray-400">Loading cemetery map...</p>
              </div>
            </div>
          ) : (
            <div className="bg-gray-100 dark:bg-gray-900 border border-gray-200 dark:border-gray-700 rounded-lg h-[500px]">
              <CemeteryMap 
                plots={filteredPlots} 
                onPlotSelect={setSelectedPlot}
                selectedSection={selectedSection}
              />
            </div>
          )}

          <div className="mt-4 flex flex-wrap justify-between items-center gap-4">
            <div className="text-sm text-gray-600 dark:text-gray-400">
              {selectedSection !== 'all' ? (
                <>Showing {filteredPlots.length} plot{filteredPlots.length !== 1 ? 's' : ''} in Section {selectedSection.toUpperCase()}</>
              ) : (
                <>Total: {totalPlots.toLocaleString()} plots | {totalAvailable.toLocaleString()} available | {totalOccupied.toLocaleString()} occupied</>
              )}
            </div>
            <div className="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg p-3 inline-flex flex-wrap gap-4">
              <div className="flex items-center">
                <span className="inline-block w-4 h-4 bg-green-500 rounded mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Available</span>
              </div>
              <div className="flex items-center">
                <span className="inline-block w-4 h-4 bg-yellow-500 rounded mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Reserved</span>
              </div>
              <div className="flex items-center">
                <span className="inline-block w-4 h-4 bg-red-500 rounded mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Occupied</span>
              </div>
              <div className="flex items-center">
                <span className="inline-block w-4 h-4 bg-purple-500 rounded mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Cremation</span>
              </div>
            </div>
          </div>
        </div>

        {/* Plot Information Panel */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Plot Information</h2>
          {selectedPlot ? (
            <div className="space-y-4">
              {/* Primary: Deceased Information */}
              {selectedPlot.deceased_records && selectedPlot.deceased_records.length > 0 ? (
                <div className="bg-gray-50 dark:bg-gray-900 rounded-lg p-4 mb-4">
                  <h3 className="text-sm font-medium text-gray-500 dark:text-gray-400 mb-2">Interred</h3>
                  {selectedPlot.deceased_records.map((deceased: any) => (
                    <div key={deceased.id} className="mb-3 last:mb-0">
                      <p className="text-lg font-semibold text-gray-900 dark:text-white">
                        {deceased.first_name} {deceased.middle_name ? deceased.middle_name + ' ' : ''}{deceased.last_name}
                        {deceased.maiden_name && <span className="text-gray-500 font-normal"> (née {deceased.maiden_name})</span>}
                      </p>
                      {deceased.birth_date && deceased.death_date && (
                        <p className="text-gray-600 dark:text-gray-400">
                          {new Date(deceased.birth_date).toLocaleDateString()} - {new Date(deceased.death_date).toLocaleDateString()}
                        </p>
                      )}
                    </div>
                  ))}
                </div>
              ) : (
                <div className="bg-gray-50 dark:bg-gray-900 rounded-lg p-4 mb-4 text-center">
                  <p className="text-gray-500 dark:text-gray-400">No burial records for this plot</p>
                </div>
              )}

              {/* Plot Details Grid */}
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <p className="text-sm text-gray-600 dark:text-gray-400">Plot Number</p>
                  <p className="font-medium text-black dark:text-white">{selectedPlot.plot_number}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 dark:text-gray-400">Section</p>
                  <p className="font-medium text-black dark:text-white">Section {selectedPlot.section}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 dark:text-gray-400">Row / Position</p>
                  <p className="font-medium text-black dark:text-white">{selectedPlot.row_number} / {selectedPlot.plot_position}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 dark:text-gray-400">Status</p>
                  <p className={`font-medium ${
                    selectedPlot.status === 'available' ? 'text-green-600' :
                    selectedPlot.status === 'reserved' ? 'text-yellow-600' :
                    'text-red-600'
                  }`}>
                    {selectedPlot.status.charAt(0).toUpperCase() + selectedPlot.status.slice(1)}
                  </p>
                </div>
                <div>
                  <p className="text-sm text-gray-600 dark:text-gray-400">Type</p>
                  <p className="font-medium text-black dark:text-white">
                    {selectedPlot.plot_type.charAt(0).toUpperCase() + selectedPlot.plot_type.slice(1)}
                  </p>
                </div>
                {/* Secondary: Owner Information */}
                {selectedPlot.owner_name && (
                  <div className="col-span-2">
                    <p className="text-sm text-gray-600 dark:text-gray-400">Owner</p>
                    <p className="font-medium text-black dark:text-white">{selectedPlot.owner_name}</p>
                  </div>
                )}
                {selectedPlot.purchase_date && (
                  <div>
                    <p className="text-sm text-gray-600 dark:text-gray-400">Purchase Date</p>
                    <p className="font-medium text-black dark:text-white">
                      {new Date(selectedPlot.purchase_date).toLocaleDateString()}
                    </p>
                  </div>
                )}
              </div>

              {/* View Full Details Button */}
              <div className="pt-4 border-t border-gray-200 dark:border-gray-700">
                <Link
                  href={`/plot/${selectedPlot.id}`}
                  className="inline-flex items-center bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg transition-colors"
                >
                  View Full Details
                  <svg className="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                  </svg>
                </Link>
              </div>
            </div>
          ) : (
            <p className="text-gray-600 dark:text-gray-300">
              Select a section above, then click on any plot to view information about interred individuals, 
              owner details, and other plot information.
            </p>
          )}
          <div className="border-t border-gray-200 dark:border-gray-700 pt-4 mt-4">
            <p className="text-gray-500 dark:text-gray-400 text-sm">
              For assistance with plot selection or burial arrangements, please contact the cemetery office.
            </p>
          </div>
        </div>
      </main>

      <footer className="bg-white dark:bg-black border-t border-gray-200 dark:border-gray-800 py-6">
        <div className="container mx-auto px-4">
          <p className="text-center text-gray-500 dark:text-gray-400 text-sm">
            Northwood Cemetery Management System - Southport, NC
          </p>
        </div>
      </footer>
    </div>
  );
}
