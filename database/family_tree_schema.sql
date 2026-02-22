-- ============================================================
-- Northwood Cemetery — Family Tree Schema
-- Run this in your Supabase SQL Editor
-- ============================================================

-- ============================================================
-- TABLE: family_tree_nodes
-- Represents a person in the family tree.
-- A node can be either:
--   • A deceased record already in the system (deceased_id set)
--   • A living person submitted by the public (deceased_id NULL)
-- ============================================================
CREATE TABLE IF NOT EXISTS family_tree_nodes (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- Link to an existing deceased record (optional)
  deceased_id     UUID REFERENCES deceased_records(id) ON DELETE CASCADE,
  -- For living people or deceased not yet in the system
  first_name      VARCHAR(100) NOT NULL,
  middle_name     VARCHAR(100),
  last_name       VARCHAR(100) NOT NULL,
  maiden_name     VARCHAR(100),
  birth_year      INTEGER,
  death_year      INTEGER,
  is_living       BOOLEAN DEFAULT TRUE,
  gender          VARCHAR(20),  -- 'male', 'female', 'other', 'unknown'
  -- Submitter info (for moderation)
  submitted_by_user_id  UUID REFERENCES users(id) ON DELETE SET NULL,
  submitted_by_name     VARCHAR(255),  -- for anonymous/guest submissions
  submitted_by_email    VARCHAR(255),  -- for anonymous/guest submissions
  -- Moderation
  status          VARCHAR(20) NOT NULL DEFAULT 'pending'
                  CHECK (status IN ('pending', 'approved', 'rejected')),
  review_notes    TEXT,
  reviewed_by     UUID REFERENCES users(id) ON DELETE SET NULL,
  reviewed_at     TIMESTAMP,
  -- Timestamps
  created_at      TIMESTAMP DEFAULT NOW(),
  updated_at      TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_family_tree_nodes_deceased ON family_tree_nodes(deceased_id);
CREATE INDEX idx_family_tree_nodes_status   ON family_tree_nodes(status);
CREATE INDEX idx_family_tree_nodes_last     ON family_tree_nodes(last_name);

-- ============================================================
-- TABLE: family_tree_relationships
-- An edge between two family_tree_nodes.
-- person_a_id → relationship_type → person_b_id
-- e.g. person_a is the "parent" of person_b
--      person_b is the "child"  of person_a
-- ============================================================
CREATE TABLE IF NOT EXISTS family_tree_relationships (
  id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  person_a_id         UUID NOT NULL REFERENCES family_tree_nodes(id) ON DELETE CASCADE,
  person_b_id         UUID NOT NULL REFERENCES family_tree_nodes(id) ON DELETE CASCADE,
  -- What person_a is to person_b (e.g. 'parent', 'spouse', 'sibling')
  relationship_type   VARCHAR(50) NOT NULL,
  -- Inverse label (what person_b is to person_a, e.g. 'child')
  inverse_type        VARCHAR(50),
  -- Additional context
  notes               TEXT,
  -- Submitter info
  submitted_by_user_id  UUID REFERENCES users(id) ON DELETE SET NULL,
  submitted_by_name     VARCHAR(255),
  submitted_by_email    VARCHAR(255),
  -- Moderation
  status              VARCHAR(20) NOT NULL DEFAULT 'pending'
                      CHECK (status IN ('pending', 'approved', 'rejected')),
  review_notes        TEXT,
  reviewed_by         UUID REFERENCES users(id) ON DELETE SET NULL,
  reviewed_at         TIMESTAMP,
  -- Timestamps
  created_at          TIMESTAMP DEFAULT NOW(),
  updated_at          TIMESTAMP DEFAULT NOW(),
  -- Prevent duplicate edges
  UNIQUE (person_a_id, person_b_id, relationship_type)
);

CREATE INDEX idx_ftr_person_a ON family_tree_relationships(person_a_id);
CREATE INDEX idx_ftr_person_b ON family_tree_relationships(person_b_id);
CREATE INDEX idx_ftr_status   ON family_tree_relationships(status);

-- ============================================================
-- TRIGGER: auto-update updated_at
-- ============================================================
CREATE TRIGGER update_family_tree_nodes_updated_at
  BEFORE UPDATE ON family_tree_nodes
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_family_tree_relationships_updated_at
  BEFORE UPDATE ON family_tree_relationships
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================
ALTER TABLE family_tree_nodes          ENABLE ROW LEVEL SECURITY;
ALTER TABLE family_tree_relationships  ENABLE ROW LEVEL SECURITY;

-- Anyone can read approved nodes and relationships
CREATE POLICY "Public can view approved tree nodes"
  ON family_tree_nodes FOR SELECT
  USING (status = 'approved');

CREATE POLICY "Public can view approved tree relationships"
  ON family_tree_relationships FOR SELECT
  USING (status = 'approved');

-- Anyone can insert (submit) new nodes/relationships (pending review)
CREATE POLICY "Anyone can submit tree nodes"
  ON family_tree_nodes FOR INSERT
  WITH CHECK (status = 'pending');

CREATE POLICY "Anyone can submit tree relationships"
  ON family_tree_relationships FOR INSERT
  WITH CHECK (status = 'pending');

-- Admins (via service role) can do everything
-- (Service role bypasses RLS — no additional policy needed)
