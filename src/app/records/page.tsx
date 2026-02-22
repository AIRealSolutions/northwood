'use client';

// Prevent static prerendering - this page requires runtime data
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';
import { deceasedAPI, DeceasedWithPlot } from '@/lib/supabase';

export default function RecordsPage() {
  const [records, setRecords] = useState<DeceasedWithPlot[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedSection, setSelectedSection] = useState('all');
  const [currentPage, setCurrentPage] = useState(1);
  const [totalCount, setTotalCount] = useState(0);
  const [sectionCounts, setSectionCounts] = useState<Record<string, number>>({});
  const pageSize = 25;

  const loadRecords = useCallback(async () => {
    try {
      setLoading(true);
      const { data, count } = await deceasedAPI.getRecordsWithPagination(
        currentPage,
        pageSize,
        searchTerm,
        selectedSection
      );
      setRecords(data);
      setTotalCount(count);
    } catch (error) {
      console.error('Error loading records:', error);
    } finally {
      setLoading(false);
    }
  }, [currentPage, searchTerm, selectedSection]);

  const loadSectionCounts = async () => {
    try {
      const { bySection } = await deceasedAPI.getTotalCounts();
      setSectionCounts(bySection);
    } catch (error) {
      console.error('Error loading section counts:', error);
    }
  };

  useEffect(() => {
    loadRecords();
  }, [loadRecords]);

  useEffect(() => {
    loadSectionCounts();
  }, []);

  const handleSearch = () => {
    setCurrentPage(1);
    loadRecords();
  };

  const handleSectionChange = (section: string) => {
    setSelectedSection(section);
    setCurrentPage(1);
  };

  const totalPages = Math.ceil(totalCount / pageSize);

  const formatDate = (dateString?: string) => {
    if (!dateString) return '—';
    // Append T00:00:00 to treat the date as local time, preventing UTC offset from shifting the day
    const normalized = dateString.includes('T') ? dateString : dateString + 'T00:00:00';
    return new Date(normalized).toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'short',
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

  const getFullName = (record: DeceasedWithPlot) => {
    return [record.first_name, record.middle_name, record.last_name]
      .filter(Boolean)
      .join(' ');
  };

  // Map section letters to road names (sections are BETWEEN roads)
  // Orientation: Mitchell (N), Sweet Bay (S), Azalea (W), Fodale (E)
  const getSectionRoads = (section: string): string => {
    const roadMap: Record<string, string> = {
      'A': 'Azalea (W) - Beech',
      'B': 'Beech - Chinquapin',
      'C': 'Chinquapin - Dogwood',
      'D': 'Dogwood - Elm',
      'E': 'Elm - Fig',
      'F': 'Fig - Gardenia',
      'G': 'Gardenia - Heather',
      'H': 'Heather - Hibiscus (E)',
    };
    return roadMap[section?.toUpperCase()] || section || 'Unknown';
  };

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
            <Link href="/records" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
              Records
            </Link>
            <Link href="/burial-services" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Burial Services
            </Link>
            <Link href="/fundraising" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Fundraising
            </Link>
            <Link href="/gallery" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Gallery
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Burial Records</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Search and browse records of individuals interred at Northwood Cemetery.
          </p>
        </div>

        {/* Section Summary Cards */}
        <div className="grid grid-cols-4 md:grid-cols-8 gap-2 mb-6">
          <button
            onClick={() => handleSectionChange('all')}
            className={`p-3 rounded-lg text-center transition-colors ${
              selectedSection === 'all'
                ? 'bg-blue-600 text-white'
                : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700'
            }`}
          >
            <div className="font-bold text-sm">All</div>
            <div className="text-xs opacity-75">{Object.values(sectionCounts).reduce((a, b) => a + b, 0)}</div>
          </button>
          {['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'].map(section => (
            <button
              key={section}
              onClick={() => handleSectionChange(section.toLowerCase())}
              className={`p-3 rounded-lg text-center transition-colors ${
                selectedSection === section.toLowerCase()
                  ? 'bg-blue-600 text-white'
                  : 'bg-white dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700'
              }`}
            >
              <div className="font-bold text-sm">{section}</div>
              <div className="text-xs opacity-75">{sectionCounts[section] || 0}</div>
            </button>
          ))}
        </div>

        {/* Search Bar */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-6">
          <div className="flex flex-col md:flex-row gap-4">
            <div className="flex-1">
              <label htmlFor="search" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Search by Name
              </label>
              <div className="flex gap-2">
                <input
                  type="text"
                  id="search"
                  placeholder="Enter first name, last name, or maiden name..."
                  value={searchTerm}
                  onChange={(e) => setSearchTerm(e.target.value)}
                  onKeyPress={(e) => e.key === 'Enter' && handleSearch()}
                  className="flex-1 rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-4 py-2 text-black dark:text-white focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                />
                <button 
                  onClick={handleSearch}
                  className="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-md transition-colors"
                >
                  Search
                </button>
                {searchTerm && (
                  <button 
                    onClick={() => { setSearchTerm(''); setCurrentPage(1); }}
                    className="bg-gray-200 hover:bg-gray-300 dark:bg-gray-600 dark:hover:bg-gray-500 text-gray-700 dark:text-gray-200 px-4 py-2 rounded-md transition-colors"
                  >
                    Clear
                  </button>
                )}
              </div>
            </div>
          </div>
        </div>

        {/* Results */}
        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md overflow-hidden">
          {/* Results Header */}
          <div className="px-6 py-4 border-b border-gray-200 dark:border-gray-700 flex justify-between items-center">
            <p className="text-sm text-gray-600 dark:text-gray-400">
              {loading ? 'Loading...' : `Showing ${records.length} of ${totalCount.toLocaleString()} records`}
              {selectedSection !== 'all' && ` in Section ${selectedSection.toUpperCase()}`}
              {searchTerm && ` matching "${searchTerm}"`}
            </p>
          </div>

          {loading ? (
            <div className="p-12 text-center">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
              <p className="text-gray-500 dark:text-gray-400">Loading records...</p>
            </div>
          ) : records.length === 0 ? (
            <div className="p-12 text-center">
              <svg className="w-16 h-16 mx-auto text-gray-300 dark:text-gray-600 mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1} d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <p className="text-gray-500 dark:text-gray-400">No records found</p>
              <p className="text-sm text-gray-400 dark:text-gray-500 mt-1">Try adjusting your search or filters</p>
            </div>
          ) : (
            <>
              {/* Desktop Table View */}
              <div className="hidden md:block overflow-x-auto">
                <table className="w-full">
                  <thead className="bg-gray-50 dark:bg-gray-900">
                    <tr>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Name</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Birth</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Death</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Age</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Plot</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Location</th>
                      <th className="px-6 py-3 text-right text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">Details</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-gray-200 dark:divide-gray-700">
                    {records.map((record) => {
                      const age = calculateAge(record.birth_date, record.death_date);
                      const plotId = record.plots?.id;
                      
                      return (
                        <tr key={record.id} className="hover:bg-gray-50 dark:hover:bg-gray-900 transition-colors">
                          <td className="px-6 py-4">
                            <div>
                              <p className="font-medium text-gray-900 dark:text-white">
                                {getFullName(record)}
                              </p>
                              {record.maiden_name && (
                                <p className="text-sm text-gray-500 dark:text-gray-400 italic">
                                  née {record.maiden_name}
                                </p>
                              )}
                            </div>
                          </td>
                          <td className="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">
                            {formatDate(record.birth_date)}
                          </td>
                          <td className="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">
                            {formatDate(record.death_date)}
                          </td>
                          <td className="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">
                            {age !== null ? age : '—'}
                          </td>
                          <td className="px-6 py-4 text-sm">
                            {record.plots?.plot_number ? (
                              <Link 
                                href={`/plot/${plotId}`}
                                className="text-blue-600 hover:text-blue-800 dark:text-blue-400 dark:hover:text-blue-300 hover:underline"
                              >
                                {record.plots.plot_number}
                              </Link>
                            ) : (
                              <span className="text-gray-400">—</span>
                            )}
                          </td>
                          <td className="px-6 py-4 text-sm text-gray-600 dark:text-gray-300">
                            <div>
                              <span className="font-medium">{record.plots?.section || '—'}</span>
                              {record.plots?.section && (
                                <span className="text-gray-400 ml-1 text-xs">({getSectionRoads(record.plots.section)})</span>
                              )}
                            </div>
                          </td>
                          <td className="px-6 py-4 text-right">
                            {plotId ? (
                              <Link 
                                href={`/plot/${plotId}`}
                                className="inline-flex items-center px-3 py-1 bg-blue-100 hover:bg-blue-200 dark:bg-blue-900 dark:hover:bg-blue-800 text-blue-700 dark:text-blue-300 rounded-md text-sm transition-colors"
                              >
                                View
                                <svg className="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                                </svg>
                              </Link>
                            ) : (
                              <span className="text-gray-400 text-sm">No plot</span>
                            )}
                          </td>
                        </tr>
                      );
                    })}
                  </tbody>
                </table>
              </div>

              {/* Mobile Card View */}
              <div className="md:hidden divide-y divide-gray-200 dark:divide-gray-700">
                {records.map((record) => {
                  const age = calculateAge(record.birth_date, record.death_date);
                  const plotId = record.plots?.id;
                  
                  return (
                    <div key={record.id} className="p-4">
                      <div className="flex justify-between items-start mb-2">
                        <div>
                          <p className="font-medium text-gray-900 dark:text-white">
                            {getFullName(record)}
                          </p>
                          {record.maiden_name && (
                            <p className="text-sm text-gray-500 dark:text-gray-400 italic">
                              née {record.maiden_name}
                            </p>
                          )}
                        </div>
                        {plotId && (
                          <Link 
                            href={`/plot/${plotId}`}
                            className="px-3 py-1 bg-blue-100 dark:bg-blue-900 text-blue-700 dark:text-blue-300 rounded-md text-sm"
                          >
                            View
                          </Link>
                        )}
                      </div>
                      <div className="grid grid-cols-2 gap-2 text-sm">
                        <div>
                          <span className="text-gray-500 dark:text-gray-400">Born:</span>{' '}
                          <span className="text-gray-700 dark:text-gray-300">{formatDate(record.birth_date)}</span>
                        </div>
                        <div>
                          <span className="text-gray-500 dark:text-gray-400">Died:</span>{' '}
                          <span className="text-gray-700 dark:text-gray-300">{formatDate(record.death_date)}</span>
                        </div>
                        <div>
                          <span className="text-gray-500 dark:text-gray-400">Age:</span>{' '}
                          <span className="text-gray-700 dark:text-gray-300">{age !== null ? age : '—'}</span>
                        </div>
                        <div>
                          <span className="text-gray-500 dark:text-gray-400">Plot:</span>{' '}
                          {record.plots?.plot_number ? (
                            <Link 
                              href={`/plot/${plotId}`}
                              className="text-blue-600 dark:text-blue-400 hover:underline"
                            >
                              {record.plots.plot_number}
                            </Link>
                          ) : (
                            <span className="text-gray-400">—</span>
                          )}
                        </div>
                        <div className="col-span-2">
                          <span className="text-gray-500 dark:text-gray-400">Location:</span>{' '}
                          <span className="text-gray-700 dark:text-gray-300">
                            Section {record.plots?.section || '—'}
                            {record.plots?.section && ` (${getSectionRoads(record.plots.section)})`}
                          </span>
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </>
          )}

          {/* Pagination */}
          {totalPages > 1 && (
            <div className="px-6 py-4 border-t border-gray-200 dark:border-gray-700 flex flex-col sm:flex-row justify-between items-center gap-4">
              <p className="text-sm text-gray-600 dark:text-gray-400">
                Page {currentPage} of {totalPages}
              </p>
              <div className="flex gap-2">
                <button
                  onClick={() => setCurrentPage(1)}
                  disabled={currentPage === 1}
                  className="px-3 py-1 rounded border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-100 dark:hover:bg-gray-700"
                >
                  First
                </button>
                <button
                  onClick={() => setCurrentPage(p => Math.max(1, p - 1))}
                  disabled={currentPage === 1}
                  className="px-3 py-1 rounded border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-100 dark:hover:bg-gray-700"
                >
                  Previous
                </button>
                <button
                  onClick={() => setCurrentPage(p => Math.min(totalPages, p + 1))}
                  disabled={currentPage === totalPages}
                  className="px-3 py-1 rounded border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-100 dark:hover:bg-gray-700"
                >
                  Next
                </button>
                <button
                  onClick={() => setCurrentPage(totalPages)}
                  disabled={currentPage === totalPages}
                  className="px-3 py-1 rounded border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-100 dark:hover:bg-gray-700"
                >
                  Last
                </button>
              </div>
            </div>
          )}
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
