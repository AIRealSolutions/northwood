-- Northwood Cemetery Authentication and Media Management Schema
-- Created: January 2026

-- ============================================
-- USERS AND AUTHENTICATION
-- ============================================

-- Users table
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  phone VARCHAR(20),
  role VARCHAR(20) NOT NULL DEFAULT 'member', -- 'admin', 'member', 'guest'
  status VARCHAR(20) NOT NULL DEFAULT 'active', -- 'active', 'inactive', 'suspended'
  email_verified BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  last_login TIMESTAMP
);

-- Password reset tokens
CREATE TABLE IF NOT EXISTS password_reset_tokens (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  token VARCHAR(255) UNIQUE NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  used BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Email verification tokens
CREATE TABLE IF NOT EXISTS email_verification_tokens (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  token VARCHAR(255) UNIQUE NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  used BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- USER CONNECTIONS TO DECEASED
-- ============================================

-- User connections to deceased persons (claiming loved ones)
CREATE TABLE IF NOT EXISTS user_deceased_connections (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  deceased_id UUID NOT NULL REFERENCES deceased_records(id) ON DELETE CASCADE,
  relationship VARCHAR(50), -- 'spouse', 'child', 'parent', 'sibling', 'friend', 'other'
  relationship_description TEXT,
  verified BOOLEAN DEFAULT FALSE, -- Admin verification
  requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  verified_at TIMESTAMP,
  verified_by UUID REFERENCES users(id)
);

-- ============================================
-- MEDIA MANAGEMENT
-- ============================================

-- Media uploads (photos, videos, documents)
CREATE TABLE IF NOT EXISTS media (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deceased_id UUID NOT NULL REFERENCES deceased_records(id) ON DELETE CASCADE,
  uploaded_by UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  media_type VARCHAR(20) NOT NULL, -- 'photo', 'video', 'document', 'audio'
  file_name VARCHAR(255) NOT NULL,
  file_path VARCHAR(500) NOT NULL, -- S3 or storage path
  file_size INTEGER, -- in bytes
  mime_type VARCHAR(100),
  title VARCHAR(255),
  description TEXT,
  caption TEXT,
  date_taken DATE, -- When photo/video was taken
  status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'rejected'
  moderation_notes TEXT,
  moderated_by UUID REFERENCES users(id),
  moderated_at TIMESTAMP,
  is_featured BOOLEAN DEFAULT FALSE, -- Featured on memorial page
  display_order INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Media tags/categories
CREATE TABLE IF NOT EXISTS media_tags (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  media_id UUID NOT NULL REFERENCES media(id) ON DELETE CASCADE,
  tag VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- MEMORIES AND STORIES
-- ============================================

-- User-submitted memories and stories
CREATE TABLE IF NOT EXISTS memories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deceased_id UUID NOT NULL REFERENCES deceased_records(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255),
  content TEXT NOT NULL,
  memory_date DATE, -- When the memory occurred
  status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'rejected'
  moderation_notes TEXT,
  moderated_by UUID REFERENCES users(id),
  moderated_at TIMESTAMP,
  is_featured BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- SHARING AND PUBLIC ACCESS
-- ============================================

-- Shareable links for memorial pages
CREATE TABLE IF NOT EXISTS share_links (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deceased_id UUID NOT NULL REFERENCES deceased_records(id) ON DELETE CASCADE,
  share_token VARCHAR(100) UNIQUE NOT NULL,
  created_by UUID REFERENCES users(id),
  access_count INTEGER DEFAULT 0,
  last_accessed TIMESTAMP,
  expires_at TIMESTAMP, -- NULL for permanent links
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- QR codes for gravesites
CREATE TABLE IF NOT EXISTS qr_codes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  deceased_id UUID REFERENCES deceased_records(id) ON DELETE CASCADE,
  plot_id UUID REFERENCES plots(id) ON DELETE CASCADE,
  qr_code_data TEXT NOT NULL, -- QR code content
  qr_code_image_path VARCHAR(500), -- Path to QR image file
  scan_count INTEGER DEFAULT 0,
  last_scanned TIMESTAMP,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- ACTIVITY LOGS
-- ============================================

-- Audit trail for admin actions
CREATE TABLE IF NOT EXISTS activity_logs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE SET NULL,
  action VARCHAR(100) NOT NULL, -- 'login', 'upload', 'approve', 'reject', 'edit', etc.
  entity_type VARCHAR(50), -- 'media', 'memory', 'user', 'deceased', etc.
  entity_id UUID,
  details JSONB, -- Additional context
  ip_address VARCHAR(45),
  user_agent TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- INDEXES FOR PERFORMANCE
-- ============================================

CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_role ON users(role);
CREATE INDEX idx_users_status ON users(status);

CREATE INDEX idx_user_deceased_connections_user ON user_deceased_connections(user_id);
CREATE INDEX idx_user_deceased_connections_deceased ON user_deceased_connections(deceased_id);
CREATE INDEX idx_user_deceased_connections_verified ON user_deceased_connections(verified);

CREATE INDEX idx_media_deceased ON media(deceased_id);
CREATE INDEX idx_media_uploaded_by ON media(uploaded_by);
CREATE INDEX idx_media_status ON media(status);
CREATE INDEX idx_media_type ON media(media_type);

CREATE INDEX idx_memories_deceased ON memories(deceased_id);
CREATE INDEX idx_memories_user ON memories(user_id);
CREATE INDEX idx_memories_status ON memories(status);

CREATE INDEX idx_share_links_deceased ON share_links(deceased_id);
CREATE INDEX idx_share_links_token ON share_links(share_token);

CREATE INDEX idx_activity_logs_user ON activity_logs(user_id);
CREATE INDEX idx_activity_logs_action ON activity_logs(action);
CREATE INDEX idx_activity_logs_created ON activity_logs(created_at);

-- ============================================
-- SAMPLE ADMIN USER (Change password immediately!)
-- ============================================

-- Password: 'admin123' (MUST BE CHANGED)
-- Use bcrypt to hash: $2a$10$... (will be generated by application)

INSERT INTO users (email, password_hash, first_name, last_name, role, email_verified, status)
VALUES (
  'admin@northwoodcemetery.com',
  '$2a$10$placeholder', -- Replace with actual bcrypt hash
  'Admin',
  'User',
  'admin',
  TRUE,
  'active'
) ON CONFLICT (email) DO NOTHING;

-- ============================================
-- COMMENTS
-- ============================================

COMMENT ON TABLE users IS 'User accounts for authentication and authorization';
COMMENT ON TABLE user_deceased_connections IS 'Links users to their deceased loved ones';
COMMENT ON TABLE media IS 'Photos, videos, and documents uploaded by users';
COMMENT ON TABLE memories IS 'User-submitted stories and memories';
COMMENT ON TABLE share_links IS 'Shareable links for memorial pages';
COMMENT ON TABLE qr_codes IS 'QR codes for gravesite access';
COMMENT ON TABLE activity_logs IS 'Audit trail for all system actions';
