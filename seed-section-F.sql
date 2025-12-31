-- ============================================
-- Northwood Cemetery - Section F Data Migration
-- ============================================
-- Total plots: 296
-- Deceased records: 105
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section F
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-F-001-1', 'F', 1, 1, 'standard', 'available', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-2', 'F', 1, 2, 'standard', 'available', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-3', 'F', 1, 3, 'standard', 'available', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-4', 'F', 1, 4, 'standard', 'available', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-5', 'F', 1, 5, 'standard', 'occupied', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-6', 'F', 1, 6, 'standard', 'occupied', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-7', 'F', 1, 7, 'standard', 'available', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-001-8', 'F', 1, 8, 'standard', 'occupied', 4.0, 10.0, 'Vander & Kathleen Williamson', '411 N. Burrington Ave, Southport, NC, 28461', '1964-07-10'),
('NW-F-002-1', 'F', 2, 1, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-2', 'F', 2, 2, 'standard', 'occupied', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-3', 'F', 2, 3, 'standard', 'occupied', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-4', 'F', 2, 4, 'standard', 'occupied', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-5', 'F', 2, 5, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-6', 'F', 2, 6, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-7', 'F', 2, 7, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-002-8', 'F', 2, 8, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-1', 'F', 3, 1, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-2', 'F', 3, 2, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-3', 'F', 3, 3, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-4', 'F', 3, 4, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-5', 'F', 3, 5, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-6', 'F', 3, 6, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-7', 'F', 3, 7, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-003-8', 'F', 3, 8, 'standard', 'available', 4.0, 10.0, 'William Henry Walker', '213 E. Brown Street, Southport, NC, 28461', '1970-12-15'),
('NW-F-004-1', 'F', 4, 1, 'standard', 'available', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-2', 'F', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-3', 'F', 4, 3, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-4', 'F', 4, 4, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-5', 'F', 4, 5, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-6', 'F', 4, 6, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-7', 'F', 4, 7, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-004-8', 'F', 4, 8, 'standard', 'occupied', 4.0, 10.0, 'Cristine Hewett Mitchell', NULL, '1969-07-01'),
('NW-F-005-1', 'F', 5, 1, 'standard', 'available', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-2', 'F', 5, 2, 'standard', 'available', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-3', 'F', 5, 3, 'standard', 'occupied', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-4', 'F', 5, 4, 'standard', 'occupied', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-5', 'F', 5, 5, 'standard', 'available', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-6', 'F', 5, 6, 'standard', 'occupied', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-7', 'F', 5, 7, 'standard', 'occupied', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-005-8', 'F', 5, 8, 'standard', 'occupied', 4.0, 10.0, 'Steve Cooker', 'N. Clarendon Ave., Southport, NC, 28461', '1972-10-27'),
('NW-F-006-1', 'F', 6, 1, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-2', 'F', 6, 2, 'standard', 'occupied', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-3', 'F', 6, 3, 'standard', 'occupied', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-4', 'F', 6, 4, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-5', 'F', 6, 5, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-6', 'F', 6, 6, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-7', 'F', 6, 7, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-006-8', 'F', 6, 8, 'standard', 'available', 4.0, 10.0, 'Jack & Margaret Worley', 'N. Howe Street, Southport, NC, 28461', '1969-05-04'),
('NW-F-007-1', 'F', 7, 1, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-2', 'F', 7, 2, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-3', 'F', 7, 3, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-4', 'F', 7, 4, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-5', 'F', 7, 5, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-6', 'F', 7, 6, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-7', 'F', 7, 7, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-007-8', 'F', 7, 8, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', 'W. Moore Street, Southport, NC, 28461', '1966-06-08'),
('NW-F-008-1', 'F', 8, 1, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-2', 'F', 8, 2, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-3', 'F', 8, 3, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-4', 'F', 8, 4, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-5', 'F', 8, 5, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-6', 'F', 8, 6, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-7', 'F', 8, 7, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-008-8', 'F', 8, 8, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, '1967-04-14'),
('NW-F-009-1', 'F', 9, 1, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-2', 'F', 9, 2, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-3', 'F', 9, 3, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-4', 'F', 9, 4, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-5', 'F', 9, 5, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-6', 'F', 9, 6, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-7', 'F', 9, 7, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-009-8', 'F', 9, 8, 'standard', 'available', 4.0, 10.0, 'Robert Garretson', NULL, NULL),
('NW-F-010-1', 'F', 10, 1, 'standard', 'available', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-2', 'F', 10, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-3', 'F', 10, 3, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-4', 'F', 10, 4, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-5', 'F', 10, 5, 'standard', 'available', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-6', 'F', 10, 6, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-7', 'F', 10, 7, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-010-8', 'F', 10, 8, 'standard', 'occupied', 4.0, 10.0, 'Mary Elizabeth Hall (Samuel C. Carr) Pfieffer', NULL, '1963-03-08'),
('NW-F-011-1', 'F', 11, 1, 'standard', 'occupied', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-2', 'F', 11, 2, 'standard', 'available', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-3', 'F', 11, 3, 'standard', 'available', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-4', 'F', 11, 4, 'standard', 'available', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-5', 'F', 11, 5, 'standard', 'occupied', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-6', 'F', 11, 6, 'standard', 'occupied', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-7', 'F', 11, 7, 'standard', 'available', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-011-8', 'F', 11, 8, 'standard', 'occupied', 4.0, 10.0, 'Maude Gore', NULL, NULL),
('NW-F-012-1', 'F', 12, 1, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-2', 'F', 12, 2, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-3', 'F', 12, 3, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-4', 'F', 12, 4, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-5', 'F', 12, 5, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-6', 'F', 12, 6, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-7', 'F', 12, 7, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-012-8', 'F', 12, 8, 'standard', 'available', 4.0, 10.0, 'C. E. Hart', NULL, '1975-01-03'),
('NW-F-013-1', 'F', 13, 1, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-2', 'F', 13, 2, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-3', 'F', 13, 3, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-4', 'F', 13, 4, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-5', 'F', 13, 5, 'standard', 'occupied', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-6', 'F', 13, 6, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-7', 'F', 13, 7, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-013-8', 'F', 13, 8, 'standard', 'available', 4.0, 10.0, 'Vida H. Trott', NULL, '1959-10-07'),
('NW-F-014-1', 'F', 14, 1, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-2', 'F', 14, 2, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-3', 'F', 14, 3, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-4', 'F', 14, 4, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-5', 'F', 14, 5, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-6', 'F', 14, 6, 'standard', 'available', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-7', 'F', 14, 7, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-014-8', 'F', 14, 8, 'standard', 'occupied', 4.0, 10.0, 'Hill D. Brock', NULL, NULL),
('NW-F-015-1', 'F', 15, 1, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-2', 'F', 15, 2, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-3', 'F', 15, 3, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-4', 'F', 15, 4, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-5', 'F', 15, 5, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-6', 'F', 15, 6, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-7', 'F', 15, 7, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-015-8', 'F', 15, 8, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1957-02-07'),
('NW-F-016-1', 'F', 16, 1, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-2', 'F', 16, 2, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-3', 'F', 16, 3, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-4', 'F', 16, 4, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-5', 'F', 16, 5, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-6', 'F', 16, 6, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-7', 'F', 16, 7, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-016-8', 'F', 16, 8, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461', '1960-07-06'),
('NW-F-017-1', 'F', 17, 1, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-2', 'F', 17, 2, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-3', 'F', 17, 3, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-4', 'F', 17, 4, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-5', 'F', 17, 5, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-6', 'F', 17, 6, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-7', 'F', 17, 7, 'standard', 'available', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-017-8', 'F', 17, 8, 'standard', 'occupied', 4.0, 10.0, 'Susie Sellers Carson', '501 N. Atlantic, Southport, NC, 28461-0501', '1960-07-06'),
('NW-F-018-1', 'F', 18, 1, 'standard', 'occupied', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-2', 'F', 18, 2, 'standard', 'occupied', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-3', 'F', 18, 3, 'standard', 'available', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-4', 'F', 18, 4, 'standard', 'available', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-5', 'F', 18, 5, 'standard', 'available', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-6', 'F', 18, 6, 'standard', 'occupied', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-7', 'F', 18, 7, 'standard', 'occupied', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-018-8', 'F', 18, 8, 'standard', 'available', 4.0, 10.0, 'Herbert Johnson', '(Not Paid For)', NULL),
('NW-F-019-1', 'F', 19, 1, 'standard', 'occupied', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-2', 'F', 19, 2, 'standard', 'available', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-3', 'F', 19, 3, 'standard', 'available', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-4', 'F', 19, 4, 'standard', 'occupied', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-5', 'F', 19, 5, 'standard', 'available', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-6', 'F', 19, 6, 'standard', 'occupied', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-7', 'F', 19, 7, 'standard', 'occupied', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-019-8', 'F', 19, 8, 'standard', 'occupied', 4.0, 10.0, 'Tumps Phelps', NULL, NULL),
('NW-F-020-1', 'F', 20, 1, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-2', 'F', 20, 2, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-3', 'F', 20, 3, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-4', 'F', 20, 4, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-5', 'F', 20, 5, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-6', 'F', 20, 6, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-7', 'F', 20, 7, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-020-8', 'F', 20, 8, 'standard', 'available', 4.0, 10.0, 'J. Windfield (Fred Dosher) Stanley', NULL, NULL),
('NW-F-021-1', 'F', 21, 1, 'standard', 'available', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-2', 'F', 21, 2, 'standard', 'available', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-3', 'F', 21, 3, 'standard', 'occupied', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-4', 'F', 21, 4, 'standard', 'available', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-5', 'F', 21, 5, 'standard', 'available', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-6', 'F', 21, 6, 'standard', 'occupied', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-7', 'F', 21, 7, 'standard', 'available', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-021-8', 'F', 21, 8, 'standard', 'occupied', 4.0, 10.0, 'J. Windfield Stanley', NULL, NULL),
('NW-F-022-1', 'F', 22, 1, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-2', 'F', 22, 2, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-3', 'F', 22, 3, 'standard', 'available', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-4', 'F', 22, 4, 'standard', 'available', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-5', 'F', 22, 5, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-6', 'F', 22, 6, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-7', 'F', 22, 7, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-022-8', 'F', 22, 8, 'standard', 'occupied', 4.0, 10.0, 'G. G. Stanley', NULL, NULL),
('NW-F-023-1', 'F', 23, 1, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-2', 'F', 23, 2, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-3', 'F', 23, 3, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-4', 'F', 23, 4, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-5', 'F', 23, 5, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-6', 'F', 23, 6, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-7', 'F', 23, 7, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-023-8', 'F', 23, 8, 'standard', 'available', 4.0, 10.0, 'Charles Nichols', NULL, NULL),
('NW-F-024-1', 'F', 24, 1, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-2', 'F', 24, 2, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-3', 'F', 24, 3, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-4', 'F', 24, 4, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-5', 'F', 24, 5, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-6', 'F', 24, 6, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-7', 'F', 24, 7, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-024-8', 'F', 24, 8, 'standard', 'available', 4.0, 10.0, 'J. B. Ashley', NULL, NULL),
('NW-F-025-1', 'F', 25, 1, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-2', 'F', 25, 2, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-3', 'F', 25, 3, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-4', 'F', 25, 4, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-5', 'F', 25, 5, 'standard', 'occupied', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-6', 'F', 25, 6, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-7', 'F', 25, 7, 'standard', 'available', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-025-8', 'F', 25, 8, 'standard', 'occupied', 4.0, 10.0, 'Willie R. Suggs', NULL, NULL),
('NW-F-026-1', 'F', 26, 1, 'standard', 'occupied', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-2', 'F', 26, 2, 'standard', 'available', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-3', 'F', 26, 3, 'standard', 'available', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-4', 'F', 26, 4, 'standard', 'available', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-5', 'F', 26, 5, 'standard', 'occupied', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-6', 'F', 26, 6, 'standard', 'occupied', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-7', 'F', 26, 7, 'standard', 'occupied', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-026-8', 'F', 26, 8, 'standard', 'occupied', 4.0, 10.0, 'W. C. (Bill) Kincaide', 'N. Lord, Southport, NC, 28461', NULL),
('NW-F-027-1', 'F', 27, 1, 'standard', 'occupied', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-2', 'F', 27, 2, 'standard', 'available', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-3', 'F', 27, 3, 'standard', 'occupied', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-4', 'F', 27, 4, 'standard', 'available', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-5', 'F', 27, 5, 'standard', 'occupied', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-6', 'F', 27, 6, 'standard', 'occupied', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-7', 'F', 27, 7, 'standard', 'available', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-027-8', 'F', 27, 8, 'standard', 'available', 4.0, 10.0, 'Thomas Fullwood', 'N. Clarendon, Southport, NC, 28461', NULL),
('NW-F-028-1', 'F', 28, 1, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-2', 'F', 28, 2, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-3', 'F', 28, 3, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-4', 'F', 28, 4, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-5', 'F', 28, 5, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-6', 'F', 28, 6, 'standard', 'available', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-7', 'F', 28, 7, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-028-8', 'F', 28, 8, 'standard', 'occupied', 4.0, 10.0, 'W. M. Cooker', 'Brunswick Street, Southport, NC, 28461', NULL),
('NW-F-029-1', 'F', 29, 1, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-2', 'F', 29, 2, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-3', 'F', 29, 3, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-4', 'F', 29, 4, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-5', 'F', 29, 5, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-6', 'F', 29, 6, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-7', 'F', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-029-8', 'F', 29, 8, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-1', 'F', 30, 1, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-2', 'F', 30, 2, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-3', 'F', 30, 3, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-4', 'F', 30, 4, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-5', 'F', 30, 5, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-6', 'F', 30, 6, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-7', 'F', 30, 7, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-030-8', 'F', 30, 8, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', '(Potters Field Only)', NULL),
('NW-F-031-1', 'F', 31, 1, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-2', 'F', 31, 2, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-3', 'F', 31, 3, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-4', 'F', 31, 4, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-5', 'F', 31, 5, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-6', 'F', 31, 6, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-7', 'F', 31, 7, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-031-8', 'F', 31, 8, 'standard', 'available', 4.0, 10.0, 'Robert Arthur Jones', '109 River Drive, Southport, NC, 28461', '2005-01-01'),
('NW-F-032-1', 'F', 32, 1, 'standard', 'available', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-2', 'F', 32, 2, 'standard', 'available', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-3', 'F', 32, 3, 'standard', 'available', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-4', 'F', 32, 4, 'standard', 'available', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-5', 'F', 32, 5, 'standard', 'available', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-6', 'F', 32, 6, 'standard', 'occupied', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-7', 'F', 32, 7, 'standard', 'occupied', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-032-8', 'F', 32, 8, 'standard', 'occupied', 4.0, 10.0, 'Hans Anderson', NULL, NULL),
('NW-F-033-1', 'F', 33, 1, 'standard', 'available', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-2', 'F', 33, 2, 'standard', 'available', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-3', 'F', 33, 3, 'standard', 'occupied', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-4', 'F', 33, 4, 'standard', 'available', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-5', 'F', 33, 5, 'standard', 'occupied', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-6', 'F', 33, 6, 'standard', 'occupied', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-7', 'F', 33, 7, 'standard', 'occupied', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-033-8', 'F', 33, 8, 'standard', 'occupied', 4.0, 10.0, 'James St. George', NULL, NULL),
('NW-F-034-1', 'F', 34, 1, 'standard', 'occupied', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-2', 'F', 34, 2, 'standard', 'available', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-3', 'F', 34, 3, 'standard', 'available', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-4', 'F', 34, 4, 'standard', 'available', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-5', 'F', 34, 5, 'standard', 'available', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-6', 'F', 34, 6, 'standard', 'occupied', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-7', 'F', 34, 7, 'standard', 'occupied', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-034-8', 'F', 34, 8, 'standard', 'available', 4.0, 10.0, 'C. W. Easley', NULL, NULL),
('NW-F-035-1', 'F', 35, 1, 'standard', 'available', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-2', 'F', 35, 2, 'standard', 'available', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-3', 'F', 35, 3, 'standard', 'available', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-4', 'F', 35, 4, 'standard', 'available', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-5', 'F', 35, 5, 'standard', 'occupied', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-6', 'F', 35, 6, 'standard', 'occupied', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-7', 'F', 35, 7, 'standard', 'occupied', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-035-8', 'F', 35, 8, 'standard', 'occupied', 4.0, 10.0, 'W. T. Ottaway', NULL, NULL),
('NW-F-036-1', 'F', 36, 1, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-2', 'F', 36, 2, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-3', 'F', 36, 3, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-4', 'F', 36, 4, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-5', 'F', 36, 5, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-6', 'F', 36, 6, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-7', 'F', 36, 7, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-036-8', 'F', 36, 8, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-F-037-1', 'F', 37, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-2', 'F', 37, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-3', 'F', 37, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-4', 'F', 37, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-5', 'F', 37, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-6', 'F', 37, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-7', 'F', 37, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-F-037-8', 'F', 37, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL)
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section F
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vanderville', NULL, 'Williamson', NULL, '1906-07-13', '1964-07-07', NULL
FROM plots WHERE plot_number = 'NW-F-001-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kathleen', NULL, 'Williamson', NULL, '1916-04-27', NULL, NULL
FROM plots WHERE plot_number = 'NW-F-001-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Terry', 'Jerome', 'Williamson', NULL, '1975-06-08', '1988-07-13', NULL
FROM plots WHERE plot_number = 'NW-F-001-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Henry', 'Walker,', NULL, '1913-12-20', '1970-11-07', 'Jr.'
FROM plots WHERE plot_number = 'NW-F-002-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rosa', 'Lee', 'Walker', 'Anderson', '1923-11-11', '2005-01-16', NULL
FROM plots WHERE plot_number = 'NW-F-002-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Henry', 'Walker', NULL, '1952-07-14', '2009-06-14', ' III'
FROM plots WHERE plot_number = 'NW-F-002-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Marie', 'Fleming', NULL, '1927-08-04', '1982-09-19', NULL
FROM plots WHERE plot_number = 'NW-F-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Hewett', 'Long', '1899-06-30', '1975-08-26', NULL
FROM plots WHERE plot_number = 'NW-F-004-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Randolph', 'Hewett', NULL, '1887-05-16', '1967-08-05', NULL
FROM plots WHERE plot_number = 'NW-F-004-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christian', NULL, 'Mitchell', 'Ivedean', '1924-01-17', '2001-10-23', NULL
FROM plots WHERE plot_number = 'NW-F-004-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Buddie', NULL, 'Brown', NULL, '1903-01-01', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-004-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'H', 'Brown', NULL, '1925-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-004-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Tracy', 'Mitchell', NULL, '1945-12-19', '2011-11-02', 'Sr.'
FROM plots WHERE plot_number = 'NW-F-004-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Steven', 'Frances', 'Cooker', NULL, '1940-10-08', '2022-05-17', NULL
FROM plots WHERE plot_number = 'NW-F-005-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Timothy', 'James', 'Cooker', NULL, '1967-08-01', '1967-08-01', NULL
FROM plots WHERE plot_number = 'NW-F-005-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', NULL, 'Harrison', 'Cooker', '1933-06-29', '1986-12-18', NULL
FROM plots WHERE plot_number = 'NW-F-005-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', NULL, 'Watts', 'Varnum', '1913-08-16', '1995-09-07', NULL
FROM plots WHERE plot_number = 'NW-F-005-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carl', 'Eugene', 'Cooker', NULL, '1931-08-20', '1987-03-04', NULL
FROM plots WHERE plot_number = 'NW-F-005-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', 'B.', 'Worley', NULL, '1917-04-01', '1976-05-18', NULL
FROM plots WHERE plot_number = 'NW-F-006-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Worley', 'Townsend', '1919-01-12', '1998-04-23', NULL
FROM plots WHERE plot_number = 'NW-F-006-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'W.', 'Hall', NULL, '1893-10-30', '1962-12-21', NULL
FROM plots WHERE plot_number = 'NW-F-010-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'C.', 'Carr', NULL, '1917-03-09', '1976-07-06', NULL
FROM plots WHERE plot_number = 'NW-F-010-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'A', 'Dastoli', NULL, '1935-05-25', '1983-04-20', NULL
FROM plots WHERE plot_number = 'NW-F-010-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'Crawford', 'Carr Jr.', NULL, '1943-06-05', '2021-08-15', NULL
FROM plots WHERE plot_number = 'NW-F-010-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'Crawford', 'Carr', NULL, '1912-09-10', '1984-12-08', NULL
FROM plots WHERE plot_number = 'NW-F-010-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mattie', NULL, 'Carr', 'Turpin', '1919-03-13', '1995-10-05', NULL
FROM plots WHERE plot_number = 'NW-F-010-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earl', NULL, 'Gore', NULL, '1928-02-06', '1978-03-13', NULL
FROM plots WHERE plot_number = 'NW-F-011-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vondell', NULL, 'Gore', NULL, '1914-07-01', '1961-08-12', NULL
FROM plots WHERE plot_number = 'NW-F-011-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Raleigh', 'C.', 'Gore', NULL, '1915-08-25', '1963-12-29', NULL
FROM plots WHERE plot_number = 'NW-F-011-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rudolph', NULL, 'Gore', NULL, '1911-10-18', '1972-03-23', NULL
FROM plots WHERE plot_number = 'NW-F-011-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vida', NULL, 'Trott', 'Hood', '1903-07-05', '1960-05-12', NULL
FROM plots WHERE plot_number = 'NW-F-013-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', NULL, 'Getert', 'Watts', '1902-11-04', '1987-05-08', NULL
FROM plots WHERE plot_number = 'NW-F-014-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', NULL, 'Salmons,', NULL, '1957-11-02', '1996-04-09', ' Jr.'
FROM plots WHERE plot_number = 'NW-F-014-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Adam', 'Karami', 'Muhammad', NULL, '1991-03-10', '2014-02-14', NULL
FROM plots WHERE plot_number = 'NW-F-014-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Aleyah', NULL, 'Muhammad', NULL, '1939-01-09', '2022-04-11', NULL
FROM plots WHERE plot_number = 'NW-F-014-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'S.', 'Brock', NULL, '1913-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-014-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hills', 'D.', 'Brock', NULL, '1898-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-014-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tommy', 'Lee', 'Brock', NULL, '1949-01-01', '1954-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-014-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Rhydell', 'Sellers', NULL, '1923-06-02', '2002-01-28', NULL
FROM plots WHERE plot_number = 'NW-F-015-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Craven', 'Ledrew', 'Sellers', NULL, '1889-08-07', '1960-06-16', NULL
FROM plots WHERE plot_number = 'NW-F-015-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lelia', 'S.', 'Sellers', NULL, '1892-03-16', '1972-11-03', NULL
FROM plots WHERE plot_number = 'NW-F-015-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bulah', NULL, 'Fulwood', 'Sellers', '1908-09-09', '1979-08-10', NULL
FROM plots WHERE plot_number = 'NW-F-015-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susie', NULL, 'Carson', 'Sellers', '1920-05-25', '2008-09-01', NULL
FROM plots WHERE plot_number = 'NW-F-015-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', 'Vashti', 'Dunn', 'Sellers', '1922-04-11', '2009-12-02', NULL
FROM plots WHERE plot_number = 'NW-F-016-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'S.', 'Dunn', NULL, '1924-06-19', '2009-03-07', NULL
FROM plots WHERE plot_number = 'NW-F-016-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Rhydell', 'Sellers', NULL, '1923-06-02', '2002-01-28', NULL
FROM plots WHERE plot_number = 'NW-F-017-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'Lenore', 'Johnson', NULL, '1952-04-03', '1952-04-26', NULL
FROM plots WHERE plot_number = 'NW-F-018-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Florrie', 'Ellen', 'Johnson', NULL, '1955-03-12', '1956-01-03', NULL
FROM plots WHERE plot_number = 'NW-F-018-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', 'Mizell', 'Johnson', NULL, '1908-10-25', '1966-06-12', NULL
FROM plots WHERE plot_number = 'NW-F-018-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Florrie', NULL, 'Johnson', 'Ratcliff', '1913-01-12', '1969-12-10', NULL
FROM plots WHERE plot_number = 'NW-F-018-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Landon', 'McRoy', NULL, '1936-04-13', '2013-07-27', NULL
FROM plots WHERE plot_number = 'NW-F-019-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vollie', NULL, 'Hayes', NULL, '1924-12-31', '1961-03-25', NULL
FROM plots WHERE plot_number = 'NW-F-019-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Edward', 'McRoy', NULL, '1888-07-10', '1964-02-06', NULL
FROM plots WHERE plot_number = 'NW-F-019-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rosa', NULL, 'McRoy', 'Mathews', '1903-01-18', '1962-12-24', NULL
FROM plots WHERE plot_number = 'NW-F-019-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Judy', NULL, 'McRoy', NULL, '1944-06-01', '1944-06-01', NULL
FROM plots WHERE plot_number = 'NW-F-019-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Dosher', 'Faison', '1904-12-20', '1958-12-07', NULL
FROM plots WHERE plot_number = 'NW-F-021-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eula', NULL, 'Dosher', NULL, '1871-11-17', '1963-02-19', NULL
FROM plots WHERE plot_number = 'NW-F-021-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'Guthrie', 'Dosher', NULL, '1875-05-19', '1953-04-02', NULL
FROM plots WHERE plot_number = 'NW-F-021-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella', 'S.', 'Fales', NULL, '1889-06-22', '1958-09-16', NULL
FROM plots WHERE plot_number = 'NW-F-022-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', NULL, 'Lutes', 'Fales', '1920-10-04', '1983-09-02', NULL
FROM plots WHERE plot_number = 'NW-F-022-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Godley', 'Stanley', NULL, '1904-07-11', '1994-02-23', NULL
FROM plots WHERE plot_number = 'NW-F-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nora', NULL, 'Stanley', 'Milligan', '1914-07-04', '1995-04-04', NULL
FROM plots WHERE plot_number = 'NW-F-022-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'E.', 'Stanley', NULL, '1867-01-01', '1942-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-022-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'V.', 'Stanley', NULL, '1873-01-01', '1942-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-022-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sheila', 'Dawn', 'Earley', NULL, '1950-01-14', '1950-01-15', NULL
FROM plots WHERE plot_number = 'NW-F-025-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Hinson', 'Cox', NULL, '1947-11-29', '1948-02-14', NULL
FROM plots WHERE plot_number = 'NW-F-025-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeannie', NULL, 'Snipes', 'Kincaide', '1938-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-026-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'William', 'Kincaide', NULL, '1940-01-01', '1982-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-026-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nadine', NULL, 'Kincaide', 'Luan', '1936-01-01', '1952-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-026-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nona', NULL, 'Kincaide', 'Cassidy', '1912-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-026-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'C.', 'Kincaide', NULL, '1908-07-08', '1984-02-19', NULL
FROM plots WHERE plot_number = 'NW-F-026-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'W.', 'Fulwood', NULL, '1931-01-20', '1952-01-02', NULL
FROM plots WHERE plot_number = 'NW-F-027-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', NULL, 'Fulwood,', NULL, '1928-12-27', '1948-04-26', ' Jr.'
FROM plots WHERE plot_number = 'NW-F-027-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Thomas', 'Fulwood', NULL, '1902-05-02', '1964-02-07', NULL
FROM plots WHERE plot_number = 'NW-F-027-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hazel', NULL, 'Fullwood', 'Trunnell', '1902-10-20', '1989-01-13', NULL
FROM plots WHERE plot_number = 'NW-F-027-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'M.', 'Cooker', NULL, '1906-12-08', '1984-10-16', NULL
FROM plots WHERE plot_number = 'NW-F-028-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Juanita', NULL, 'Johnson', 'Cooker', '1913-07-30', '1993-12-13', NULL
FROM plots WHERE plot_number = 'NW-F-028-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Allen', 'Johnson', NULL, '1926-04-10', '1994-04-07', NULL
FROM plots WHERE plot_number = 'NW-F-028-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Louise', 'George', 'Potter', '1945-03-30', '2010-11-30', NULL
FROM plots WHERE plot_number = 'NW-F-028-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marshall', 'J.', 'Cooker', NULL, '1905-06-09', '1948-04-03', NULL
FROM plots WHERE plot_number = 'NW-F-028-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Elonza', 'Cooker', NULL, '1879-08-07', '1954-12-13', NULL
FROM plots WHERE plot_number = 'NW-F-028-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sabra', NULL, 'Cooker', 'Johnson', '1876-03-06', '1962-05-22', NULL
FROM plots WHERE plot_number = 'NW-F-028-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bernice', 'Dare', 'Joye', NULL, '1955-06-11', '1955-06-12', NULL
FROM plots WHERE plot_number = 'NW-F-029-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roger', 'Landis', 'Joye', NULL, '1957-01-19', '1957-01-19', NULL
FROM plots WHERE plot_number = 'NW-F-029-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Newton', 'Whitw', 'Bowden', NULL, '1907-06-05', '1951-02-14', NULL
FROM plots WHERE plot_number = 'NW-F-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Infant', NULL, 'Hyatt', NULL, '1949-01-01', '1949-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-030-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hance', NULL, 'Anderson', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-F-032-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Anderson', NULL, '1878-05-25', '1950-08-31', NULL
FROM plots WHERE plot_number = 'NW-F-032-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Infant', NULL, 'St. George', NULL, '1973-06-23', '1973-06-23', NULL
FROM plots WHERE plot_number = 'NW-F-032-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tommy', 'Walker', 'St. George', NULL, '1931-07-11', '2006-10-06', NULL
FROM plots WHERE plot_number = 'NW-F-033-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ada', NULL, 'St. George', NULL, '1933-01-24', '1939-08-17', NULL
FROM plots WHERE plot_number = 'NW-F-033-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'W.', 'St. George', NULL, '1900-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-033-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertha', 'H.', 'St. George', NULL, '1896-01-01', '1959-01-01', NULL
FROM plots WHERE plot_number = 'NW-F-033-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Warren', 'F.', 'Lewis', NULL, '1919-10-18', '1974-06-20', NULL
FROM plots WHERE plot_number = 'NW-F-033-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carey', 'Wayne', 'Spencer', NULL, '1938-06-23', '2019-10-12', 'Sr.'
FROM plots WHERE plot_number = 'NW-F-034-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Josie', 'Ottaway', 'Easley', 'Styron', '1887-05-08', '1955-11-05', NULL
FROM plots WHERE plot_number = 'NW-F-034-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elsie', 'Doyle', 'Ashburn', 'Styron', '1911-05-31', '1949-01-05', NULL
FROM plots WHERE plot_number = 'NW-F-034-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'T.', 'Ottaway', NULL, '1902-11-18', '1965-05-08', NULL
FROM plots WHERE plot_number = 'NW-F-035-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'E.', 'Ottaway', NULL, '1902-09-25', '2000-04-05', NULL
FROM plots WHERE plot_number = 'NW-F-035-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', 'Ann', 'Dosher', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-F-035-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'J.', 'Dosher', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-F-035-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tresa', NULL, 'Helm', NULL, '1877-03-04', '1960-08-22', NULL
FROM plots WHERE plot_number = 'NW-F-036-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'P.', 'Harrelson', NULL, '1895-12-21', '1962-06-12', NULL
FROM plots WHERE plot_number = 'NW-F-036-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catalino', NULL, 'Tingzon', NULL, NULL, '1942-03-12', NULL
FROM plots WHERE plot_number = 'NW-F-036-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tresa', 'Myrtle', 'Helm', NULL, '1877-03-04', '1960-08-22', NULL
FROM plots WHERE plot_number = 'NW-F-036-8'
ON CONFLICT DO NOTHING;

