import { createClient } from '@supabase/supabase-js';

// Replace these with your actual Supabase URL and anon key
const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://your-project-id.supabase.co';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'your-anon-key';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Cemetery section functions
export async function fetchCemeterySections() {
  const { data, error } = await supabase
    .from('cemetery_sections')
    .select('*')
    .order('section_id');
  
  if (error) {
    console.error('Error fetching cemetery sections:', error);
    throw error;
  }
  
  return data;
}

// Plot functions
export async function fetchPlotsBySection(sectionId) {
  const { data, error } = await supabase
    .from('plots')
    .select(`
      *,
      plot_assignments (
        owner_id,
        deceased_id,
        owners (first_name, last_name),
        deceased (first_name, last_name, birth_date, death_date)
      )
    `)
    .eq('section_id', sectionId);
  
  if (error) {
    console.error(`Error fetching plots for section ${sectionId}:`, error);
    throw error;
  }
  
  return data;
}

// Search functions
export async function searchPlots(searchTerm) {
  const { data, error } = await supabase
    .rpc('search_cemetery_records', {
      p_search_term: searchTerm
    });
  
  if (error) {
    console.error('Error searching plots:', error);
    throw error;
  }
  
  return data;
}

// Cremation plot functions
export async function fetchCremationPlots(sectionId) {
  const { data, error } = await supabase
    .from('plots')
    .select(`
      *,
      plot_assignments (
        owner_id,
        deceased_id,
        owners (first_name, last_name),
        deceased (first_name, last_name, birth_date, death_date)
      )
    `)
    .eq('section_id', sectionId)
    .or('plot_type.eq.cremation,status.eq.cremation');
  
  if (error) {
    console.error(`Error fetching cremation plots for section ${sectionId}:`, error);
    throw error;
  }
  
  return data;
}

// Admin functions
export async function updatePlotStatus(plotId, status) {
  const { data, error } = await supabase
    .from('plots')
    .update({ status })
    .eq('plot_id', plotId)
    .select();
  
  if (error) {
    console.error(`Error updating plot ${plotId} status:`, error);
    throw error;
  }
  
  return data[0];
}

export async function convertToCreation(plotId) {
  const { data, error } = await supabase
    .rpc('convert_to_cremation', {
      p_plot_id: plotId
    });
  
  if (error) {
    console.error(`Error converting plot ${plotId} to cremation:`, error);
    throw error;
  }
  
  return data;
}

export async function revertToStandard(plotId) {
  const { data, error } = await supabase
    .rpc('revert_to_standard', {
      p_plot_id: plotId
    });
  
  if (error) {
    console.error(`Error reverting plot ${plotId} to standard:`, error);
    throw error;
  }
  
  return data;
}
