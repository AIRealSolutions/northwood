import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
    <div className="flex min-h-screen items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <main className="flex min-h-screen w-full max-w-5xl flex-col items-center justify-between py-16 px-8 bg-white dark:bg-black sm:items-start">
        <div className="w-full flex justify-between items-center">
          <h1 className="text-3xl font-bold text-black dark:text-zinc-50">Northwood Cemetery</h1>
          <Image
            className="dark:invert"
            src="/vercel.svg"
            alt="Vercel logo"
            width={100}
            height={20}
            priority
          />
        </div>
        
        <div className="flex flex-col items-center gap-6 text-center sm:items-start sm:text-left my-12">
          <h2 className="max-w-2xl text-4xl font-semibold leading-10 tracking-tight text-black dark:text-zinc-50">
            Cemetery Management System
          </h2>
          <p className="max-w-2xl text-lg leading-8 text-zinc-600 dark:text-zinc-400">
            Welcome to the Northwood Cemetery Management System for Southport, NC. 
            This platform provides interactive cemetery maps, record management, 
            burial arrangement services, and fundraising options for perpetual care.
          </p>
        </div>
        
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 w-full">
          <Link href="/cemetery-map" className="group p-6 border border-gray-200 rounded-lg hover:bg-gray-50 dark:border-gray-700 dark:hover:bg-gray-800 transition-colors">
            <h3 className="text-xl font-semibold text-black dark:text-zinc-50 mb-2">
              Cemetery Map
              <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-1">→</span>
            </h3>
            <p className="text-zinc-600 dark:text-zinc-400">Interactive map of cemetery plots and sections.</p>
          </Link>
          
          <Link href="/records" className="group p-6 border border-gray-200 rounded-lg hover:bg-gray-50 dark:border-gray-700 dark:hover:bg-gray-800 transition-colors">
            <h3 className="text-xl font-semibold text-black dark:text-zinc-50 mb-2">
              Records
              <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-1">→</span>
            </h3>
            <p className="text-zinc-600 dark:text-zinc-400">Search cemetery records and find information.</p>
          </Link>
          
          <Link href="/burial-services" className="group p-6 border border-gray-200 rounded-lg hover:bg-gray-50 dark:border-gray-700 dark:hover:bg-gray-800 transition-colors">
            <h3 className="text-xl font-semibold text-black dark:text-zinc-50 mb-2">
              Burial Services
              <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-1">→</span>
            </h3>
            <p className="text-zinc-600 dark:text-zinc-400">Arrange burial services for loved ones.</p>
          </Link>
          
          <Link href="/fundraising" className="group p-6 border border-gray-200 rounded-lg hover:bg-gray-50 dark:border-gray-700 dark:hover:bg-gray-800 transition-colors">
            <h3 className="text-xl font-semibold text-black dark:text-zinc-50 mb-2">
              Fundraising
              <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-1">→</span>
            </h3>
            <p className="text-zinc-600 dark:text-zinc-400">Support perpetual care and cemetery maintenance.</p>
          </Link>
        </div>
        
        <div className="mt-16 text-center w-full text-sm text-zinc-500 dark:text-zinc-400">
          <p>Northwood Cemetery - Southport, NC</p>
        </div>
      </main>
    </div>
  );
}
