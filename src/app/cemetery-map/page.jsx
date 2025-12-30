'use client';

import React, { useState, useEffect } from 'react';
import Link from 'next/link';

// Define plot status colors
const statusColors = {
  available: 'bg-green-500',
  reserved: 'bg-yellow-500',
  occupied: 'bg-red-500',
  cremation: 'bg-purple-500'
};

// Map section IDs to image paths
const sectionMaps = {
  'A': '/cemetery-maps/section-a-f-1.jpeg',
  'B': '/cemetery-maps/section-a-f-1.jpeg',
  'C': '/cemetery-maps/section-a-f-1.jpeg',
  'D': '/cemetery-maps/section-a-f-1.jpeg',
  'E': '/cemetery-maps/section-a-f-1.jpeg',
  'F': '/cemetery-maps/section-a-f-1.jpeg',
  'G': '/cemetery-maps/section-g-h.jpeg',
  'H': '/cemetery-maps/section-g-h.jpeg'
};

// Mock data for sections
const mockSections = [
  { section_id: 'A', name: 'Section A' },
  { section_id: 'B', name: 'Section B' },
  { section_id: 'C', name: 'Section C' },
  { section_id: 'D', name: 'Section D' },
  { section_id: 'E', name: 'Section E' },
  { section_id: 'F', name: 'Section F' },
  { section_id: 'G', name: 'Section G' },
  { section_id: 'H', name: 'Section H' }
];

// Mock data for plots
const mockPlots = {
  'A': [
    { plot_id: 'A-001', section_id: 'A', row: '1', number: '1', status: 'available', coordinates: { x: 100, y: 150 } },
    { plot_id: 'A-002', section_id: 'A', row: '1', number: '2', status: 'reserved', coordinates: { x: 150, y: 150 } },
    { plot_id: 'A-003', section_id: 'A', row: '1', number: '3', status: 'occupied', coordinates: { x: 200, y: 150 },
      plot_assignments: [{ 
        deceased: { first_name: 'John', last_name: 'Smith', birth_date: '1945-03-15', death_date: '2020-07-22' },
        owners: { first_name: 'Mary', last_name: 'Smith' }
      }]
    },
    { plot_id: 'A-004', section_id: 'A', row: '1', number: '4', status: 'cremation', coordinates: { x: 250, y: 150 } }
  ],
  'B': [
    { plot_id: 'B-001', section_id: 'B', row: '1', number: '1', status: 'available', coordinates: { x: 100, y: 150 } },
    { plot_id: 'B-002', section_id: 'B', row: '1', number: '2', status: 'available', coordinates: { x: 150, y: 150 } }
  ],
  'G': [
    { plot_id: 'G-001', section_id: 'G', row: '1', number: '1', status: 'available', coordinates: { x: 300, y: 350 } },
    { plot_id: 'G-002', section_id: 'G', row: '1', number: '2', status: 'reserved', coordinates: { x: 350, y: 350 } },
    { plot_id: 'G-003', section_id: 'G', row: '1', number: '3', status: 'occupied', coordinates: { x: 400, y: 350 } }
  ],
  'H': [
    { plot_id: 'H-001', section_id: 'H', row: '1', number: '1', status: 'available', coordinates: { x: 500, y: 450 } },
    { plot_id: 'H-002', section_id: 'H', row: '1', number: '2', status: 'cremation', coordinates: { x: 550, y: 450 } }
  ]
};

export default function CemeteryMap() {
  // State variables
  const [sections, setSections] = useState(mockSections);
  const [selectedSection, setSelectedSection] = useState('A');
  const [plots, setPlots] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [viewMode, setViewMode] = useState('standard'); // 'standard', 'cremation', or 'hybrid'
  const [selectedPlot, setSelectedPlot] = useState(null);
  const [searchTerm, setSearchTerm] = useState('');
  const [mapImage, setMapImage] = useState('');
  const [imageError, setImageError] = useState(false);

  // Load plots when selected section changes
  useEffect(() => {
    if (!selectedSection) return;
    
    // Simulate loading
    setLoading(true);
    
    // Set timeout to simulate API call
    setTimeout(() => {
      try {
        // Get plots for the selected section from mock data
        const sectionPlots = mockPlots[selectedSection] || [];
        setPlots(sectionPlots);
        
        // Set the map image based on the selected section
        setMapImage(sectionMaps[selectedSection] || '');
        setImageError(false);
        setLoading(false);
      } catch (err) {
        console.error(`Error loading plots for section ${selectedSection}:`, err);
        setError(`Failed to load plots for section ${selectedSection}`);
        setLoading(false);
      }
    }, 500);
  }, [selectedSection]);

  // Handle section change
  const handleSectionChange = (e) => {
    setSelectedSection(e.target.value);
  };

  // Handle view mode change
  const handleViewModeChange = (e) => {
    setViewMode(e.target.value);
  };

  // Handle search
  const handleSearchChange = (e) => {
    setSearchTerm(e.target.value);
  };

  // Handle plot click
  const handlePlotClick = (plot) => {
    setSelectedPlot(plot);
  };

  // Close plot details
  const closePlotDetails = () => {
    setSelectedPlot(null);
  };

  // Format date for display
  const formatDate = (dateString) => {
    if (!dateString) return 'Unknown';
    const date = new Date(dateString);
    return date.toLocaleDateString();
  };

  // Filter plots based on search term and view mode
  const filteredPlots = plots.filter(plot => {
    // Search filter
    const searchMatch = searchTerm === '' || 
      plot.plot_id.toLowerCase().includes(searchTerm.toLowerCase()) ||
      (plot.plot_assignments && plot.plot_assignments[0]?.deceased && 
        (`${plot.plot_assignments[0].deceased.first_name} ${plot.plot_assignments[0].deceased.last_name}`).toLowerCase().includes(searchTerm.toLowerCase()));
    
    // View mode filter
    let viewModeMatch = true;
    if (viewMode === 'standard' && plot.plot_type === 'cremation') {
      viewModeMatch = false;
    } else if (viewMode === 'cremation' && plot.plot_type === 'standard' && plot.status !== 'cremation') {
      viewModeMatch = false;
    }
    
    return searchMatch && viewModeMatch;
  });

  // Render plot markers
  const renderPlotMarkers = () => {
    if (loading || filteredPlots.length === 0) return null;
    
    return filteredPlots.map(plot => {
      // Get coordinates from the plot data
      const coordinates = plot.coordinates ? 
        (typeof plot.coordinates === 'string' ? JSON.parse(plot.coordinates) : plot.coordinates) : 
        { x: 0, y: 0 };
      
      // Determine marker style based on plot type and status
      const markerClass = `absolute rounded-full border-2 border-white shadow-md cursor-pointer transition-transform hover:scale-110 ${statusColors[plot.status] || 'bg-gray-500'}`;
      
      // Determine marker size based on plot type
      const markerSize = plot.plot_type === 'cremation' ? 'w-3 h-3' : 'w-6 h-6';
      
      return (
        <div
          key={plot.plot_id}
          className={`${markerClass} ${markerSize}`}
          style={{
            left: `${coordinates.x}px`,
            top: `${coordinates.y}px`,
          }}
          onClick={() => handlePlotClick(plot)}
          title={`${plot.plot_id}: ${plot.status}`}
        />
      );
    });
  };

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
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Interactive Cemetery Map</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Explore Northwood Cemetery plots and sections. Click on a plot for more information.
          </p>
        </div>

        {error && (
          <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6">
            <p>{error}</p>
          </div>
        )}

        <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
          <div className="flex flex-col md:flex-row gap-4 mb-6">
            <div className="flex-1">
              <label htmlFor="section-select" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Cemetery Section
              </label>
              <select
                id="section-select"
                value={selectedSection || ''}
                onChange={handleSectionChange}
                className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
              >
                {sections.map(section => (
                  <option key={section.section_id} value={section.section_id}>
                    {section.name}
                  </option>
                ))}
              </select>
            </div>
            <div className="flex-1">
              <label htmlFor="view-mode" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                View Mode
              </label>
              <select
                id="view-mode"
                value={viewMode}
                onChange={handleViewModeChange}
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
                  value={searchTerm}
                  onChange={handleSearchChange}
                  placeholder="Search by name or plot number"
                  className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                />
                <button className="absolute right-2 top-2 text-gray-500 dark:text-gray-400">
                  🔍
                </button>
              </div>
            </div>
          </div>

          <div className="relative bg-gray-100 dark:bg-gray-900 border border-gray-200 dark:border-gray-700 rounded-lg h-[600px] overflow-hidden">
            {loading ? (
              <div className="absolute inset-0 flex items-center justify-center">
                <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-blue-500"></div>
              </div>
            ) : (
              <>
                {/* Map image with fallback */}
                <div className="absolute inset-0">
                  <div className="w-full h-full relative">
                    {/* Colored background based on section */}
                    <div 
                      className="absolute inset-0 flex items-center justify-center"
                      style={{ 
                        backgroundColor: `hsl(${(selectedSection?.charCodeAt(0) - 65) * 30 || 0}, 70%, 80%)` 
                      }}
                    >
                      <h2 className="text-2xl font-bold text-gray-800">Section {selectedSection}</h2>
                    </div>
                    
                    {/* Try to load actual map image if available */}
                    {mapImage && !imageError && (
                      <div className="absolute inset-0 z-10">
                        <img
                          src={mapImage}
                          alt={`Map of Section ${selectedSection}`}
                          className="w-full h-full object-contain"
                          onError={() => {
                            console.log("Map image failed to load:", mapImage);
                            setImageError(true);
                          }}
                        />
                      </div>
                    )}
                    
                    {/* Plot markers */}
                    <div className="absolute inset-0 z-20">
                      {renderPlotMarkers()}
                    </div>
                  </div>
                </div>
              </>
            )}
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
          {selectedPlot ? (
            <div className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Plot ID</p>
                  <p className="font-medium text-black dark:text-white">{selectedPlot.plot_id}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Status</p>
                  <p className="font-medium text-black dark:text-white capitalize">{selectedPlot.status}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Type</p>
                  <p className="font-medium text-black dark:text-white capitalize">{selectedPlot.plot_type || 'standard'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Section</p>
                  <p className="font-medium text-black dark:text-white">
                    {sections.find(s => s.section_id === selectedPlot.section_id)?.name || selectedPlot.section_id}
                  </p>
                </div>
                
                {selectedPlot.plot_assignments && selectedPlot.plot_assignments[0]?.deceased && (
                  <>
                    <div>
                      <p className="text-sm text-gray-500 dark:text-gray-400">Deceased</p>
                      <p className="font-medium text-black dark:text-white">
                        {selectedPlot.plot_assignments[0].deceased.first_name} {selectedPlot.plot_assignments[0].deceased.last_name}
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-500 dark:text-gray-400">Birth Date</p>
                      <p className="font-medium text-black dark:text-white">
                        {formatDate(selectedPlot.plot_assignments[0].deceased.birth_date)}
                      </p>
                    </div>
                    <div>
                      <p className="text-sm text-gray-500 dark:text-gray-400">Death Date</p>
                      <p className="font-medium text-black dark:text-white">
                        {formatDate(selectedPlot.plot_assignments[0].deceased.death_date)}
                      </p>
                    </div>
                  </>
                )}
                
                {selectedPlot.plot_assignments && selectedPlot.plot_assignments[0]?.owners && (
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Owner</p>
                    <p className="font-medium text-black dark:text-white">
                      {selectedPlot.plot_assignments[0].owners.first_name} {selectedPlot.plot_assignments[0].owners.last_name}
                    </p>
                  </div>
                )}
                
                {selectedPlot.plot_type === 'cremation' && (
                  <div>
                    <p className="text-sm text-gray-500 dark:text-gray-400">Parent Plot</p>
                    <p className="font-medium text-black dark:text-white">{selectedPlot.parent_plot_id || 'None'}</p>
                  </div>
                )}
              </div>
              
              <div className="border-t border-gray-200 dark:border-gray-700 pt-4 mt-4 flex justify-end">
                <button
                  onClick={closePlotDetails}
                  className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors"
                >
                  Close Details
                </button>
              </div>
            </div>
          ) : (
            <p className="text-gray-600 dark:text-gray-300 mb-4">
              Select a plot on the map to view detailed information. You can click on any plot to see its status, 
              owner information, and any deceased records associated with it.
            </p>
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
