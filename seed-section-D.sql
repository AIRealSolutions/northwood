-- ============================================
-- Northwood Cemetery - Section D Data Migration
-- ============================================
-- Total plots: 592
-- Deceased records: 168
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section D
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-D-001-1', 'D', 1, 1, 'standard', 'available', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-2', 'D', 1, 2, 'standard', 'occupied', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-3', 'D', 1, 3, 'standard', 'available', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-4', 'D', 1, 4, 'standard', 'occupied', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-5', 'D', 1, 5, 'standard', 'occupied', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-6', 'D', 1, 6, 'standard', 'occupied', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-7', 'D', 1, 7, 'standard', 'occupied', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-001-8', 'D', 1, 8, 'standard', 'available', 4.0, 10.0, 'Sam Jackson', 'Hwy 133 & 87, Southport, NC, 28461', '1971-07-19'),
('NW-D-002-1', 'D', 2, 1, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-2', 'D', 2, 2, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-3', 'D', 2, 3, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-4', 'D', 2, 4, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-5', 'D', 2, 5, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-6', 'D', 2, 6, 'standard', 'occupied', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-7', 'D', 2, 7, 'standard', 'occupied', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-002-8', 'D', 2, 8, 'standard', 'available', 4.0, 10.0, 'Pete Larson', NULL, '1970-10-08'),
('NW-D-003-1', 'D', 3, 1, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-2', 'D', 3, 2, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-3', 'D', 3, 3, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-4', 'D', 3, 4, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-5', 'D', 3, 5, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-6', 'D', 3, 6, 'standard', 'occupied', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-7', 'D', 3, 7, 'standard', 'occupied', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-003-8', 'D', 3, 8, 'standard', 'available', 4.0, 10.0, 'William Oberjohann', '418 W. West Street, Southport, NC, 28461', '1962-08-13'),
('NW-D-004-1', 'D', 4, 1, 'standard', 'available', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-2', 'D', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-3', 'D', 4, 3, 'standard', 'occupied', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-4', 'D', 4, 4, 'standard', 'occupied', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-5', 'D', 4, 5, 'standard', 'available', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-6', 'D', 4, 6, 'standard', 'available', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-7', 'D', 4, 7, 'standard', 'available', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-004-8', 'D', 4, 8, 'standard', 'available', 4.0, 10.0, 'Floyd Dilsaver', '402 Herring Drive, Southport, NC, 28461', '1962-07-06'),
('NW-D-005-1', 'D', 5, 1, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-2', 'D', 5, 2, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-3', 'D', 5, 3, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-4', 'D', 5, 4, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-5', 'D', 5, 5, 'standard', 'occupied', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-6', 'D', 5, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-7', 'D', 5, 7, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-005-8', 'D', 5, 8, 'standard', 'available', 4.0, 10.0, 'Robert E. Nicholson', '101 N. Caswell Ave., Southport, NC, 28461', '1964-11-09'),
('NW-D-006-1', 'D', 6, 1, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-2', 'D', 6, 2, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-3', 'D', 6, 3, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-4', 'D', 6, 4, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-5', 'D', 6, 5, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-6', 'D', 6, 6, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-7', 'D', 6, 7, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-006-8', 'D', 6, 8, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1965-10-15'),
('NW-D-007-1', 'D', 7, 1, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-2', 'D', 7, 2, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-3', 'D', 7, 3, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-4', 'D', 7, 4, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-5', 'D', 7, 5, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-6', 'D', 7, 6, 'standard', 'available', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-7', 'D', 7, 7, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-007-8', 'D', 7, 8, 'standard', 'occupied', 4.0, 10.0, 'C. D. Pickerrell', '202 Frink Drive, Southport, NC, 28461', '1966-01-28'),
('NW-D-008-1', 'D', 8, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-2', 'D', 8, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-3', 'D', 8, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-4', 'D', 8, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-5', 'D', 8, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-6', 'D', 8, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-7', 'D', 8, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-008-8', 'D', 8, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Horace Woodside', NULL, '1966-02-07'),
('NW-D-009-1', 'D', 9, 1, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-2', 'D', 9, 2, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-3', 'D', 9, 3, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-4', 'D', 9, 4, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-5', 'D', 9, 5, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-6', 'D', 9, 6, 'standard', 'occupied', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-7', 'D', 9, 7, 'standard', 'occupied', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-009-8', 'D', 9, 8, 'standard', 'available', 4.0, 10.0, 'William L. Evans', '120 Park Drive, Southport, NC, 28461', '1966-02-09'),
('NW-D-010-1', 'D', 10, 1, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-2', 'D', 10, 2, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-3', 'D', 10, 3, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-4', 'D', 10, 4, 'standard', 'occupied', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-5', 'D', 10, 5, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-6', 'D', 10, 6, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-7', 'D', 10, 7, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-010-8', 'D', 10, 8, 'standard', 'available', 4.0, 10.0, 'James C. Bowman', 'River Drive, Southport, NC, 28461', '1967-01-17'),
('NW-D-011-1', 'D', 11, 1, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-2', 'D', 11, 2, 'standard', 'occupied', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-3', 'D', 11, 3, 'standard', 'occupied', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-4', 'D', 11, 4, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-5', 'D', 11, 5, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-6', 'D', 11, 6, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-7', 'D', 11, 7, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-011-8', 'D', 11, 8, 'standard', 'available', 4.0, 10.0, 'L. B. Leonard', NULL, NULL),
('NW-D-012-1', 'D', 12, 1, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-2', 'D', 12, 2, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-3', 'D', 12, 3, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-4', 'D', 12, 4, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-5', 'D', 12, 5, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-6', 'D', 12, 6, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-7', 'D', 12, 7, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-012-8', 'D', 12, 8, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-1', 'D', 13, 1, 'standard', 'occupied', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-2', 'D', 13, 2, 'standard', 'occupied', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-3', 'D', 13, 3, 'standard', 'occupied', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-4', 'D', 13, 4, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-5', 'D', 13, 5, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-6', 'D', 13, 6, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-7', 'D', 13, 7, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-013-8', 'D', 13, 8, 'standard', 'available', 4.0, 10.0, 'L. W. Clemmons', NULL, '1963-07-22'),
('NW-D-014-1', 'D', 14, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-2', 'D', 14, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-3', 'D', 14, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-4', 'D', 14, 4, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-5', 'D', 14, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-6', 'D', 14, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-7', 'D', 14, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-014-8', 'D', 14, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. L. C. Arnold', NULL, NULL),
('NW-D-015-1', 'D', 15, 1, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-2', 'D', 15, 2, 'standard', 'occupied', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-3', 'D', 15, 3, 'standard', 'occupied', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-4', 'D', 15, 4, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-5', 'D', 15, 5, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-6', 'D', 15, 6, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-7', 'D', 15, 7, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-015-8', 'D', 15, 8, 'standard', 'available', 4.0, 10.0, 'Sam (Mrs. Mary J.) Bennett', NULL, '1980-08-05'),
('NW-D-016-1', 'D', 16, 1, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-2', 'D', 16, 2, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-3', 'D', 16, 3, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-4', 'D', 16, 4, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-5', 'D', 16, 5, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-6', 'D', 16, 6, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-7', 'D', 16, 7, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-016-8', 'D', 16, 8, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-1', 'D', 17, 1, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-2', 'D', 17, 2, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-3', 'D', 17, 3, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-4', 'D', 17, 4, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-5', 'D', 17, 5, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-6', 'D', 17, 6, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-7', 'D', 17, 7, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-017-8', 'D', 17, 8, 'standard', 'available', 4.0, 10.0, 'W. L. Aldridge', '315 N. Caswell Ave., Southport, NC, 28461', '1970-04-09'),
('NW-D-018-1', 'D', 18, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-2', 'D', 18, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-3', 'D', 18, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-4', 'D', 18, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-5', 'D', 18, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-6', 'D', 18, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-7', 'D', 18, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-018-8', 'D', 18, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-019-1', 'D', 19, 1, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-2', 'D', 19, 2, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-3', 'D', 19, 3, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-4', 'D', 19, 4, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-5', 'D', 19, 5, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-6', 'D', 19, 6, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-7', 'D', 19, 7, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-019-8', 'D', 19, 8, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-020-1', 'D', 20, 1, 'standard', 'occupied', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-2', 'D', 20, 2, 'standard', 'occupied', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-3', 'D', 20, 3, 'standard', 'occupied', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-4', 'D', 20, 4, 'standard', 'occupied', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-5', 'D', 20, 5, 'standard', 'available', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-6', 'D', 20, 6, 'standard', 'available', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-7', 'D', 20, 7, 'standard', 'available', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-020-8', 'D', 20, 8, 'standard', 'available', 4.0, 10.0, 'W. M. Brogaw', NULL, NULL),
('NW-D-021-1', 'D', 21, 1, 'standard', 'occupied', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-2', 'D', 21, 2, 'standard', 'occupied', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-3', 'D', 21, 3, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-4', 'D', 21, 4, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-5', 'D', 21, 5, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-6', 'D', 21, 6, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-7', 'D', 21, 7, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-021-8', 'D', 21, 8, 'standard', 'available', 4.0, 10.0, 'S. W. Watts', NULL, NULL),
('NW-D-022-1', 'D', 22, 1, 'standard', 'occupied', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-2', 'D', 22, 2, 'standard', 'occupied', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-3', 'D', 22, 3, 'standard', 'occupied', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-4', 'D', 22, 4, 'standard', 'available', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-5', 'D', 22, 5, 'standard', 'occupied', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-6', 'D', 22, 6, 'standard', 'occupied', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-7', 'D', 22, 7, 'standard', 'available', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-022-8', 'D', 22, 8, 'standard', 'available', 4.0, 10.0, 'J. M. Barnhill', NULL, '1940-02-06'),
('NW-D-023-1', 'D', 23, 1, 'standard', 'available', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-2', 'D', 23, 2, 'standard', 'available', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-3', 'D', 23, 3, 'standard', 'available', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-4', 'D', 23, 4, 'standard', 'occupied', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-5', 'D', 23, 5, 'standard', 'available', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-6', 'D', 23, 6, 'standard', 'occupied', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-7', 'D', 23, 7, 'standard', 'occupied', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-023-8', 'D', 23, 8, 'standard', 'available', 4.0, 10.0, 'J. E. McKeithan', NULL, NULL),
('NW-D-024-1', 'D', 24, 1, 'standard', 'available', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-2', 'D', 24, 2, 'standard', 'available', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-3', 'D', 24, 3, 'standard', 'available', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-4', 'D', 24, 4, 'standard', 'available', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-5', 'D', 24, 5, 'standard', 'available', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-6', 'D', 24, 6, 'standard', 'occupied', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-7', 'D', 24, 7, 'standard', 'occupied', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-024-8', 'D', 24, 8, 'standard', 'occupied', 4.0, 10.0, 'J. D. Gainey', NULL, '1946-01-30'),
('NW-D-025-1', 'D', 25, 1, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-2', 'D', 25, 2, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-3', 'D', 25, 3, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-4', 'D', 25, 4, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-5', 'D', 25, 5, 'standard', 'occupied', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-6', 'D', 25, 6, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-7', 'D', 25, 7, 'standard', 'occupied', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-025-8', 'D', 25, 8, 'standard', 'available', 4.0, 10.0, 'T. B. Carr', NULL, NULL),
('NW-D-026-1', 'D', 26, 1, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-2', 'D', 26, 2, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-3', 'D', 26, 3, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-4', 'D', 26, 4, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-5', 'D', 26, 5, 'standard', 'occupied', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-6', 'D', 26, 6, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-7', 'D', 26, 7, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-026-8', 'D', 26, 8, 'standard', 'available', 4.0, 10.0, 'James E. Carr', NULL, NULL),
('NW-D-027-1', 'D', 27, 1, 'standard', 'available', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-2', 'D', 27, 2, 'standard', 'available', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-3', 'D', 27, 3, 'standard', 'available', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-4', 'D', 27, 4, 'standard', 'available', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-5', 'D', 27, 5, 'standard', 'occupied', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-6', 'D', 27, 6, 'standard', 'occupied', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-7', 'D', 27, 7, 'standard', 'occupied', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-027-8', 'D', 27, 8, 'standard', 'available', 4.0, 10.0, 'C. H.  (Deed Made To C. E. Royal) Swan', NULL, '1952-09-18'),
('NW-D-028-1', 'D', 28, 1, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-2', 'D', 28, 2, 'standard', 'occupied', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-3', 'D', 28, 3, 'standard', 'occupied', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-4', 'D', 28, 4, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-5', 'D', 28, 5, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-6', 'D', 28, 6, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-7', 'D', 28, 7, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-028-8', 'D', 28, 8, 'standard', 'available', 4.0, 10.0, 'Marie Royal', '234 River Drive, Southport, NC, 28461', '1964-09-04'),
('NW-D-029-1', 'D', 29, 1, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-2', 'D', 29, 2, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-3', 'D', 29, 3, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-4', 'D', 29, 4, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-5', 'D', 29, 5, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-6', 'D', 29, 6, 'standard', 'occupied', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-7', 'D', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-029-8', 'D', 29, 8, 'standard', 'available', 4.0, 10.0, 'Thomas Larsen', NULL, NULL),
('NW-D-030-1', 'D', 30, 1, 'standard', 'available', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-2', 'D', 30, 2, 'standard', 'available', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-3', 'D', 30, 3, 'standard', 'available', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-4', 'D', 30, 4, 'standard', 'available', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-5', 'D', 30, 5, 'standard', 'occupied', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-6', 'D', 30, 6, 'standard', 'occupied', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-7', 'D', 30, 7, 'standard', 'occupied', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-030-8', 'D', 30, 8, 'standard', 'occupied', 4.0, 10.0, 'Laura St. George', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-1', 'D', 31, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-2', 'D', 31, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-3', 'D', 31, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-4', 'D', 31, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-5', 'D', 31, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-6', 'D', 31, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-7', 'D', 31, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-031-8', 'D', 31, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. C. J. Williamson', 'N. Atlantic, Southport, NC, 28461', NULL),
('NW-D-032-1', 'D', 32, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-2', 'D', 32, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-3', 'D', 32, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-4', 'D', 32, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-5', 'D', 32, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-6', 'D', 32, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-7', 'D', 32, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-032-8', 'D', 32, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Lou H. Smith', NULL, '1945-02-08'),
('NW-D-033-1', 'D', 33, 1, 'standard', 'occupied', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-2', 'D', 33, 2, 'standard', 'occupied', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-3', 'D', 33, 3, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-4', 'D', 33, 4, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-5', 'D', 33, 5, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-6', 'D', 33, 6, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-7', 'D', 33, 7, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-033-8', 'D', 33, 8, 'standard', 'available', 4.0, 10.0, 'H. A. Livingston', 'E. Moore Street, Southport, NC, 28461', '1945-01-01'),
('NW-D-034-1', 'D', 34, 1, 'standard', 'available', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-2', 'D', 34, 2, 'standard', 'available', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-3', 'D', 34, 3, 'standard', 'available', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-4', 'D', 34, 4, 'standard', 'available', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-5', 'D', 34, 5, 'standard', 'occupied', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-6', 'D', 34, 6, 'standard', 'occupied', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-7', 'D', 34, 7, 'standard', 'occupied', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-034-8', 'D', 34, 8, 'standard', 'occupied', 4.0, 10.0, 'A. B. Weeks', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-D-035-1', 'D', 35, 1, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-2', 'D', 35, 2, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-3', 'D', 35, 3, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-4', 'D', 35, 4, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-5', 'D', 35, 5, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-6', 'D', 35, 6, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-7', 'D', 35, 7, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-035-8', 'D', 35, 8, 'standard', 'available', 4.0, 10.0, 'H. L. Brown', NULL, NULL),
('NW-D-036-1', 'D', 36, 1, 'standard', 'occupied', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-2', 'D', 36, 2, 'standard', 'occupied', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-3', 'D', 36, 3, 'standard', 'occupied', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-4', 'D', 36, 4, 'standard', 'available', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-5', 'D', 36, 5, 'standard', 'available', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-6', 'D', 36, 6, 'standard', 'available', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-7', 'D', 36, 7, 'standard', 'available', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-036-8', 'D', 36, 8, 'standard', 'available', 4.0, 10.0, 'J. H. Cannon', NULL, NULL),
('NW-D-037-1', 'D', 37, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-2', 'D', 37, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-3', 'D', 37, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-4', 'D', 37, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-5', 'D', 37, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-6', 'D', 37, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-7', 'D', 37, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-037-8', 'D', 37, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-1', 'D', 38, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-2', 'D', 38, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-3', 'D', 38, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-4', 'D', 38, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-5', 'D', 38, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-6', 'D', 38, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-7', 'D', 38, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-038-8', 'D', 38, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-D-039-1', 'D', 39, 1, 'standard', 'available', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-2', 'D', 39, 2, 'standard', 'occupied', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-3', 'D', 39, 3, 'standard', 'occupied', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-4', 'D', 39, 4, 'standard', 'occupied', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-5', 'D', 39, 5, 'standard', 'available', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-6', 'D', 39, 6, 'standard', 'available', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-7', 'D', 39, 7, 'standard', 'available', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-039-8', 'D', 39, 8, 'standard', 'available', 4.0, 10.0, 'John J Garrett', NULL, NULL),
('NW-D-040-1', 'D', 40, 1, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-2', 'D', 40, 2, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-3', 'D', 40, 3, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-4', 'D', 40, 4, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-5', 'D', 40, 5, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-6', 'D', 40, 6, 'standard', 'occupied', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-7', 'D', 40, 7, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-040-8', 'D', 40, 8, 'standard', 'available', 4.0, 10.0, 'A. E. Peterson', NULL, NULL),
('NW-D-041-1', 'D', 41, 1, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-2', 'D', 41, 2, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-3', 'D', 41, 3, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-4', 'D', 41, 4, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-5', 'D', 41, 5, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-6', 'D', 41, 6, 'standard', 'occupied', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-7', 'D', 41, 7, 'standard', 'occupied', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-041-8', 'D', 41, 8, 'standard', 'available', 4.0, 10.0, 'W. S. Jones', NULL, NULL),
('NW-D-042-1', 'D', 42, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-2', 'D', 42, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-3', 'D', 42, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-4', 'D', 42, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-5', 'D', 42, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-6', 'D', 42, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-7', 'D', 42, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-042-8', 'D', 42, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. W. S. (Tiny) (New deed/Lillie R. Jones', 'Morrill) Ord.BOA41593', '1993-04-15'),
('NW-D-043-1', 'D', 43, 1, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-2', 'D', 43, 2, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-3', 'D', 43, 3, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-4', 'D', 43, 4, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-5', 'D', 43, 5, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-6', 'D', 43, 6, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-7', 'D', 43, 7, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-043-8', 'D', 43, 8, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-1', 'D', 44, 1, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-2', 'D', 44, 2, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-3', 'D', 44, 3, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-4', 'D', 44, 4, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-5', 'D', 44, 5, 'standard', 'available', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-6', 'D', 44, 6, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-7', 'D', 44, 7, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-044-8', 'D', 44, 8, 'standard', 'occupied', 4.0, 10.0, 'J. E. Finch', '308 Dry Street, Southport, NC, 28461', NULL),
('NW-D-045-1', 'D', 45, 1, 'standard', 'available', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-2', 'D', 45, 2, 'standard', 'available', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-3', 'D', 45, 3, 'standard', 'available', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-4', 'D', 45, 4, 'standard', 'available', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-5', 'D', 45, 5, 'standard', 'occupied', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-6', 'D', 45, 6, 'standard', 'occupied', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-7', 'D', 45, 7, 'standard', 'occupied', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-045-8', 'D', 45, 8, 'standard', 'occupied', 4.0, 10.0, 'Joe Lewis', NULL, NULL),
('NW-D-046-1', 'D', 46, 1, 'standard', 'available', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-2', 'D', 46, 2, 'standard', 'available', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-3', 'D', 46, 3, 'standard', 'available', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-4', 'D', 46, 4, 'standard', 'available', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-5', 'D', 46, 5, 'standard', 'occupied', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-6', 'D', 46, 6, 'standard', 'occupied', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-7', 'D', 46, 7, 'standard', 'occupied', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-046-8', 'D', 46, 8, 'standard', 'occupied', 4.0, 10.0, 'Walter Jones', NULL, NULL),
('NW-D-047-1', 'D', 47, 1, 'standard', 'available', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-2', 'D', 47, 2, 'standard', 'available', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-3', 'D', 47, 3, 'standard', 'available', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-4', 'D', 47, 4, 'standard', 'available', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-5', 'D', 47, 5, 'standard', 'occupied', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-6', 'D', 47, 6, 'standard', 'occupied', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-7', 'D', 47, 7, 'standard', 'occupied', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-047-8', 'D', 47, 8, 'standard', 'available', 4.0, 10.0, 'Albert Bogie', NULL, NULL),
('NW-D-048-1', 'D', 48, 1, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-2', 'D', 48, 2, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-3', 'D', 48, 3, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-4', 'D', 48, 4, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-5', 'D', 48, 5, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-6', 'D', 48, 6, 'standard', 'occupied', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-7', 'D', 48, 7, 'standard', 'occupied', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-048-8', 'D', 48, 8, 'standard', 'available', 4.0, 10.0, 'I. R. Robinson', NULL, NULL),
('NW-D-049-1', 'D', 49, 1, 'standard', 'available', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-2', 'D', 49, 2, 'standard', 'available', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-3', 'D', 49, 3, 'standard', 'available', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-4', 'D', 49, 4, 'standard', 'available', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-5', 'D', 49, 5, 'standard', 'occupied', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-6', 'D', 49, 6, 'standard', 'occupied', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-7', 'D', 49, 7, 'standard', 'occupied', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-049-8', 'D', 49, 8, 'standard', 'occupied', 4.0, 10.0, 'Archie Sellers', NULL, NULL),
('NW-D-050-1', 'D', 50, 1, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-2', 'D', 50, 2, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-3', 'D', 50, 3, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-4', 'D', 50, 4, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-5', 'D', 50, 5, 'standard', 'occupied', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-6', 'D', 50, 6, 'standard', 'occupied', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-7', 'D', 50, 7, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-050-8', 'D', 50, 8, 'standard', 'available', 4.0, 10.0, 'W. S. Davis', NULL, '1955-04-12'),
('NW-D-051-1', 'D', 51, 1, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-2', 'D', 51, 2, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-3', 'D', 51, 3, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-4', 'D', 51, 4, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-5', 'D', 51, 5, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-6', 'D', 51, 6, 'standard', 'occupied', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-7', 'D', 51, 7, 'standard', 'occupied', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-051-8', 'D', 51, 8, 'standard', 'available', 4.0, 10.0, 'Paul Messick', NULL, NULL),
('NW-D-052-1', 'D', 52, 1, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-2', 'D', 52, 2, 'standard', 'occupied', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-3', 'D', 52, 3, 'standard', 'occupied', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-4', 'D', 52, 4, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-5', 'D', 52, 5, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-6', 'D', 52, 6, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-7', 'D', 52, 7, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-052-8', 'D', 52, 8, 'standard', 'available', 4.0, 10.0, 'D. E. Arthur', NULL, NULL),
('NW-D-053-1', 'D', 53, 1, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-2', 'D', 53, 2, 'standard', 'occupied', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-3', 'D', 53, 3, 'standard', 'occupied', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-4', 'D', 53, 4, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-5', 'D', 53, 5, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-6', 'D', 53, 6, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-7', 'D', 53, 7, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-053-8', 'D', 53, 8, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-1', 'D', 54, 1, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-2', 'D', 54, 2, 'standard', 'occupied', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-3', 'D', 54, 3, 'standard', 'occupied', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-4', 'D', 54, 4, 'standard', 'occupied', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-5', 'D', 54, 5, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-6', 'D', 54, 6, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-7', 'D', 54, 7, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-054-8', 'D', 54, 8, 'standard', 'available', 4.0, 10.0, 'J. J. Loughlin', NULL, NULL),
('NW-D-055-1', 'D', 55, 1, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-2', 'D', 55, 2, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-3', 'D', 55, 3, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-4', 'D', 55, 4, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-5', 'D', 55, 5, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-6', 'D', 55, 6, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-7', 'D', 55, 7, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-055-8', 'D', 55, 8, 'standard', 'available', 4.0, 10.0, 'R. K. Godfrey', NULL, NULL),
('NW-D-056-1', 'D', 56, 1, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-2', 'D', 56, 2, 'standard', 'occupied', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-3', 'D', 56, 3, 'standard', 'occupied', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-4', 'D', 56, 4, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-5', 'D', 56, 5, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-6', 'D', 56, 6, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-7', 'D', 56, 7, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-056-8', 'D', 56, 8, 'standard', 'available', 4.0, 10.0, 'W. P. Horne', '239 E. Bay Street, Southport, NC, 28461', '1979-06-15'),
('NW-D-057-1', 'D', 57, 1, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-2', 'D', 57, 2, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-3', 'D', 57, 3, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-4', 'D', 57, 4, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-5', 'D', 57, 5, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-6', 'D', 57, 6, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-7', 'D', 57, 7, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-057-8', 'D', 57, 8, 'standard', 'available', 4.0, 10.0, 'Building/ Lattice Resting Area', 'Not For Sale', NULL),
('NW-D-058-1', 'D', 58, 1, 'standard', 'occupied', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-2', 'D', 58, 2, 'standard', 'occupied', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-3', 'D', 58, 3, 'standard', 'occupied', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-4', 'D', 58, 4, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-5', 'D', 58, 5, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-6', 'D', 58, 6, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-7', 'D', 58, 7, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-058-8', 'D', 58, 8, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-1', 'D', 59, 1, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-2', 'D', 59, 2, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-3', 'D', 59, 3, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-4', 'D', 59, 4, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-5', 'D', 59, 5, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-6', 'D', 59, 6, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-7', 'D', 59, 7, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-059-8', 'D', 59, 8, 'standard', 'available', 4.0, 10.0, 'Dan Harrelson', '109 Kinsley Dr, Southport, NC, 28461', '1953-11-14'),
('NW-D-060-1', 'D', 60, 1, 'standard', 'occupied', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-2', 'D', 60, 2, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-3', 'D', 60, 3, 'standard', 'occupied', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-4', 'D', 60, 4, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-5', 'D', 60, 5, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-6', 'D', 60, 6, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-7', 'D', 60, 7, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-060-8', 'D', 60, 8, 'standard', 'available', 4.0, 10.0, 'John Carr Davis', NULL, '1955-03-21'),
('NW-D-061-1', 'D', 61, 1, 'standard', 'occupied', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-2', 'D', 61, 2, 'standard', 'available', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-3', 'D', 61, 3, 'standard', 'available', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-4', 'D', 61, 4, 'standard', 'available', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-5', 'D', 61, 5, 'standard', 'occupied', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-6', 'D', 61, 6, 'standard', 'occupied', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-7', 'D', 61, 7, 'standard', 'available', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-061-8', 'D', 61, 8, 'standard', 'available', 4.0, 10.0, 'Connie & Mae Lupton', '205 E. Brown Street, Southport, NC, 28461', '1955-04-12'),
('NW-D-062-1', 'D', 62, 1, 'standard', 'occupied', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-2', 'D', 62, 2, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-3', 'D', 62, 3, 'standard', 'occupied', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-4', 'D', 62, 4, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-5', 'D', 62, 5, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-6', 'D', 62, 6, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-7', 'D', 62, 7, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-062-8', 'D', 62, 8, 'standard', 'available', 4.0, 10.0, 'Edwin P. Hayes', NULL, '1955-05-18'),
('NW-D-063-1', 'D', 63, 1, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-2', 'D', 63, 2, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-3', 'D', 63, 3, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-4', 'D', 63, 4, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-5', 'D', 63, 5, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-6', 'D', 63, 6, 'standard', 'occupied', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-7', 'D', 63, 7, 'standard', 'occupied', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-063-8', 'D', 63, 8, 'standard', 'available', 4.0, 10.0, 'W. M. (Ethel & Bill) Hayes', NULL, NULL),
('NW-D-064-1', 'D', 64, 1, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-2', 'D', 64, 2, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-3', 'D', 64, 3, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-4', 'D', 64, 4, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-5', 'D', 64, 5, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-6', 'D', 64, 6, 'standard', 'occupied', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-7', 'D', 64, 7, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-064-8', 'D', 64, 8, 'standard', 'available', 4.0, 10.0, 'A.E. (Eunice Huntley) Hunley', NULL, '1957-06-24'),
('NW-D-065-1', 'D', 65, 1, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-2', 'D', 65, 2, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-3', 'D', 65, 3, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-4', 'D', 65, 4, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-5', 'D', 65, 5, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-6', 'D', 65, 6, 'standard', 'occupied', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-7', 'D', 65, 7, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-065-8', 'D', 65, 8, 'standard', 'available', 4.0, 10.0, 'A. M. Shirley', NULL, '1957-07-15'),
('NW-D-066-1', 'D', 66, 1, 'standard', 'available', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-2', 'D', 66, 2, 'standard', 'available', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-3', 'D', 66, 3, 'standard', 'available', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-4', 'D', 66, 4, 'standard', 'available', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-5', 'D', 66, 5, 'standard', 'occupied', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-6', 'D', 66, 6, 'standard', 'available', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-7', 'D', 66, 7, 'standard', 'occupied', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-066-8', 'D', 66, 8, 'standard', 'occupied', 4.0, 10.0, 'Susie Hewett', NULL, '1968-07-05'),
('NW-D-067-1', 'D', 67, 1, 'standard', 'available', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-2', 'D', 67, 2, 'standard', 'available', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-3', 'D', 67, 3, 'standard', 'available', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-4', 'D', 67, 4, 'standard', 'available', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-5', 'D', 67, 5, 'standard', 'occupied', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-6', 'D', 67, 6, 'standard', 'occupied', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-7', 'D', 67, 7, 'standard', 'occupied', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-067-8', 'D', 67, 8, 'standard', 'available', 4.0, 10.0, 'Ina W. Normant', NULL, '1965-12-28'),
('NW-D-068-1', 'D', 68, 1, 'standard', 'occupied', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-2', 'D', 68, 2, 'standard', 'occupied', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-3', 'D', 68, 3, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-4', 'D', 68, 4, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-5', 'D', 68, 5, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-6', 'D', 68, 6, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-7', 'D', 68, 7, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-068-8', 'D', 68, 8, 'standard', 'available', 4.0, 10.0, 'R. A. Dutton', NULL, '1965-11-05'),
('NW-D-069-1', 'D', 69, 1, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-2', 'D', 69, 2, 'standard', 'occupied', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-3', 'D', 69, 3, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-4', 'D', 69, 4, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-5', 'D', 69, 5, 'standard', 'occupied', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-6', 'D', 69, 6, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-7', 'D', 69, 7, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-069-8', 'D', 69, 8, 'standard', 'available', 4.0, 10.0, 'Herbert Galloway', NULL, '1960-10-05'),
('NW-D-070-1', 'D', 70, 1, 'standard', 'available', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-2', 'D', 70, 2, 'standard', 'available', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-3', 'D', 70, 3, 'standard', 'available', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-4', 'D', 70, 4, 'standard', 'available', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-5', 'D', 70, 5, 'standard', 'occupied', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-6', 'D', 70, 6, 'standard', 'occupied', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-7', 'D', 70, 7, 'standard', 'occupied', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-070-8', 'D', 70, 8, 'standard', 'available', 4.0, 10.0, 'C. L. Rourk', NULL, '1962-01-05'),
('NW-D-071-1', 'D', 71, 1, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-2', 'D', 71, 2, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-3', 'D', 71, 3, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-4', 'D', 71, 4, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-5', 'D', 71, 5, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-6', 'D', 71, 6, 'standard', 'occupied', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-7', 'D', 71, 7, 'standard', 'occupied', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-071-8', 'D', 71, 8, 'standard', 'available', 4.0, 10.0, 'Harry L. Lehew', NULL, '1959-06-19'),
('NW-D-072-1', 'D', 72, 1, 'standard', 'available', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-2', 'D', 72, 2, 'standard', 'available', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-3', 'D', 72, 3, 'standard', 'available', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-4', 'D', 72, 4, 'standard', 'available', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-5', 'D', 72, 5, 'standard', 'available', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-6', 'D', 72, 6, 'standard', 'occupied', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-7', 'D', 72, 7, 'standard', 'occupied', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-072-8', 'D', 72, 8, 'standard', 'occupied', 4.0, 10.0, 'V. A. Rice', NULL, '1959-06-19'),
('NW-D-073-1', 'D', 73, 1, 'standard', 'available', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-2', 'D', 73, 2, 'standard', 'available', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-3', 'D', 73, 3, 'standard', 'occupied', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-4', 'D', 73, 4, 'standard', 'available', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-5', 'D', 73, 5, 'standard', 'available', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-6', 'D', 73, 6, 'standard', 'occupied', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-7', 'D', 73, 7, 'standard', 'occupied', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-073-8', 'D', 73, 8, 'standard', 'available', 4.0, 10.0, 'Theodore B. Powers', '2412 Crystal Spring A, Roanoke, VA, 24014', '1966-04-08'),
('NW-D-074-1', 'D', 74, 1, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-2', 'D', 74, 2, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-3', 'D', 74, 3, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-4', 'D', 74, 4, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-5', 'D', 74, 5, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-6', 'D', 74, 6, 'standard', 'occupied', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-7', 'D', 74, 7, 'standard', 'occupied', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25'),
('NW-D-074-8', 'D', 74, 8, 'standard', 'available', 4.0, 10.0, 'Z. L. Bennett', NULL, '1971-05-25')
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section D
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wilbert', NULL, 'Jackson', NULL, '1918-09-04', '1992-01-03', NULL
FROM plots WHERE plot_number = 'NW-D-001-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'R.', 'Clemmons', NULL, '1951-06-19', '1987-06-23', NULL
FROM plots WHERE plot_number = 'NW-D-001-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carrie', NULL, 'Bryant', 'Jackson', '1912-01-01', '1971-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-001-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Issac', NULL, 'Jackson', NULL, '1910-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-001-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'J.', 'Jackson', NULL, '1887-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-001-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Peter', 'W.', 'Larsen', NULL, '1910-02-04', '1975-02-16', NULL
FROM plots WHERE plot_number = 'NW-D-002-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Miriam', 'P.', 'Larsen', NULL, '1909-07-30', NULL, NULL
FROM plots WHERE plot_number = 'NW-D-002-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', NULL, 'Oberjohann', NULL, '1907-10-12', '1989-04-12', NULL
FROM plots WHERE plot_number = 'NW-D-003-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Delphia', 'Rebecca', 'Oberjohann', NULL, '1909-04-03', '2000-12-22', NULL
FROM plots WHERE plot_number = 'NW-D-003-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'F.', 'Dilsaver', NULL, '1911-07-22', '1962-06-22', NULL
FROM plots WHERE plot_number = 'NW-D-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Floyd', NULL, 'Dilsaver', NULL, '1914-03-24', '1987-02-21', NULL
FROM plots WHERE plot_number = 'NW-D-004-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Dilsaver', 'Spencer', '1916-09-21', '2004-01-13', NULL
FROM plots WHERE plot_number = 'NW-D-004-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', NULL, 'Nicholson', 'Foley', '1894-01-01', '1964-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-005-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Edwin', 'Nicholson', NULL, '1892-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-005-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katherine', NULL, 'Carr/Pickerrell', 'Dickey', '1879-09-26', '1965-05-08', NULL
FROM plots WHERE plot_number = 'NW-D-006-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', 'Dickey', 'Spencer', 'Pickerrell', '1935-04-07', '2019-11-28', NULL
FROM plots WHERE plot_number = 'NW-D-006-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bobby', 'Coyett', 'Spencer', NULL, '1932-08-19', '1991-06-01', NULL
FROM plots WHERE plot_number = 'NW-D-006-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Lucas', 'Beskie', NULL, '1938-09-08', '2008-10-08', NULL
FROM plots WHERE plot_number = 'NW-D-007-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Newsom', 'A.', 'Worsley', NULL, '1926-10-28', '1977-04-12', NULL
FROM plots WHERE plot_number = 'NW-D-007-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leola', NULL, 'Pickerrell', 'Coleman', '1910-09-05', '2007-10-15', NULL
FROM plots WHERE plot_number = 'NW-D-007-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Dickey', 'Pickerrell', NULL, '1908-11-24', '1997-05-18', NULL
FROM plots WHERE plot_number = 'NW-D-007-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', 'Wesley', 'Woodside', NULL, '1904-06-27', '1965-10-21', NULL
FROM plots WHERE plot_number = 'NW-D-008-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lela', 'Inez', 'Woodside', 'Holden', '1912-06-03', NULL, NULL
FROM plots WHERE plot_number = 'NW-D-008-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Louis', 'Evans', NULL, '1912-05-07', '1997-04-10', NULL
FROM plots WHERE plot_number = 'NW-D-009-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', NULL, 'Evans', 'Clay', '1912-12-06', '1965-12-15', NULL
FROM plots WHERE plot_number = 'NW-D-009-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Eva', 'Fuzzell', NULL, '1893-08-16', '1967-01-26', NULL
FROM plots WHERE plot_number = 'NW-D-010-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lennox', 'B.', 'Leonard', NULL, '1886-01-01', '1958-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-011-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wincie', 'L.', 'Leonard', NULL, '1891-01-01', '1961-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-011-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maybelle', NULL, 'Clemmons', 'Reynolds', '1919-03-30', '1996-08-26', NULL
FROM plots WHERE plot_number = 'NW-D-013-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'Russell', 'Clemmons', NULL, '1920-11-01', '1972-08-18', NULL
FROM plots WHERE plot_number = 'NW-D-013-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eliza', 'Alice', 'Clemmons', NULL, '1899-06-04', '1951-06-08', NULL
FROM plots WHERE plot_number = 'NW-D-013-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stanley', 'Alexander', 'O''Nesl', NULL, '1971-08-01', '2019-04-03', NULL
FROM plots WHERE plot_number = 'NW-D-014-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Cratie', 'O''Neal', NULL, '1948-04-06', '2005-01-08', NULL
FROM plots WHERE plot_number = 'NW-D-014-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Elizabeth', 'O''Neal', 'Arnold', '1921-02-03', '2012-07-17', NULL
FROM plots WHERE plot_number = 'NW-D-014-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Capt. Stanley', NULL, 'O''Neal', NULL, '1910-04-23', '1990-01-04', NULL
FROM plots WHERE plot_number = 'NW-D-014-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Edward', 'O''Neal', NULL, '1941-08-07', '2021-08-10', NULL
FROM plots WHERE plot_number = 'NW-D-014-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Capt. Lemuel', 'Cratie', 'Arnold', NULL, '1883-10-26', '1967-02-05', NULL
FROM plots WHERE plot_number = 'NW-D-014-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'M.', 'Arnold', NULL, '1897-04-25', '1969-10-08', NULL
FROM plots WHERE plot_number = 'NW-D-014-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'J.', 'Bennett', NULL, '1908-10-13', '1992-09-17', NULL
FROM plots WHERE plot_number = 'NW-D-015-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'J.', 'Bennett', NULL, '1905-04-29', '1956-12-26', NULL
FROM plots WHERE plot_number = 'NW-D-015-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Bragaw', NULL, '1946-01-01', '1950-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-020-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Loulie', NULL, 'Bragaw', NULL, '1945-01-01', '1950-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-020-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louise', NULL, 'Bragaw', 'Niernsee', '1920-01-01', '1950-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-020-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', NULL, 'Bragaw', NULL, '1923-01-01', '1950-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-020-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'W.', 'Watts', NULL, '1872-11-18', '1939-05-28', NULL
FROM plots WHERE plot_number = 'NW-D-021-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tallie', NULL, 'Watts', 'Tharp', '1879-05-28', '1940-07-16', NULL
FROM plots WHERE plot_number = 'NW-D-021-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'J.', 'M.', 'Barnhill,', NULL, '1913-01-01', '1958-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-D-022-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'J.', 'M.', 'Barnhill,', NULL, '1884-03-12', '1948-08-06', 'Sr.'
FROM plots WHERE plot_number = 'NW-D-022-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harriet', 'E.', 'Barnhill', 'Meadows', '1886-08-15', '1939-07-07', NULL
FROM plots WHERE plot_number = 'NW-D-022-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ernest', 'F.', 'Gore,.', NULL, '1942-10-06', '1950-09-23', ' Jr'
FROM plots WHERE plot_number = 'NW-D-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albertson', NULL, 'Barnhill', NULL, '1914-06-14', '1914-09-02', NULL
FROM plots WHERE plot_number = 'NW-D-022-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elton', NULL, 'McKeithan,', NULL, '1940-06-21', '1940-10-10', ' Jr.'
FROM plots WHERE plot_number = 'NW-D-023-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Loraine', 'McKeithan/McLamb', 'Jenrette', '1919-10-18', '2013-04-24', NULL
FROM plots WHERE plot_number = 'NW-D-023-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Early', 'Elton', 'McKeithan', NULL, '1907-11-12', '1987-04-23', NULL
FROM plots WHERE plot_number = 'NW-D-023-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Dalley', 'Ganey,', NULL, '1911-08-20', '1968-06-07', 'Sr.'
FROM plots WHERE plot_number = 'NW-D-024-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lena', 'Bell', 'Ganey', NULL, '1916-08-24', '1997-08-18', NULL
FROM plots WHERE plot_number = 'NW-D-024-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Derek', 'Ganey', NULL, '1945-08-23', '1946-01-10', NULL
FROM plots WHERE plot_number = 'NW-D-024-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Beals', 'Carr,', NULL, '1900-08-08', '1952-07-16', 'Jr.'
FROM plots WHERE plot_number = 'NW-D-025-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Georgia', NULL, 'Carr', 'Wade', '1904-04-04', '1962-01-12', NULL
FROM plots WHERE plot_number = 'NW-D-025-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'E.', 'Carr', NULL, '1894-05-02', '1952-12-16', NULL
FROM plots WHERE plot_number = 'NW-D-026-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris', NULL, 'Swan', 'O''Daniel', '1930-06-09', '2015-11-25', NULL
FROM plots WHERE plot_number = 'NW-D-027-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Henry', 'Swan', NULL, '1902-07-05', '1973-11-24', NULL
FROM plots WHERE plot_number = 'NW-D-027-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella', NULL, 'Swan', 'Lee', '1904-01-21', '1969-06-04', NULL
FROM plots WHERE plot_number = 'NW-D-027-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marie', NULL, 'Royal', 'Swan', '1925-11-19', '2008-11-19', NULL
FROM plots WHERE plot_number = 'NW-D-028-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'Edward', 'Royal', NULL, '1930-11-21', '1983-07-12', NULL
FROM plots WHERE plot_number = 'NW-D-028-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'L.', 'Larsen', NULL, '1875-04-25', '1963-01-03', NULL
FROM plots WHERE plot_number = 'NW-D-029-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Karen', 'Erika', 'Larsen', NULL, '1874-01-21', '1971-01-02', NULL
FROM plots WHERE plot_number = 'NW-D-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'D', 'St. George', NULL, '1923-03-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-D-030-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Iris', 'Faye', 'St. George', 'Morrison', '1928-06-16', '2007-03-09', NULL
FROM plots WHERE plot_number = 'NW-D-030-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'F.', 'St. George', NULL, '1882-09-02', '1948-01-21', NULL
FROM plots WHERE plot_number = 'NW-D-030-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', NULL, 'St. George', 'Larsen', '1899-03-09', '1990-08-29', NULL
FROM plots WHERE plot_number = 'NW-D-030-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Curtis', 'Jere', 'Williamson', NULL, '1935-01-08', '1978-07-13', NULL
FROM plots WHERE plot_number = 'NW-D-031-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucille', 'S.', 'Williamson', NULL, '1899-01-09', '1991-05-30', NULL
FROM plots WHERE plot_number = 'NW-D-031-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'C.', 'J.', 'Williamson', NULL, '1895-01-01', '1947-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-031-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lou', NULL, 'Smith', 'Holladay', '1892-12-17', '1968-06-04', NULL
FROM plots WHERE plot_number = 'NW-D-032-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'J.', 'Fred', 'Smith', NULL, '1886-02-11', '1945-03-12', NULL
FROM plots WHERE plot_number = 'NW-D-032-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susie', 'Mae', 'Livingston', 'Potter', '1894-11-01', '1945-01-02', NULL
FROM plots WHERE plot_number = 'NW-D-033-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hubert', 'A.', 'Livingston', NULL, '1905-06-05', '1972-10-20', NULL
FROM plots WHERE plot_number = 'NW-D-033-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virgie', NULL, 'Weeks', 'Livingston', '1908-02-23', '1988-05-13', NULL
FROM plots WHERE plot_number = 'NW-D-034-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'Breasure', 'Weeks', NULL, '1902-05-10', '1982-08-12', NULL
FROM plots WHERE plot_number = 'NW-D-034-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Columbus', 'Ross', 'Livingston', NULL, '1876-10-15', '1962-09-19', NULL
FROM plots WHERE plot_number = 'NW-D-034-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mollie', 'E.', 'Livingston', NULL, '1886-08-29', '1940-06-19', NULL
FROM plots WHERE plot_number = 'NW-D-034-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'L.', 'Brown', NULL, '1905-02-24', '1954-12-16', NULL
FROM plots WHERE plot_number = 'NW-D-036-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', 'C.', 'Brown', NULL, '1907-10-14', '1982-11-05', NULL
FROM plots WHERE plot_number = 'NW-D-036-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'H.', 'Cannon', NULL, '1903-06-22', '1942-04-24', NULL
FROM plots WHERE plot_number = 'NW-D-036-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', 'H.', 'Garrett', NULL, '1871-01-27', '1954-08-29', NULL
FROM plots WHERE plot_number = 'NW-D-039-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'J.', 'Garrett', NULL, '1866-03-28', '1936-01-25', NULL
FROM plots WHERE plot_number = 'NW-D-039-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Imogen', NULL, 'Garrett', NULL, '1906-09-13', '1985-07-24', NULL
FROM plots WHERE plot_number = 'NW-D-039-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'A.', 'E.', 'Peterson', NULL, '1850-01-01', '1938-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-040-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Samuel', 'Jones', NULL, '1874-01-01', '1952-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-041-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sophie', 'H.', 'Jones', NULL, '1886-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-041-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bonnie', NULL, 'Rogers', 'Simmons', '1947-08-07', NULL, NULL
FROM plots WHERE plot_number = 'NW-D-042-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', 'Bertram', 'Rogers', 'Tebo', '1940-10-22', '1995-10-15', NULL
FROM plots WHERE plot_number = 'NW-D-042-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Thomas', 'Jones', NULL, '1913-01-01', '1945-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-042-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', NULL, 'Lewis', 'Roberts', '1878-07-16', '1956-04-17', NULL
FROM plots WHERE plot_number = 'NW-D-043-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'K.', 'Lewis', NULL, '1871-03-09', '1948-01-27', NULL
FROM plots WHERE plot_number = 'NW-D-043-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', NULL, 'Lewis', 'Galloway', NULL, '1994-04-09', NULL
FROM plots WHERE plot_number = 'NW-D-044-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anson', NULL, 'Lewis', NULL, '1920-04-30', '1991-11-01', NULL
FROM plots WHERE plot_number = 'NW-D-044-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Edgar', 'Finch', NULL, '1896-09-26', '1972-09-24', NULL
FROM plots WHERE plot_number = 'NW-D-044-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Blanch', NULL, 'Finch', 'Lewis', '1912-06-07', '1998-06-25', NULL
FROM plots WHERE plot_number = 'NW-D-044-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella', NULL, 'Roberts', NULL, '1883-02-26', '1969-08-05', NULL
FROM plots WHERE plot_number = 'NW-D-044-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ossian', 'Mark', 'Hornstein', 'Ian', '1942-01-04', '1989-11-02', NULL
FROM plots WHERE plot_number = 'NW-D-045-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', NULL, 'Lewis', 'Hickman', '1917-01-23', '1955-08-25', NULL
FROM plots WHERE plot_number = 'NW-D-045-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', NULL, 'Lewis', NULL, '1907-01-01', '1985-06-25', NULL
FROM plots WHERE plot_number = 'NW-D-045-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Peggy', 'Jean', 'Lewis', 'Epstein', '1918-10-31', '2010-09-22', NULL
FROM plots WHERE plot_number = 'NW-D-045-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lunda', NULL, 'Jones', 'Frink', '1888-10-09', '1986-12-22', NULL
FROM plots WHERE plot_number = 'NW-D-046-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Douglas', 'Johnson', 'Jones', NULL, '1927-09-22', '1983-03-02', NULL
FROM plots WHERE plot_number = 'NW-D-046-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter', 'F.L.', 'Jones', NULL, '1893-12-10', '1948-12-16', NULL
FROM plots WHERE plot_number = 'NW-D-046-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Bogie', 'Jones', '1920-08-12', '1972-03-23', NULL
FROM plots WHERE plot_number = 'NW-D-046-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', NULL, 'Bogie', NULL, '1914-10-28', '1981-06-12', NULL
FROM plots WHERE plot_number = 'NW-D-047-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Douglas', 'Diane', 'Deitz', NULL, '1942-08-07', '2012-08-22', NULL
FROM plots WHERE plot_number = 'NW-D-047-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Franklin', 'Deitz,', NULL, '1936-10-06', '2009-10-31', 'Sr.'
FROM plots WHERE plot_number = 'NW-D-047-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earl', 'E.', 'Dye', NULL, '1904-01-01', '1992-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-048-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucille', NULL, 'Dye', NULL, '1910-01-01', '1995-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-048-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Weston', 'Sellers', NULL, '1914-04-16', '1985-03-17', NULL
FROM plots WHERE plot_number = 'NW-D-049-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Wilbur', 'Sellers', NULL, '1886-05-12', '1941-07-11', NULL
FROM plots WHERE plot_number = 'NW-D-049-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Elizabeth', 'Sellers', NULL, '1883-11-14', '1960-03-25', NULL
FROM plots WHERE plot_number = 'NW-D-049-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Clifton', 'Sellers', NULL, '1923-07-02', '1977-05-03', NULL
FROM plots WHERE plot_number = 'NW-D-049-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'S.', 'Davis', NULL, '1894-02-26', '1966-11-04', NULL
FROM plots WHERE plot_number = 'NW-D-050-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Enla', NULL, 'Davis', 'Carr', '1896-07-25', '1972-08-07', NULL
FROM plots WHERE plot_number = 'NW-D-050-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Messick', 'Carr', '1902-06-17', '1971-10-01', NULL
FROM plots WHERE plot_number = 'NW-D-051-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', NULL, 'Messick', NULL, '1896-03-16', '1945-08-15', NULL
FROM plots WHERE plot_number = 'NW-D-051-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'E.', 'Arthur', NULL, '1876-07-16', '1943-05-13', NULL
FROM plots WHERE plot_number = 'NW-D-052-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hettie', NULL, 'Arthur', 'Fulcher', '1886-02-07', '1965-12-14', NULL
FROM plots WHERE plot_number = 'NW-D-052-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Norma', 'B.', 'Loughlin', NULL, '1895-02-26', '1961-09-01', NULL
FROM plots WHERE plot_number = 'NW-D-053-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'J.', 'Loughlin', NULL, '1892-07-28', '1963-03-23', NULL
FROM plots WHERE plot_number = 'NW-D-053-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'P.', 'Brinkman', NULL, '1871-04-22', '1949-06-24', NULL
FROM plots WHERE plot_number = 'NW-D-054-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'L.', 'Brinkman', NULL, '1866-10-23', '1945-03-06', NULL
FROM plots WHERE plot_number = 'NW-D-054-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'W.', 'Marsden', 'Brinkman', NULL, '1898-01-19', '1982-01-04', NULL
FROM plots WHERE plot_number = 'NW-D-054-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jean', NULL, 'Horne', 'Truby', '1926-08-19', '1979-06-15', NULL
FROM plots WHERE plot_number = 'NW-D-056-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Pierce', 'Horne', NULL, '1923-12-19', '1981-03-26', NULL
FROM plots WHERE plot_number = 'NW-D-056-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'Danvis', 'Harrelson', NULL, '1933-06-07', '1953-10-16', NULL
FROM plots WHERE plot_number = 'NW-D-058-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Elizabeth', 'Harrelson', 'Loughlin', '1914-01-31', '1999-03-04', NULL
FROM plots WHERE plot_number = 'NW-D-058-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'Danvis', 'Harrelson,', NULL, '1910-02-01', '2005-06-24', 'Sr.'
FROM plots WHERE plot_number = 'NW-D-058-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Davis', 'Lupton', '1934-08-02', '1955-03-15', NULL
FROM plots WHERE plot_number = 'NW-D-060-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mae', NULL, 'Cannady', 'Clemmons', '1914-06-14', NULL, NULL
FROM plots WHERE plot_number = 'NW-D-060-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Connie', NULL, 'Lupton', 'Herbert', '1905-01-28', '1991-06-17', NULL
FROM plots WHERE plot_number = 'NW-D-061-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roy', 'Ellis', 'Miles', NULL, '1933-08-06', '2006-11-01', NULL
FROM plots WHERE plot_number = 'NW-D-061-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Martha', NULL, 'Miles', 'Inez', '1941-06-11', '1997-10-02', NULL
FROM plots WHERE plot_number = 'NW-D-061-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Madeline', NULL, 'Hayes', 'Krieger', '1878-01-01', '1955-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-062-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'P.', 'Hayes', NULL, '1884-01-01', '1959-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-062-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ethel', 'F.', 'Hayes', NULL, '1904-09-03', '1985-07-06', NULL
FROM plots WHERE plot_number = 'NW-D-063-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'M.', 'Hayes', NULL, '1900-03-04', '1967-05-20', NULL
FROM plots WHERE plot_number = 'NW-D-063-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'E.', 'Huntley', NULL, '1905-10-10', '1995-05-02', NULL
FROM plots WHERE plot_number = 'NW-D-064-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alex', 'M.', 'Shirey', NULL, '1896-01-01', '1957-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-065-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susie', NULL, 'Hewett', 'Best', '1887-12-23', '1977-12-12', NULL
FROM plots WHERE plot_number = 'NW-D-066-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nelle', 'S.', 'Ward', NULL, '1924-03-06', '1986-12-06', NULL
FROM plots WHERE plot_number = 'NW-D-066-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Suggs', 'Ward', NULL, '1923-01-16', '2001-10-29', NULL
FROM plots WHERE plot_number = 'NW-D-066-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ina', NULL, 'Norment', 'Winfree', '1889-03-04', '1974-04-12', NULL
FROM plots WHERE plot_number = 'NW-D-067-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Lee', 'Norment', NULL, '1916-05-05', '2007-10-23', NULL
FROM plots WHERE plot_number = 'NW-D-067-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patricia', 'Ellen', 'Marlowe', NULL, '1937-12-13', '2013-08-11', NULL
FROM plots WHERE plot_number = 'NW-D-067-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', NULL, 'Dutton', 'Odom', '1914-08-29', '2008-03-20', NULL
FROM plots WHERE plot_number = 'NW-D-068-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rolly', 'A.', 'Dutton', NULL, '1911-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-068-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'W.', 'McCullen', NULL, '1944-04-21', '1971-05-29', NULL
FROM plots WHERE plot_number = 'NW-D-069-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', NULL, 'Galloway', NULL, '1922-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-069-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Calvin', 'S.', 'Bryant', NULL, '1924-11-11', '1971-06-22', NULL
FROM plots WHERE plot_number = 'NW-D-070-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Crawford', 'L.', 'Rourk', NULL, '1895-06-19', '1978-05-06', NULL
FROM plots WHERE plot_number = 'NW-D-070-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Golda', 'B.', 'Rourk', NULL, '1904-10-09', '1970-10-25', NULL
FROM plots WHERE plot_number = 'NW-D-070-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'G.', 'Lehew', NULL, '1895-01-01', '1961-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-071-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'V.', 'Lehew', NULL, '1897-01-01', '1990-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-071-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', 'H.', 'Rice', 'Bussells', '1889-01-01', '1958-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-072-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Victor', 'Arthur', 'Rice', NULL, NULL, '1964-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-072-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', 'A.', 'Rice', 'Weeks', '1887-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-072-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Zipporah', 'Jones', 'Case', NULL, '1904-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-D-073-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thedore', 'Bernard', 'Powers', NULL, '1919-04-28', '2015-01-22', NULL
FROM plots WHERE plot_number = 'NW-D-073-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Virginia', 'Powers', NULL, '1924-06-31', '1966-02-23', NULL
FROM plots WHERE plot_number = 'NW-D-073-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Zack', 'L.', 'Bennett', NULL, '1919-08-04', '1971-04-16', NULL
FROM plots WHERE plot_number = 'NW-D-074-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Bennett', 'Lindsey', '1922-11-12', '2011-02-13', NULL
FROM plots WHERE plot_number = 'NW-D-074-7'
ON CONFLICT DO NOTHING;

