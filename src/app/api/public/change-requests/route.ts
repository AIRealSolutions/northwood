import { NextRequest, NextResponse } from 'next/server';
import { getSupabase } from '@/lib/supabase';

// Helper: safely coerce a value to a JSONB-compatible object or null
function toJsonb(value: unknown): Record<string, unknown> | null {
  if (value === null || value === undefined || value === '') return null;
  if (typeof value === 'object') return value as Record<string, unknown>;
  if (typeof value === 'string') {
    try {
      const parsed = JSON.parse(value);
      if (typeof parsed === 'object' && parsed !== null) return parsed;
      return { value: parsed };
    } catch {
      return { raw: value };
    }
  }
  return { value };
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();

    // Support both the public form field names and the direct API field names
    const request_type = body.request_type || 'occupant_details';
    const deceased_id = body.deceased_id || null;
    const plot_id = body.plot_id || null;

    // The public form sends name/email/phone/relationship
    const submitted_by_name = body.submitted_by_name || body.name || '';
    const submitted_by_email = body.submitted_by_email || body.email || '';
    const submitted_by_phone = body.submitted_by_phone || body.phone || null;
    const relationship_to_deceased = body.relationship_to_deceased || body.relationship || null;

    const subject = body.subject || '';
    const details = body.details || '';
    const media_file_name = body.media_file_name || null;

    // Build requested_changes JSONB from either explicit field or form fields
    let requested_changes: Record<string, unknown> | null = null;
    if (body.requested_changes) {
      requested_changes = toJsonb(body.requested_changes);
    } else if (body.plot_number || body.occupant_name) {
      // Map the public form's plot_number and occupant_name into JSONB
      requested_changes = {};
      if (body.plot_number) requested_changes.plot_number = body.plot_number;
      if (body.occupant_name) requested_changes.occupant_name = body.occupant_name;
    }

    if (!submitted_by_name || !submitted_by_email || !subject || !details || !request_type) {
      return NextResponse.json(
        { error: 'Name, email, subject, details, and request type are required' },
        { status: 400 }
      );
    }

    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('change_requests')
      .insert({
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
      })
      .select('id')
      .single();

    if (error) {
      console.error('Error inserting change request:', error);
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ success: true, id: data.id }, { status: 201 });
  } catch (err: any) {
    console.error('Unexpected error in change-requests POST:', err);
    return NextResponse.json({ error: err.message || 'Failed to submit request' }, { status: 500 });
  }
}
