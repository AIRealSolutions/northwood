import React from 'react';
import Link from 'next/link';

export default function BurialServices() {
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
            <Link href="/burial-services" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
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
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Burial Services</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Arrange burial services for your loved ones at Northwood Cemetery.
          </p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Burial Arrangement Process</h2>
              
              <div className="space-y-6">
                <div className="flex">
                  <div className="flex-shrink-0">
                    <div className="flex items-center justify-center h-12 w-12 rounded-md bg-blue-500 text-white">
                      1
                    </div>
                  </div>
                  <div className="ml-4">
                    <h3 className="text-lg font-medium text-black dark:text-white">Select a Plot</h3>
                    <p className="mt-1 text-gray-600 dark:text-gray-300">
                      Browse our interactive cemetery map to select an available plot or cremation spot that meets your needs.
                    </p>
                  </div>
                </div>
                
                <div className="flex">
                  <div className="flex-shrink-0">
                    <div className="flex items-center justify-center h-12 w-12 rounded-md bg-blue-500 text-white">
                      2
                    </div>
                  </div>
                  <div className="ml-4">
                    <h3 className="text-lg font-medium text-black dark:text-white">Complete Information</h3>
                    <p className="mt-1 text-gray-600 dark:text-gray-300">
                      Provide necessary information about the deceased and your contact details using the form below.
                    </p>
                  </div>
                </div>
                
                <div className="flex">
                  <div className="flex-shrink-0">
                    <div className="flex items-center justify-center h-12 w-12 rounded-md bg-blue-500 text-white">
                      3
                    </div>
                  </div>
                  <div className="ml-4">
                    <h3 className="text-lg font-medium text-black dark:text-white">Schedule Services</h3>
                    <p className="mt-1 text-gray-600 dark:text-gray-300">
                      Select a date and time for the burial service and any additional services you may require.
                    </p>
                  </div>
                </div>
                
                <div className="flex">
                  <div className="flex-shrink-0">
                    <div className="flex items-center justify-center h-12 w-12 rounded-md bg-blue-500 text-white">
                      4
                    </div>
                  </div>
                  <div className="ml-4">
                    <h3 className="text-lg font-medium text-black dark:text-white">Confirmation</h3>
                    <p className="mt-1 text-gray-600 dark:text-gray-300">
                      Our staff will contact you to confirm arrangements and provide any additional information needed.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Burial Arrangement Form</h2>
              
              <form className="space-y-6">
                <div>
                  <h3 className="text-lg font-medium text-black dark:text-white mb-3">Plot Selection</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                      <label htmlFor="plot-type" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Plot Type
                      </label>
                      <select
                        id="plot-type"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      >
                        <option value="standard">Standard Plot</option>
                        <option value="cremation">Cremation Plot</option>
                      </select>
                    </div>
                    <div>
                      <label htmlFor="plot-id" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Plot ID (Optional)
                      </label>
                      <input
                        type="text"
                        id="plot-id"
                        placeholder="e.g., A-123"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      />
                    </div>
                  </div>
                  <p className="mt-2 text-sm text-gray-500 dark:text-gray-400">
                    If you don't know the Plot ID, you can leave it blank and select from available plots later.
                  </p>
                </div>
                
                <div>
                  <h3 className="text-lg font-medium text-black dark:text-white mb-3">Deceased Information</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                      <label htmlFor="first-name" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        First Name
                      </label>
                      <input
                        type="text"
                        id="first-name"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="last-name" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Last Name
                      </label>
                      <input
                        type="text"
                        id="last-name"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="birth-date" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Date of Birth
                      </label>
                      <input
                        type="date"
                        id="birth-date"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      />
                    </div>
                    <div>
                      <label htmlFor="death-date" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Date of Death
                      </label>
                      <input
                        type="date"
                        id="death-date"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                  </div>
                </div>
                
                <div>
                  <h3 className="text-lg font-medium text-black dark:text-white mb-3">Contact Information</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                      <label htmlFor="contact-name" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Your Name
                      </label>
                      <input
                        type="text"
                        id="contact-name"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="relationship" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Relationship to Deceased
                      </label>
                      <input
                        type="text"
                        id="relationship"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="email" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Email
                      </label>
                      <input
                        type="email"
                        id="email"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                    <div>
                      <label htmlFor="phone" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Phone
                      </label>
                      <input
                        type="tel"
                        id="phone"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                        required
                      />
                    </div>
                  </div>
                </div>
                
                <div>
                  <h3 className="text-lg font-medium text-black dark:text-white mb-3">Service Details</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div>
                      <label htmlFor="service-date" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Preferred Service Date
                      </label>
                      <input
                        type="date"
                        id="service-date"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      />
                    </div>
                    <div>
                      <label htmlFor="service-time" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                        Preferred Service Time
                      </label>
                      <input
                        type="time"
                        id="service-time"
                        className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      />
                    </div>
                  </div>
                  <div className="mt-4">
                    <label htmlFor="additional-info" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                      Additional Information
                    </label>
                    <textarea
                      id="additional-info"
                      rows={4}
                      className="w-full rounded-md border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-700 px-3 py-2 text-black dark:text-white"
                      placeholder="Please provide any additional information or special requests"
                    ></textarea>
                  </div>
                </div>
                
                <div className="flex justify-end">
                  <button
                    type="submit"
                    className="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-6 rounded-md transition-colors"
                  >
                    Submit Arrangement Request
                  </button>
                </div>
              </form>
            </div>
          </div>
          
          <div className="lg:col-span-1">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Contact Information</h2>
              <div className="space-y-4">
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Cemetery Office</h3>
                  <p className="text-gray-600 dark:text-gray-300">
                    123 Cemetery Road<br />
                    Southport, NC 28461
                  </p>
                </div>
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Phone</h3>
                  <p className="text-gray-600 dark:text-gray-300">(910) 555-1234</p>
                </div>
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Email</h3>
                  <p className="text-gray-600 dark:text-gray-300">info@northwoodcemetery.org</p>
                </div>
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Office Hours</h3>
                  <p className="text-gray-600 dark:text-gray-300">
                    Monday - Friday: 9:00 AM - 5:00 PM<br />
                    Saturday: 10:00 AM - 2:00 PM<br />
                    Sunday: Closed
                  </p>
                </div>
              </div>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Funeral Home Partners</h2>
              <ul className="space-y-3">
                <li className="border-b border-gray-200 dark:border-gray-700 pb-3">
                  <h3 className="text-base font-medium text-black dark:text-white">Peaceful Rest Funeral Home</h3>
                  <p className="text-sm text-gray-600 dark:text-gray-300">(910) 555-2345</p>
                </li>
                <li className="border-b border-gray-200 dark:border-gray-700 pb-3">
                  <h3 className="text-base font-medium text-black dark:text-white">Southport Memorial Services</h3>
                  <p className="text-sm text-gray-600 dark:text-gray-300">(910) 555-3456</p>
                </li>
                <li className="border-b border-gray-200 dark:border-gray-700 pb-3">
                  <h3 className="text-base font-medium text-black dark:text-white">Coastal Funeral Services</h3>
                  <p className="text-sm text-gray-600 dark:text-gray-300">(910) 555-4567</p>
                </li>
                <li>
                  <h3 className="text-base font-medium text-black dark:text-white">Brunswick County Funeral Home</h3>
                  <p className="text-sm text-gray-600 dark:text-gray-300">(910) 555-5678</p>
                </li>
              </ul>
            </div>
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
