import { NextRequest, NextResponse } from 'next/server';
import { getServiceSupabase } from '@/lib/supabase';

// GET: Fetch Community Family Tree activity for the homepage news feed
// Query params:
//   page    = page number, 1-indexed (default: 1)
//   limit   = items per page (default: 10)
//   all_time = "true" to bypass today-only filter (default: false — today only)
export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const page = Math.max(1, parseInt(searchParams.get('page') || '1', 10));
    const limit = Math.min(50, Math.max(1, parseInt(searchParams.get('limit') || '10', 10)));
    const allTime = searchParams.get('all_time') === 'true';

    const supabase = getServiceSupabase();

    // Build the start-of-today timestamp in UTC
    const todayStart = new Date();
    todayStart.setUTCHours(0, 0, 0, 0);
    const todayStartISO = todayStart.toISOString();

    // Fetch more than we need so we can merge, sort, and paginate correctly
    const fetchLimit = (page * limit) + limit;

    // ── Nodes ──────────────────────────────────────────────────────────────────
    let nodesQuery = supabase
      .from('family_tree_nodes')
      .select('id, first_name, middle_name, last_name, maiden_name, birth_year, death_year, is_living, gender, deceased_id, submitted_by_name, created_at')
      .eq('status', 'approved')
      .order('created_at', { ascending: false })
      .limit(fetchLimit);

    if (!allTime) {
      nodesQuery = nodesQuery.gte('created_at', todayStartISO);
    }

    const { data: recentNodes, error: nodesError } = await nodesQuery;
    if (nodesError) throw nodesError;

    // ── Relationships ──────────────────────────────────────────────────────────
    let relQuery = supabase
      .from('family_tree_relationships')
      .select('id, person_a_id, person_b_id, relationship_type, inverse_type, submitted_by_name, created_at')
      .eq('status', 'approved')
      .order('created_at', { ascending: false })
      .limit(fetchLimit);

    if (!allTime) {
      relQuery = relQuery.gte('created_at', todayStartISO);
    }

    const { data: recentRels, error: relError } = await relQuery;
    if (relError) throw relError;

    // ── Resolve person names for relationships ─────────────────────────────────
    const personIds = new Set<string>();
    (recentRels || []).forEach((r: any) => {
      personIds.add(r.person_a_id);
      personIds.add(r.person_b_id);
    });

    let personMap: Record<string, any> = {};
    if (personIds.size > 0) {
      const { data: persons } = await supabase
        .from('family_tree_nodes')
        .select('id, first_name, last_name, deceased_id')
        .in('id', Array.from(personIds));
      (persons || []).forEach((p: any) => { personMap[p.id] = p; });
    }

    // ── Resolve plot IDs for deceased records ──────────────────────────────────
    const deceasedIds = [
      ...(recentNodes || []).filter((n: any) => n.deceased_id).map((n: any) => n.deceased_id),
      ...Object.values(personMap).filter((p: any) => p.deceased_id).map((p: any) => p.deceased_id),
    ];

    let plotMap: Record<string, string> = {}; // deceased_id -> plot UUID
    if (deceasedIds.length > 0) {
      const { data: records } = await supabase
        .from('deceased_records')
        .select('id, plot_id')
        .in('id', deceasedIds);
      (records || []).forEach((r: any) => { plotMap[r.id] = r.plot_id; });
    }

    // ── Build feed items ───────────────────────────────────────────────────────
    const nodeItems = (recentNodes || []).map((node: any) => ({
      id: `node-${node.id}`,
      type: 'new_person',
      created_at: node.created_at,
      person_name: [node.first_name, node.middle_name, node.last_name].filter(Boolean).join(' '),
      maiden_name: node.maiden_name || null,
      birth_year: node.birth_year,
      death_year: node.death_year,
      is_living: node.is_living,
      submitted_by: node.submitted_by_name || 'A community member',
      deceased_id: node.deceased_id || null,
      plot_id: node.deceased_id ? (plotMap[node.deceased_id] || null) : null,
      family_tree_node_id: node.id,
    }));

    const relItems = (recentRels || []).map((rel: any) => {
      const personA = personMap[rel.person_a_id];
      const personB = personMap[rel.person_b_id];
      return {
        id: `rel-${rel.id}`,
        type: 'new_connection',
        created_at: rel.created_at,
        person_a_name: personA ? `${personA.first_name} ${personA.last_name}` : 'Unknown',
        person_b_name: personB ? `${personB.first_name} ${personB.last_name}` : 'Unknown',
        relationship_type: rel.relationship_type,
        inverse_type: rel.inverse_type || null,
        submitted_by: rel.submitted_by_name || 'A community member',
        person_a_deceased_id: personA?.deceased_id || null,
        person_b_deceased_id: personB?.deceased_id || null,
        person_a_plot_id: personA?.deceased_id ? (plotMap[personA.deceased_id] || null) : null,
        person_b_plot_id: personB?.deceased_id ? (plotMap[personB.deceased_id] || null) : null,
        family_tree_node_a_id: rel.person_a_id,
        family_tree_node_b_id: rel.person_b_id,
      };
    });

    // ── Merge, sort, paginate ──────────────────────────────────────────────────
    const allItems = [...nodeItems, ...relItems]
      .sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());

    const total = allItems.length;
    const offset = (page - 1) * limit;
    const pageItems = allItems.slice(offset, offset + limit);
    const hasMore = offset + limit < total;

    return NextResponse.json({
      items: pageItems,
      page,
      limit,
      total,
      has_more: hasMore,
      all_time: allTime,
      today_start: allTime ? null : todayStartISO,
    });
  } catch (error: any) {
    console.error('News feed GET error:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch news feed' }, { status: 500 });
  }
}
