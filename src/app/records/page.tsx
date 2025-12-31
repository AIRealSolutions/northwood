'use client';

// Prevent static prerendering - this page requires runtime data
export const dynamic = 'force-dynamic';

import React, { useState, useEffect, useCallback } from 'react';
import Link from 'next/link';
import { deceasedAPI, DeceasedWithPlot } from '@/lib/supabase';

export default function Records() {
  const [records, setRecords] = useState<DeceasedWithPlot[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchName, setSearchName] = useState('');
  const [dateFrom, setDateFrom] = useState('');
  const [dateTo, setDateTo] = useState('');
  const [selectedSection, setSelectedSection] = useState('all');
  const [currentPage, setCurrentPage] = useState(1);
  const [totalCount, setTotalCount] = useState(0);
  const [sectionCounts, setSectionCounts] = useState<Record<string, number>>({});
  const recordsPerPage = 25;

  // Load initial data and counts
  useEffect(() => {
    loadRecords();
    loadCounts();
  }, []);

  // Reload when page or section changes
  useEffect(() => {
    loadRecords();
  }, [currentPage, selectedSection]);

  const loadCounts = async () => {
    try {
      const counts = await deceasedAPI.getTotalCounts();
      setTotalCount(counts.total);
      setSectionCounts(counts.bySection);
    } catch (error) {
      console.error('Error loading counts:', error);
    }
  };

  const loadRecords = async () => {
    try {
      setLoading(true);
      const { data, count } = await deceasedAPI.getRecordsWithPagination(
        currentPage,
        recordsPerPage,
        searchName || undefined,
        selectedSection !== 'all' ? selectedSection : undefined
      );
      setRecords(data);
      if (count !== null) setTotalCount(count);
    } catch (error) {
      console.error('Error loading records:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = async () => {
    try {
      setLoading(true);
      setCurrentPage(1);
      
      if (dateFrom && dateTo) {
        const data = await deceasedAPI.filterByDateRange(dateFrom, dateTo);
        setRecords(data);
        setTotalCount(data.length);
      } else if (searchName.trim()) {
        const data = await deceasedAPI.searchByName(searchName);
        // Filter by section if needed
        const filtered = selectedSection === 'all' 
          ? data 
          : data.filter(r => r.plots?.section?.toLowerCase() === selectedSection.toLowerCase());
        setRecords(filtered);
        setTotalCount(filtered.length);
      } else {
        loadRecords();
      }
    } catch (error) {
      console.error('Error searching records:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleClear = () => {
    setSearchName('');
    setDateFrom('');
    setDateTo('');
    setSelectedSection('all');
    setCurrentPage(1);
    loadRecords();
    loadCounts();
  };

  const handleSectionChange = (section: string) => {
    setSelectedSection(section);
    setCurrentPage(1);
  };

  // Calculate pagination
  const totalPages = Math.ceil(totalCount / recordsPerPage);
  const indexOfFirstRecord = (currentPage - 1) * recordsPerPage + 1;
  const indexOfLastRecord = Math.min(currentPage * recordsPerPage, totalCount);

  const formatDate = (dateString: string | null | undefined) => {
    if (!dateString) return 'N/A';
    try {
      const date = new Date(dateString);
      // Check for invalid dates like 1933-01-01 which might be year-only
      if (dateString.endsWith('-01-01') && date.getMonth() === 0 && date.getDate() === 1) {
        return date.getFullYear().toString();
      }
      return date.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
    } catch {
      return dateString;
    }
  };

  const calculateAge = (birthDate: string | null | undefined, deathDate: string | null | undefined) => {
    if (!birthDate || !deathDate) return 'N/A';
    try {
      const birth = new Date(birthDate);
      const death = new Date(deathDate);
      let age = death.getFullYear() - birth.getFullYear();
      const monthDiff = death.getMonth() - birth.getMonth();
      if (monthDiff < 0 || (monthDiff === 0 && death.getDate() < birth.getDate())) {
        age--;
      }
      return age >= 0 ? age : 'N/A';
    } catch {
      return 'N/A';
    }
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
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Cemetery Records</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Search and browse {totalCount.toLocaleString()} records of interments at Northwood Cemetery.
          </p>
        </div>

        {/* Section Summary Cards */}
        <div className="grid grid-cols-4 md:grid-cols-8 gap-2 mb-6">
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
              <div className="font-bold">Section {section}</div>
              <div className="text-sm opacity-75">{sectionCounts[section] || 0}</div>
            </button>
          ))}
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
          <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Search Records</h2>
          
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-6">
            <div>
              <label htmlFor="name-search" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Name
              </label>
              <input
                type="text"
                id="name-search"
                placeholder="First, Last, or Maiden name"
                value={searchName}
                onChange={(e) => setSearchName(e.target.value)}
                onKeyPress={(e) => e.key === 'Enter' && handleSearch()}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              />
            </div>
            
            <div>
              <label htmlFor="date-range" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Death Date Range
              </label>
              <div className="flex items-center space-x-2">
                <input
                  type="date"
                  id="date-from"
                  value={dateFrom}
                  onChange={(e) => setDateFrom(e.target.value)}
                  className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                />
                <span className="text-gray-500">to</span>
                <input
                  type="date"
                  id="date-to"
                  value={dateTo}
                  onChange={(e) => setDateTo(e.target.value)}
                  className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                />
              </div>
            </div>
            
            <div>
              <label htmlFor="section-select" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Cemetery Section
              </label>
              <select
                id="section-select"
                value={selectedSection}
                onChange={(e) => handleSectionChange(e.target.value)}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                <option value="all">All Sections ({totalCount.toLocaleString()})</option>
                <option value="a">Section A ({sectionCounts['A'] || 0})</option>
                <option value="b">Section B ({sectionCounts['B'] || 0})</option>
                <option value="c">Section C ({sectionCounts['C'] || 0})</option>
                <option value="d">Section D ({sectionCounts['D'] || 0})</option>
                <option value="e">Section E ({sectionCounts['E'] || 0})</option>
                <option value="f">Section F ({sectionCounts['F'] || 0})</option>
                <option value="g">Section G ({sectionCounts['G'] || 0})</option>
                <option value="h">Section H ({sectionCounts['H'] || 0})</option>
              </select>
            </div>
          </div>
          
          <div className="flex justify-end gap-2">
            <button 
              onClick={handleClear}
              className="bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-white font-medium py-2 px-4 rounded-md transition-colors"
            >
              Clear
            </button>
            <button 
              onClick={handleSearch}
              className="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition-colors"
            >
              Search Records
            </button>
          </div>
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Records Database</h2>
          
          {loading ? (
            <div className="flex items-center justify-center py-12">
              <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600"></div>
            </div>
          ) : (
            <>
              <div className="overflow-x-auto">
                <table className="min-w-full divide-y divide-gray-200 dark:divide-gray-700">
                  <thead className="bg-gray-50 dark:bg-gray-900">
                    <tr>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Name
                      </th>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Maiden Name
                      </th>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Birth Date
                      </th>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Death Date
                      </th>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Plot Location
                      </th>
                      <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                        Age
                      </th>
                    </tr>
                  </thead>
                  <tbody className="bg-white dark:bg-gray-800 divide-y divide-gray-200 dark:divide-gray-700">
                    {records.length > 0 ? (
                      records.map((record) => (
                        <tr key={record.id} className="hover:bg-gray-50 dark:hover:bg-gray-700">
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900 dark:text-gray-200">
                            <span className="font-medium">{record.last_name}</span>, {record.first_name} {record.middle_name || ''}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {record.maiden_name || '-'}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {formatDate(record.birth_date)}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {formatDate(record.death_date)}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {record.plots ? (
                              <span>
                                <span className="font-medium text-blue-600 dark:text-blue-400">
                                  Section {record.plots.section}
                                </span>
                                <span className="text-gray-400 mx-1">|</span>
                                {record.plots.plot_number}
                              </span>
                            ) : 'N/A'}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {calculateAge(record.birth_date, record.death_date)}
                          </td>
                        </tr>
                      ))
                    ) : (
                      <tr>
                        <td colSpan={6} className="px-6 py-8 text-center text-gray-500 dark:text-gray-400">
                          No records found. Try adjusting your search criteria.
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
              
              {records.length > 0 && (
                <div className="mt-4 flex items-center justify-between">
                  <div className="text-sm text-gray-500 dark:text-gray-400">
                    Showing <span className="font-medium">{indexOfFirstRecord.toLocaleString()}</span> to{' '}
                    <span className="font-medium">{indexOfLastRecord.toLocaleString()}</span> of{' '}
                    <span className="font-medium">{totalCount.toLocaleString()}</span> results
                  </div>
                  <div className="flex space-x-2">
                    <button
                      onClick={() => setCurrentPage(1)}
                      disabled={currentPage === 1}
                      className="bg-white dark:bg-gray-700 text-gray-500 dark:text-gray-300 border border-gray-300 dark:border-gray-600 rounded-md px-3 py-1 text-sm disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-50 dark:hover:bg-gray-600"
                    >
                      First
                    </button>
                    <button
                      onClick={() => setCurrentPage(prev => Math.max(prev - 1, 1))}
                      disabled={currentPage === 1}
                      className="bg-white dark:bg-gray-700 text-gray-500 dark:text-gray-300 border border-gray-300 dark:border-gray-600 rounded-md px-3 py-1 text-sm disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-50 dark:hover:bg-gray-600"
                    >
                      Previous
                    </button>
                    <span className="px-3 py-1 text-sm text-gray-700 dark:text-gray-300">
                      Page {currentPage} of {totalPages}
                    </span>
                    <button
                      onClick={() => setCurrentPage(prev => Math.min(prev + 1, totalPages))}
                      disabled={currentPage === totalPages}
                      className="bg-blue-600 text-white border border-blue-600 rounded-md px-3 py-1 text-sm disabled:opacity-50 disabled:cursor-not-allowed hover:bg-blue-700"
                    >
                      Next
                    </button>
                    <button
                      onClick={() => setCurrentPage(totalPages)}
                      disabled={currentPage === totalPages}
                      className="bg-white dark:bg-gray-700 text-gray-500 dark:text-gray-300 border border-gray-300 dark:border-gray-600 rounded-md px-3 py-1 text-sm disabled:opacity-50 disabled:cursor-not-allowed hover:bg-gray-50 dark:hover:bg-gray-600"
                    >
                      Last
                    </button>
                  </div>
                </div>
              )}
            </>
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
