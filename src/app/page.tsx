import Link from "next/link";
import Navigation from "@/components/Navigation";
import CommunityFamilyTreeFeed from "@/components/CommunityFamilyTreeFeed";

export default function Home() {
  return (
    <div className="flex min-h-screen items-center justify-center bg-zinc-50 font-sans dark:bg-black">
      <main className="flex min-h-screen w-full max-w-5xl flex-col items-center justify-between py-16 px-8 bg-white dark:bg-black sm:items-start">
        <Navigation />

        <div className="flex flex-col items-center gap-6 text-center sm:items-start sm:text-left my-12">
          <h2 className="max-w-2xl text-4xl font-semibold leading-10 tracking-tight text-black dark:text-zinc-50">
            Northwood Cemetery
          </h2>
          <p className="max-w-2xl text-lg leading-8 text-zinc-600 dark:text-zinc-400">
            Serving Southport, NC — interactive cemetery maps, burial records, community family tree,
            and burial arrangement services managed by the Cemetery Committee.
          </p>
        </div>

        {/* Cemetery Committee — featured banner */}
        <Link
          href="/cemetery-committee"
          className="w-full mb-6 group block rounded-xl border-2 border-emerald-300 dark:border-emerald-700 bg-gradient-to-r from-emerald-50 to-green-50 dark:from-emerald-950 dark:to-green-950 p-6 hover:border-emerald-500 hover:shadow-md transition-all"
        >
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <div>
              <div className="flex items-center gap-2 mb-1">
                <span className="inline-block w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
                <span className="text-xs font-semibold uppercase tracking-wide text-emerald-600 dark:text-emerald-400">
                  Community
                </span>
              </div>
              <h3 className="text-xl font-bold text-emerald-900 dark:text-emerald-100">
                Cemetery Committee Portal
                <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-2">→</span>
              </h3>
              <p className="text-emerald-700 dark:text-emerald-300 text-sm mt-1">
                View meeting schedules, published minutes, committee members, and submit agenda items or corrections.
              </p>
            </div>
            <div className="flex-shrink-0">
              <span className="inline-block px-4 py-2 bg-emerald-600 text-white text-sm font-semibold rounded-lg group-hover:bg-emerald-700 transition-colors">
                Open Portal
              </span>
            </div>
          </div>
        </Link>

        {/* Main feature grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 w-full mb-10">
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
          <Link href="/family-tree" className="group p-6 border border-gray-200 rounded-lg hover:bg-gray-50 dark:border-gray-700 dark:hover:bg-gray-800 transition-colors">
            <h3 className="text-xl font-semibold text-black dark:text-zinc-50 mb-2">
              🌳 Family Tree
              <span className="inline-block transition-transform group-hover:translate-x-1 motion-reduce:transform-none ml-1">→</span>
            </h3>
            <p className="text-zinc-600 dark:text-zinc-400">Explore the community family tree and add your connections.</p>
          </Link>
        </div>

        {/* Community Family Tree News Feed */}
        <div className="w-full mb-10">
          <CommunityFamilyTreeFeed />
        </div>

        <div className="mt-8 text-center w-full text-sm text-zinc-500 dark:text-zinc-400">
          <p>Northwood Cemetery — Southport, NC</p>
        </div>
      </main>
    </div>
  );
}
