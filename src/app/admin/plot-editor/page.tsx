import React from 'react';
import Link from 'next/link';

export default function PlotEditor() {
  return (
    <div className="flex min-h-screen flex-col bg-zinc-50 font-sans dark:bg-black">
      <header className="w-full bg-white dark:bg-black border-b border-gray-200 dark:border-gray-800">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <Link href="/" className="text-2xl font-bold text-black dark:text-white">
            Northwood Cemetery <span className="text-blue-600">Admin</span>
          </Link>
          <nav className="hidden md:flex space-x-6">
            <Link href="/admin" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Dashboard
            </Link>
            <Link href="/admin/plot-editor" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
              Plot Editor
            </Link>
            <Link href="/admin/records" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Records
            </Link>
            <Link href="/admin/reports" className="text-gray-600 dark:text-gray-300 hover:text-black dark:hover:text-white">
              Reports
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Cemetery Plot Editor</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Manage cemetery plots, update statuses, and configure cremation spots.
          </p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
          {/* Left sidebar - Controls */}
          <div className="lg:col-span-1">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Cemetery Sections</h2>
              
              <div className="space-y-2">
                <button className="w-full text-left px-4 py-2 rounded-md transition-colors bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200">
                  Section A
                </button>
                <button className="w-full text-left px-4 py-2 rounded-md transition-colors bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 hover:bg-gray-200 dark:hover:bg-gray-600">
                  Section B
                </button>
                <button className="w-full text-left px-4 py-2 rounded-md transition-colors bg-gray-100 dark:bg-gray-700 text-gray-800 dark:text-gray-200 hover:bg-gray-200 dark:hover:bg-gray-600">
                  Section C
                </button>
                {/* More sections... */}
              </div>
            </div>

            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Edit Tools</h2>
              
              <div className="space-y-4">
                <div>
                  <label htmlFor="status-select" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                    Change Status
                  </label>
                  <select
                    id="status-select"
                    className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                  >
                    <option value="">Select Status</option>
                    <option value="available">Available</option>
                    <option value="reserved">Reserved</option>
                    <option value="occupied">Occupied</option>
                    <option value="cremation">Cremation</option>
                  </select>
                </div>
                
                <div>
                  <button className="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 px-4 rounded-md transition-colors">
                    Update Selected Plot
                  </button>
                </div>
                
                <div className="border-t border-gray-200 dark:border-gray-700 pt-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Cremation Options</h3>
                  
                  <div className="space-y-2">
                    <button className="w-full bg-purple-600 hover:bg-purple-700 text-white py-2 px-4 rounded-md transition-colors">
                      Convert to Cremation
                    </button>
                    <button className="w-full bg-gray-600 hover:bg-gray-700 text-white py-2 px-4 rounded-md transition-colors">
                      Revert to Standard
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Legend</h2>
              
              <div className="space-y-3">
                <div className="flex items-center">
                  <div className="w-4 h-4 rounded-full bg-green-500 mr-2"></div>
                  <span className="text-gray-800 dark:text-gray-200">Available</span>
                </div>
                <div className="flex items-center">
                  <div className="w-4 h-4 rounded-full bg-yellow-500 mr-2"></div>
                  <span className="text-gray-800 dark:text-gray-200">Reserved</span>
                </div>
                <div className="flex items-center">
                  <div className="w-4 h-4 rounded-full bg-red-500 mr-2"></div>
                  <span className="text-gray-800 dark:text-gray-200">Occupied</span>
                </div>
                <div className="flex items-center">
                  <div className="w-4 h-4 rounded-full bg-purple-500 mr-2"></div>
                  <span className="text-gray-800 dark:text-gray-200">Cremation</span>
                </div>
              </div>
            </div>
          </div>

          {/* Main content - Map editor */}
          <div className="lg:col-span-3">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <div className="flex justify-between items-center mb-4">
                <h2 className="text-xl font-semibold text-black dark:text-white">
                  Section A Editor
                </h2>
                <div className="flex space-x-2">
                  <button className="bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 py-1 px-3 rounded-md text-sm transition-colors">
                    Save Changes
                  </button>
                  <button className="bg-gray-200 hover:bg-gray-300 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 py-1 px-3 rounded-md text-sm transition-colors">
                    Print Map
                  </button>
                </div>
              </div>
              
              <div className="relative bg-gray-100 dark:bg-gray-900 border border-gray-200 dark:border-gray-700 rounded-lg h-[600px] overflow-hidden">
                {/* Map image */}
                <div className="absolute inset-0">
                  <div className="w-full h-full relative">
                    {/* This would be replaced with actual map images */}
                    <div className="absolute inset-0 bg-gray-200 dark:bg-gray-700 flex items-center justify-center">
                      <p className="text-gray-500 dark:text-gray-400">Map of Section A (Editor Mode)</p>
                    </div>
                    
                    {/* Sample plot markers */}
                    <div className="absolute w-6 h-6 rounded-full bg-green-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '100px', top: '150px' }} title="A-001: Available"></div>
                    <div className="absolute w-6 h-6 rounded-full bg-yellow-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '150px', top: '150px' }} title="A-002: Reserved"></div>
                    <div className="absolute w-6 h-6 rounded-full bg-red-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '200px', top: '150px' }} title="A-003: Occupied"></div>
                    
                    {/* Sample cremation plot */}
                    <div className="absolute w-6 h-6 rounded-full bg-purple-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '100px', top: '200px' }} title="A-004: Cremation"></div>
                    <div className="absolute w-3 h-3 rounded-full bg-green-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '90px', top: '190px' }} title="A-004-A: Available"></div>
                    <div className="absolute w-3 h-3 rounded-full bg-green-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '100px', top: '190px' }} title="A-004-B: Available"></div>
                    <div className="absolute w-3 h-3 rounded-full bg-red-500 border-2 border-white shadow-md cursor-pointer" style={{ left: '110px', top: '190px' }} title="A-004-C: Occupied"></div>
                  </div>
                </div>
              </div>
              
              <div className="mt-4 border-t border-gray-200 dark:border-gray-700 pt-4">
                <h3 className="text-lg font-medium text-black dark:text-white mb-2">Selected Plot: A-003</h3>
                
                <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Status</p>
                    <p className="font-medium text-black dark:text-white">Occupied</p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Type</p>
                    <p className="font-medium text-black dark:text-white">Standard</p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Deceased</p>
                    <p className="font-medium text-black dark:text-white">John Smith</p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Owner</p>
                    <p className="font-medium text-black dark:text-white">Mary Smith</p>
                  </div>
                </div>
                
                <div className="mt-4 flex justify-end">
                  <button className="bg-blue-600 hover:bg-blue-700 text-white py-1 px-4 rounded-md transition-colors">
                    Edit Details
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>

      <footer className="bg-white dark:bg-black border-t border-gray-200 dark:border-gray-800 py-6">
        <div className="container mx-auto px-4">
          <p className="text-center text-gray-500 dark:text-gray-400 text-sm">
            Northwood Cemetery Management System - Admin Portal
          </p>
        </div>
      </footer>
    </div>
  );
}
