-- ============================================
-- COMMITTEE MEMBERS TABLE
-- Stores public-facing profiles for cemetery committee members
-- ============================================

CREATE TABLE IF NOT EXISTS committee_members (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE SET NULL,  -- optional link to a user account
  full_name VARCHAR(255) NOT NULL,
  title VARCHAR(100),                                    -- e.g. "Chairperson", "Secretary", "Treasurer", "Member"
  bio TEXT,                                              -- short public bio
  photo_url VARCHAR(500),                                -- URL to headshot photo
  email VARCHAR(255),                                    -- public contact email (optional)
  phone VARCHAR(50),                                     -- public contact phone (optional)
  term_start DATE,                                       -- start of current term
  term_end DATE,                                         -- end of current term (null = ongoing)
  is_active BOOLEAN DEFAULT TRUE,                        -- show on public page
  display_order INTEGER DEFAULT 99,                      -- sort order on public page
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_committee_members_active ON committee_members(is_active);
CREATE INDEX IF NOT EXISTS idx_committee_members_order ON committee_members(display_order);
