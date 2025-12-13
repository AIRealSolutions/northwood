import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

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

// Database query functions
export const plotsAPI = {
  // Get all plots with their details
  async getAllPlots(): Promise<PlotWithDetails[]> {
    const { data, error } = await supabase
      .from('plots')
      .select(`
        *,
        deceased_records(*),
        map_coordinates(*)
      `)
      .order('section')
      .order('row_number')
      .order('plot_position');
    
    if (error) throw error;
    return data as PlotWithDetails[];
  },

  // Get plots by section
  async getPlotsBySection(section: string): Promise<PlotWithDetails[]> {
    const { data, error } = await supabase
      .from('plots')
      .select(`
        *,
        deceased_records(*),
        map_coordinates(*)
      `)
      .eq('section', section)
      .order('row_number')
      .order('plot_position');
    
    if (error) throw error;
    return data as PlotWithDetails[];
  },

  // Get plot by ID
  async getPlotById(id: string): Promise<PlotWithDetails | null> {
    const { data, error } = await supabase
      .from('plots')
      .select(`
        *,
        deceased_records(*),
        map_coordinates(*)
      `)
      .eq('id', id)
      .single();
    
    if (error) throw error;
    return data as PlotWithDetails;
  },

  // Search plots by plot number
  async searchByPlotNumber(plotNumber: string): Promise<PlotWithDetails[]> {
    const { data, error } = await supabase
      .from('plots')
      .select(`
        *,
        deceased_records(*),
        map_coordinates(*)
      `)
      .ilike('plot_number', `%${plotNumber}%`);
    
    if (error) throw error;
    return data as PlotWithDetails[];
  }
};

export const deceasedAPI = {
  // Get all deceased records
  async getAllRecords(): Promise<DeceasedRecord[]> {
    const { data, error } = await supabase
      .from('deceased_records')
      .select('*')
      .order('last_name')
      .order('first_name');
    
    if (error) throw error;
    return data;
  },

  // Search deceased records by name
  async searchByName(searchTerm: string): Promise<DeceasedRecord[]> {
    const { data, error } = await supabase
      .from('deceased_records')
      .select('*')
      .or(`first_name.ilike.%${searchTerm}%,last_name.ilike.%${searchTerm}%`)
      .order('last_name')
      .order('first_name');
    
    if (error) throw error;
    return data;
  },

  // Get deceased records with plot information
  async getRecordsWithPlots(): Promise<any[]> {
    const { data, error } = await supabase
      .from('deceased_records')
      .select(`
        *,
        plots(*)
      `)
      .order('last_name')
      .order('first_name');
    
    if (error) throw error;
    return data;
  },

  // Filter by date range
  async filterByDateRange(startDate: string, endDate: string): Promise<DeceasedRecord[]> {
    const { data, error } = await supabase
      .from('deceased_records')
      .select('*')
      .gte('death_date', startDate)
      .lte('death_date', endDate)
      .order('death_date', { ascending: false });
    
    if (error) throw error;
    return data;
  }
};
