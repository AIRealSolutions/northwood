'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import { deceasedAPI, DeceasedRecord } from '@/lib/supabase';

export default function Records() {
  const [records, setRecords] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchName, setSearchName] = useState('');
  const [dateFrom, setDateFrom] = useState('');
  const [dateTo, setDateTo] = useState('');
  const [selectedSection, setSelectedSection] = useState('all');
  const [currentPage, setCurrentPage] = useState(1);
  const recordsPerPage = 10;

  useEffect(() => {
    loadRecords();
  }, []);

  const loadRecords = async () => {
    try {
      setLoading(true);
      const data = await deceasedAPI.getRecordsWithPlots();
      setRecords(data);
    } catch (error) {
      console.error('Error loading records:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSearch = async () => {
    try {
      setLoading(true);
      
      if (dateFrom && dateTo) {
        const data = await deceasedAPI.filterByDateRange(dateFrom, dateTo);
        setRecords(data.map(d => ({ ...d, plots: null })));
      } else if (searchName.trim()) {
        const data = await deceasedAPI.searchByName(searchName);
        // Reload with plot info
        const withPlots = await deceasedAPI.getRecordsWithPlots();
        const filtered = withPlots.filter(r => 
          r.first_name.toLowerCase().includes(searchName.toLowerCase()) ||
          r.last_name.toLowerCase().includes(searchName.toLowerCase())
        );
        setRecords(filtered);
      } else {
        loadRecords();
      }
      
      setCurrentPage(1);
    } catch (error) {
      console.error('Error searching records:', error);
    } finally {
      setLoading(false);
    }
  };

  const filteredRecords = records.filter(record => {
    if (selectedSection === 'all') return true;
    return record.plots?.section?.toLowerCase() === selectedSection.toLowerCase();
  });

  // Pagination
  const indexOfLastRecord = currentPage * recordsPerPage;
  const indexOfFirstRecord = indexOfLastRecord - recordsPerPage;
  const currentRecords = filteredRecords.slice(indexOfFirstRecord, indexOfLastRecord);
  const totalPages = Math.ceil(filteredRecords.length / recordsPerPage);

  const formatDate = (dateString: string | null) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { year: 'numeric', month: 'short', day: 'numeric' });
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
            Search and browse records of interments at Northwood Cemetery.
          </p>
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
                placeholder="First or Last name"
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
                onChange={(e) => setSelectedSection(e.target.value)}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                <option value="all">All Sections</option>
                <option value="a">Section A</option>
                <option value="b">Section B</option>
                <option value="c">Section C</option>
                <option value="d">Section D</option>
                <option value="e">Section E</option>
                <option value="f">Section F</option>
                <option value="g">Section G</option>
                <option value="h">Section H</option>
              </select>
            </div>
          </div>
          
          <div className="flex justify-end gap-2">
            <button 
              onClick={() => {
                setSearchName('');
                setDateFrom('');
                setDateTo('');
                setSelectedSection('all');
                loadRecords();
              }}
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
                    {currentRecords.length > 0 ? (
                      currentRecords.map((record) => (
                        <tr key={record.id} className="hover:bg-gray-50 dark:hover:bg-gray-700">
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-900 dark:text-gray-200">
                            {record.last_name}, {record.first_name} {record.middle_name || ''}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {formatDate(record.birth_date)}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {formatDate(record.death_date)}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {record.plots ? `Section ${record.plots.section}, ${record.plots.plot_number}` : 'N/A'}
                          </td>
                          <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-500 dark:text-gray-400">
                            {record.age_at_death || 'N/A'}
                          </td>
                        </tr>
                      ))
                    ) : (
                      <tr>
                        <td colSpan={5} className="px-6 py-8 text-center text-gray-500 dark:text-gray-400">
                          No records found. Try adjusting your search criteria.
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
              
              {filteredRecords.length > 0 && (
                <div className="mt-4 flex items-center justify-between">
                  <div className="text-sm text-gray-500 dark:text-gray-400">
                    Showing <span className="font-medium">{indexOfFirstRecord + 1}</span> to{' '}
                    <span className="font-medium">{Math.min(indexOfLastRecord, filteredRecords.length)}</span> of{' '}
                    <span className="font-medium">{filteredRecords.length}</span> results
                  </div>
                  <div className="flex space-x-2">
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
