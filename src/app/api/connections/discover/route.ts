import { NextRequest, NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth';
import { getServiceSupabase as getSupabase } from '@/lib/supabase';
import { getRelationship } from '@/lib/relationships';

/**
 * GET /api/connections/discover
 *
 * Finds people the current user may be related to through shared cemetery
 * connections in the community family tree.
 *
 * Algorithm:
 * 1. Find all deceased records the current user is connected to (approved).
 * 2. Find all OTHER users who are also connected to those same deceased records.
 * 3. Compute the inferred relationship path between the current user and each
 *    discovered person via the shared occupant.
 * 4. Return ranked results with relationship context and plot links.
 *
 * Query params:
 *   limit  = max results (default 20, max 50)
 *   page   = 1-indexed page (default 1)
 */
export async function GET(request: NextRequest) {
  const session = await getServerSession(authOptions);
  if (!session?.user?.id) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const { searchParams } = new URL(request.url);
  const limit = Math.min(50, Math.max(1, parseInt(searchParams.get('limit') || '20', 10)));
  const page  = Math.max(1, parseInt(searchParams.get('page') || '1', 10));

  try {
    const supabase = getSupabase();
    const userId = session.user.id;

    // ── Step 1: Get all approved connections for the current user ──────────────
    const { data: myConnections, error: myErr } = await supabase
      .from('plot_connections')
      .select('id, plot_id, deceased_id, member_relationship, occupant_relationship, relationship_category')
      .eq('user_id', userId)
      .eq('status', 'approved');

    if (myErr) throw myErr;
    if (!myConnections || myConnections.length === 0) {
      return NextResponse.json({ discoveries: [], total: 0, page, limit, has_more: false });
    }

    // Collect all plot_ids and deceased_ids the user is connected to
    const myPlotIds    = [...new Set(myConnections.map((c: any) => c.plot_id).filter(Boolean))];
    const myDeceasedIds = [...new Set(myConnections.map((c: any) => c.deceased_id).filter(Boolean))];

    // Build a quick lookup: deceased_id → my connection details
    const myConnByDeceased: Record<string, any> = {};
    const myConnByPlot: Record<string, any> = {};
    for (const c of myConnections) {
      if (c.deceased_id) myConnByDeceased[c.deceased_id] = c;
      if (c.plot_id)    myConnByPlot[c.plot_id] = c;
    }

    // ── Step 2: Find other users connected to the same plots / deceased records ─
    const { data: sharedConnections, error: sharedErr } = await supabase
      .from('plot_connections')
      .select(`
        id, user_id, plot_id, deceased_id,
        member_relationship, occupant_relationship, relationship_category,
        created_at
      `)
      .neq('user_id', userId)
      .eq('status', 'approved')
      .in('plot_id', myPlotIds);

    if (sharedErr) throw sharedErr;

    if (!sharedConnections || sharedConnections.length === 0) {
      return NextResponse.json({ discoveries: [], total: 0, page, limit, has_more: false });
    }

    // ── Step 3: Enrich with user names ─────────────────────────────────────────
    const otherUserIds = [...new Set((sharedConnections as any[]).map((c: any) => c.user_id).filter(Boolean))];
    const { data: otherUsers } = await supabase
      .from('users')
      .select('id, first_name, last_name')
      .in('id', otherUserIds);

    const userMap: Record<string, { first_name: string | null; last_name: string | null }> = {};
    (otherUsers || []).forEach((u: any) => { userMap[u.id] = u; });

    // ── Step 4: Enrich with deceased record names ──────────────────────────────
    const allDeceasedIds = [...new Set((sharedConnections as any[]).map((c: any) => c.deceased_id).filter(Boolean))];
    const { data: deceasedRecords } = await supabase
      .from('deceased_records')
      .select('id, first_name, last_name, plot_id')
      .in('id', allDeceasedIds.length > 0 ? allDeceasedIds : ['00000000-0000-0000-0000-000000000000']);

    const deceasedMap: Record<string, any> = {};
    (deceasedRecords || []).forEach((d: any) => { deceasedMap[d.id] = d; });

    // Also fetch plot numbers for all relevant plots
    const allPlotIds = [...new Set([
      ...myPlotIds,
      ...(sharedConnections as any[]).map((c: any) => c.plot_id).filter(Boolean),
    ])];
    const { data: plots } = await supabase
      .from('plots')
      .select('id, plot_number, section')
      .in('id', allPlotIds);

    const plotMap: Record<string, { plot_number: string; section: string }> = {};
    (plots || []).forEach((p: any) => { plotMap[p.id] = p; });

    // ── Step 5: Build discovery items ─────────────────────────────────────────
    // Group by other user so we show one card per person (with all shared links)
    const byUser: Record<string, {
      user_id: string;
      first_name: string | null;
      last_name: string | null;
      shared: Array<{
        plot_id: string;
        plot_number: string;
        section: string;
        deceased_id: string | null;
        deceased_name: string | null;
        their_relationship: string;   // what they are to the occupant
        my_relationship: string;      // what I am to the occupant
        inferred_connection: string;  // how we're likely related
      }>;
      latest_connection_at: string;
    }> = {};

    for (const sc of sharedConnections as any[]) {
      const uid = sc.user_id;
      if (!uid) continue;

      const user = userMap[uid];
      if (!byUser[uid]) {
        byUser[uid] = {
          user_id: uid,
          first_name: user?.first_name || null,
          last_name: user?.last_name || null,
          shared: [],
          latest_connection_at: sc.created_at,
        };
      }

      // Update latest timestamp
      if (new Date(sc.created_at) > new Date(byUser[uid].latest_connection_at)) {
        byUser[uid].latest_connection_at = sc.created_at;
      }

      const deceased = sc.deceased_id ? deceasedMap[sc.deceased_id] : null;
      const plotId = sc.plot_id || (deceased?.plot_id);
      const plot = plotId ? plotMap[plotId] : null;

      // My connection to this same plot/deceased
      const myConn = sc.deceased_id
        ? myConnByDeceased[sc.deceased_id]
        : (plotId ? myConnByPlot[plotId] : null);

      const theirRelDef = sc.member_relationship ? getRelationship(sc.member_relationship) : null;
      const myRelDef    = myConn?.member_relationship ? getRelationship(myConn.member_relationship) : null;

      const theirRel = theirRelDef ? theirRelDef.label.replace(' (specify in notes)', '') : (sc.member_relationship || 'Family member');
      const myRel    = myRelDef    ? myRelDef.label.replace(' (specify in notes)', '')    : (myConn?.member_relationship || 'Family member');

      // Infer how we're related based on both relationships to the shared occupant
      const inferred = inferRelationship(myConn?.member_relationship, sc.member_relationship);

      byUser[uid].shared.push({
        plot_id: plotId || sc.plot_id,
        plot_number: plot?.plot_number || 'Unknown',
        section: plot?.section || '',
        deceased_id: sc.deceased_id || null,
        deceased_name: deceased ? `${deceased.first_name} ${deceased.last_name}` : null,
        their_relationship: theirRel,
        my_relationship: myRel,
        inferred_connection: inferred,
      });
    }

    // ── Step 6: Sort and paginate ──────────────────────────────────────────────
    const discoveries = Object.values(byUser)
      .sort((a, b) => new Date(b.latest_connection_at).getTime() - new Date(a.latest_connection_at).getTime());

    const total = discoveries.length;
    const offset = (page - 1) * limit;
    const pageItems = discoveries.slice(offset, offset + limit);
    const hasMore = offset + limit < total;

    return NextResponse.json({
      discoveries: pageItems,
      total,
      page,
      limit,
      has_more: hasMore,
    });

  } catch (error: any) {
    console.error('Discovery GET error:', error);
    return NextResponse.json({ error: error.message || 'Failed to fetch discoveries' }, { status: 500 });
  }
}

/**
 * Infer the likely relationship between two people who share a common ancestor/relative.
 * Both myRel and theirRel describe what each person is to the SAME occupant.
 *
 * Examples:
 *   I am "grandchild", they are "grandchild"  → likely cousins
 *   I am "grandchild", they are "child"        → likely parent/child or aunt/uncle
 *   I am "child",      they are "child"        → likely siblings
 *   I am "grandchild", they are "great_grandchild" → likely first cousin once removed
 */
function inferRelationship(myRel: string | null | undefined, theirRel: string | null | undefined): string {
  if (!myRel || !theirRel) return 'Possible relative';

  const myDef    = getRelationship(myRel);
  const theirDef = getRelationship(theirRel);

  const myGen    = myDef?.generation    ?? 0;
  const theirGen = theirDef?.generation ?? 0;

  // Both are descendants of the occupant (negative generation = child/grandchild)
  if (myGen <= 0 && theirGen <= 0) {
    const diff = Math.abs(myGen - theirGen);
    if (diff === 0) {
      if (myGen === -1) return 'Possible sibling';
      if (myGen === -2) return 'Possible first cousin';
      if (myGen === -3) return 'Possible second cousin';
      return 'Possible distant cousin';
    }
    if (diff === 1) {
      if (Math.min(myGen, theirGen) === -1) return 'Possible aunt/uncle or niece/nephew';
      return 'Possible first cousin once removed';
    }
    if (diff === 2) return 'Possible first cousin twice removed';
    return 'Possible distant relative';
  }

  // One is an ancestor, the other a descendant — through the occupant
  if (myGen > 0 && theirGen < 0) return 'Possible distant relative through shared ancestor';
  if (myGen < 0 && theirGen > 0) return 'Possible distant relative through shared ancestor';

  // Both are ancestors
  if (myGen > 0 && theirGen > 0) return 'Possible relatives through shared family line';

  // Same generation, same side
  if (myGen === theirGen && myGen === 0) return 'Possible in-law or step-relative';

  return 'Possible relative';
}
