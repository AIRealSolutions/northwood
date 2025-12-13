import React from 'react';
import Link from 'next/link';

export default function CemeteryMap() {
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
            Interactive map of Northwood Cemetery plots and sections.
          </p>
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
          <div className="flex flex-col md:flex-row gap-4 mb-6">
            <div className="flex-1">
              <label htmlFor="section-select" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Cemetery Section
              </label>
              <select
                id="section-select"
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
            <div className="flex-1">
              <label htmlFor="view-mode" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                View Mode
              </label>
              <select
                id="view-mode"
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                <option value="standard">Standard View</option>
                <option value="cremation">Cremation View</option>
                <option value="hybrid">Hybrid View</option>
              </select>
            </div>
            <div className="flex-1">
              <label htmlFor="search" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Search
              </label>
              <div className="relative">
                <input
                  type="text"
                  id="search"
                  placeholder="Search by name or plot number"
                  className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                />
                <button className="absolute right-2 top-2 text-gray-500 dark:text-gray-400">
                  🔍
                </button>
              </div>
            </div>
          </div>

          <div className="bg-gray-100 dark:bg-gray-900 border border-gray-200 dark:border-gray-700 rounded-lg h-[500px] flex items-center justify-center">
            <div className="text-center">
              <p className="text-gray-500 dark:text-gray-400 mb-4">Interactive cemetery map will be displayed here</p>
              <p className="text-sm text-gray-400 dark:text-gray-500">Map data loading from database</p>
            </div>
          </div>

          <div className="mt-4 flex justify-end">
            <div className="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg p-3 inline-flex">
              <div className="flex items-center mr-4">
                <span className="inline-block w-4 h-4 bg-green-500 rounded-full mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Available</span>
              </div>
              <div className="flex items-center mr-4">
                <span className="inline-block w-4 h-4 bg-yellow-500 rounded-full mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Reserved</span>
              </div>
              <div className="flex items-center mr-4">
                <span className="inline-block w-4 h-4 bg-red-500 rounded-full mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Occupied</span>
              </div>
              <div className="flex items-center">
                <span className="inline-block w-4 h-4 bg-purple-500 rounded-full mr-2"></span>
                <span className="text-sm text-gray-700 dark:text-gray-300">Cremation</span>
              </div>
            </div>
          </div>
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
          <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Plot Information</h2>
          <p className="text-gray-600 dark:text-gray-300 mb-4">
            Select a plot on the map to view detailed information. You can click on any plot to see its status, 
            owner information, and any deceased records associated with it.
          </p>
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
