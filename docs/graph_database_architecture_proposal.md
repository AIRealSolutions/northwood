# Graph Database Architecture Proposal

## The Core Idea

A **graph model** represents every person as a **node** and every relationship as a **directed edge** with a type label. This means family connections (parent, child, spouse) and social connections (close friend, neighbor, colleague, pastor) are all first-class citizens in the same data structure — no separate tables, no awkward joins.

```
[Joseph Spencer] ──── spouse ────► [Mary Spencer]
       │                                  │
    parent                             parent
       │                                  │
       ▼                                  ▼
 [Thomas Spencer] ◄──── friend ──── [William Hayes]
       │
   close friend
       │
       ▼
 [Rev. John Carter]
```

---

## Recommended Architecture

### Layer 1 — Data Store: PostgreSQL (Supabase) with Recursive CTEs

You do **not** need a separate graph database server. Your existing Supabase PostgreSQL can act as a graph database using two proven patterns:

| Approach | How it works | Best for |
|---|---|---|
| **Adjacency list + Recursive CTE** | Each row in `graph_edges` stores `(from_id, to_id, relationship_type)`. PostgreSQL's `WITH RECURSIVE` traverses any depth of connection in a single query. | Northwood's scale (hundreds to low thousands of people) |
| **Apache AGE extension** | Adds full openCypher query language (`MATCH (a)-[:FRIEND]->(b)`) on top of PostgreSQL | Needed only at millions of nodes |
| **Neo4j / dedicated graph DB** | Separate server, separate hosting, separate billing | Enterprise scale — overkill here |

**Recommendation: Adjacency list + Recursive CTE.** It runs entirely inside your existing Supabase project, costs nothing extra, and handles all the queries you need (find all relatives within 3 degrees, find shared connections between two people, etc.).

### Layer 2 — Unified Schema

Replace the current `family_tree_nodes` + `family_tree_relationships` + `plot_connections` tables with a single unified graph schema:

```sql
-- Every person (deceased or living)
CREATE TABLE graph_nodes (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  node_type     TEXT NOT NULL,  -- 'deceased' | 'living' | 'historical'
  deceased_id   UUID REFERENCES deceased_records(id),
  first_name    TEXT NOT NULL,
  last_name     TEXT NOT NULL,
  birth_year    INT,
  death_year    INT,
  is_living     BOOLEAN DEFAULT TRUE,
  gender        TEXT,
  status        TEXT DEFAULT 'pending'  -- pending | approved | rejected
);

-- Every relationship (family OR social)
CREATE TABLE graph_edges (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  from_node_id      UUID REFERENCES graph_nodes(id),
  to_node_id        UUID REFERENCES graph_nodes(id),
  relationship_type TEXT NOT NULL,   -- 'parent', 'spouse', 'friend', 'colleague', etc.
  relationship_category TEXT,        -- 'family' | 'social' | 'community'
  is_directed       BOOLEAN DEFAULT TRUE,
  notes             TEXT,
  status            TEXT DEFAULT 'pending'
);
```

A **Recursive CTE** then lets you query "all connections within N degrees of Joseph Spencer" in a single SQL call — family and friends alike.

### Layer 3 — Visualization: `react-force-graph-2d`

This is the key upgrade. Instead of the custom SVG layout (which struggles with non-hierarchical edges like friendships), use **`react-force-graph-2d`** — a physics-based force-directed graph renderer used by Neo4j's own browser tool.

| Feature | What it gives you |
|---|---|
| **Force-directed layout** | Nodes naturally cluster by how connected they are — family clusters together, friends orbit nearby |
| **Edge color by category** | Green lines = family, blue dashed = friend, purple = community/church |
| **Node color by type** | Dark green = deceased in cemetery, light blue = living family, grey = historical |
| **Click to expand** | Click any node to load their connections on demand |
| **Zoom / pan** | Built-in, smooth |
| **Degree highlighting** | Hover a node to highlight all their direct connections |

---

## What Gets Merged / Replaced

| Current | New |
|---|---|
| `plot_connections` table | Migrated into `graph_edges` with category = `'family'` |
| `family_tree_nodes` table | Migrated into `graph_nodes` |
| `family_tree_relationships` table | Migrated into `graph_edges` |
| Plot detail page "Connections" section | Replaced by an embedded mini-graph centered on that deceased person |
| `/family-tree` full-page SVG tree | Replaced by `react-force-graph-2d` canvas |

---

## Relationship Categories & Visual Encoding

| Category | Examples | Line style | Color |
|---|---|---|---|
| **Family — Blood** | parent, child, sibling, grandparent | Solid | Emerald green |
| **Family — Marriage** | spouse, in-law | Dashed | Pink |
| **Family — Step** | step-parent, step-child | Dotted | Teal |
| **Social — Friend** | close friend, childhood friend | Dashed | Blue |
| **Community** | pastor, neighbor, colleague, fellow veteran | Dotted | Purple |
| **Historical** | business partner, mentor | Thin solid | Grey |

---

## Migration Path

The migration is non-destructive — existing data is copied into the new schema, not deleted. The old tables can be kept as a backup until the new system is verified.

1. Run SQL migration to create `graph_nodes` and `graph_edges`
2. Migrate existing `plot_connections` → `graph_edges`
3. Migrate existing `family_tree_nodes` + `family_tree_relationships` → new tables
4. Update API routes to query the new schema
5. Replace the SVG tree with `react-force-graph-2d`
6. Embed a mini-graph on each plot detail page
