-- ============================================
-- CEMETERY COMMITTEE PORTAL SCHEMA
-- Created: February 2026
-- ============================================

-- Update users role to include cemetery_committee
-- Note: The role column is VARCHAR so we just need to update existing constraints/checks if any.
-- We will handle role validation at the application level.

-- ============================================
-- COMMITTEE MEETINGS
-- ============================================
CREATE TABLE IF NOT EXISTS committee_meetings (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title VARCHAR(255) NOT NULL,
  meeting_date DATE NOT NULL,
  start_time TIME,
  end_time TIME,
  location VARCHAR(255),
  description TEXT,
  agenda_published BOOLEAN DEFAULT FALSE,
  minutes_published BOOLEAN DEFAULT FALSE,
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_committee_meetings_date ON committee_meetings(meeting_date);

-- ============================================
-- MEETING AGENDA ITEMS
-- ============================================
CREATE TABLE IF NOT EXISTS meeting_agendas (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  meeting_id UUID NOT NULL REFERENCES committee_meetings(id) ON DELETE CASCADE,
  item_number INTEGER NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  submitted_by_user_id UUID REFERENCES users(id),
  submitted_by_name VARCHAR(255),  -- for public (non-user) submissions
  submitted_by_email VARCHAR(255), -- for public (non-user) submissions
  is_public_submission BOOLEAN DEFAULT FALSE,
  status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'rejected'
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meeting_agendas_meeting_id ON meeting_agendas(meeting_id);

-- ============================================
-- MEETING MINUTES
-- ============================================
CREATE TABLE IF NOT EXISTS meeting_minutes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  meeting_id UUID NOT NULL REFERENCES committee_meetings(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  approved BOOLEAN DEFAULT FALSE,
  approved_by UUID REFERENCES users(id),
  approved_at TIMESTAMP,
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meeting_minutes_meeting_id ON meeting_minutes(meeting_id);

-- ============================================
-- COMMITTEE GOALS / ACTION ITEMS
-- ============================================
CREATE TABLE IF NOT EXISTS committee_goals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title VARCHAR(255) NOT NULL,
  description TEXT,
  status VARCHAR(20) DEFAULT 'in_progress', -- 'in_progress', 'completed', 'archived'
  priority VARCHAR(20) DEFAULT 'medium', -- 'low', 'medium', 'high'
  due_date DATE,
  completed_at TIMESTAMP,
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_committee_goals_status ON committee_goals(status);

-- ============================================
-- PUBLIC CHANGE REQUESTS
-- ============================================
CREATE TABLE IF NOT EXISTS change_requests (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  request_type VARCHAR(50) NOT NULL, -- 'occupant_details', 'media_upload', 'other'
  deceased_id UUID REFERENCES deceased_records(id),
  plot_id UUID REFERENCES plots(id),
  submitted_by_name VARCHAR(255) NOT NULL,
  submitted_by_email VARCHAR(255) NOT NULL,
  submitted_by_phone VARCHAR(50),
  relationship_to_deceased VARCHAR(100), -- 'family', 'friend', 'researcher', 'other'
  subject VARCHAR(255) NOT NULL,
  details TEXT NOT NULL, -- Description of the requested change
  requested_changes JSONB, -- Structured data for specific field changes
  media_file_name VARCHAR(255), -- For media upload requests
  media_file_url VARCHAR(500),  -- If file was uploaded
  status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'under_review', 'approved', 'rejected'
  reviewed_by UUID REFERENCES users(id),
  reviewed_at TIMESTAMP,
  review_notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_change_requests_status ON change_requests(status);
CREATE INDEX IF NOT EXISTS idx_change_requests_deceased_id ON change_requests(deceased_id);
CREATE INDEX IF NOT EXISTS idx_change_requests_type ON change_requests(request_type);

-- ============================================
-- PUBLIC AGENDA SUBMISSIONS (from non-members)
-- ============================================
CREATE TABLE IF NOT EXISTS public_agenda_submissions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  submitted_by_name VARCHAR(255) NOT NULL,
  submitted_by_email VARCHAR(255) NOT NULL,
  submitted_by_phone VARCHAR(50),
  subject VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  preferred_meeting_date DATE,
  status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'rejected', 'added_to_agenda'
  meeting_id UUID REFERENCES committee_meetings(id), -- set when added to a meeting
  reviewed_by UUID REFERENCES users(id),
  reviewed_at TIMESTAMP,
  review_notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_public_agenda_submissions_status ON public_agenda_submissions(status);
