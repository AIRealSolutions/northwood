-- ============================================
-- Northwood Cemetery - Section B Data Migration
-- ============================================
-- Total plots: 592
-- Deceased records: 183
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section B
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-B-001-1', 'B', 1, 1, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-2', 'B', 1, 2, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-3', 'B', 1, 3, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-4', 'B', 1, 4, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-5', 'B', 1, 5, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-6', 'B', 1, 6, 'standard', 'occupied', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-7', 'B', 1, 7, 'standard', 'occupied', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-001-8', 'B', 1, 8, 'standard', 'available', 4.0, 10.0, 'Warren J. Mann', 'River Drive, Southport, NC, 28461', '1971-04-12'),
('NW-B-002-1', 'B', 2, 1, 'standard', 'occupied', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-2', 'B', 2, 2, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-3', 'B', 2, 3, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-4', 'B', 2, 4, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-5', 'B', 2, 5, 'standard', 'occupied', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-6', 'B', 2, 6, 'standard', 'occupied', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-7', 'B', 2, 7, 'standard', 'occupied', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-002-8', 'B', 2, 8, 'standard', 'occupied', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic, Southport, NC, 28461', '1970-08-25'),
('NW-B-003-1', 'B', 3, 1, 'standard', 'available', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-2', 'B', 3, 2, 'standard', 'available', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-3', 'B', 3, 3, 'standard', 'available', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-4', 'B', 3, 4, 'standard', 'available', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-5', 'B', 3, 5, 'standard', 'occupied', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-6', 'B', 3, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-7', 'B', 3, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-003-8', 'B', 3, 8, 'standard', 'available', 4.0, 10.0, 'Robert Marshall Burgess', '2100 Marsh Grove, Oak Island, NC, 28465-', '2025-08-14'),
('NW-B-004-1', 'B', 4, 1, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-2', 'B', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-3', 'B', 4, 3, 'standard', 'occupied', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-4', 'B', 4, 4, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-5', 'B', 4, 5, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-6', 'B', 4, 6, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-7', 'B', 4, 7, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-004-8', 'B', 4, 8, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-1', 'B', 5, 1, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-2', 'B', 5, 2, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-3', 'B', 5, 3, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-4', 'B', 5, 4, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-5', 'B', 5, 5, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-6', 'B', 5, 6, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-7', 'B', 5, 7, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-005-8', 'B', 5, 8, 'standard', 'available', 4.0, 10.0, 'Joe Young Christian', 'Southport, NC, 28461', '1966-01-18'),
('NW-B-006-1', 'B', 6, 1, 'standard', 'available', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-2', 'B', 6, 2, 'standard', 'available', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-3', 'B', 6, 3, 'standard', 'available', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-4', 'B', 6, 4, 'standard', 'available', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-5', 'B', 6, 5, 'standard', 'available', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-6', 'B', 6, 6, 'standard', 'occupied', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-7', 'B', 6, 7, 'standard', 'occupied', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-006-8', 'B', 6, 8, 'standard', 'occupied', 4.0, 10.0, 'W. L. Huffman', '414 W. West Street, Souhtport, NC, 28461', '1969-11-19'),
('NW-B-007-1', 'B', 7, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-2', 'B', 7, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-3', 'B', 7, 3, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-4', 'B', 7, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-5', 'B', 7, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-6', 'B', 7, 6, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-7', 'B', 7, 7, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-007-8', 'B', 7, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Rideout', NULL, '1968-09-24'),
('NW-B-008-1', 'B', 8, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-2', 'B', 8, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-3', 'B', 8, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-4', 'B', 8, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-5', 'B', 8, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-6', 'B', 8, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-7', 'B', 8, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-008-8', 'B', 8, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-1', 'B', 9, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-2', 'B', 9, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-3', 'B', 9, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-4', 'B', 9, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-5', 'B', 9, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-6', 'B', 9, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-7', 'B', 9, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-009-8', 'B', 9, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Dan Lewis', NULL, NULL),
('NW-B-010-1', 'B', 10, 1, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-2', 'B', 10, 2, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-3', 'B', 10, 3, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-4', 'B', 10, 4, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-5', 'B', 10, 5, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-6', 'B', 10, 6, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-7', 'B', 10, 7, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-010-8', 'B', 10, 8, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-1', 'B', 11, 1, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-2', 'B', 11, 2, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-3', 'B', 11, 3, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-4', 'B', 11, 4, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-5', 'B', 11, 5, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-6', 'B', 11, 6, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-7', 'B', 11, 7, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-011-8', 'B', 11, 8, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-1', 'B', 12, 1, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-2', 'B', 12, 2, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-3', 'B', 12, 3, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-4', 'B', 12, 4, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-5', 'B', 12, 5, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-6', 'B', 12, 6, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-7', 'B', 12, 7, 'standard', 'available', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-012-8', 'B', 12, 8, 'standard', 'occupied', 4.0, 10.0, 'Lizzie Johnson', NULL, NULL),
('NW-B-013-1', 'B', 13, 1, 'standard', 'available', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-2', 'B', 13, 2, 'standard', 'occupied', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-3', 'B', 13, 3, 'standard', 'available', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-4', 'B', 13, 4, 'standard', 'available', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-5', 'B', 13, 5, 'standard', 'available', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-6', 'B', 13, 6, 'standard', 'occupied', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-7', 'B', 13, 7, 'standard', 'occupied', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-013-8', 'B', 13, 8, 'standard', 'occupied', 4.0, 10.0, 'Emma Tharp', '501 N. Burrington Ave, Southport, NC, 28461', '1980-07-14'),
('NW-B-014-1', 'B', 14, 1, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-2', 'B', 14, 2, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-3', 'B', 14, 3, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-4', 'B', 14, 4, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-5', 'B', 14, 5, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-6', 'B', 14, 6, 'standard', 'occupied', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-7', 'B', 14, 7, 'standard', 'occupied', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-014-8', 'B', 14, 8, 'standard', 'available', 4.0, 10.0, 'Margaret C. McRacken', NULL, '1965-04-23'),
('NW-B-015-1', 'B', 15, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-2', 'B', 15, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-3', 'B', 15, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-4', 'B', 15, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-5', 'B', 15, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-6', 'B', 15, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-7', 'B', 15, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-015-8', 'B', 15, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. J. S. Aldridge', NULL, '1965-06-16'),
('NW-B-016-1', 'B', 16, 1, 'standard', 'available', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-2', 'B', 16, 2, 'standard', 'available', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-3', 'B', 16, 3, 'standard', 'available', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-4', 'B', 16, 4, 'standard', 'available', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-5', 'B', 16, 5, 'standard', 'available', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-6', 'B', 16, 6, 'standard', 'occupied', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-7', 'B', 16, 7, 'standard', 'occupied', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-016-8', 'B', 16, 8, 'standard', 'occupied', 4.0, 10.0, 'Charles P. Aldridge', '701 E. Nash Street, Southport, NC, 28461', '1970-12-04'),
('NW-B-017-1', 'B', 17, 1, 'standard', 'available', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-2', 'B', 17, 2, 'standard', 'occupied', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-3', 'B', 17, 3, 'standard', 'occupied', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-4', 'B', 17, 4, 'standard', 'occupied', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-5', 'B', 17, 5, 'standard', 'occupied', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-6', 'B', 17, 6, 'standard', 'occupied', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-7', 'B', 17, 7, 'standard', 'available', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-017-8', 'B', 17, 8, 'standard', 'available', 4.0, 10.0, 'Lendon C. Spencer', NULL, '1964-04-21'),
('NW-B-018-1', 'B', 18, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-2', 'B', 18, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-3', 'B', 18, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-4', 'B', 18, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-5', 'B', 18, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-6', 'B', 18, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-7', 'B', 18, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-018-8', 'B', 18, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. A. H. Cramer', NULL, '1964-11-09'),
('NW-B-019-1', 'B', 19, 1, 'standard', 'occupied', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-2', 'B', 19, 2, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-3', 'B', 19, 3, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-4', 'B', 19, 4, 'standard', 'occupied', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-5', 'B', 19, 5, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-6', 'B', 19, 6, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-7', 'B', 19, 7, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-019-8', 'B', 19, 8, 'standard', 'available', 4.0, 10.0, 'W. T. Guest', NULL, '1963-09-25'),
('NW-B-020-1', 'B', 20, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-2', 'B', 20, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-3', 'B', 20, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-4', 'B', 20, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-5', 'B', 20, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-6', 'B', 20, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-7', 'B', 20, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-020-8', 'B', 20, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Roy (Elizabeth Guthrie) Robinson', NULL, '1964-09-04'),
('NW-B-021-1', 'B', 21, 1, 'standard', 'available', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-2', 'B', 21, 2, 'standard', 'available', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-3', 'B', 21, 3, 'standard', 'available', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-4', 'B', 21, 4, 'standard', 'available', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-5', 'B', 21, 5, 'standard', 'available', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-6', 'B', 21, 6, 'standard', 'occupied', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-7', 'B', 21, 7, 'standard', 'occupied', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-021-8', 'B', 21, 8, 'standard', 'occupied', 4.0, 10.0, 'Col. & Mrs W. G. Kemper', NULL, '1964-08-28'),
('NW-B-022-1', 'B', 22, 1, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-2', 'B', 22, 2, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-3', 'B', 22, 3, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-4', 'B', 22, 4, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-5', 'B', 22, 5, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-6', 'B', 22, 6, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-7', 'B', 22, 7, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-022-8', 'B', 22, 8, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-1', 'B', 23, 1, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-2', 'B', 23, 2, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-3', 'B', 23, 3, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-4', 'B', 23, 4, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-5', 'B', 23, 5, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-6', 'B', 23, 6, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-7', 'B', 23, 7, 'standard', 'available', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-023-8', 'B', 23, 8, 'standard', 'occupied', 4.0, 10.0, 'Dallas Pigott', '316 W. Moore Street, Southport, NC, 28461', '1965-12-21'),
('NW-B-024-1', 'B', 24, 1, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-2', 'B', 24, 2, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-3', 'B', 24, 3, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-4', 'B', 24, 4, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-5', 'B', 24, 5, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-6', 'B', 24, 6, 'standard', 'occupied', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-7', 'B', 24, 7, 'standard', 'occupied', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-024-8', 'B', 24, 8, 'standard', 'available', 4.0, 10.0, 'H. T. St. George', 'Southport, NC, 28461', '1966-05-06'),
('NW-B-025-1', 'B', 25, 1, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-2', 'B', 25, 2, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-3', 'B', 25, 3, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-4', 'B', 25, 4, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-5', 'B', 25, 5, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-6', 'B', 25, 6, 'standard', 'available', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-7', 'B', 25, 7, 'standard', 'occupied', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-025-8', 'B', 25, 8, 'standard', 'occupied', 4.0, 10.0, 'Boyd Moore', '116 River Drive, Southport, NC, 28461', '1966-12-17'),
('NW-B-026-1', 'B', 26, 1, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-2', 'B', 26, 2, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-3', 'B', 26, 3, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-4', 'B', 26, 4, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-5', 'B', 26, 5, 'standard', 'occupied', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-6', 'B', 26, 6, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-7', 'B', 26, 7, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-026-8', 'B', 26, 8, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', 'Southport, NC, 28461', '1967-06-09'),
('NW-B-027-1', 'B', 27, 1, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-2', 'B', 27, 2, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-3', 'B', 27, 3, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-4', 'B', 27, 4, 'standard', 'available', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-5', 'B', 27, 5, 'standard', 'occupied', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-6', 'B', 27, 6, 'standard', 'occupied', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-7', 'B', 27, 7, 'standard', 'occupied', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-027-8', 'B', 27, 8, 'standard', 'occupied', 4.0, 10.0, 'M&M Samuel & M&M Douglas Rees Jr./ Jones', NULL, '1967-06-09'),
('NW-B-028-1', 'B', 28, 1, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-2', 'B', 28, 2, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-3', 'B', 28, 3, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-4', 'B', 28, 4, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-5', 'B', 28, 5, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-6', 'B', 28, 6, 'standard', 'occupied', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-7', 'B', 28, 7, 'standard', 'occupied', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-028-8', 'B', 28, 8, 'standard', 'available', 4.0, 10.0, 'Herman Smith', NULL, '1966-07-01'),
('NW-B-029-1', 'B', 29, 1, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-2', 'B', 29, 2, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-3', 'B', 29, 3, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-4', 'B', 29, 4, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-5', 'B', 29, 5, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-6', 'B', 29, 6, 'standard', 'occupied', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-7', 'B', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-029-8', 'B', 29, 8, 'standard', 'available', 4.0, 10.0, 'F. H. Swain', NULL, '1967-04-12'),
('NW-B-030-1', 'B', 30, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-2', 'B', 30, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-3', 'B', 30, 3, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-4', 'B', 30, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-5', 'B', 30, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-6', 'B', 30, 6, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-7', 'B', 30, 7, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-030-8', 'B', 30, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Raymond Jacobs', NULL, '1966-04-14'),
('NW-B-031-1', 'B', 31, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-2', 'B', 31, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-3', 'B', 31, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-4', 'B', 31, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-5', 'B', 31, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-6', 'B', 31, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-7', 'B', 31, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-031-8', 'B', 31, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Ed. G. Daniels', NULL, '1964-05-19'),
('NW-B-032-1', 'B', 32, 1, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-2', 'B', 32, 2, 'standard', 'occupied', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-3', 'B', 32, 3, 'standard', 'occupied', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-4', 'B', 32, 4, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-5', 'B', 32, 5, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-6', 'B', 32, 6, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-7', 'B', 32, 7, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-032-8', 'B', 32, 8, 'standard', 'available', 4.0, 10.0, 'Paul Mason', 'E. Nash Street, Southport, NC, 28461', '1967-02-14'),
('NW-B-033-1', 'B', 33, 1, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-2', 'B', 33, 2, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-3', 'B', 33, 3, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-4', 'B', 33, 4, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-5', 'B', 33, 5, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-6', 'B', 33, 6, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-7', 'B', 33, 7, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-033-8', 'B', 33, 8, 'standard', 'available', 4.0, 10.0, 'W. P. Lee', NULL, '1967-03-10'),
('NW-B-034-1', 'B', 34, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-2', 'B', 34, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-3', 'B', 34, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-4', 'B', 34, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-5', 'B', 34, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-6', 'B', 34, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-7', 'B', 34, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-034-8', 'B', 34, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Robert E. Sidebothman', NULL, '1967-03-13'),
('NW-B-035-1', 'B', 35, 1, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-2', 'B', 35, 2, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-3', 'B', 35, 3, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-4', 'B', 35, 4, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-5', 'B', 35, 5, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-6', 'B', 35, 6, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-7', 'B', 35, 7, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-035-8', 'B', 35, 8, 'standard', 'available', 4.0, 10.0, 'Heber O. & Maud C. Clark', 'Long Beach, NC, 28465', '1967-08-01'),
('NW-B-036-1', 'B', 36, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-2', 'B', 36, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-3', 'B', 36, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-4', 'B', 36, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-5', 'B', 36, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-6', 'B', 36, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-7', 'B', 36, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-036-8', 'B', 36, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Julian Southerland', '221 N. Caswell Ave., Southport, NC, 28461', '1967-11-14'),
('NW-B-037-1', 'B', 37, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-2', 'B', 37, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-3', 'B', 37, 3, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-4', 'B', 37, 4, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-5', 'B', 37, 5, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-6', 'B', 37, 6, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-7', 'B', 37, 7, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-037-8', 'B', 37, 8, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-1', 'B', 38, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-2', 'B', 38, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-3', 'B', 38, 3, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-4', 'B', 38, 4, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-5', 'B', 38, 5, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-6', 'B', 38, 6, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-7', 'B', 38, 7, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-038-8', 'B', 38, 8, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-B-039-1', 'B', 39, 1, 'standard', 'available', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-2', 'B', 39, 2, 'standard', 'available', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-3', 'B', 39, 3, 'standard', 'available', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-4', 'B', 39, 4, 'standard', 'available', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-5', 'B', 39, 5, 'standard', 'occupied', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-6', 'B', 39, 6, 'standard', 'occupied', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-7', 'B', 39, 7, 'standard', 'occupied', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-039-8', 'B', 39, 8, 'standard', 'occupied', 4.0, 10.0, 'Robert & Juanita Sellers', NULL, '1982-10-20'),
('NW-B-040-1', 'B', 40, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-2', 'B', 40, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-3', 'B', 40, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-4', 'B', 40, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-5', 'B', 40, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-6', 'B', 40, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-7', 'B', 40, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-040-8', 'B', 40, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. George Whatley', '203 E. Moore Street, Southport, NC, 28461', '1967-04-03'),
('NW-B-041-1', 'B', 41, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-2', 'B', 41, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-3', 'B', 41, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-4', 'B', 41, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-5', 'B', 41, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-6', 'B', 41, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-7', 'B', 41, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-041-8', 'B', 41, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. J. A. Gilbert', 'N. Atlantic Ave, Southport, NC, 28461', '1964-04-18'),
('NW-B-042-1', 'B', 42, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-2', 'B', 42, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-3', 'B', 42, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-4', 'B', 42, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-5', 'B', 42, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-6', 'B', 42, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-7', 'B', 42, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-042-8', 'B', 42, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1964-09-08'),
('NW-B-043-1', 'B', 43, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-2', 'B', 43, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-3', 'B', 43, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-4', 'B', 43, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-5', 'B', 43, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-6', 'B', 43, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-7', 'B', 43, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-043-8', 'B', 43, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. B. L. Furpless', '207 N. Caswell, Southport, NC, 28461', '1962-03-29'),
('NW-B-044-1', 'B', 44, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-2', 'B', 44, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-3', 'B', 44, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-4', 'B', 44, 4, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-5', 'B', 44, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-6', 'B', 44, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-7', 'B', 44, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-044-8', 'B', 44, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Dewey Smith', NULL, '1962-01-16'),
('NW-B-045-1', 'B', 45, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-2', 'B', 45, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-3', 'B', 45, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-4', 'B', 45, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-5', 'B', 45, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-6', 'B', 45, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-7', 'B', 45, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-045-8', 'B', 45, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. W. R. Lingle', NULL, '1963-11-22'),
('NW-B-046-1', 'B', 46, 1, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-2', 'B', 46, 2, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-3', 'B', 46, 3, 'standard', 'occupied', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-4', 'B', 46, 4, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-5', 'B', 46, 5, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-6', 'B', 46, 6, 'standard', 'occupied', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-7', 'B', 46, 7, 'standard', 'occupied', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-046-8', 'B', 46, 8, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-047-1', 'B', 47, 1, 'standard', 'available', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-2', 'B', 47, 2, 'standard', 'available', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-3', 'B', 47, 3, 'standard', 'available', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-4', 'B', 47, 4, 'standard', 'occupied', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-5', 'B', 47, 5, 'standard', 'occupied', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-6', 'B', 47, 6, 'standard', 'occupied', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-7', 'B', 47, 7, 'standard', 'occupied', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-047-8', 'B', 47, 8, 'standard', 'occupied', 4.0, 10.0, 'Edward Z. Pancoast', NULL, NULL),
('NW-B-048-1', 'B', 48, 1, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-2', 'B', 48, 2, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-3', 'B', 48, 3, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-4', 'B', 48, 4, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-5', 'B', 48, 5, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-6', 'B', 48, 6, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-7', 'B', 48, 7, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-048-8', 'B', 48, 8, 'standard', 'available', 4.0, 10.0, 'Pierce & Potter Pancoast', NULL, '1963-11-26'),
('NW-B-049-1', 'B', 49, 1, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-2', 'B', 49, 2, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-3', 'B', 49, 3, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-4', 'B', 49, 4, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-5', 'B', 49, 5, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-6', 'B', 49, 6, 'standard', 'occupied', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-7', 'B', 49, 7, 'standard', 'occupied', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-049-8', 'B', 49, 8, 'standard', 'available', 4.0, 10.0, 'Daniel J. Joye', NULL, NULL),
('NW-B-050-1', 'B', 50, 1, 'standard', 'available', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-2', 'B', 50, 2, 'standard', 'occupied', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-3', 'B', 50, 3, 'standard', 'occupied', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-4', 'B', 50, 4, 'standard', 'available', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-5', 'B', 50, 5, 'standard', 'available', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-6', 'B', 50, 6, 'standard', 'occupied', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-7', 'B', 50, 7, 'standard', 'occupied', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-050-8', 'B', 50, 8, 'standard', 'available', 4.0, 10.0, 'Lottie Hazelton', 'E. West Street, Southport, NC, 28461', NULL),
('NW-B-051-1', 'B', 51, 1, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-2', 'B', 51, 2, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-3', 'B', 51, 3, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-4', 'B', 51, 4, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-5', 'B', 51, 5, 'standard', 'occupied', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-6', 'B', 51, 6, 'standard', 'occupied', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-7', 'B', 51, 7, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-051-8', 'B', 51, 8, 'standard', 'available', 4.0, 10.0, 'Eugene T. Smith', NULL, NULL),
('NW-B-052-1', 'B', 52, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-2', 'B', 52, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-3', 'B', 52, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-4', 'B', 52, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-5', 'B', 52, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-6', 'B', 52, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-7', 'B', 52, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-052-8', 'B', 52, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Ira Tart', 'Jabbertown Road, Southport, NC, 28461', NULL),
('NW-B-053-1', 'B', 53, 1, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-2', 'B', 53, 2, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-3', 'B', 53, 3, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-4', 'B', 53, 4, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-5', 'B', 53, 5, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-6', 'B', 53, 6, 'standard', 'available', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-7', 'B', 53, 7, 'standard', 'occupied', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-053-8', 'B', 53, 8, 'standard', 'occupied', 4.0, 10.0, 'Iris & William Smith', '526 Layport Dr, Sebastian, Fl, 32958-', '2002-10-02'),
('NW-B-054-1', 'B', 54, 1, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-2', 'B', 54, 2, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-3', 'B', 54, 3, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-4', 'B', 54, 4, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-5', 'B', 54, 5, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-6', 'B', 54, 6, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-7', 'B', 54, 7, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-054-8', 'B', 54, 8, 'standard', 'available', 4.0, 10.0, 'Howard Robert', '114 N Atlantic Ave, Southport, NC, 28461', '2020-07-14'),
('NW-B-055-1', 'B', 55, 1, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-2', 'B', 55, 2, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-3', 'B', 55, 3, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-4', 'B', 55, 4, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-5', 'B', 55, 5, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-6', 'B', 55, 6, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-7', 'B', 55, 7, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-055-8', 'B', 55, 8, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-1', 'B', 56, 1, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-2', 'B', 56, 2, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-3', 'B', 56, 3, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-4', 'B', 56, 4, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-5', 'B', 56, 5, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-6', 'B', 56, 6, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-7', 'B', 56, 7, 'standard', 'occupied', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-056-8', 'B', 56, 8, 'standard', 'available', 4.0, 10.0, 'Prince O''Brien', '319 E. Bay Street, Southport, NC, 28461', '1961-04-11'),
('NW-B-057-1', 'B', 57, 1, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-2', 'B', 57, 2, 'standard', 'occupied', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-3', 'B', 57, 3, 'standard', 'occupied', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-4', 'B', 57, 4, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-5', 'B', 57, 5, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-6', 'B', 57, 6, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-7', 'B', 57, 7, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-057-8', 'B', 57, 8, 'standard', 'available', 4.0, 10.0, 'Reid Gilbert', NULL, '1960-11-18'),
('NW-B-058-1', 'B', 58, 1, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-2', 'B', 58, 2, 'standard', 'occupied', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-3', 'B', 58, 3, 'standard', 'occupied', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-4', 'B', 58, 4, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-5', 'B', 58, 5, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-6', 'B', 58, 6, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-7', 'B', 58, 7, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-058-8', 'B', 58, 8, 'standard', 'available', 4.0, 10.0, 'J. E. Dodson', NULL, NULL),
('NW-B-059-1', 'B', 59, 1, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-2', 'B', 59, 2, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-3', 'B', 59, 3, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-4', 'B', 59, 4, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-5', 'B', 59, 5, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-6', 'B', 59, 6, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-7', 'B', 59, 7, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-059-8', 'B', 59, 8, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1963-01-22'),
('NW-B-060-1', 'B', 60, 1, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-2', 'B', 60, 2, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-3', 'B', 60, 3, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-4', 'B', 60, 4, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-5', 'B', 60, 5, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-6', 'B', 60, 6, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-7', 'B', 60, 7, 'standard', 'occupied', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-060-8', 'B', 60, 8, 'standard', 'available', 4.0, 10.0, 'J. E. Brown', '1004 E. Moore Street, Southport, NC, 28461', '1965-02-05'),
('NW-B-061-1', 'B', 61, 1, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-2', 'B', 61, 2, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-3', 'B', 61, 3, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-4', 'B', 61, 4, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-5', 'B', 61, 5, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-6', 'B', 61, 6, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-7', 'B', 61, 7, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-061-8', 'B', 61, 8, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-1', 'B', 62, 1, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-2', 'B', 62, 2, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-3', 'B', 62, 3, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-4', 'B', 62, 4, 'standard', 'available', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-5', 'B', 62, 5, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-6', 'B', 62, 6, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-7', 'B', 62, 7, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-062-8', 'B', 62, 8, 'standard', 'occupied', 4.0, 10.0, 'John G. Swan', '110 River Drive, Southport, NC, 28461', '1962-04-24'),
('NW-B-063-1', 'B', 63, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-2', 'B', 63, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-3', 'B', 63, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-4', 'B', 63, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-5', 'B', 63, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-6', 'B', 63, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-7', 'B', 63, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-063-8', 'B', 63, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. J. D. Spencer', '718 N. Atlantic Ave., Southport, NC, 28461', '1958-04-17'),
('NW-B-064-1', 'B', 64, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-2', 'B', 64, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-3', 'B', 64, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-4', 'B', 64, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-5', 'B', 64, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-6', 'B', 64, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-7', 'B', 64, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-064-8', 'B', 64, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-1', 'B', 65, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-2', 'B', 65, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-3', 'B', 65, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-4', 'B', 65, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-5', 'B', 65, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-6', 'B', 65, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-7', 'B', 65, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-065-8', 'B', 65, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. C N. Hewett', '229 N. Caswell Ave., Southport, NC, 28461', '1958-03-28'),
('NW-B-066-1', 'B', 66, 1, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-2', 'B', 66, 2, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-3', 'B', 66, 3, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-4', 'B', 66, 4, 'standard', 'occupied', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-5', 'B', 66, 5, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-6', 'B', 66, 6, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-7', 'B', 66, 7, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-066-8', 'B', 66, 8, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-13'),
('NW-B-067-1', 'B', 67, 1, 'standard', 'occupied', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-2', 'B', 67, 2, 'standard', 'occupied', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-3', 'B', 67, 3, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-4', 'B', 67, 4, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-5', 'B', 67, 5, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-6', 'B', 67, 6, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-7', 'B', 67, 7, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-067-8', 'B', 67, 8, 'standard', 'available', 4.0, 10.0, 'Leon & Homer McKeithan', '512 N. Atlantic Ave, Southport, NC, 28461', '1967-05-24'),
('NW-B-068-1', 'B', 68, 1, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-2', 'B', 68, 2, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-3', 'B', 68, 3, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-4', 'B', 68, 4, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-5', 'B', 68, 5, 'standard', 'occupied', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-6', 'B', 68, 6, 'standard', 'occupied', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-7', 'B', 68, 7, 'standard', 'occupied', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-068-8', 'B', 68, 8, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-06-06'),
('NW-B-069-1', 'B', 69, 1, 'standard', 'occupied', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-2', 'B', 69, 2, 'standard', 'occupied', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-3', 'B', 69, 3, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-4', 'B', 69, 4, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-5', 'B', 69, 5, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-6', 'B', 69, 6, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-7', 'B', 69, 7, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-069-8', 'B', 69, 8, 'standard', 'available', 4.0, 10.0, 'E. V. Leonard', 'Southport, NC, 28461', '1966-10-10'),
('NW-B-070-1', 'B', 70, 1, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-2', 'B', 70, 2, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-3', 'B', 70, 3, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-4', 'B', 70, 4, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-5', 'B', 70, 5, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-6', 'B', 70, 6, 'standard', 'occupied', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-7', 'B', 70, 7, 'standard', 'occupied', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-070-8', 'B', 70, 8, 'standard', 'available', 4.0, 10.0, 'W. C. Jones', 'Southport, NC, 28461', '1966-10-04'),
('NW-B-071-1', 'B', 71, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-2', 'B', 71, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-3', 'B', 71, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-4', 'B', 71, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-5', 'B', 71, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-6', 'B', 71, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-7', 'B', 71, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-071-8', 'B', 71, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. James B. Loughlin', '305 River Drive, Southport, NC, 28461', '1965-08-12'),
('NW-B-072-1', 'B', 72, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-2', 'B', 72, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-3', 'B', 72, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-4', 'B', 72, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-5', 'B', 72, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-6', 'B', 72, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-7', 'B', 72, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-072-8', 'B', 72, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. P. K. Pierpoint', 'Yaupon Beach, NC', '1968-03-13'),
('NW-B-073-1', 'B', 73, 1, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-2', 'B', 73, 2, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-3', 'B', 73, 3, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-4', 'B', 73, 4, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-5', 'B', 73, 5, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-6', 'B', 73, 6, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-7', 'B', 73, 7, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-073-8', 'B', 73, 8, 'standard', 'available', 4.0, 10.0, 'Vera McKeithan', '710 N. Atlantic Ave, Southport, NC', '1970-08-25'),
('NW-B-074-1', 'B', 74, 1, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-2', 'B', 74, 2, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-3', 'B', 74, 3, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-4', 'B', 74, 4, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-5', 'B', 74, 5, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-6', 'B', 74, 6, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-7', 'B', 74, 7, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06'),
('NW-B-074-8', 'B', 74, 8, 'standard', 'available', 4.0, 10.0, 'T.E. Funeral Service Gilbert', 'N. Howe Street, Southport, NC, 28461', '1978-02-06')
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section B
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'Mann', 'Parker', '1906-10-09', '1971-03-26', NULL
FROM plots WHERE plot_number = 'NW-B-001-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Warren', 'James', 'Mann', NULL, '1904-05-03', '1980-06-19', NULL
FROM plots WHERE plot_number = 'NW-B-001-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vivian', 'Beryl', 'Jones', 'McKeithan', '1937-10-15', '2014-07-31', NULL
FROM plots WHERE plot_number = 'NW-B-002-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katie', 'Lee', 'McRoy', 'Crocker', '1932-10-07', '2010-11-12', NULL
FROM plots WHERE plot_number = 'NW-B-002-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Woody', 'Hugh', 'McRoy', 'Buster', '1932-06-20', '2008-12-06', NULL
FROM plots WHERE plot_number = 'NW-B-002-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Brenda', NULL, 'McKeithan', 'McRoy', '1953-05-05', '2006-02-16', NULL
FROM plots WHERE plot_number = 'NW-B-002-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Elbert', 'McKeithan', NULL, '1947-12-18', '2004-02-25', NULL
FROM plots WHERE plot_number = 'NW-B-002-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lola', 'Mae', 'Burgess', NULL, '1940-03-19', '2025-06-11', NULL
FROM plots WHERE plot_number = 'NW-B-003-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elena', 'B.', 'Gore', NULL, '1914-06-14', '1982-02-27', NULL
FROM plots WHERE plot_number = 'NW-B-003-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ernest', 'F.', 'Gore', NULL, '1903-10-17', '1991-12-23', NULL
FROM plots WHERE plot_number = 'NW-B-003-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucile', NULL, 'Christian', 'Young', '1903-05-06', '1966-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Gordon', 'Christian', NULL, '1901-07-18', '1972-12-25', NULL
FROM plots WHERE plot_number = 'NW-B-004-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter "Shorty', 'Linwood', 'Hufham', NULL, '1932-01-18', '1996-01-16', NULL
FROM plots WHERE plot_number = 'NW-B-006-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph Henry', 'Trudy', 'Young', 'McNeil', '1936-02-22', '2019-02-11', NULL
FROM plots WHERE plot_number = 'NW-B-006-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Amelia', 'Caroline', 'Hufham', NULL, '1969-09-30', '1969-10-01', NULL
FROM plots WHERE plot_number = 'NW-B-006-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', NULL, 'Rideout', 'Richardson', '1906-09-20', '1988-06-14', NULL
FROM plots WHERE plot_number = 'NW-B-007-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Merrill', 'Rideout', NULL, '1895-01-01', '1961-03-16', NULL
FROM plots WHERE plot_number = 'NW-B-007-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'Webster', 'Lewis', NULL, '1882-09-29', '1962-07-02', NULL
FROM plots WHERE plot_number = 'NW-B-009-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'J.', 'Lewis', NULL, '1910-01-26', '1994-06-01', NULL
FROM plots WHERE plot_number = 'NW-B-009-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Henry', 'Johnson', NULL, '1932-09-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-010-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lizzie', NULL, 'Johnson', 'Hewett', '1891-10-02', '1981-02-23', NULL
FROM plots WHERE plot_number = 'NW-B-010-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'R.', 'Johnson', NULL, '1914-09-23', '1959-02-09', NULL
FROM plots WHERE plot_number = 'NW-B-010-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Elizabeth', 'Johnson', NULL, '1929-09-01', '2013-03-18', NULL
FROM plots WHERE plot_number = 'NW-B-011-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fannie Adeline', NULL, 'Johnson', NULL, '1920-07-04', '2010-05-02', NULL
FROM plots WHERE plot_number = 'NW-B-011-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Lee', 'Johnson', NULL, '1920-07-04', '1974-07-14', NULL
FROM plots WHERE plot_number = 'NW-B-011-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'J.', 'W.', 'Johnson', NULL, '1882-10-15', '1938-09-01', NULL
FROM plots WHERE plot_number = 'NW-B-011-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elmer', 'C.', 'Johnson', NULL, '1959-05-29', '1959-05-29', NULL
FROM plots WHERE plot_number = 'NW-B-012-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mason', 'Thomas', 'Hewett', NULL, '2008-05-28', '2008-05-29', NULL
FROM plots WHERE plot_number = 'NW-B-013-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Thomas (Tommy)', 'Tharp', NULL, '1959-04-19', '2007-04-21', NULL
FROM plots WHERE plot_number = 'NW-B-013-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'J.', 'Tharp', NULL, '1923-09-05', '1997-01-29', NULL
FROM plots WHERE plot_number = 'NW-B-013-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'T.', 'Tharp', NULL, '1914-06-23', '1986-08-06', NULL
FROM plots WHERE plot_number = 'NW-B-013-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'C.', 'McRacken', NULL, '1908-01-01', '1990-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-014-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Morris', 'T.', 'McRacken', NULL, '1897-01-01', '1965-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-014-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Spencer', 'Oliver', NULL, '1906-12-11', '1985-10-20', NULL
FROM plots WHERE plot_number = 'NW-B-015-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnie', NULL, 'Aldridge', 'Lee', '1888-03-31', '1968-10-10', NULL
FROM plots WHERE plot_number = 'NW-B-015-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Smith', 'Aldridge', NULL, '1880-05-20', '1965-06-01', NULL
FROM plots WHERE plot_number = 'NW-B-015-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'P.', 'Aldridge', NULL, '1913-05-11', '1993-10-17', NULL
FROM plots WHERE plot_number = 'NW-B-016-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella', NULL, 'Aldridge', 'Chadwick', '1909-03-29', '2007-11-18', NULL
FROM plots WHERE plot_number = 'NW-B-016-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Phillip (Phil)', 'Aldridge,', NULL, '1943-02-02', '2003-07-23', 'Jr.'
FROM plots WHERE plot_number = 'NW-B-016-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', NULL, 'Spencer', 'Outlaw', '1893-08-29', '1969-07-26', NULL
FROM plots WHERE plot_number = 'NW-B-017-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'Walter', 'Spencer', NULL, '1923-05-04', '1984-12-16', NULL
FROM plots WHERE plot_number = 'NW-B-017-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'M.', 'Spencer', NULL, '1893-07-04', '1980-05-27', NULL
FROM plots WHERE plot_number = 'NW-B-017-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lois', 'Fay', 'Bethel', 'Spencer', '1949-02-01', '2002-06-13', NULL
FROM plots WHERE plot_number = 'NW-B-017-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lendon', 'Clarence', 'Spencer', NULL, '1918-04-22', '2006-11-29', NULL
FROM plots WHERE plot_number = 'NW-B-017-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Laurie', 'Guest', NULL, '1906-09-07', '1977-02-16', NULL
FROM plots WHERE plot_number = 'NW-B-019-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wesley', ' Tate', 'Guest', NULL, '1900-03-18', '1968-02-13', 'Brig. Gen.'
FROM plots WHERE plot_number = 'NW-B-019-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roy', NULL, 'Robinson', NULL, '1894-05-12', '1964-08-23', NULL
FROM plots WHERE plot_number = 'NW-B-020-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'D.', 'Guthrie', NULL, '1902-01-06', '1964-08-10', NULL
FROM plots WHERE plot_number = 'NW-B-020-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Irene', NULL, 'Kemper', 'Weeks', '1904-07-10', '1980-06-27', NULL
FROM plots WHERE plot_number = 'NW-B-021-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walmer', 'G.', 'Kemper', NULL, '1903-07-12', '1967-05-17', NULL
FROM plots WHERE plot_number = 'NW-B-021-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillian', NULL, 'Riley', 'Kemper', '1901-08-08', '1972-12-27', NULL
FROM plots WHERE plot_number = 'NW-B-021-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dallas', 'Cranmer', 'Pigott', NULL, '1915-03-28', '1982-01-06', NULL
FROM plots WHERE plot_number = 'NW-B-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', NULL, 'Clemmons', 'Pigott', '1947-12-12', '2001-08-08', NULL
FROM plots WHERE plot_number = 'NW-B-022-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lottie', NULL, 'Hubbard', 'McRoy', '1890-09-28', '1979-02-08', NULL
FROM plots WHERE plot_number = 'NW-B-022-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Egan', 'Hubbard', NULL, '1890-10-18', '1990-02-14', NULL
FROM plots WHERE plot_number = 'NW-B-022-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Egan', 'Hubbard,', NULL, '1918-05-14', '2011-01-16', 'Jr.'
FROM plots WHERE plot_number = 'NW-B-023-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leila', NULL, 'Pigott', 'Hubbard', '1916-11-28', '2011-09-10', NULL
FROM plots WHERE plot_number = 'NW-B-023-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Taylor', 'St.George', NULL, '1898-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-024-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', NULL, 'St.George', 'Winston', '1902-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-024-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Boyd', 'S.', 'Moore', NULL, '1911-10-06', '1986-06-12', NULL
FROM plots WHERE plot_number = 'NW-B-025-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Duta', 'C.', 'Moore', NULL, '1906-04-21', '1967-04-06', NULL
FROM plots WHERE plot_number = 'NW-B-025-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', NULL, 'Rees', NULL, '1933-03-13', '2004-08-16', NULL
FROM plots WHERE plot_number = 'NW-B-026-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Recie', 'S.', 'Rees', NULL, '1910-09-11', '1984-07-01', NULL
FROM plots WHERE plot_number = 'NW-B-027-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sam', NULL, 'Rees', NULL, '1905-11-26', '1967-06-03', NULL
FROM plots WHERE plot_number = 'NW-B-027-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dianne', NULL, 'Carroll', 'Rees', '1953-03-30', '1998-07-20', NULL
FROM plots WHERE plot_number = 'NW-B-027-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Allen', 'Rees', NULL, '1959-08-15', '2000-12-14', NULL
FROM plots WHERE plot_number = 'NW-B-027-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Smith', 'Howie', '1909-10-30', '1966-04-17', NULL
FROM plots WHERE plot_number = 'NW-B-028-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herman', 'Henry', 'Smith', NULL, '1911-05-08', '1970-02-09', NULL
FROM plots WHERE plot_number = 'NW-B-028-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cassie', 'B.', 'Swain', NULL, '1906-01-12', '1994-02-15', NULL
FROM plots WHERE plot_number = 'NW-B-029-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'F.', 'Herbert', 'Swain', NULL, '1901-07-14', '1979-06-07', NULL
FROM plots WHERE plot_number = 'NW-B-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Raymond', NULL, 'Jacobs', NULL, '1897-06-04', '1966-10-20', NULL
FROM plots WHERE plot_number = 'NW-B-030-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vira', NULL, 'Jacobs', 'Swain', '1897-08-15', '1991-09-30', NULL
FROM plots WHERE plot_number = 'NW-B-030-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carrie', NULL, 'Daniels', 'Cooper', '1896-07-21', '1983-06-02', NULL
FROM plots WHERE plot_number = 'NW-B-031-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'G.', 'Daniels', NULL, '1890-10-14', '1964-05-02', NULL
FROM plots WHERE plot_number = 'NW-B-031-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Inez', 'T.', 'Mason', NULL, '1914-10-21', '1967-01-06', NULL
FROM plots WHERE plot_number = 'NW-B-032-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'R.', 'Mason', NULL, '1915-04-05', '1971-08-24', NULL
FROM plots WHERE plot_number = 'NW-B-032-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lawson', 'L.', 'Bryan', NULL, '1910-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-034-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grace', 'M.', 'Bryan', NULL, '1913-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-034-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'Jane', 'Bryan', NULL, '1944-12-19', '1944-12-23', NULL
FROM plots WHERE plot_number = 'NW-B-034-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', 'W.', 'Sidebotham', NULL, '1916-06-16', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-034-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'E.', 'Sidebotham', NULL, '1913-04-13', '1967-02-18', NULL
FROM plots WHERE plot_number = 'NW-B-034-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julian', 'L.', 'Southerland', NULL, '1926-12-31', '1967-10-12', NULL
FROM plots WHERE plot_number = 'NW-B-036-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucy', 'Mae', 'Southerland', 'Sellers', '1912-02-28', '2006-01-09', NULL
FROM plots WHERE plot_number = 'NW-B-036-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-037-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-B-038-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'C.', 'Sellers', NULL, '1916-01-29', '1992-08-11', NULL
FROM plots WHERE plot_number = 'NW-B-039-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Juanita', NULL, 'Sellers', 'Nelms', '1924-09-03', '1986-11-01', NULL
FROM plots WHERE plot_number = 'NW-B-039-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Reginald', 'Potter', NULL, '1912-08-07', '1982-10-30', NULL
FROM plots WHERE plot_number = 'NW-B-039-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elneta', NULL, 'Potter', 'Sellers', '1920-03-06', '2000-06-03', NULL
FROM plots WHERE plot_number = 'NW-B-039-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', 'Augusta', 'Roughton', NULL, '1902-08-31', '1992-12-03', NULL
FROM plots WHERE plot_number = 'NW-B-040-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', NULL, 'Whatley', NULL, '1900-08-22', '1967-03-25', NULL
FROM plots WHERE plot_number = 'NW-B-040-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ressie', NULL, 'Whatley', 'Robinson', '1911-03-15', '2001-11-27', NULL
FROM plots WHERE plot_number = 'NW-B-040-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', 'R.', 'Gilbert', NULL, '1912-09-25', '1994-04-05', NULL
FROM plots WHERE plot_number = 'NW-B-041-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Alton', 'Gilbert', NULL, '1907-11-27', '1966-03-29', NULL
FROM plots WHERE plot_number = 'NW-B-041-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cora', 'Lee', 'Furpless', 'Walker', '1910-12-30', '2005-12-06', NULL
FROM plots WHERE plot_number = 'NW-B-043-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertram', 'Lanier', 'Furpless', NULL, '1912-04-13', '1962-02-21', NULL
FROM plots WHERE plot_number = 'NW-B-043-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julian', 'Dale', 'Southerland', NULL, '1950-08-28', '2017-04-09', NULL
FROM plots WHERE plot_number = 'NW-B-044-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lawton', 'Dewey', 'Smith', NULL, '1899-03-17', '1961-12-11', NULL
FROM plots WHERE plot_number = 'NW-B-044-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Smith', 'Southerland', '1900-08-02', '1984-10-17', NULL
FROM plots WHERE plot_number = 'NW-B-044-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnette', 'T.', 'Lingle', NULL, '1901-08-03', '1986-06-08', NULL
FROM plots WHERE plot_number = 'NW-B-045-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'R.', 'Lingle', NULL, '1906-03-18', '1962-12-03', NULL
FROM plots WHERE plot_number = 'NW-B-045-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fredrick', 'Waddell', 'Spencer', NULL, '1943-12-18', '2004-07-10', NULL
FROM plots WHERE plot_number = 'NW-B-046-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eleanor', NULL, 'Potter/Smith', 'Pancoast', '1922-05-24', '2004-09-04', NULL
FROM plots WHERE plot_number = 'NW-B-046-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bryant', NULL, 'Potter', NULL, '1918-12-05', '1967-06-03', NULL
FROM plots WHERE plot_number = 'NW-B-046-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', NULL, 'Smithers', NULL, '2011-05-12', '2012-01-21', NULL
FROM plots WHERE plot_number = 'NW-B-047-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeanne', 'Virginia', 'Pierce', 'Pancoast', '1925-08-09', '2000-10-14', NULL
FROM plots WHERE plot_number = 'NW-B-047-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Thompson', 'Pierce', NULL, '1922-11-16', '1990-09-28', NULL
FROM plots WHERE plot_number = 'NW-B-047-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', 'C.', 'Pancoast', NULL, '1900-12-12', '1963-09-05', NULL
FROM plots WHERE plot_number = 'NW-B-047-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Z.', 'Pancoast', NULL, '1894-10-12', '1971-12-12', NULL
FROM plots WHERE plot_number = 'NW-B-047-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'James', 'Joye', NULL, '1914-01-18', '1971-10-04', NULL
FROM plots WHERE plot_number = 'NW-B-049-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bessie', NULL, 'Joye', 'Plummer', '1920-03-13', '2008-06-26', NULL
FROM plots WHERE plot_number = 'NW-B-049-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Celia', NULL, 'Joye', NULL, '1919-01-25', '2001-07-12', NULL
FROM plots WHERE plot_number = 'NW-B-050-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'Wyman', 'Joye', NULL, '1910-12-24', '1986-01-07', NULL
FROM plots WHERE plot_number = 'NW-B-050-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lottie', 'Miller', 'Hazelton', 'Joye', '1893-01-12', '1962-09-14', NULL
FROM plots WHERE plot_number = 'NW-B-050-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mack', 'Bernice', 'Joy', NULL, '1919-10-01', '1971-11-15', NULL
FROM plots WHERE plot_number = 'NW-B-050-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'T.', 'Smith', NULL, '1900-01-17', '1961-12-10', NULL
FROM plots WHERE plot_number = 'NW-B-051-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnie', 'M.', 'Smith', NULL, '1898-04-02', '1969-11-16', NULL
FROM plots WHERE plot_number = 'NW-B-051-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Preston', 'T.', 'Tart', NULL, '1894-12-24', '1962-02-02', NULL
FROM plots WHERE plot_number = 'NW-B-052-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ira', 'J.', 'Tart', NULL, '1904-11-24', '1980-07-02', NULL
FROM plots WHERE plot_number = 'NW-B-052-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucy', 'S', 'Bigford', NULL, '1920-12-23', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-053-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'D.', 'Bigford', NULL, '1913-10-20', '1984-04-20', NULL
FROM plots WHERE plot_number = 'NW-B-053-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Prince', NULL, 'O''Brien', NULL, '1984-01-30', '1988-05-16', NULL
FROM plots WHERE plot_number = 'NW-B-055-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ida', 'May', 'O''Brien', NULL, '1896-04-25', '1961-01-29', NULL
FROM plots WHERE plot_number = 'NW-B-055-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Albert', 'Ellis', NULL, '1913-12-13', '2005-09-19', NULL
FROM plots WHERE plot_number = 'NW-B-055-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Ellis', 'O''Brein', '1926-08-01', '2009-05-25', NULL
FROM plots WHERE plot_number = 'NW-B-055-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fabius', 'Prince', 'O''Brien', NULL, '1946-06-15', '1992-03-18', NULL
FROM plots WHERE plot_number = 'NW-B-056-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'M.', 'O''Brien', NULL, '1921-12-05', '1995-12-14', NULL
FROM plots WHERE plot_number = 'NW-B-056-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', 'C.', 'O''Brien', NULL, '1929-11-28', '1992-10-22', NULL
FROM plots WHERE plot_number = 'NW-B-056-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gilbert', NULL, 'Reid', NULL, '1898-11-11', '1974-09-13', NULL
FROM plots WHERE plot_number = 'NW-B-057-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mabel', NULL, 'Reid', 'Ramseur', '1907-07-17', '1993-06-16', NULL
FROM plots WHERE plot_number = 'NW-B-057-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'J.', 'Ellis', 'Dodson', NULL, '1887-12-15', '1956-09-19', NULL
FROM plots WHERE plot_number = 'NW-B-058-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnie', 'F.', 'Dodson', NULL, '1891-08-07', '1977-09-20', NULL
FROM plots WHERE plot_number = 'NW-B-058-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Luther', 'C.', 'Brown,', NULL, '1924-12-30', '1985-06-20', ' Jr.'
FROM plots WHERE plot_number = 'NW-B-059-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mae', 'W.', 'Brown', NULL, '1905-05-07', '1980-09-30', NULL
FROM plots WHERE plot_number = 'NW-B-059-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Luther', 'G.', 'Brown', NULL, '1888-08-18', '1951-02-21', NULL
FROM plots WHERE plot_number = 'NW-B-059-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sylvia', NULL, 'Brown', 'Floyd', '1934-12-31', '2010-01-14', NULL
FROM plots WHERE plot_number = 'NW-B-060-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'E.', 'Brown', NULL, '1927-06-02', '1990-12-26', NULL
FROM plots WHERE plot_number = 'NW-B-060-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'E.', 'Brown', NULL, '1950-08-27', '1965-01-03', 'Jr.'
FROM plots WHERE plot_number = 'NW-B-060-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'G', 'Swan', NULL, '1905-01-19', '1972-08-31', NULL
FROM plots WHERE plot_number = 'NW-B-061-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jessie', 'L', 'Swan', NULL, '1907-03-22', '1994-06-26', NULL
FROM plots WHERE plot_number = 'NW-B-061-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lise', NULL, 'Swan', 'Choquette', '1939-04-03', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-061-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'G.', 'Swan', NULL, '1931-01-24', NULL, 'Jr.'
FROM plots WHERE plot_number = 'NW-B-061-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nancy', 'Jane', 'Hodges', 'Swan', '1933-02-24', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-062-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Paul', 'Hodges', NULL, '1930-05-02', '2006-10-13', NULL
FROM plots WHERE plot_number = 'NW-B-062-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Karen', 'Marie', 'Fisher', 'Swan', '1934-05-07', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-062-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'Darrell (Crow)', 'Fisher', NULL, '1934-06-15', NULL, NULL
FROM plots WHERE plot_number = 'NW-B-062-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'David', 'Spencer', NULL, '1874-02-22', '1942-05-28', NULL
FROM plots WHERE plot_number = 'NW-B-063-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Spencer', 'Sullivan', '1885-07-10', '1974-04-05', NULL
FROM plots WHERE plot_number = 'NW-B-063-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', 'L.', 'Young', NULL, '1916-07-26', '1958-04-13', NULL
FROM plots WHERE plot_number = 'NW-B-063-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', 'A.', 'Lancaster', NULL, '1938-10-29', '1958-04-13', NULL
FROM plots WHERE plot_number = 'NW-B-063-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sylvia', NULL, 'Butterworth', 'Hewett', '1937-02-08', '2020-01-22', NULL
FROM plots WHERE plot_number = 'NW-B-064-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Shelia', 'Oneida', 'Boyd', 'Butterworth', '1966-12-21', '2011-07-13', NULL
FROM plots WHERE plot_number = 'NW-B-065-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Oneida', 'C.', 'Hewett', NULL, '1901-02-18', '1989-12-09', NULL
FROM plots WHERE plot_number = 'NW-B-065-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'W.', 'Hewett', NULL, '1894-12-25', '1958-02-26', NULL
FROM plots WHERE plot_number = 'NW-B-065-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'D.', 'McKeithan', NULL, '1883-01-01', '1957-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-066-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Etta', 'Reaves', 'McKeithan', NULL, '1885-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-067-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'Lee', 'McKeithan', NULL, '1911-01-01', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-B-067-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leon', 'E', 'Leonard', NULL, '1903-01-23', '1966-05-20', NULL
FROM plots WHERE plot_number = 'NW-B-068-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'Vance', 'Leonard', NULL, '1901-12-22', '1993-10-19', NULL
FROM plots WHERE plot_number = 'NW-B-068-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dola', NULL, 'Leonard', 'Bennett', '1906-03-15', '1986-01-13', NULL
FROM plots WHERE plot_number = 'NW-B-068-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'Louise', 'Parker', 'McGill', '1926-07-23', '2000-11-24', NULL
FROM plots WHERE plot_number = 'NW-B-069-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ernest', 'E.', 'Parker', NULL, '1925-07-25', '1982-04-11', NULL
FROM plots WHERE plot_number = 'NW-B-069-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Lubby', 'Jones', NULL, '1911-06-03', '1966-09-27', NULL
FROM plots WHERE plot_number = 'NW-B-070-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mattie', 'Lou', 'Jones', NULL, '1914-10-11', '1981-11-29', NULL
FROM plots WHERE plot_number = 'NW-B-070-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wilhelmina', 'Boesser', 'Ferguson', NULL, '1924-09-20', '2009-07-13', NULL
FROM plots WHERE plot_number = 'NW-B-071-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'D.', 'Loughlin', NULL, '1912-12-19', '1965-07-16', NULL
FROM plots WHERE plot_number = 'NW-B-071-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Desetta', 'B.', 'Loughlin', NULL, '1914-06-02', '2014-01-18', NULL
FROM plots WHERE plot_number = 'NW-B-071-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'Kenneth', 'Pierpont', NULL, '1901-09-30', '1968-06-13', NULL
FROM plots WHERE plot_number = 'NW-B-072-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Pierpont', 'Potter', '1900-04-15', '1989-05-11', NULL
FROM plots WHERE plot_number = 'NW-B-072-7'
ON CONFLICT DO NOTHING;

