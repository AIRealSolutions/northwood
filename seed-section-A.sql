-- ============================================
-- Northwood Cemetery - Section A Data Migration
-- ============================================
-- Total plots: 578
-- Deceased records: 175
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section A
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-A-001-1', 'A', 1, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-2', 'A', 1, 2, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-3', 'A', 1, 3, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-4', 'A', 1, 4, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-5', 'A', 1, 5, 'standard', 'available', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-6', 'A', 1, 6, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-7', 'A', 1, 7, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-001-8', 'A', 1, 8, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', '1935-01-01'),
('NW-A-002-1', 'A', 2, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-2', 'A', 2, 2, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-3', 'A', 2, 3, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-4', 'A', 2, 4, 'standard', 'available', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-5', 'A', 2, 5, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-6', 'A', 2, 6, 'standard', 'available', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-7', 'A', 2, 7, 'standard', 'available', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-002-8', 'A', 2, 8, 'standard', 'occupied', 4.0, 10.0, 'Richard Marlowe', 'Southport, NC, 28461', NULL),
('NW-A-003-1', 'A', 3, 1, 'standard', 'available', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-2', 'A', 3, 2, 'standard', 'occupied', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-3', 'A', 3, 3, 'standard', 'occupied', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-4', 'A', 3, 4, 'standard', 'occupied', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-5', 'A', 3, 5, 'standard', 'available', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-6', 'A', 3, 6, 'standard', 'occupied', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-7', 'A', 3, 7, 'standard', 'occupied', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-003-8', 'A', 3, 8, 'standard', 'available', 4.0, 10.0, 'Edward J. Morril', '103 Herring Drive, Southport, NC, 28461', '1963-09-23'),
('NW-A-004-1', 'A', 4, 1, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-2', 'A', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-3', 'A', 4, 3, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-4', 'A', 4, 4, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-5', 'A', 4, 5, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-6', 'A', 4, 6, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-7', 'A', 4, 7, 'standard', 'occupied', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-004-8', 'A', 4, 8, 'standard', 'available', 4.0, 10.0, 'Carl Carter', 'Southport, NC, 28461', NULL),
('NW-A-005-1', 'A', 5, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-2', 'A', 5, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-3', 'A', 5, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-4', 'A', 5, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-5', 'A', 5, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-6', 'A', 5, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-7', 'A', 5, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-005-8', 'A', 5, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Arrington', '301 E. Bay Street, Southport, NC, 28461', NULL),
('NW-A-006-1', 'A', 6, 1, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-2', 'A', 6, 2, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-3', 'A', 6, 3, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-4', 'A', 6, 4, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-5', 'A', 6, 5, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-6', 'A', 6, 6, 'standard', 'occupied', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-7', 'A', 6, 7, 'standard', 'occupied', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-006-8', 'A', 6, 8, 'standard', 'available', 4.0, 10.0, 'James Walton Willis', '306 E. Bay Street, Southport, NC, 28461', '1971-04-21'),
('NW-A-007-1', 'A', 7, 1, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-2', 'A', 7, 2, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-3', 'A', 7, 3, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-4', 'A', 7, 4, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-5', 'A', 7, 5, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-6', 'A', 7, 6, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-7', 'A', 7, 7, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-007-8', 'A', 7, 8, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-06-06'),
('NW-A-008-1', 'A', 8, 1, 'standard', 'available', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-2', 'A', 8, 2, 'standard', 'available', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-3', 'A', 8, 3, 'standard', 'available', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-4', 'A', 8, 4, 'standard', 'occupied', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-5', 'A', 8, 5, 'standard', 'occupied', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-6', 'A', 8, 6, 'standard', 'occupied', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-7', 'A', 8, 7, 'standard', 'occupied', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-008-8', 'A', 8, 8, 'standard', 'available', 4.0, 10.0, 'Horace Wilbur Sellers', 'Southport, NC, 28461', '1962-11-29'),
('NW-A-009-1', 'A', 9, 1, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-2', 'A', 9, 2, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-3', 'A', 9, 3, 'standard', 'occupied', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-4', 'A', 9, 4, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-5', 'A', 9, 5, 'standard', 'occupied', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-6', 'A', 9, 6, 'standard', 'occupied', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-7', 'A', 9, 7, 'standard', 'available', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-009-8', 'A', 9, 8, 'standard', 'occupied', 4.0, 10.0, 'Wilbur Sellers', 'Southport, NC, 28461', '1966-02-28'),
('NW-A-010-1', 'A', 10, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-2', 'A', 10, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-3', 'A', 10, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-4', 'A', 10, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-5', 'A', 10, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-6', 'A', 10, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-7', 'A', 10, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-010-8', 'A', 10, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Glenn Trunnell', 'Southport, NC, 28461', '1971-05-05'),
('NW-A-011-1', 'A', 11, 1, 'standard', 'available', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-2', 'A', 11, 2, 'standard', 'available', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-3', 'A', 11, 3, 'standard', 'available', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-4', 'A', 11, 4, 'standard', 'available', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-5', 'A', 11, 5, 'standard', 'available', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-6', 'A', 11, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-7', 'A', 11, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-011-8', 'A', 11, 8, 'standard', 'occupied', 4.0, 10.0, 'Robert Spainhour', 'Southport, NC, 28461', '1970-09-08'),
('NW-A-012-1', 'A', 12, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-2', 'A', 12, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-3', 'A', 12, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-4', 'A', 12, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-5', 'A', 12, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-6', 'A', 12, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-7', 'A', 12, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-012-8', 'A', 12, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-1', 'A', 13, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-2', 'A', 13, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-3', 'A', 13, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-4', 'A', 13, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-5', 'A', 13, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-6', 'A', 13, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-7', 'A', 13, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-013-8', 'A', 13, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-1', 'A', 14, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-2', 'A', 14, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-3', 'A', 14, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-4', 'A', 14, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-5', 'A', 14, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-6', 'A', 14, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-7', 'A', 14, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-014-8', 'A', 14, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. W. L. Mrs. Mary T. Hewett', 'Southport, NC, 28461', '1964-01-13'),
('NW-A-015-1', 'A', 15, 1, 'standard', 'available', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-2', 'A', 15, 2, 'standard', 'available', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-3', 'A', 15, 3, 'standard', 'available', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-4', 'A', 15, 4, 'standard', 'available', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-5', 'A', 15, 5, 'standard', 'occupied', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-6', 'A', 15, 6, 'standard', 'occupied', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-7', 'A', 15, 7, 'standard', 'occupied', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-015-8', 'A', 15, 8, 'standard', 'available', 4.0, 10.0, 'Gene A. & Marie Hart', '822 Memory Lane, Southport, NC, 28461', '1986-06-12'),
('NW-A-016-1', 'A', 16, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-2', 'A', 16, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-3', 'A', 16, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-4', 'A', 16, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-5', 'A', 16, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-6', 'A', 16, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-7', 'A', 16, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-016-8', 'A', 16, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-14'),
('NW-A-017-1', 'A', 17, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-2', 'A', 17, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-3', 'A', 17, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-4', 'A', 17, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-5', 'A', 17, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-6', 'A', 17, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-7', 'A', 17, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-017-8', 'A', 17, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1967-02-14'),
('NW-A-018-1', 'A', 18, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-2', 'A', 18, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-3', 'A', 18, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-4', 'A', 18, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-5', 'A', 18, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-6', 'A', 18, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-7', 'A', 18, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-018-8', 'A', 18, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. J.W. (Ronie) Hewett', 'Southport, NC, 28461', '1960-11-25'),
('NW-A-019-1', 'A', 19, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-2', 'A', 19, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-3', 'A', 19, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-4', 'A', 19, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-5', 'A', 19, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-6', 'A', 19, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-7', 'A', 19, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-019-8', 'A', 19, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-1', 'A', 20, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-2', 'A', 20, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-3', 'A', 20, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-4', 'A', 20, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-5', 'A', 20, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-6', 'A', 20, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-7', 'A', 20, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-020-8', 'A', 20, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-08-29'),
('NW-A-021-1', 'A', 21, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-2', 'A', 21, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-3', 'A', 21, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-4', 'A', 21, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-5', 'A', 21, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-6', 'A', 21, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-7', 'A', 21, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-021-8', 'A', 21, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John (Suzanne M. ) Connell', '502 Brunswick Street, Southport, NC, 28461', '1968-10-01'),
('NW-A-022-1', 'A', 22, 1, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-2', 'A', 22, 2, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-3', 'A', 22, 3, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-4', 'A', 22, 4, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-5', 'A', 22, 5, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-6', 'A', 22, 6, 'standard', 'occupied', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-7', 'A', 22, 7, 'standard', 'occupied', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-022-8', 'A', 22, 8, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-1', 'A', 23, 1, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-2', 'A', 23, 2, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-3', 'A', 23, 3, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-4', 'A', 23, 4, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-5', 'A', 23, 5, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-6', 'A', 23, 6, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-7', 'A', 23, 7, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-023-8', 'A', 23, 8, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-1', 'A', 24, 1, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-2', 'A', 24, 2, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-3', 'A', 24, 3, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-4', 'A', 24, 4, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-5', 'A', 24, 5, 'standard', 'occupied', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-6', 'A', 24, 6, 'standard', 'occupied', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-7', 'A', 24, 7, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-024-8', 'A', 24, 8, 'standard', 'available', 4.0, 10.0, 'W. Albert Russ', '1127 N. Howe Street, Southport, NC, 28461', '1969-02-07'),
('NW-A-025-1', 'A', 25, 1, 'standard', 'occupied', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-2', 'A', 25, 2, 'standard', 'available', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-3', 'A', 25, 3, 'standard', 'available', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-4', 'A', 25, 4, 'standard', 'occupied', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-5', 'A', 25, 5, 'standard', 'available', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-6', 'A', 25, 6, 'standard', 'occupied', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-7', 'A', 25, 7, 'standard', 'occupied', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-025-8', 'A', 25, 8, 'standard', 'available', 4.0, 10.0, 'S. V. Russ Sr.', 'Southport, NC, 28461', '1969-01-14'),
('NW-A-026-1', 'A', 26, 1, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-2', 'A', 26, 2, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-3', 'A', 26, 3, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-4', 'A', 26, 4, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-5', 'A', 26, 5, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-6', 'A', 26, 6, 'standard', 'occupied', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-7', 'A', 26, 7, 'standard', 'occupied', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-026-8', 'A', 26, 8, 'standard', 'available', 4.0, 10.0, 'J. B. Russ', '307 E. Nash Street, Southport, NC, 28461', '1970-08-06'),
('NW-A-027-1', 'A', 27, 1, 'standard', 'available', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-2', 'A', 27, 2, 'standard', 'available', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-3', 'A', 27, 3, 'standard', 'available', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-4', 'A', 27, 4, 'standard', 'available', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-5', 'A', 27, 5, 'standard', 'occupied', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-6', 'A', 27, 6, 'standard', 'occupied', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-7', 'A', 27, 7, 'standard', 'occupied', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-027-8', 'A', 27, 8, 'standard', 'available', 4.0, 10.0, 'Lewis Lloyd', 'Jabbertown Rd., Southport, NC, 28461', '1970-08-03'),
('NW-A-028-1', 'A', 28, 1, 'standard', 'available', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-2', 'A', 28, 2, 'standard', 'available', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-3', 'A', 28, 3, 'standard', 'available', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-4', 'A', 28, 4, 'standard', 'available', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-5', 'A', 28, 5, 'standard', 'available', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-6', 'A', 28, 6, 'standard', 'occupied', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-7', 'A', 28, 7, 'standard', 'occupied', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-028-8', 'A', 28, 8, 'standard', 'occupied', 4.0, 10.0, 'Norman Holden', '212 Frink Drive, Southport, NC, 28461', NULL),
('NW-A-029-1', 'A', 29, 1, 'standard', 'available', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-2', 'A', 29, 2, 'standard', 'available', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-3', 'A', 29, 3, 'standard', 'available', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-4', 'A', 29, 4, 'standard', 'available', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-5', 'A', 29, 5, 'standard', 'occupied', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-6', 'A', 29, 6, 'standard', 'occupied', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-7', 'A', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-029-8', 'A', 29, 8, 'standard', 'available', 4.0, 10.0, 'C. B. Caroon', '308 River Drive, Southport, NC, 28461', NULL),
('NW-A-030-1', 'A', 30, 1, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-2', 'A', 30, 2, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-3', 'A', 30, 3, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-4', 'A', 30, 4, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-5', 'A', 30, 5, 'standard', 'occupied', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-6', 'A', 30, 6, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-7', 'A', 30, 7, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-030-8', 'A', 30, 8, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1974-02-15'),
('NW-A-031-1', 'A', 31, 1, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-2', 'A', 31, 2, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-3', 'A', 31, 3, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-4', 'A', 31, 4, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-5', 'A', 31, 5, 'standard', 'occupied', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-6', 'A', 31, 6, 'standard', 'occupied', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-7', 'A', 31, 7, 'standard', 'occupied', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-031-8', 'A', 31, 8, 'standard', 'available', 4.0, 10.0, 'Gerald & Gayla Derr', '123 Park Avenue, Southport, NC, 28461', '1970-04-01'),
('NW-A-032-1', 'A', 32, 1, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-2', 'A', 32, 2, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-3', 'A', 32, 3, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-4', 'A', 32, 4, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-5', 'A', 32, 5, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-6', 'A', 32, 6, 'standard', 'occupied', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-7', 'A', 32, 7, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-032-8', 'A', 32, 8, 'standard', 'available', 4.0, 10.0, 'Franklin D. Cox', '708 N. Atlantic Ave., Southport, NC, 28461', '1970-04-17'),
('NW-A-033-1', 'A', 33, 1, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-2', 'A', 33, 2, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-3', 'A', 33, 3, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-4', 'A', 33, 4, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-5', 'A', 33, 5, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-6', 'A', 33, 6, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-7', 'A', 33, 7, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-033-8', 'A', 33, 8, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-05-15'),
('NW-A-034-1', 'A', 34, 1, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-2', 'A', 34, 2, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-3', 'A', 34, 3, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-4', 'A', 34, 4, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-5', 'A', 34, 5, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-6', 'A', 34, 6, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-7', 'A', 34, 7, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-034-8', 'A', 34, 8, 'standard', 'available', 4.0, 10.0, 'Johnson Cumbee', 'N. Atlantic Ave., Southport, NC, 28461', '1970-03-18'),
('NW-A-035-1', 'A', 35, 1, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-2', 'A', 35, 2, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-3', 'A', 35, 3, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-4', 'A', 35, 4, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-5', 'A', 35, 5, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-6', 'A', 35, 6, 'standard', 'occupied', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-7', 'A', 35, 7, 'standard', 'occupied', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-035-8', 'A', 35, 8, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-1', 'A', 36, 1, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-2', 'A', 36, 2, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-3', 'A', 36, 3, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-4', 'A', 36, 4, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-5', 'A', 36, 5, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-6', 'A', 36, 6, 'standard', 'occupied', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-7', 'A', 36, 7, 'standard', 'occupied', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-036-8', 'A', 36, 8, 'standard', 'available', 4.0, 10.0, 'Dillard H. Price', 'Southport, NC, 28461', '1970-03-18'),
('NW-A-037-', 'A', 37, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-A-038-', 'A', 38, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-A-039-1', 'A', 39, 1, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-2', 'A', 39, 2, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-3', 'A', 39, 3, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-4', 'A', 39, 4, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-5', 'A', 39, 5, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-6', 'A', 39, 6, 'standard', 'occupied', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-7', 'A', 39, 7, 'standard', 'occupied', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-039-8', 'A', 39, 8, 'standard', 'available', 4.0, 10.0, 'Bill Miller', 'Cape Fear Drive, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-1', 'A', 40, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-2', 'A', 40, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-3', 'A', 40, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-4', 'A', 40, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-5', 'A', 40, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-6', 'A', 40, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-7', 'A', 40, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-040-8', 'A', 40, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Carlton Price', 'E. Owens Street, Southport, NC, 28461', '1970-03-10'),
('NW-A-041-1', 'A', 41, 1, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-2', 'A', 41, 2, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-3', 'A', 41, 3, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-4', 'A', 41, 4, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-5', 'A', 41, 5, 'standard', 'occupied', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-6', 'A', 41, 6, 'standard', 'occupied', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-7', 'A', 41, 7, 'standard', 'occupied', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-041-8', 'A', 41, 8, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-1', 'A', 42, 1, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-2', 'A', 42, 2, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-3', 'A', 42, 3, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-4', 'A', 42, 4, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-5', 'A', 42, 5, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-6', 'A', 42, 6, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-7', 'A', 42, 7, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-042-8', 'A', 42, 8, 'standard', 'available', 4.0, 10.0, 'James F. Splawn', '308 Willis Drive, Southport, NC, 28461', NULL),
('NW-A-043-1', 'A', 43, 1, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-2', 'A', 43, 2, 'standard', 'occupied', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-3', 'A', 43, 3, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-4', 'A', 43, 4, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-5', 'A', 43, 5, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-6', 'A', 43, 6, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-7', 'A', 43, 7, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-043-8', 'A', 43, 8, 'standard', 'available', 4.0, 10.0, 'Nathan W. May', '2512 Englewood Ave., Durham, NC, 27705-2512', '1970-01-16'),
('NW-A-044-1', 'A', 44, 1, 'standard', 'available', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-2', 'A', 44, 2, 'standard', 'available', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-3', 'A', 44, 3, 'standard', 'available', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-4', 'A', 44, 4, 'standard', 'available', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-5', 'A', 44, 5, 'standard', 'occupied', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-6', 'A', 44, 6, 'standard', 'occupied', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-7', 'A', 44, 7, 'standard', 'occupied', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-044-8', 'A', 44, 8, 'standard', 'occupied', 4.0, 10.0, 'Charlie Dosher ,  Sr.', 'Southport, NC, 28461', '1971-03-03'),
('NW-A-045-1', 'A', 45, 1, 'standard', 'available', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-2', 'A', 45, 2, 'standard', 'available', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-3', 'A', 45, 3, 'standard', 'available', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-4', 'A', 45, 4, 'standard', 'available', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-5', 'A', 45, 5, 'standard', 'available', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-6', 'A', 45, 6, 'standard', 'occupied', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-7', 'A', 45, 7, 'standard', 'occupied', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-045-8', 'A', 45, 8, 'standard', 'occupied', 4.0, 10.0, 'Horace Pigott', '1403 N. Howe Street, Southport, NC, 28461', '1970-08-10'),
('NW-A-046-1', 'A', 46, 1, 'standard', 'available', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-2', 'A', 46, 2, 'standard', 'available', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-3', 'A', 46, 3, 'standard', 'available', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-4', 'A', 46, 4, 'standard', 'available', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-5', 'A', 46, 5, 'standard', 'occupied', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-6', 'A', 46, 6, 'standard', 'available', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-7', 'A', 46, 7, 'standard', 'occupied', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-046-8', 'A', 46, 8, 'standard', 'occupied', 4.0, 10.0, 'Barbara Perkins', 'Oaks Apts N. Atlantic, Southport, NC, 28461', '1963-08-11'),
('NW-A-047-1', 'A', 47, 1, 'standard', 'occupied', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-2', 'A', 47, 2, 'standard', 'occupied', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-3', 'A', 47, 3, 'standard', 'occupied', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-4', 'A', 47, 4, 'standard', 'occupied', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-5', 'A', 47, 5, 'standard', 'occupied', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-6', 'A', 47, 6, 'standard', 'available', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-7', 'A', 47, 7, 'standard', 'available', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-047-8', 'A', 47, 8, 'standard', 'available', 4.0, 10.0, 'R. R. Lewis', 'Southport, NC, 28461', '1969-07-25'),
('NW-A-048-1', 'A', 48, 1, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-2', 'A', 48, 2, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-3', 'A', 48, 3, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-4', 'A', 48, 4, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-5', 'A', 48, 5, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-6', 'A', 48, 6, 'standard', 'occupied', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-7', 'A', 48, 7, 'standard', 'occupied', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-048-8', 'A', 48, 8, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-1', 'A', 49, 1, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-2', 'A', 49, 2, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-3', 'A', 49, 3, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-4', 'A', 49, 4, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-5', 'A', 49, 5, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-6', 'A', 49, 6, 'standard', 'occupied', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-7', 'A', 49, 7, 'standard', 'occupied', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-049-8', 'A', 49, 8, 'standard', 'available', 4.0, 10.0, 'W. P. Jorgensen', '202 W. West Street, Southport, NC, 28461', '1969-02-02'),
('NW-A-050-1', 'A', 50, 1, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-2', 'A', 50, 2, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-3', 'A', 50, 3, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-4', 'A', 50, 4, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-5', 'A', 50, 5, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-6', 'A', 50, 6, 'standard', 'occupied', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-7', 'A', 50, 7, 'standard', 'occupied', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-050-8', 'A', 50, 8, 'standard', 'available', 4.0, 10.0, 'T. L. Toler', '320 N. Atlantic Ave, Southport, NC, 28461', '1970-01-20'),
('NW-A-051-1', 'A', 51, 1, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-2', 'A', 51, 2, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-3', 'A', 51, 3, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-4', 'A', 51, 4, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-5', 'A', 51, 5, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-6', 'A', 51, 6, 'standard', 'occupied', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-7', 'A', 51, 7, 'standard', 'occupied', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-051-8', 'A', 51, 8, 'standard', 'available', 4.0, 10.0, 'Johnnie Creech', 'Southport, NC, 28461', '1966-04-12'),
('NW-A-052-1', 'A', 52, 1, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-2', 'A', 52, 2, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-3', 'A', 52, 3, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-4', 'A', 52, 4, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-5', 'A', 52, 5, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-6', 'A', 52, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-7', 'A', 52, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-052-8', 'A', 52, 8, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1966-01-20'),
('NW-A-053-1', 'A', 53, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-2', 'A', 53, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-3', 'A', 53, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-4', 'A', 53, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-5', 'A', 53, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-6', 'A', 53, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-7', 'A', 53, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-053-8', 'A', 53, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Laura Bell Anderson', 'Southport, NC, 28461', '1966-01-07'),
('NW-A-054-1', 'A', 54, 1, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-2', 'A', 54, 2, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-3', 'A', 54, 3, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-4', 'A', 54, 4, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-5', 'A', 54, 5, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-6', 'A', 54, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-7', 'A', 54, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-054-8', 'A', 54, 8, 'standard', 'available', 4.0, 10.0, 'Robert L. Dosher', 'Southport, NC, 28461', '1969-09-08'),
('NW-A-055-1', 'A', 55, 1, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-2', 'A', 55, 2, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-3', 'A', 55, 3, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-4', 'A', 55, 4, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-5', 'A', 55, 5, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-6', 'A', 55, 6, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-7', 'A', 55, 7, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-055-8', 'A', 55, 8, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-04-10'),
('NW-A-056-1', 'A', 56, 1, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-2', 'A', 56, 2, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-3', 'A', 56, 3, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-4', 'A', 56, 4, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-5', 'A', 56, 5, 'standard', 'occupied', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-6', 'A', 56, 6, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-7', 'A', 56, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-056-8', 'A', 56, 8, 'standard', 'available', 4.0, 10.0, 'Robert Moore Willis', 'Southport, NC, 28461', '1964-03-11'),
('NW-A-057-1', 'A', 57, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-2', 'A', 57, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-3', 'A', 57, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-4', 'A', 57, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-5', 'A', 57, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-6', 'A', 57, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-7', 'A', 57, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-057-8', 'A', 57, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde & Marie Hewett/Hart', '251-D E. 11th St., Southport, NC, 28461', '1973-08-09'),
('NW-A-058-1', 'A', 58, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-2', 'A', 58, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-3', 'A', 58, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-4', 'A', 58, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-5', 'A', 58, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-6', 'A', 58, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-7', 'A', 58, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-058-8', 'A', 58, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Clyde Hewett', '251-D E. 11th St., Southport, NC, 28461', NULL),
('NW-A-059-1', 'A', 59, 1, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-2', 'A', 59, 2, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-3', 'A', 59, 3, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-4', 'A', 59, 4, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-5', 'A', 59, 5, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-6', 'A', 59, 6, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-7', 'A', 59, 7, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-059-8', 'A', 59, 8, 'standard', 'available', 4.0, 10.0, 'Bernice L. Hewett', 'Southport, NC, 28461', '1960-07-19'),
('NW-A-060-1', 'A', 60, 1, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-2', 'A', 60, 2, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-3', 'A', 60, 3, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-4', 'A', 60, 4, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-5', 'A', 60, 5, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-6', 'A', 60, 6, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-7', 'A', 60, 7, 'standard', 'occupied', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-060-8', 'A', 60, 8, 'standard', 'available', 4.0, 10.0, 'Larry & Juditth Long', NULL, '1966-05-03'),
('NW-A-061-1', 'A', 61, 1, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-2', 'A', 61, 2, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-3', 'A', 61, 3, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-4', 'A', 61, 4, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-5', 'A', 61, 5, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-6', 'A', 61, 6, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-7', 'A', 61, 7, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-061-8', 'A', 61, 8, 'standard', 'available', 4.0, 10.0, 'W. T. Fulwood', 'Highway 211, Southport, NC, 28461', '1966-04-01'),
('NW-A-062-1', 'A', 62, 1, 'standard', 'available', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-2', 'A', 62, 2, 'standard', 'available', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-3', 'A', 62, 3, 'standard', 'available', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-4', 'A', 62, 4, 'standard', 'available', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-5', 'A', 62, 5, 'standard', 'available', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-6', 'A', 62, 6, 'standard', 'occupied', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-7', 'A', 62, 7, 'standard', 'occupied', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-062-8', 'A', 62, 8, 'standard', 'occupied', 4.0, 10.0, 'Clyde Tenan', '620 N. Atlantic Ave, Southport, NC, 28461', '1972-05-09'),
('NW-A-063-1', 'A', 63, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-2', 'A', 63, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-3', 'A', 63, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-4', 'A', 63, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-5', 'A', 63, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-6', 'A', 63, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-7', 'A', 63, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-063-8', 'A', 63, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Burke', 'Southport, NC, 28461', '1961-09-05'),
('NW-A-064-1', 'A', 64, 1, 'standard', 'available', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-2', 'A', 64, 2, 'standard', 'available', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-3', 'A', 64, 3, 'standard', 'occupied', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-4', 'A', 64, 4, 'standard', 'available', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-5', 'A', 64, 5, 'standard', 'occupied', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-6', 'A', 64, 6, 'standard', 'occupied', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-7', 'A', 64, 7, 'standard', 'occupied', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-064-8', 'A', 64, 8, 'standard', 'occupied', 4.0, 10.0, 'Dwight McEwen', 'Southport, NC, 28461', '1968-11-05'),
('NW-A-065-1', 'A', 65, 1, 'standard', 'occupied', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-2', 'A', 65, 2, 'standard', 'occupied', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-3', 'A', 65, 3, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-4', 'A', 65, 4, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-5', 'A', 65, 5, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-6', 'A', 65, 6, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-7', 'A', 65, 7, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-065-8', 'A', 65, 8, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1967-02-23'),
('NW-A-066-1', 'A', 66, 1, 'standard', 'occupied', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-2', 'A', 66, 2, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-3', 'A', 66, 3, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-4', 'A', 66, 4, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-5', 'A', 66, 5, 'standard', 'occupied', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-6', 'A', 66, 6, 'standard', 'occupied', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-7', 'A', 66, 7, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-066-8', 'A', 66, 8, 'standard', 'available', 4.0, 10.0, 'H. A. Schmidt', '211 N. Clarendon Ave, Southport, NC, 28461', '1965-04-13'),
('NW-A-067-1', 'A', 67, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-2', 'A', 67, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-3', 'A', 67, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-4', 'A', 67, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-5', 'A', 67, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-6', 'A', 67, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-7', 'A', 67, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-067-8', 'A', 67, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas H. Watts', '318 Brunswick St., Southport, NC, 28461', '1963-12-07'),
('NW-A-068-1', 'A', 68, 1, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-2', 'A', 68, 2, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-3', 'A', 68, 3, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-4', 'A', 68, 4, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-5', 'A', 68, 5, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-6', 'A', 68, 6, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-7', 'A', 68, 7, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-068-8', 'A', 68, 8, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-1', 'A', 69, 1, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-2', 'A', 69, 2, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-3', 'A', 69, 3, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-4', 'A', 69, 4, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-5', 'A', 69, 5, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-6', 'A', 69, 6, 'standard', 'occupied', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-7', 'A', 69, 7, 'standard', 'occupied', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-069-8', 'A', 69, 8, 'standard', 'available', 4.0, 10.0, 'W. S. Wells', '309 E. Bay Street, Southport, NC, 28461', '1967-01-11'),
('NW-A-070-1', 'A', 70, 1, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-2', 'A', 70, 2, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-3', 'A', 70, 3, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-4', 'A', 70, 4, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-5', 'A', 70, 5, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-6', 'A', 70, 6, 'standard', 'occupied', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-7', 'A', 70, 7, 'standard', 'occupied', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-070-8', 'A', 70, 8, 'standard', 'available', 4.0, 10.0, 'Joe Young', 'Southport, NC, 28461', NULL),
('NW-A-071-1', 'A', 71, 1, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-2', 'A', 71, 2, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-3', 'A', 71, 3, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-4', 'A', 71, 4, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-5', 'A', 71, 5, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-6', 'A', 71, 6, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-7', 'A', 71, 7, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-071-8', 'A', 71, 8, 'standard', 'available', 4.0, 10.0, 'Eva L. Medlin', 'Southport, NC, 28461', '1966-07-20'),
('NW-A-072-1', 'A', 72, 1, 'standard', 'available', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-2', 'A', 72, 2, 'standard', 'available', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-3', 'A', 72, 3, 'standard', 'available', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-4', 'A', 72, 4, 'standard', 'occupied', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-5', 'A', 72, 5, 'standard', 'occupied', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-6', 'A', 72, 6, 'standard', 'occupied', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-7', 'A', 72, 7, 'standard', 'occupied', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-072-8', 'A', 72, 8, 'standard', 'available', 4.0, 10.0, 'John F Watkins', '128 Park Ave, Southport, NC, 28461', '1973-07-09'),
('NW-A-073-1', 'A', 73, 1, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-2', 'A', 73, 2, 'standard', 'available', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-3', 'A', 73, 3, 'standard', 'available', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-4', 'A', 73, 4, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-5', 'A', 73, 5, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-6', 'A', 73, 6, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-7', 'A', 73, 7, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-073-8', 'A', 73, 8, 'standard', 'occupied', 4.0, 10.0, 'D. M. Davis', 'Southport, NC, 28461', '1973-07-09'),
('NW-A-074-1', 'A', 74, 1, 'standard', 'available', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-2', 'A', 74, 2, 'standard', 'available', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-3', 'A', 74, 3, 'standard', 'available', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-4', 'A', 74, 4, 'standard', 'occupied', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-5', 'A', 74, 5, 'standard', 'occupied', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-6', 'A', 74, 6, 'standard', 'occupied', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-7', 'A', 74, 7, 'standard', 'available', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL),
('NW-A-074-8', 'A', 74, 8, 'standard', 'available', 4.0, 10.0, 'Richard Bartels', '508 Brunswick Street, Southport, NC, 28461', NULL)
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section A
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Richard', 'Marlowe', NULL, '1878-03-05', '1936-09-03', NULL
FROM plots WHERE plot_number = 'NW-A-001-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mattie', NULL, 'Marlowe', 'Sellers', '1887-04-23', '1982-01-09', NULL
FROM plots WHERE plot_number = 'NW-A-001-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'M.', 'Marlowe', NULL, '1908-11-08', '1960-03-12', NULL
FROM plots WHERE plot_number = 'NW-A-001-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roxann', NULL, 'Callias', NULL, '1980-03-02', '2022-06-11', 'M'
FROM plots WHERE plot_number = 'NW-A-001-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Elliot', 'Marlowe', NULL, '1942-09-27', '1942-10-04', NULL
FROM plots WHERE plot_number = 'NW-A-001-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'B.', 'Marlowe', NULL, '1911-10-18', '1940-09-14', NULL
FROM plots WHERE plot_number = 'NW-A-001-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', NULL, 'Rogers', NULL, '1900-09-07', '1940-09-17', NULL
FROM plots WHERE plot_number = 'NW-A-001-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marion', NULL, 'Marlowe', 'Norment', '1918-01-31', '2000-09-21', NULL
FROM plots WHERE plot_number = 'NW-A-002-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Clifton', 'Marlowe', NULL, '1915-05-08', '2001-06-06', NULL
FROM plots WHERE plot_number = 'NW-A-002-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Richard', 'Marlowe', 'Dickie', '1939-11-28', '2015-03-15', NULL
FROM plots WHERE plot_number = 'NW-A-002-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Nichols', 'Cox', '1870-11-05', '1958-01-21', NULL
FROM plots WHERE plot_number = 'NW-A-002-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kamille', 'Nicole', 'Smith', NULL, '2001-05-22', '2001-05-27', NULL
FROM plots WHERE plot_number = 'NW-A-002-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roscoe', NULL, 'Rogers', NULL, '1893-01-01', '1963-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-003-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eveline', NULL, 'Rogers', NULL, '1898-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-003-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roscoe', NULL, 'Rogers', NULL, '1925-09-09', '1986-04-27', NULL
FROM plots WHERE plot_number = 'NW-A-003-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', NULL, 'Morrill', 'Rogers', '1921-02-21', '2003-03-20', NULL
FROM plots WHERE plot_number = 'NW-A-003-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Jennings', 'Morrill', NULL, '1922-08-20', '1990-07-02', NULL
FROM plots WHERE plot_number = 'NW-A-003-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carl', NULL, 'Carter', NULL, '1903-01-01', '1951-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eldridge', 'H.', 'Arrington', NULL, '1892-09-17', '1957-08-30', NULL
FROM plots WHERE plot_number = 'NW-A-004-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', NULL, 'Arrington', 'Crammer', '1904-04-01', '1992-06-14', NULL
FROM plots WHERE plot_number = 'NW-A-005-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Walton', 'Willis', NULL, NULL, '2016-07-31', NULL
FROM plots WHERE plot_number = 'NW-A-006-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carol', NULL, 'Willis', 'Stanley', '1938-01-01', '1971-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-006-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', 'Mae', 'Sellers', 'Hewett', '1944-04-15', '2015-10-28', NULL
FROM plots WHERE plot_number = 'NW-A-008-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', 'Robert', 'Sellers', NULL, '1962-08-14', '1962-08-18', NULL
FROM plots WHERE plot_number = 'NW-A-008-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Deborah', 'Ann', 'Sellers', NULL, '1964-06-13', '1966-02-03', NULL
FROM plots WHERE plot_number = 'NW-A-008-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', 'Wilbur', 'Sellers', NULL, '1939-12-05', '2006-11-28', NULL
FROM plots WHERE plot_number = 'NW-A-008-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'King', 'Sellers', '1943-01-31', '2014-11-15', 'Dosha'
FROM plots WHERE plot_number = 'NW-A-009-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Wilbur', 'Sellers', NULL, '1907-11-18', '1972-10-07', NULL
FROM plots WHERE plot_number = 'NW-A-009-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', 'Franklin', 'King', NULL, '1971-12-11', '1994-07-13', NULL
FROM plots WHERE plot_number = 'NW-A-009-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'Naomi', 'Sellers', NULL, '1907-09-16', '1968-12-08', NULL
FROM plots WHERE plot_number = 'NW-A-009-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', 'Glenworth', 'Trunnell', NULL, '1907-01-26', '1971-04-09', NULL
FROM plots WHERE plot_number = 'NW-A-010-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Myrtle', 'Louise', 'Trunnell', 'Reynolds', '1915-04-24', '2004-05-26', NULL
FROM plots WHERE plot_number = 'NW-A-010-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Chloe', NULL, 'Anderson', 'Spainhour', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-A-011-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Edwin', 'Spainhour', NULL, '1927-07-20', '1970-06-14', NULL
FROM plots WHERE plot_number = 'NW-A-011-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Joseph', 'Altemus', NULL, '1951-06-20', '1970-03-29', ' Jr.'
FROM plots WHERE plot_number = 'NW-A-011-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gloria', 'Lee', 'Stiller', NULL, '1933-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-012-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', 'Spencer (Skippy)', 'Stiller', NULL, '1929-02-27', '2007-05-29', NULL
FROM plots WHERE plot_number = 'NW-A-012-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Lee', 'Hewett', NULL, '1899-03-12', '1947-02-01', NULL
FROM plots WHERE plot_number = 'NW-A-013-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Hewett', 'Tharp', '1908-01-23', '1987-11-11', NULL
FROM plots WHERE plot_number = 'NW-A-013-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Delores', NULL, 'Swan', 'Hewett', '1927-11-20', '1998-09-18', NULL
FROM plots WHERE plot_number = 'NW-A-014-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Reese', 'Earnhardt', 'Swan', NULL, '1923-08-29', '2016-01-21', NULL
FROM plots WHERE plot_number = 'NW-A-014-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Dee', 'Harrington', 'Swan', '1954-08-02', '2025-05-17', NULL
FROM plots WHERE plot_number = 'NW-A-014-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Teresa', NULL, 'Hewett', 'Aman', '1966-07-15', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-015-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', 'William', 'Hewett', NULL, '1958-01-10', '2014-10-26', NULL
FROM plots WHERE plot_number = 'NW-A-015-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katherine', NULL, 'Beason', 'Howard', '1952-07-06', '2002-04-28', NULL
FROM plots WHERE plot_number = 'NW-A-015-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bernice', 'Lynn', 'Hewett', NULL, '1925-03-09', '1978-02-28', NULL
FROM plots WHERE plot_number = 'NW-A-016-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bobbie', NULL, 'Hewett', 'Duncan', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-A-016-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bernice', 'Lynn', 'Hewett', NULL, '1925-03-09', '1978-02-28', NULL
FROM plots WHERE plot_number = 'NW-A-016-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clinton', 'Edge', 'Bellamy', NULL, '1925-02-12', '2000-08-28', NULL
FROM plots WHERE plot_number = 'NW-A-017-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lorraine', NULL, 'Bellamy', 'Hewett', '1927-09-27', '1984-06-04', NULL
FROM plots WHERE plot_number = 'NW-A-017-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Suzanne', NULL, 'Connell', 'McLaurin', '1917-09-12', '1994-09-07', NULL
FROM plots WHERE plot_number = 'NW-A-019-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Alexander', 'Connell', NULL, '1945-01-14', '1968-08-20', NULL
FROM plots WHERE plot_number = 'NW-A-019-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Bethea', 'McLaurin', NULL, '1888-11-05', '1971-09-27', NULL
FROM plots WHERE plot_number = 'NW-A-021-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Aleine', NULL, 'McLaurin', 'McLeod', '1892-01-31', '1971-07-30', NULL
FROM plots WHERE plot_number = 'NW-A-021-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ivey', 'Millard', 'Gaskill', NULL, '1940-11-22', '2013-03-21', 'Sr.'
FROM plots WHERE plot_number = 'NW-A-022-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Priscilla', 'Annette', 'Gaskill', 'Russ', '1939-05-27', '2025-10-13', NULL
FROM plots WHERE plot_number = 'NW-A-022-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Ann', 'Wilkins', 'Russ', '1935-01-17', '2004-04-16', NULL
FROM plots WHERE plot_number = 'NW-A-024-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', 'Seba', 'Wilkins', NULL, '1922-11-17', '1997-02-01', NULL
FROM plots WHERE plot_number = 'NW-A-024-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'A.', 'Wharton', NULL, '1923-08-03', '1985-06-10', NULL
FROM plots WHERE plot_number = 'NW-A-025-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Wharton', 'Russ', '1925-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-025-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Esther', 'P.', 'Russ', NULL, '1897-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-025-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'V', 'Russ', NULL, '1898-01-01', '1970-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-025-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Agnes', 'Pearl', 'Russ / Doby', 'Southerland', '1920-03-19', '2010-01-06', NULL
FROM plots WHERE plot_number = 'NW-A-026-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Bernice', 'Russ', NULL, '1912-02-09', '1970-08-15', NULL
FROM plots WHERE plot_number = 'NW-A-026-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Baby', NULL, 'Fuller', NULL, '1969-11-27', '1969-11-28', NULL
FROM plots WHERE plot_number = 'NW-A-027-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lloyd', 'Leonard', 'Lewis', NULL, '1909-03-01', '1978-02-03', NULL
FROM plots WHERE plot_number = 'NW-A-027-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stella', NULL, 'Lewis', 'Begley', '1921-01-01', '1996-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-027-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Dean', 'Holden', NULL, '1963-05-06', '2020-10-16', NULL
FROM plots WHERE plot_number = 'NW-A-028-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Norman', 'Ray', 'Holden', NULL, '1936-06-11', '2018-06-27', NULL
FROM plots WHERE plot_number = 'NW-A-028-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Janice', NULL, 'Holden', 'Swan', '1933-09-25', '2012-12-01', NULL
FROM plots WHERE plot_number = 'NW-A-028-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cashwell', 'Beverly', 'Caroon', NULL, '1931-08-06', '2009-07-28', NULL
FROM plots WHERE plot_number = 'NW-A-029-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Irma', NULL, 'Caroon', 'Ross', '1932-11-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-029-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Howard', 'Ross', 'Caroon', NULL, '1964-03-30', '1993-02-08', NULL
FROM plots WHERE plot_number = 'NW-A-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patricia', 'Lee', 'Derr', NULL, '1963-10-18', '2006-10-20', NULL
FROM plots WHERE plot_number = 'NW-A-030-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alexander', 'Vincent', 'Goulet', NULL, '1930-08-11', '1999-07-01', NULL
FROM plots WHERE plot_number = 'NW-A-031-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bonnie', NULL, 'Goulet', 'Greer', '1913-01-01', '1989-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-031-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nola', NULL, 'Harrelson', 'Greer', '1893-01-01', '1971-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-031-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', NULL, 'Cox', 'Jenkins', '1945-11-07', '1999-10-14', NULL
FROM plots WHERE plot_number = 'NW-A-032-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evie', NULL, 'Price', 'McDowell', '1907-02-28', '1974-02-04', NULL
FROM plots WHERE plot_number = 'NW-A-035-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Francis', 'D.', 'Price', NULL, '1894-08-22', '1971-10-10', NULL
FROM plots WHERE plot_number = 'NW-A-035-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emmer', 'Lee', 'Price', NULL, '1930-07-27', '1993-01-28', NULL
FROM plots WHERE plot_number = 'NW-A-036-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dillard', 'Hugh', 'Price', NULL, '1928-12-06', '2015-09-05', NULL
FROM plots WHERE plot_number = 'NW-A-036-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-A-037-'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-A-038-'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cheryl', 'Victoria', 'Miller', 'Price', '1945-06-21', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-039-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'David', 'Miller', NULL, '1942-06-06', '2020-10-03', NULL
FROM plots WHERE plot_number = 'NW-A-039-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arline', NULL, 'Price', 'Rich', '1908-04-28', '1991-03-09', NULL
FROM plots WHERE plot_number = 'NW-A-040-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Carlton', 'Price', NULL, '1902-04-27', '1991-03-09', NULL
FROM plots WHERE plot_number = 'NW-A-040-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Carlton', 'Splawn', NULL, '1959-06-23', '1978-08-23', NULL
FROM plots WHERE plot_number = 'NW-A-041-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Franklin', 'Splawn', NULL, '1933-05-14', '2012-09-24', NULL
FROM plots WHERE plot_number = 'NW-A-041-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'Joyce', 'Splawn', 'Price', '1936-07-17', '2014-07-31', NULL
FROM plots WHERE plot_number = 'NW-A-041-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frank', 'Owen', 'May', NULL, '1896-05-30', '1972-02-27', NULL
FROM plots WHERE plot_number = 'NW-A-043-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', NULL, 'Dosher', NULL, '1909-01-29', '1974-09-07', NULL
FROM plots WHERE plot_number = 'NW-A-044-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'E.', 'Dosher', NULL, '1885-11-05', '1971-01-11', NULL
FROM plots WHERE plot_number = 'NW-A-044-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joan', NULL, 'Dosher', 'Piner', '1944-11-07', '1991-07-13', NULL
FROM plots WHERE plot_number = 'NW-A-044-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'William', 'Dosher', NULL, '1932-10-05', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-044-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', 'Hamlin', 'Pigott', NULL, '1912-07-01', '1978-04-08', NULL
FROM plots WHERE plot_number = 'NW-A-045-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marion', 'Fredere', 'Pigott', NULL, '1927-06-26', '1969-11-02', NULL
FROM plots WHERE plot_number = 'NW-A-045-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christopher', 'Michael', 'Royall', NULL, '2000-05-01', '2002-07-28', NULL
FROM plots WHERE plot_number = 'NW-A-045-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Leon', 'Perkins', NULL, '1939-11-18', '1969-08-05', NULL
FROM plots WHERE plot_number = 'NW-A-046-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Leon', 'Perkins', NULL, '1961-10-23', '1973-09-01', NULL
FROM plots WHERE plot_number = 'NW-A-046-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', NULL, 'Perkins', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-A-046-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alda', NULL, 'Lewis', 'Spencer', '1916-11-04', '2006-01-26', NULL
FROM plots WHERE plot_number = 'NW-A-047-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Preston', 'Lewis', NULL, '1912-09-18', '1993-11-25', NULL
FROM plots WHERE plot_number = 'NW-A-047-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorcas', 'H.', 'Lewis', NULL, '1913-10-10', '1985-02-17', NULL
FROM plots WHERE plot_number = 'NW-A-047-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'R.', 'Lewis', NULL, '1902-09-20', '1978-02-27', NULL
FROM plots WHERE plot_number = 'NW-A-047-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bonnie', 'Ball', 'Lewis', NULL, '1892-09-20', '1969-07-24', NULL
FROM plots WHERE plot_number = 'NW-A-047-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joyce', NULL, 'Hewett', 'Jorgensen', '1944-03-28', '2020-10-06', NULL
FROM plots WHERE plot_number = 'NW-A-048-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dempsey', 'White', 'Hewett', NULL, '1942-02-18', '2010-07-11', NULL
FROM plots WHERE plot_number = 'NW-A-048-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Porter', 'Jorgensen', NULL, '1912-09-22', '1968-12-26', NULL
FROM plots WHERE plot_number = 'NW-A-049-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elsie', NULL, 'Jorgensen', 'Willing', '1914-12-05', '2012-11-12', NULL
FROM plots WHERE plot_number = 'NW-A-049-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susie', NULL, 'Toler', 'Creech', '1913-10-15', '1984-01-05', NULL
FROM plots WHERE plot_number = 'NW-A-050-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tillman', 'Lawrence', 'Toler', NULL, '1899-09-03', '1992-12-30', NULL
FROM plots WHERE plot_number = 'NW-A-050-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', NULL, 'Creech', NULL, '1903-06-15', '1966-03-27', NULL
FROM plots WHERE plot_number = 'NW-A-051-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mae', 'Eileen', 'Creech', NULL, '1909-12-07', '1966-03-27', NULL
FROM plots WHERE plot_number = 'NW-A-051-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Mae', 'Dosher', NULL, '1905-02-21', '1941-03-07', NULL
FROM plots WHERE plot_number = 'NW-A-052-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Irene', 'W.', 'Dosher', NULL, '1869-09-10', '1946-09-07', NULL
FROM plots WHERE plot_number = 'NW-A-052-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'A.', 'Dosher', NULL, '1865-08-15', '1947-06-24', NULL
FROM plots WHERE plot_number = 'NW-A-052-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bessie', 'E.', 'Dosher', NULL, '1908-03-04', '1967-09-30', NULL
FROM plots WHERE plot_number = 'NW-A-052-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', 'M', 'Knepshield', 'Anderson', '1907-05-31', '2004-05-17', NULL
FROM plots WHERE plot_number = 'NW-A-053-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Corbitt', 'Henry', 'Anderson', NULL, '1908-08-19', '1987-03-15', NULL
FROM plots WHERE plot_number = 'NW-A-053-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jessie', 'Colon', 'Anderson', NULL, '1880-11-10', '1943-07-17', NULL
FROM plots WHERE plot_number = 'NW-A-053-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', 'Belle', 'Anderson', NULL, '1881-02-19', '1988-06-17', NULL
FROM plots WHERE plot_number = 'NW-A-053-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wilsie', NULL, 'Dosher', NULL, '1900-03-27', '1914-03-13', NULL
FROM plots WHERE plot_number = 'NW-A-053-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Lee', 'Dosher', NULL, '1902-07-22', '1971-04-14', NULL
FROM plots WHERE plot_number = 'NW-A-054-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nola', NULL, 'Dosher', 'Anderson', '1901-06-02', '1992-03-02', NULL
FROM plots WHERE plot_number = 'NW-A-054-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Moore', 'Willis', NULL, '1898-11-16', '1964-11-21', NULL
FROM plots WHERE plot_number = 'NW-A-056-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', NULL, 'Willis', 'Stroup', '1903-10-12', '1963-09-19', NULL
FROM plots WHERE plot_number = 'NW-A-056-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'L.', 'Hewett', NULL, '1916-02-10', '1960-05-29', NULL
FROM plots WHERE plot_number = 'NW-A-057-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clara', 'C.', 'Hewett', NULL, '1916-11-25', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-057-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Shawn', 'Leah', 'Watson', NULL, '1968-12-15', '1986-02-24', NULL
FROM plots WHERE plot_number = 'NW-A-057-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ronie', 'S.', 'Hewett', NULL, '1891-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-058-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'W.', 'Hewett', NULL, '1882-01-01', '1963-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-058-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leighton', 'O.', 'Hewett', NULL, '1932-08-16', '1932-10-06', NULL
FROM plots WHERE plot_number = 'NW-A-058-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Thomas', 'Hewett', NULL, '1920-09-14', '1920-09-23', NULL
FROM plots WHERE plot_number = 'NW-A-058-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Ritchie', 'Fulwood', NULL, '1947-10-09', '1980-05-27', NULL
FROM plots WHERE plot_number = 'NW-A-060-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'T.', 'Fulwood', NULL, '1922-06-24', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-060-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'C.', 'Fulwood', NULL, '1841-01-01', '1863-07-03', NULL
FROM plots WHERE plot_number = 'NW-A-060-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Fulwood', 'Reaves', '1926-09-02', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-060-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Fulwood', 'Norris', '1928-10-28', '1982-12-23', NULL
FROM plots WHERE plot_number = 'NW-A-060-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Fulwood', 'Dosher', '1900-10-11', '1978-07-15', NULL
FROM plots WHERE plot_number = 'NW-A-060-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'T.', 'Fulwood', NULL, '1888-06-16', '1981-04-16', NULL
FROM plots WHERE plot_number = 'NW-A-060-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donna', 'Dosher', 'Allen', NULL, '1954-10-23', '2022-06-15', NULL
FROM plots WHERE plot_number = 'NW-A-062-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ethel', 'S.', 'Tenan', NULL, '1929-01-30', '1971-12-27', NULL
FROM plots WHERE plot_number = 'NW-A-062-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'L.', 'Tenan', NULL, '1922-10-20', '1974-05-03', NULL
FROM plots WHERE plot_number = 'NW-A-062-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tom', 'T.', 'Burke', NULL, '1932-02-06', '1961-05-29', NULL
FROM plots WHERE plot_number = 'NW-A-063-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jane', NULL, 'Schoenberg', 'McEwen', '1925-02-20', '2018-12-26', NULL
FROM plots WHERE plot_number = 'NW-A-064-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', NULL, 'Kendall', 'Liles', '1952-01-10', '2005-11-10', NULL
FROM plots WHERE plot_number = 'NW-A-064-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'Dwight', 'McEwen', NULL, '1885-05-29', '1968-09-25', NULL
FROM plots WHERE plot_number = 'NW-A-064-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', NULL, 'Liles', 'McEwen', '1916-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-A-064-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Percy', 'Woodrow', 'Liles', NULL, '1912-01-01', '1992-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-064-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter', NULL, 'Schmidt', NULL, '1892-01-01', '1963-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-065-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'M.', 'Schmidt', NULL, '1889-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-065-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Schmidt', NULL, '1956-01-01', '1970-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-066-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hortz "Smitty', 'Arno', 'Schmidt', NULL, '1928-11-05', '2008-09-07', NULL
FROM plots WHERE plot_number = 'NW-A-066-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorcas "Dot', NULL, 'Schmidt', 'Watts', '1931-01-19', '2004-01-09', NULL
FROM plots WHERE plot_number = 'NW-A-066-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Mae', 'Watts', NULL, '1903-07-15', '1992-11-25', NULL
FROM plots WHERE plot_number = 'NW-A-067-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Hulan', 'Watts', NULL, '1902-01-01', '1963-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-067-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Claudia', 'J.', 'Wells', NULL, '1908-04-05', '1991-06-08', NULL
FROM plots WHERE plot_number = 'NW-A-069-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'S.', 'Wells', NULL, '1903-10-24', '1967-10-18', NULL
FROM plots WHERE plot_number = 'NW-A-069-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Dunbar', 'Davis', NULL, '1882-09-29', '1965-04-05', NULL
FROM plots WHERE plot_number = 'NW-A-070-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', NULL, 'Young', 'Davis', '1908-12-10', '1961-05-30', NULL
FROM plots WHERE plot_number = 'NW-A-070-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Fredrick', 'Watkins', NULL, '1956-11-15', '2005-03-11', 'Jr.'
FROM plots WHERE plot_number = 'NW-A-072-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Fredrick', 'Watkins', NULL, '1923-04-21', '2014-10-31', 'Sr'
FROM plots WHERE plot_number = 'NW-A-072-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ben', 'Shelton', 'Neese', NULL, '1935-11-30', '2015-11-28', NULL
FROM plots WHERE plot_number = 'NW-A-072-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', 'Rose', 'Neese', 'Chapman', '1939-05-07', '2016-06-05', NULL
FROM plots WHERE plot_number = 'NW-A-072-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', 'Katherine', 'Marsette', NULL, '1950-09-09', '2003-10-23', NULL
FROM plots WHERE plot_number = 'NW-A-073-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lisa', 'Margo', 'Neese', NULL, '1962-09-26', '1978-09-10', NULL
FROM plots WHERE plot_number = 'NW-A-073-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Miller', NULL, '1871-01-01', '1947-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-073-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', 'M.', 'Davis', NULL, '1894-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-073-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'D.', 'M.', 'Davis', NULL, '1889-01-01', '1962-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-073-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Watkins', 'Davis', '1920-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-A-073-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lorne', 'P.', 'Munford', NULL, '1915-01-16', '1955-12-05', NULL
FROM plots WHERE plot_number = 'NW-A-074-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', NULL, 'Bartels', NULL, '1879-05-16', '1939-01-23', NULL
FROM plots WHERE plot_number = 'NW-A-074-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertha', NULL, 'Bartels', NULL, '1885-01-13', '1991-03-21', NULL
FROM plots WHERE plot_number = 'NW-A-074-6'
ON CONFLICT DO NOTHING;

