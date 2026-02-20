import { NextRequest, NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

export async function POST(request: NextRequest) {
  const body = await request.json();
  const {
    request_type,
    deceased_id,
    plot_id,
    submitted_by_name,
    submitted_by_email,
    submitted_by_phone,
    relationship_to_deceased,
    subject,
    details,
    requested_changes,
    media_file_name,
  } = body;

  if (!submitted_by_name || !submitted_by_email || !subject || !details || !request_type) {
    return NextResponse.json({ error: 'Name, email, subject, details, and request type are required' }, { status: 400 });
  }

  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('change_requests')
    .insert({
      request_type,
      deceased_id: deceased_id || null,
      plot_id: plot_id || null,
      submitted_by_name,
      submitted_by_email,
      submitted_by_phone,
      relationship_to_deceased,
      subject,
      details,
      requested_changes: requested_changes || null,
      media_file_name: media_file_name || null,
    })
    .select('id')
    .single();

  if (error) return NextResponse.json({ error: error.message }, { status: 500 });
  return NextResponse.json({ success: true, id: data.id }, { status: 201 });
}
