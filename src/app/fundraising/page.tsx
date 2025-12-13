import React from 'react';
import Link from 'next/link';

export default function Fundraising() {
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
            <Link href="/fundraising" className="text-black dark:text-white font-medium border-b-2 border-black dark:border-white">
              Fundraising
            </Link>
          </nav>
        </div>
      </header>

      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-black dark:text-white mb-2">Support Northwood Cemetery</h1>
          <p className="text-gray-600 dark:text-gray-300">
            Help us maintain and preserve this historic cemetery for future generations.
          </p>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Why Your Support Matters</h2>
              
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                Northwood Cemetery has been serving the Southport community since 1849. As a historic cemetery, 
                we rely on community support to maintain the grounds, preserve historic monuments, and provide 
                ongoing care for all burial sites.
              </p>
              
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                Your donations help us:
              </p>
              
              <ul className="list-disc pl-5 space-y-2 text-gray-600 dark:text-gray-300 mb-6">
                <li>Maintain cemetery grounds and landscaping</li>
                <li>Restore and preserve historic monuments and markers</li>
                <li>Improve cemetery infrastructure and accessibility</li>
                <li>Digitize and preserve historical records</li>
                <li>Provide educational programs about cemetery history</li>
                <li>Ensure perpetual care for all burial sites</li>
              </ul>
              
              <div className="border-t border-gray-200 dark:border-gray-700 pt-4">
                <p className="text-gray-600 dark:text-gray-300 italic">
                  "Preserving the past, honoring the present, and securing the future of Northwood Cemetery."
                </p>
              </div>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Ways to Give</h2>
              
              <div className="space-y-6">
                <div className="border-b border-gray-200 dark:border-gray-700 pb-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">One-Time Donation</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-4">
                    Make a one-time contribution of any amount to support our ongoing maintenance and preservation efforts.
                  </p>
                  <div className="flex flex-wrap gap-2">
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $25
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $50
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $100
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $250
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      Custom
                    </button>
                  </div>
                </div>
                
                <div className="border-b border-gray-200 dark:border-gray-700 pb-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Monthly Giving</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-4">
                    Become a sustaining supporter with a monthly donation that provides reliable funding for our care programs.
                  </p>
                  <div className="flex flex-wrap gap-2">
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $10/month
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $25/month
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      $50/month
                    </button>
                    <button className="bg-gray-100 hover:bg-gray-200 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-medium py-2 px-4 rounded-md transition-colors">
                      Custom
                    </button>
                  </div>
                </div>
                
                <div className="border-b border-gray-200 dark:border-gray-700 pb-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Memorial Donations</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-4">
                    Honor a loved one with a donation in their memory. We'll send a notification to the family of your tribute.
                  </p>
                  <button className="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-6 rounded-md transition-colors">
                    Make a Memorial Donation
                  </button>
                </div>
                
                <div>
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Planned Giving</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-4">
                    Include Northwood Cemetery in your estate planning to create a lasting legacy of support.
                  </p>
                  <button className="bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-6 rounded-md transition-colors">
                    Learn About Planned Giving
                  </button>
                </div>
              </div>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Adopt-a-Plot Program</h2>
              
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                Our Adopt-a-Plot program allows individuals, families, and organizations to take an active role in 
                preserving specific areas of the cemetery. By adopting a plot, you help ensure that these areas 
                receive special attention and care.
              </p>
              
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <div className="border border-gray-200 dark:border-gray-700 rounded-lg p-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Individual Plot</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-3">
                    Adopt an individual burial plot for one year of special care and maintenance.
                  </p>
                  <p className="text-xl font-bold text-black dark:text-white mb-3">$150/year</p>
                  <button className="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition-colors">
                    Adopt a Plot
                  </button>
                </div>
                
                <div className="border border-gray-200 dark:border-gray-700 rounded-lg p-4">
                  <h3 className="text-lg font-medium text-black dark:text-white mb-2">Family Section</h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-3">
                    Adopt a family section with multiple plots for one year of special care.
                  </p>
                  <p className="text-xl font-bold text-black dark:text-white mb-3">$500/year</p>
                  <button className="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition-colors">
                    Adopt a Section
                  </button>
                </div>
              </div>
              
              <p className="text-gray-600 dark:text-gray-300">
                All Adopt-a-Plot participants receive a certificate of adoption, recognition on our website, 
                and quarterly updates on maintenance activities.
              </p>
            </div>
          </div>
          
          <div className="lg:col-span-1">
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Current Projects</h2>
              
              <div className="space-y-4">
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Historic Monument Restoration</h3>
                  <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2.5 mt-2 mb-1">
                    <div className="bg-blue-600 h-2.5 rounded-full" style={{ width: '65%' }}></div>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-gray-600 dark:text-gray-300">$32,500 raised</span>
                    <span className="text-gray-600 dark:text-gray-300">$50,000 goal</span>
                  </div>
                </div>
                
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Pathway Improvements</h3>
                  <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2.5 mt-2 mb-1">
                    <div className="bg-blue-600 h-2.5 rounded-full" style={{ width: '40%' }}></div>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-gray-600 dark:text-gray-300">$8,000 raised</span>
                    <span className="text-gray-600 dark:text-gray-300">$20,000 goal</span>
                  </div>
                </div>
                
                <div>
                  <h3 className="text-base font-medium text-black dark:text-white">Digital Records Archive</h3>
                  <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2.5 mt-2 mb-1">
                    <div className="bg-blue-600 h-2.5 rounded-full" style={{ width: '85%' }}></div>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-gray-600 dark:text-gray-300">$17,000 raised</span>
                    <span className="text-gray-600 dark:text-gray-300">$20,000 goal</span>
                  </div>
                </div>
              </div>
              
              <div className="mt-6">
                <button className="w-full bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-4 rounded-md transition-colors">
                  View All Projects
                </button>
              </div>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-8">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Donor Recognition</h2>
              
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                We gratefully acknowledge our recent supporters:
              </p>
              
              <ul className="space-y-3">
                <li className="border-b border-gray-200 dark:border-gray-700 pb-2">
                  <p className="text-black dark:text-white font-medium">Southport Historical Society</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Preservation Partner</p>
                </li>
                <li className="border-b border-gray-200 dark:border-gray-700 pb-2">
                  <p className="text-black dark:text-white font-medium">The Johnson Family</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Heritage Guardian</p>
                </li>
                <li className="border-b border-gray-200 dark:border-gray-700 pb-2">
                  <p className="text-black dark:text-white font-medium">Brunswick Community Foundation</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Legacy Benefactor</p>
                </li>
                <li className="border-b border-gray-200 dark:border-gray-700 pb-2">
                  <p className="text-black dark:text-white font-medium">Coastal Funeral Services</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Community Partner</p>
                </li>
                <li>
                  <p className="text-black dark:text-white font-medium">And 47 individual donors</p>
                  <p className="text-sm text-gray-500 dark:text-gray-400">Friends of Northwood</p>
                </li>
              </ul>
            </div>
            
            <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
              <h2 className="text-xl font-semibold text-black dark:text-white mb-4">Contact Us</h2>
              
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                For questions about donations or our fundraising programs:
              </p>
              
              <div className="space-y-2 mb-4">
                <p className="text-gray-600 dark:text-gray-300">
                  <span className="font-medium text-black dark:text-white">Email:</span> donations@northwoodcemetery.org
                </p>
                <p className="text-gray-600 dark:text-gray-300">
                  <span className="font-medium text-black dark:text-white">Phone:</span> (910) 555-1234 ext. 3
                </p>
              </div>
              
              <p className="text-sm text-gray-500 dark:text-gray-400">
                Northwood Cemetery is a 501(c)(3) non-profit organization. All donations are tax-deductible to the extent allowed by law.
              </p>
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
