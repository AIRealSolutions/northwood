-- ============================================================
-- Migration: Add family tree back-reference columns to plot_connections
-- Run this in your Supabase SQL Editor
-- ============================================================

-- Add back-reference to the living member's family_tree_node
ALTER TABLE plot_connections
  ADD COLUMN IF NOT EXISTS family_tree_node_id UUID REFERENCES family_tree_nodes(id) ON DELETE SET NULL;

-- Add back-reference to the family_tree_relationship edge
ALTER TABLE plot_connections
  ADD COLUMN IF NOT EXISTS family_tree_relationship_id UUID REFERENCES family_tree_relationships(id) ON DELETE SET NULL;

-- Index for fast lookups
CREATE INDEX IF NOT EXISTS idx_plot_connections_family_tree_node_id
  ON plot_connections(family_tree_node_id);

CREATE INDEX IF NOT EXISTS idx_plot_connections_family_tree_relationship_id
  ON plot_connections(family_tree_relationship_id);
