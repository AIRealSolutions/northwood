import { createClient, SupabaseClient } from '@supabase/supabase-js';

// Get environment variables with fallbacks for build time
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || '';

// Create client only if we have valid credentials
let supabase: SupabaseClient | null = null;

if (supabaseUrl && supabaseAnonKey) {
  supabase = createClient(supabaseUrl, supabaseAnonKey);
}

// Helper to get supabase client (throws if not available)
const getSupabase = (): SupabaseClient => {
  if (!supabase) {
    throw new Error('Supabase client not initialized. Check environment variables.');
  }
  return supabase;
};

// Helper to get a service-role supabase client that bypasses RLS.
// ONLY use this in server-side API routes (never in client components).
const getServiceSupabase = (): SupabaseClient => {
  if (!supabaseUrl) {
    throw new Error('NEXT_PUBLIC_SUPABASE_URL is not set.');
  }
  // Fall back to anon key if service key is not configured (dev environments)
  const key = supabaseServiceKey || supabaseAnonKey;
  if (!key) {
    throw new Error('No Supabase key available. Check SUPABASE_SERVICE_ROLE_KEY or NEXT_PUBLIC_SUPABASE_ANON_KEY.');
  }
  return createClient(supabaseUrl, key, {
    auth: { persistSession: false, autoRefreshToken: false },
  });
};

// TypeScript types for database tables
export interface Plot {
  id: string;
  plot_number: string;
  section: string;
  row_number: number;
  plot_position: number;
  plot_type: 'standard' | 'cremation' | 'hybrid';
  status: 'available' | 'reserved' | 'occupied';
  size_width?: number;
  size_length?: number;
  price?: number;
  owner_name?: string;
  owner_contact?: string;
  purchase_date?: string;
  notes?: string;
  created_at: string;
  updated_at: string;
}

export interface DeceasedRecord {
  id: string;
  plot_id?: string;
  first_name: string;
  middle_name?: string;
  last_name: string;
  maiden_name?: string;
  birth_date?: string;
  death_date?: string;
  burial_date?: string;
  age_at_death?: number;
  gender?: string;
  veteran_status?: boolean;
  military_branch?: string;
  obituary?: string;
  epitaph?: string;
  next_of_kin?: string;
  funeral_home?: string;
  burial_permit_number?: string;
  death_certificate_number?: string;
  notes?: string;
  created_at: string;
  updated_at: string;
}

export interface MapCoordinate {
  id: string;
  plot_id: string;
  x_coordinate: number;
  y_coordinate: number;
  width: number;
  height: number;
  rotation: number;
  created_at: string;
  updated_at: string;
}

export interface PlotWithDetails extends Plot {
  deceased_records?: DeceasedRecord[];
  map_coordinates?: MapCoordinate;
}

export interface DeceasedWithPlot extends DeceasedRecord {
  plots?: Plot;
}

// Database query functions
export const plotsAPI = {
  // Get plots by section (optimized - don't load all 5000+ at once)
  async getPlotsBySection(section: string): Promise<PlotWithDetails[]> {
    const { data, error } = await getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*)
      `)
      .eq('section', section.toUpperCase())
      .order('row_number')
      .order('plot_position');
    
    if (error) throw error;
    return data as PlotWithDetails[];
  },

  // Get plot by ID
  async getPlotById(id: string): Promise<PlotWithDetails | null> {
    const { data, error } = await getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*)
      `)
      .eq('id', id)
      .single();
    
    if (error) throw error;
    return data as PlotWithDetails;
  },

  // Search plots by plot number
  async searchByPlotNumber(plotNumber: string): Promise<PlotWithDetails[]> {
    const { data, error } = await getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*)
      `)
      .ilike('plot_number', `%${plotNumber}%`)
      .limit(100);
    
    if (error) throw error;
    return data as PlotWithDetails[];
  },

  // Get section summary (counts by status)
  async getSectionSummary(): Promise<any[]> {
    const { data, error } = await getSupabase()
      .from('plots')
      .select('section, status')
      .order('section');
    
    if (error) throw error;
    
    // Aggregate counts
    const summary: Record<string, { available: number; reserved: number; occupied: number; total: number }> = {};
    
    data.forEach((plot: any) => {
      if (!summary[plot.section]) {
        summary[plot.section] = { available: 0, reserved: 0, occupied: 0, total: 0 };
      }
      summary[plot.section][plot.status as 'available' | 'reserved' | 'occupied']++;
      summary[plot.section].total++;
    });
    
    return Object.entries(summary).map(([section, counts]) => ({
      section,
      ...counts
    }));
  },

  // Search plots by name, plot number, or row
  async searchPlots(searchQuery: string): Promise<PlotWithDetails[]> {
    // Search by plot number first
    const { data: plotData, error: plotError } = await getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*)
      `)
      .ilike('plot_number', `%${searchQuery}%`)
      .limit(50);
    
    if (plotError) throw plotError;
    
    // Also search by deceased name
    const { data: deceasedData, error: deceasedError } = await getSupabase()
      .from('deceased_records')
      .select(`
        *,
        plots(*)
      `)
      .or(`first_name.ilike.%${searchQuery}%,last_name.ilike.%${searchQuery}%,maiden_name.ilike.%${searchQuery}%`)
      .limit(50);
    
    if (deceasedError) throw deceasedError;
    
    // Combine results - convert deceased results to plot format
    const plotResults = plotData as PlotWithDetails[];
    const deceasedPlots = (deceasedData || []).map((d: any) => ({
      ...d.plots,
      deceased_records: [d]
    })).filter((p: any) => p.id) as PlotWithDetails[];
    
    // Merge and deduplicate by plot ID
    const allPlots = [...plotResults];
    deceasedPlots.forEach(dp => {
      if (!allPlots.find(p => p.id === dp.id)) {
        allPlots.push(dp);
      }
    });
    
    return allPlots;
  },

  // Get plots with pagination
  async getPlotsWithPagination(
    section: string | null, 
    page: number = 1, 
    pageSize: number = 50
  ): Promise<{ data: PlotWithDetails[]; count: number }> {
    let query = getSupabase()
      .from('plots')
      .select(`
        *,
        deceased_records(*)
      `, { count: 'exact' });
    
    if (section && section !== 'all') {
      query = query.eq('section', section.toUpperCase());
    }
    
    const from = (page - 1) * pageSize;
    const to = from + pageSize - 1;
    
    const { data, error, count } = await query
      .order('section')
      .order('row_number')
      .order('plot_position')
      .range(from, to);
    
    if (error) throw error;
    return { data: data as PlotWithDetails[], count: count || 0 };
  }
};

export const deceasedAPI = {
  // Get deceased records with pagination
  async getRecordsWithPagination(
    page: number = 1,
    pageSize: number = 25,
    searchTerm?: string,
    section?: string
  ): Promise<{ data: DeceasedWithPlot[]; count: number }> {
    let query = getSupabase()
      .from('deceased_records')
      .select(`
        *,
        plots(*)
      `, { count: 'exact' });
    
    // Apply search filter
    if (searchTerm && searchTerm.trim()) {
      query = query.or(`first_name.ilike.%${searchTerm}%,last_name.ilike.%${searchTerm}%,maiden_name.ilike.%${searchTerm}%`);
    }
    
    const from = (page - 1) * pageSize;
    const to = from + pageSize - 1;
    
    const { data, error, count } = await query
      .order('last_name')
      .order('first_name')
      .range(from, to);
    
    if (error) throw error;
    
    // Filter by section if specified (done client-side since it's a join)
    let filteredData = data as DeceasedWithPlot[];
    if (section && section !== 'all') {
      filteredData = filteredData.filter(r => 
        r.plots?.section?.toLowerCase() === section.toLowerCase()
      );
    }
    
    return { data: filteredData, count: count || 0 };
  },

  // Search deceased records by name
  async searchByName(searchTerm: string, limit: number = 100): Promise<DeceasedWithPlot[]> {
    const { data, error } = await getSupabase()
      .from('deceased_records')
      .select(`
        *,
        plots(*)
      `)
      .or(`first_name.ilike.%${searchTerm}%,last_name.ilike.%${searchTerm}%,maiden_name.ilike.%${searchTerm}%`)
      .order('last_name')
      .order('first_name')
      .limit(limit);
    
    if (error) throw error;
    return data as DeceasedWithPlot[];
  },

  // Get deceased records by section
  async getRecordsBySection(section: string): Promise<DeceasedWithPlot[]> {
    const { data, error } = await getSupabase()
      .from('deceased_records')
      .select(`
        *,
        plots!inner(*)
      `)
      .eq('plots.section', section.toUpperCase())
      .order('last_name')
      .order('first_name');
    
    if (error) throw error;
    return data as DeceasedWithPlot[];
  },

  // Filter by date range
  async filterByDateRange(startDate: string, endDate: string): Promise<DeceasedWithPlot[]> {
    const { data, error } = await getSupabase()
      .from('deceased_records')
      .select(`
        *,
        plots(*)
      `)
      .gte('death_date', startDate)
      .lte('death_date', endDate)
      .order('death_date', { ascending: false })
      .limit(500);
    
    if (error) throw error;
    return data as DeceasedWithPlot[];
  },

  // Get total counts - using RPC or multiple queries to handle large datasets
  async getTotalCounts(): Promise<{ total: number; bySection: Record<string, number> }> {
    // Get total count
    const { count: totalCount, error: countError } = await getSupabase()
      .from('deceased_records')
      .select('id', { count: 'exact', head: true });
    
    if (countError) throw countError;
    
    // Get counts by section using a more efficient approach
    // Query each section separately to avoid the 1000 row limit
    const sections = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
    const bySection: Record<string, number> = {};
    
    for (const section of sections) {
      const { count, error } = await getSupabase()
        .from('deceased_records')
        .select('id, plots!inner(section)', { count: 'exact', head: true })
        .eq('plots.section', section);
      
      if (error) {
        console.error(`Error counting section ${section}:`, error);
        bySection[section] = 0;
      } else {
        bySection[section] = count || 0;
      }
    }
    
    return { total: totalCount || 0, bySection };
  }
};

// Export the supabase client and helpers for direct use if needed
export { supabase, getSupabase, getServiceSupabase };
