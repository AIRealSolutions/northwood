-- ============================================
-- Northwood Cemetery - Section C Data Migration
-- ============================================
-- Total plots: 593
-- Deceased records: 203
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section C
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-C-001-1', 'C', 1, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-2', 'C', 1, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-3', 'C', 1, 3, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-4', 'C', 1, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-5', 'C', 1, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-6', 'C', 1, 6, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-7', 'C', 1, 7, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-001-8', 'C', 1, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John H. Griffin', '202 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-002-1', 'C', 2, 1, 'standard', 'occupied', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-2', 'C', 2, 2, 'standard', 'occupied', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-3', 'C', 2, 3, 'standard', 'available', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-4', 'C', 2, 4, 'standard', 'available', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-5', 'C', 2, 5, 'standard', 'available', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-6', 'C', 2, 6, 'standard', 'occupied', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-7', 'C', 2, 7, 'standard', 'available', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-002-8', 'C', 2, 8, 'standard', 'available', 4.0, 10.0, 'John H. & Nell D. Williamson', 'NC', '1970-09-23'),
('NW-C-003-1', 'C', 3, 1, 'standard', 'available', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-2', 'C', 3, 2, 'standard', 'occupied', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-3', 'C', 3, 3, 'standard', 'occupied', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-4', 'C', 3, 4, 'standard', 'occupied', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-5', 'C', 3, 5, 'standard', 'available', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-6', 'C', 3, 6, 'standard', 'available', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-7', 'C', 3, 7, 'standard', 'available', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-003-8', 'C', 3, 8, 'standard', 'available', 4.0, 10.0, 'Herman Rogers', 'NC', '1971-02-16'),
('NW-C-004-1', 'C', 4, 1, 'standard', 'available', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-2', 'C', 4, 2, 'standard', 'available', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-3', 'C', 4, 3, 'standard', 'available', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-4', 'C', 4, 4, 'standard', 'available', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-5', 'C', 4, 5, 'standard', 'occupied', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-6', 'C', 4, 6, 'standard', 'occupied', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-7', 'C', 4, 7, 'standard', 'occupied', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-004-8', 'C', 4, 8, 'standard', 'occupied', 4.0, 10.0, 'James Clifton Arnold', 'NC', '1970-01-20'),
('NW-C-005-1', 'C', 5, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-2', 'C', 5, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-3', 'C', 5, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-4', 'C', 5, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-5', 'C', 5, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-6', 'C', 5, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-7', 'C', 5, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-005-8', 'C', 5, 8, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James E. Smith', '322 Brunswick Street, Southport, NC, 28461', '1973-03-06'),
('NW-C-006-1', 'C', 6, 1, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-2', 'C', 6, 2, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-3', 'C', 6, 3, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-4', 'C', 6, 4, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-5', 'C', 6, 5, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-6', 'C', 6, 6, 'standard', 'occupied', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-7', 'C', 6, 7, 'standard', 'occupied', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-006-8', 'C', 6, 8, 'standard', 'available', 4.0, 10.0, 'William W. Gray', '409 Herring Drive, Southport, NC, 28461', '1993-05-13'),
('NW-C-007-1', 'C', 7, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-2', 'C', 7, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-3', 'C', 7, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-4', 'C', 7, 4, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-5', 'C', 7, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-6', 'C', 7, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-7', 'C', 7, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-007-8', 'C', 7, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Lee Johnston', 'Long Beach, NC, 28465', '1965-04-02'),
('NW-C-008-1', 'C', 8, 1, 'standard', 'available', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-2', 'C', 8, 2, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-3', 'C', 8, 3, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-4', 'C', 8, 4, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-5', 'C', 8, 5, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-6', 'C', 8, 6, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-7', 'C', 8, 7, 'standard', 'occupied', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-008-8', 'C', 8, 8, 'standard', 'available', 4.0, 10.0, 'Charlie Brown', 'NC', '1965-04-28'),
('NW-C-009-1', 'C', 9, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-2', 'C', 9, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-3', 'C', 9, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-4', 'C', 9, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-5', 'C', 9, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-6', 'C', 9, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-7', 'C', 9, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-009-8', 'C', 9, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Jack (Marjorie H.) Dosher', NULL, NULL),
('NW-C-010-1', 'C', 10, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-2', 'C', 10, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-3', 'C', 10, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-4', 'C', 10, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-5', 'C', 10, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-6', 'C', 10, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-7', 'C', 10, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-010-8', 'C', 10, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Charlie Hickman', NULL, '1960-07-15'),
('NW-C-011-1', 'C', 11, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-2', 'C', 11, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-3', 'C', 11, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-4', 'C', 11, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-5', 'C', 11, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-6', 'C', 11, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-7', 'C', 11, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-011-8', 'C', 11, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas Hickman', NULL, '1965-02-05'),
('NW-C-012-1', 'C', 12, 1, 'standard', 'occupied', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-2', 'C', 12, 2, 'standard', 'occupied', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-3', 'C', 12, 3, 'standard', 'occupied', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-4', 'C', 12, 4, 'standard', 'occupied', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-5', 'C', 12, 5, 'standard', 'available', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-6', 'C', 12, 6, 'standard', 'available', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-7', 'C', 12, 7, 'standard', 'available', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-012-8', 'C', 12, 8, 'standard', 'available', 4.0, 10.0, 'T. E. Gilbert', 'N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-C-013-1', 'C', 13, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-2', 'C', 13, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-3', 'C', 13, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-4', 'C', 13, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-5', 'C', 13, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-6', 'C', 13, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-7', 'C', 13, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-013-8', 'C', 13, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Bradie (Elbert) Lewis', NULL, '1964-11-30'),
('NW-C-014-1', 'C', 14, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-2', 'C', 14, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-3', 'C', 14, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-4', 'C', 14, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-5', 'C', 14, 5, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-6', 'C', 14, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-7', 'C', 14, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-014-8', 'C', 14, 8, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Louis (Ruby Danford) Dorme', NULL, '1964-09-16'),
('NW-C-015-1', 'C', 15, 1, 'standard', 'available', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-2', 'C', 15, 2, 'standard', 'available', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-3', 'C', 15, 3, 'standard', 'available', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-4', 'C', 15, 4, 'standard', 'available', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-5', 'C', 15, 5, 'standard', 'occupied', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-6', 'C', 15, 6, 'standard', 'occupied', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-7', 'C', 15, 7, 'standard', 'occupied', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-015-8', 'C', 15, 8, 'standard', 'occupied', 4.0, 10.0, 'D. F. Danford', NULL, '1964-03-19'),
('NW-C-016-1', 'C', 16, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-2', 'C', 16, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-3', 'C', 16, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-4', 'C', 16, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-5', 'C', 16, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-6', 'C', 16, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-7', 'C', 16, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-016-8', 'C', 16, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-1', 'C', 17, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-2', 'C', 17, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-3', 'C', 17, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-4', 'C', 17, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-5', 'C', 17, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-6', 'C', 17, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-7', 'C', 17, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-017-8', 'C', 17, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Fred Stevens', NULL, '1965-07-28'),
('NW-C-018-1', 'C', 18, 1, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-2', 'C', 18, 2, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-3', 'C', 18, 3, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-4', 'C', 18, 4, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-5', 'C', 18, 5, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-6', 'C', 18, 6, 'standard', 'available', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-7', 'C', 18, 7, 'standard', 'occupied', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-018-8', 'C', 18, 8, 'standard', 'occupied', 4.0, 10.0, 'J. W. & Doris S Hewett', '6816 Newell Hickory G, Charlotte, NC, 28215', NULL),
('NW-C-019-1', 'C', 19, 1, 'standard', 'occupied', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-2', 'C', 19, 2, 'standard', 'occupied', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-3', 'C', 19, 3, 'standard', 'available', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-4', 'C', 19, 4, 'standard', 'available', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-5', 'C', 19, 5, 'standard', 'available', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-6', 'C', 19, 6, 'standard', 'available', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-7', 'C', 19, 7, 'standard', 'available', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-019-8', 'C', 19, 8, 'standard', 'occupied', 4.0, 10.0, 'Agnes Jean Fulwood', '513 N. Atlantic Ave., Southport, NC, 28461', '1976-03-24'),
('NW-C-020-1', 'C', 20, 1, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-2', 'C', 20, 2, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-3', 'C', 20, 3, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-4', 'C', 20, 4, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-5', 'C', 20, 5, 'standard', 'occupied', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-6', 'C', 20, 6, 'standard', 'occupied', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-7', 'C', 20, 7, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-020-8', 'C', 20, 8, 'standard', 'available', 4.0, 10.0, 'Fred Barnhill', 'Long Beach Road, Southport, NC, 28461', '1963-05-06'),
('NW-C-021-1', 'C', 21, 1, 'standard', 'available', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-2', 'C', 21, 2, 'standard', 'occupied', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-3', 'C', 21, 3, 'standard', 'available', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-4', 'C', 21, 4, 'standard', 'available', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-5', 'C', 21, 5, 'standard', 'available', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-6', 'C', 21, 6, 'standard', 'occupied', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-7', 'C', 21, 7, 'standard', 'occupied', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-021-8', 'C', 21, 8, 'standard', 'available', 4.0, 10.0, 'Afton W. Smith Jr.', '102 Park Ave., Southport, NC, 28461', '1963-04-16'),
('NW-C-022-1', 'C', 22, 1, 'standard', 'available', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-2', 'C', 22, 2, 'standard', 'available', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-3', 'C', 22, 3, 'standard', 'available', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-4', 'C', 22, 4, 'standard', 'available', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-5', 'C', 22, 5, 'standard', 'occupied', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-6', 'C', 22, 6, 'standard', 'available', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-7', 'C', 22, 7, 'standard', 'occupied', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-022-8', 'C', 22, 8, 'standard', 'occupied', 4.0, 10.0, 'A. L. Lewis', 'Caswell Beach, NC, 28465', '1961-03-31'),
('NW-C-023-1', 'C', 23, 1, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-2', 'C', 23, 2, 'standard', 'occupied', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-3', 'C', 23, 3, 'standard', 'occupied', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-4', 'C', 23, 4, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-5', 'C', 23, 5, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-6', 'C', 23, 6, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-7', 'C', 23, 7, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-023-8', 'C', 23, 8, 'standard', 'available', 4.0, 10.0, 'Claude Moore', NULL, '1960-08-05'),
('NW-C-024-1', 'C', 24, 1, 'standard', 'available', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-2', 'C', 24, 2, 'standard', 'occupied', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-3', 'C', 24, 3, 'standard', 'available', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-4', 'C', 24, 4, 'standard', 'occupied', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-5', 'C', 24, 5, 'standard', 'available', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-6', 'C', 24, 6, 'standard', 'occupied', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-7', 'C', 24, 7, 'standard', 'occupied', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-024-8', 'C', 24, 8, 'standard', 'occupied', 4.0, 10.0, 'D. J. Fulcher', NULL, '1962-07-05'),
('NW-C-025-1', 'C', 25, 1, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-2', 'C', 25, 2, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-3', 'C', 25, 3, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-4', 'C', 25, 4, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-5', 'C', 25, 5, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-6', 'C', 25, 6, 'standard', 'occupied', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-7', 'C', 25, 7, 'standard', 'occupied', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-025-8', 'C', 25, 8, 'standard', 'available', 4.0, 10.0, 'Susie E. Smith (Estate of)', NULL, '1960-05-11'),
('NW-C-026-1', 'C', 26, 1, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-2', 'C', 26, 2, 'standard', 'occupied', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-3', 'C', 26, 3, 'standard', 'occupied', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-4', 'C', 26, 4, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-5', 'C', 26, 5, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-6', 'C', 26, 6, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-7', 'C', 26, 7, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-026-8', 'C', 26, 8, 'standard', 'available', 4.0, 10.0, 'Wallace Moore', NULL, '1960-07-15'),
('NW-C-027-1', 'C', 27, 1, 'standard', 'occupied', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-2', 'C', 27, 2, 'standard', 'occupied', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-3', 'C', 27, 3, 'standard', 'occupied', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-4', 'C', 27, 4, 'standard', 'occupied', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-5', 'C', 27, 5, 'standard', 'available', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-6', 'C', 27, 6, 'standard', 'available', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-7', 'C', 27, 7, 'standard', 'available', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-027-8', 'C', 27, 8, 'standard', 'available', 4.0, 10.0, 'Joel L. Moore', NULL, '1962-05-14'),
('NW-C-028-1', 'C', 28, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-2', 'C', 28, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-3', 'C', 28, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-4', 'C', 28, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-5', 'C', 28, 5, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-6', 'C', 28, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-7', 'C', 28, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-028-8', 'C', 28, 8, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. John F. Potter', NULL, '1961-01-06'),
('NW-C-029-1', 'C', 29, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-2', 'C', 29, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-3', 'C', 29, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-4', 'C', 29, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-5', 'C', 29, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-6', 'C', 29, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-7', 'C', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-029-8', 'C', 29, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Mayme Moore', NULL, NULL),
('NW-C-030-1', 'C', 30, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-2', 'C', 30, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-3', 'C', 30, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-4', 'C', 30, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-5', 'C', 30, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-6', 'C', 30, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-7', 'C', 30, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-030-8', 'C', 30, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Lillian D. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-1', 'C', 31, 1, 'standard', 'occupied', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-2', 'C', 31, 2, 'standard', 'occupied', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-3', 'C', 31, 3, 'standard', 'occupied', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-4', 'C', 31, 4, 'standard', 'available', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-5', 'C', 31, 5, 'standard', 'available', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-6', 'C', 31, 6, 'standard', 'available', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-7', 'C', 31, 7, 'standard', 'available', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-031-8', 'C', 31, 8, 'standard', 'available', 4.0, 10.0, 'W. G. Faulk', 'W. Nash Street, Southport, NC, 28461', '1959-01-02'),
('NW-C-032-1', 'C', 32, 1, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-2', 'C', 32, 2, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-3', 'C', 32, 3, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-4', 'C', 32, 4, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-5', 'C', 32, 5, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-6', 'C', 32, 6, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-7', 'C', 32, 7, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-032-8', 'C', 32, 8, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-1', 'C', 33, 1, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-2', 'C', 33, 2, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-3', 'C', 33, 3, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-4', 'C', 33, 4, 'standard', 'available', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-5', 'C', 33, 5, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-6', 'C', 33, 6, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-7', 'C', 33, 7, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-033-8', 'C', 33, 8, 'standard', 'occupied', 4.0, 10.0, 'Richard Leon Brendle Jr.', 'Hwy 133 & 87, Southport, NC, 28461', '1975-04-07'),
('NW-C-034-1', 'C', 34, 1, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-2', 'C', 34, 2, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-3', 'C', 34, 3, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-4', 'C', 34, 4, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-5', 'C', 34, 5, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-6', 'C', 34, 6, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-7', 'C', 34, 7, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-034-8', 'C', 34, 8, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-1', 'C', 35, 1, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-2', 'C', 35, 2, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-3', 'C', 35, 3, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-4', 'C', 35, 4, 'standard', 'available', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-5', 'C', 35, 5, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-6', 'C', 35, 6, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-7', 'C', 35, 7, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-035-8', 'C', 35, 8, 'standard', 'occupied', 4.0, 10.0, 'Louis A. & Ona H. Galloway', NULL, NULL),
('NW-C-036-1', 'C', 36, 1, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-2', 'C', 36, 2, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-3', 'C', 36, 3, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-4', 'C', 36, 4, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-5', 'C', 36, 5, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-6', 'C', 36, 6, 'standard', 'occupied', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-7', 'C', 36, 7, 'standard', 'occupied', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-036-8', 'C', 36, 8, 'standard', 'available', 4.0, 10.0, 'R. B. Bronson', NULL, NULL),
('NW-C-037-1', 'C', 37, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-2', 'C', 37, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-3', 'C', 37, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-4', 'C', 37, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-5', 'C', 37, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-6', 'C', 37, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-7', 'C', 37, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-037-8', 'C', 37, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-1', 'C', 38, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-2', 'C', 38, 2, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-3', 'C', 38, 3, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-4', 'C', 38, 4, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-5', 'C', 38, 5, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-6', 'C', 38, 6, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-7', 'C', 38, 7, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-038-8', 'C', 38, 8, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-C-039-1', 'C', 39, 1, 'standard', 'available', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-2', 'C', 39, 2, 'standard', 'available', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-3', 'C', 39, 3, 'standard', 'available', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-4', 'C', 39, 4, 'standard', 'available', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-5', 'C', 39, 5, 'standard', 'occupied', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-6', 'C', 39, 6, 'standard', 'occupied', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-7', 'C', 39, 7, 'standard', 'occupied', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-039-8', 'C', 39, 8, 'standard', 'occupied', 4.0, 10.0, 'Dan Shannon', 'Long Beach, NC, 28461', NULL),
('NW-C-040-1', 'C', 40, 1, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-2', 'C', 40, 2, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-3', 'C', 40, 3, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-4', 'C', 40, 4, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-5', 'C', 40, 5, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-6', 'C', 40, 6, 'standard', 'occupied', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-7', 'C', 40, 7, 'standard', 'occupied', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-040-8', 'C', 40, 8, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-1', 'C', 41, 1, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-2', 'C', 41, 2, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-3', 'C', 41, 3, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-4', 'C', 41, 4, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-5', 'C', 41, 5, 'standard', 'occupied', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-6', 'C', 41, 6, 'standard', 'occupied', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-7', 'C', 41, 7, 'standard', 'occupied', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-041-8', 'C', 41, 8, 'standard', 'available', 4.0, 10.0, 'Joe Ramsaeur', NULL, NULL),
('NW-C-042-1', 'C', 42, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-2', 'C', 42, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-3', 'C', 42, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-4', 'C', 42, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-5', 'C', 42, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-6', 'C', 42, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-7', 'C', 42, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-042-8', 'C', 42, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Thomas St. George', NULL, '1956-09-17'),
('NW-C-043-1', 'C', 43, 1, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-2', 'C', 43, 2, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-3', 'C', 43, 3, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-4', 'C', 43, 4, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-5', 'C', 43, 5, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-6', 'C', 43, 6, 'standard', 'occupied', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-7', 'C', 43, 7, 'standard', 'occupied', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-043-8', 'C', 43, 8, 'standard', 'available', 4.0, 10.0, 'L. C. Bringlow', NULL, NULL),
('NW-C-044-1', 'C', 44, 1, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-2', 'C', 44, 2, 'standard', 'occupied', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-3', 'C', 44, 3, 'standard', 'occupied', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-4', 'C', 44, 4, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-5', 'C', 44, 5, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-6', 'C', 44, 6, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-7', 'C', 44, 7, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-044-8', 'C', 44, 8, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-1', 'C', 45, 1, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-2', 'C', 45, 2, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-3', 'C', 45, 3, 'standard', 'occupied', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-4', 'C', 45, 4, 'standard', 'occupied', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-5', 'C', 45, 5, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-6', 'C', 45, 6, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-7', 'C', 45, 7, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-045-8', 'C', 45, 8, 'standard', 'available', 4.0, 10.0, 'Gladys D. Miller', NULL, NULL),
('NW-C-046-1', 'C', 46, 1, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-2', 'C', 46, 2, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-3', 'C', 46, 3, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-4', 'C', 46, 4, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-5', 'C', 46, 5, 'standard', 'occupied', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-6', 'C', 46, 6, 'standard', 'occupied', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-7', 'C', 46, 7, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-046-8', 'C', 46, 8, 'standard', 'available', 4.0, 10.0, 'H. D. Smith', NULL, '1955-04-04'),
('NW-C-047-1', 'C', 47, 1, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-2', 'C', 47, 2, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-3', 'C', 47, 3, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-4', 'C', 47, 4, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-5', 'C', 47, 5, 'standard', 'occupied', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-6', 'C', 47, 6, 'standard', 'occupied', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-7', 'C', 47, 7, 'standard', 'occupied', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-047-8', 'C', 47, 8, 'standard', 'occupied', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-1', 'C', 48, 1, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-2', 'C', 48, 2, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-3', 'C', 48, 3, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-4', 'C', 48, 4, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-5', 'C', 48, 5, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-6', 'C', 48, 6, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-7', 'C', 48, 7, 'standard', 'available', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-048-8', 'C', 48, 8, 'standard', 'occupied', 4.0, 10.0, 'Leon T. Smith', '407 W. Brown Street, Southport, NC, 28461', '1956-10-29'),
('NW-C-049-1', 'C', 49, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-2', 'C', 49, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-3', 'C', 49, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-4', 'C', 49, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-5', 'C', 49, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-6', 'C', 49, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-7', 'C', 49, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-049-8', 'C', 49, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. D. A. Baker', NULL, '1956-07-13'),
('NW-C-050-1', 'C', 50, 1, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-2', 'C', 50, 2, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-3', 'C', 50, 3, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-4', 'C', 50, 4, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-5', 'C', 50, 5, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-6', 'C', 50, 6, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-7', 'C', 50, 7, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-050-8', 'C', 50, 8, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-1', 'C', 51, 1, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-2', 'C', 51, 2, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-3', 'C', 51, 3, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-4', 'C', 51, 4, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-5', 'C', 51, 5, 'standard', 'available', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-6', 'C', 51, 6, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-7', 'C', 51, 7, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-051-8', 'C', 51, 8, 'standard', 'occupied', 4.0, 10.0, 'A. A. Martin', 'E. Moore Street, Southport, NC, 28461', '1957-02-15'),
('NW-C-052-1', 'C', 52, 1, 'standard', 'available', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-2', 'C', 52, 2, 'standard', 'available', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-3', 'C', 52, 3, 'standard', 'available', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-4', 'C', 52, 4, 'standard', 'available', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-5', 'C', 52, 5, 'standard', 'occupied', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-6', 'C', 52, 6, 'standard', 'occupied', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-7', 'C', 52, 7, 'standard', 'occupied', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-052-8', 'C', 52, 8, 'standard', 'available', 4.0, 10.0, 'Alex Turner', NULL, '1960-11-22'),
('NW-C-053-1', 'C', 53, 1, 'standard', 'available', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-2', 'C', 53, 2, 'standard', 'available', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-3', 'C', 53, 3, 'standard', 'available', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-4', 'C', 53, 4, 'standard', 'available', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-5', 'C', 53, 5, 'standard', 'available', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-6', 'C', 53, 6, 'standard', 'occupied', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-7', 'C', 53, 7, 'standard', 'occupied', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-053-8', 'C', 53, 8, 'standard', 'occupied', 4.0, 10.0, 'M. Meadows', NULL, '1946-08-21'),
('NW-C-054-1', 'C', 54, 1, 'standard', 'available', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-2', 'C', 54, 2, 'standard', 'available', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-3', 'C', 54, 3, 'standard', 'available', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-4', 'C', 54, 4, 'standard', 'available', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-5', 'C', 54, 5, 'standard', 'occupied', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-6', 'C', 54, 6, 'standard', 'occupied', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-7', 'C', 54, 7, 'standard', 'occupied', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-054-8', 'C', 54, 8, 'standard', 'available', 4.0, 10.0, 'Basil Watts', 'N. Caswell Ave, Southport, NC, 28461', '1978-02-15'),
('NW-C-055-1', 'C', 55, 1, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-2', 'C', 55, 2, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-3', 'C', 55, 3, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-4', 'C', 55, 4, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-5', 'C', 55, 5, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-6', 'C', 55, 6, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-7', 'C', 55, 7, 'standard', 'occupied', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-055-8', 'C', 55, 8, 'standard', 'available', 4.0, 10.0, 'Wesley Holden', 'W. St. George St. Ext, Southport, NC, 28461', NULL),
('NW-C-056-1', 'C', 56, 1, 'standard', 'available', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-2', 'C', 56, 2, 'standard', 'available', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-3', 'C', 56, 3, 'standard', 'available', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-4', 'C', 56, 4, 'standard', 'available', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-5', 'C', 56, 5, 'standard', 'available', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-6', 'C', 56, 6, 'standard', 'occupied', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-7', 'C', 56, 7, 'standard', 'occupied', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-056-8', 'C', 56, 8, 'standard', 'occupied', 4.0, 10.0, 'Joe Spencer', 'N. Atlantic Ave, Southport, NC, 28461', '1960-05-07'),
('NW-C-057-1', 'C', 57, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-2', 'C', 57, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-3', 'C', 57, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-4', 'C', 57, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-5', 'C', 57, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-6', 'C', 57, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-7', 'C', 57, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-057-8', 'C', 57, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Anna Wescott', 'NC, 28461', '1958-09-25'),
('NW-C-058-1', 'C', 58, 1, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-2', 'C', 58, 2, 'standard', 'occupied', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-3', 'C', 58, 3, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-4', 'C', 58, 4, 'standard', 'occupied', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-5', 'C', 58, 5, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-6', 'C', 58, 6, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-7', 'C', 58, 7, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-058-8', 'C', 58, 8, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-1', 'C', 59, 1, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-2', 'C', 59, 2, 'standard', 'occupied', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-3', 'C', 59, 3, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-4', 'C', 59, 4, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-5', 'C', 59, 5, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-6', 'C', 59, 6, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-7', 'C', 59, 7, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-059-8', 'C', 59, 8, 'standard', 'available', 4.0, 10.0, 'Chancey Stanland', 'NC, 28461', NULL),
('NW-C-060-1', 'C', 60, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-2', 'C', 60, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-3', 'C', 60, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-4', 'C', 60, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-5', 'C', 60, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-6', 'C', 60, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-7', 'C', 60, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-8a', 'C', 60, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-060-8b', 'C', 60, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. (Joe Cochran) Smith', 'NC, 28461', '1960-11-02'),
('NW-C-061-1', 'C', 61, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-2', 'C', 61, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-3', 'C', 61, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-4', 'C', 61, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-5', 'C', 61, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-6', 'C', 61, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-7', 'C', 61, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-061-8', 'C', 61, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. E. H. Smith', 'NC, 28461', '1958-11-07'),
('NW-C-062-1', 'C', 62, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-2', 'C', 62, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-3', 'C', 62, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-4', 'C', 62, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-5', 'C', 62, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-6', 'C', 62, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-7', 'C', 62, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-062-8', 'C', 62, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs, G. M Stephens', 'NC, 28461', '1960-07-06'),
('NW-C-063-1', 'C', 63, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-2', 'C', 63, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-3', 'C', 63, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-4', 'C', 63, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-5', 'C', 63, 5, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-6', 'C', 63, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-7', 'C', 63, 7, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-063-8', 'C', 63, 8, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-1', 'C', 64, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-2', 'C', 64, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-3', 'C', 64, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-4', 'C', 64, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-5', 'C', 64, 5, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-6', 'C', 64, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-7', 'C', 64, 7, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-064-8', 'C', 64, 8, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Otto Hickman', '1029 N. Howe Street, Southport, NC, 28461', NULL),
('NW-C-065-1', 'C', 65, 1, 'standard', 'occupied', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-2', 'C', 65, 2, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-3', 'C', 65, 3, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-4', 'C', 65, 4, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-5', 'C', 65, 5, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-6', 'C', 65, 6, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-7', 'C', 65, 7, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-065-8', 'C', 65, 8, 'standard', 'available', 4.0, 10.0, 'Lydia B. Burnish', 'NC, 28461', '1956-03-10'),
('NW-C-066-1', 'C', 66, 1, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-2', 'C', 66, 2, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-3', 'C', 66, 3, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-4', 'C', 66, 4, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-5', 'C', 66, 5, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-6', 'C', 66, 6, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-7', 'C', 66, 7, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-066-8', 'C', 66, 8, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', '28461', '1958-09-02'),
('NW-C-067-1', 'C', 67, 1, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-2', 'C', 67, 2, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-3', 'C', 67, 3, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-4', 'C', 67, 4, 'standard', 'available', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-5', 'C', 67, 5, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-6', 'C', 67, 6, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-7', 'C', 67, 7, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-067-8', 'C', 67, 8, 'standard', 'occupied', 4.0, 10.0, 'C. V. Barbee', NULL, '1958-09-02'),
('NW-C-068-1', 'C', 68, 1, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-2', 'C', 68, 2, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-3', 'C', 68, 3, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-4', 'C', 68, 4, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-5', 'C', 68, 5, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-6', 'C', 68, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-7', 'C', 68, 7, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-068-8', 'C', 68, 8, 'standard', 'available', 4.0, 10.0, 'Mrs M. R. Wiggs', NULL, '1962-04-24'),
('NW-C-069-1', 'C', 69, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-2', 'C', 69, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-3', 'C', 69, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-4', 'C', 69, 4, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-5', 'C', 69, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-6', 'C', 69, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-7', 'C', 69, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-069-8', 'C', 69, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. John W. Hall', NULL, '1965-12-01'),
('NW-C-070-1', 'C', 70, 1, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-2', 'C', 70, 2, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-3', 'C', 70, 3, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-4', 'C', 70, 4, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-5', 'C', 70, 5, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-6', 'C', 70, 6, 'standard', 'occupied', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-7', 'C', 70, 7, 'standard', 'occupied', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-070-8', 'C', 70, 8, 'standard', 'available', 4.0, 10.0, 'H. J. Jernigan', NULL, '1968-05-31'),
('NW-C-071-1', 'C', 71, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-2', 'C', 71, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-3', 'C', 71, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-4', 'C', 71, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-5', 'C', 71, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-6', 'C', 71, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-7', 'C', 71, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-071-8', 'C', 71, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Wayne (J. B. Warth) Varney', NULL, '1969-02-07'),
('NW-C-072-1', 'C', 72, 1, 'standard', 'occupied', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-2', 'C', 72, 2, 'standard', 'occupied', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-3', 'C', 72, 3, 'standard', 'occupied', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-4', 'C', 72, 4, 'standard', 'occupied', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-5', 'C', 72, 5, 'standard', 'available', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-6', 'C', 72, 6, 'standard', 'available', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-7', 'C', 72, 7, 'standard', 'available', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-072-8', 'C', 72, 8, 'standard', 'available', 4.0, 10.0, 'B. L. Tritt', NULL, '1969-01-27'),
('NW-C-073-1', 'C', 73, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-2', 'C', 73, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-3', 'C', 73, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-4', 'C', 73, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-5', 'C', 73, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-6', 'C', 73, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-7', 'C', 73, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-073-8', 'C', 73, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Ozzie Lee', 'Long Beach, NC, 28461', '1973-07-17'),
('NW-C-074-1', 'C', 74, 1, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-2', 'C', 74, 2, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-3', 'C', 74, 3, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-4', 'C', 74, 4, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-5', 'C', 74, 5, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-6', 'C', 74, 6, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-7', 'C', 74, 7, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03'),
('NW-C-074-8', 'C', 74, 8, 'standard', 'available', 4.0, 10.0, 'David Watson', '312 Willis Drive, Southport, NC, 28461', '1970-12-03')
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section C
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elisabeth', NULL, 'Griffin', 'Watson', '1917-02-09', NULL, NULL
FROM plots WHERE plot_number = 'NW-C-001-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Henry', 'Griffin', NULL, '1917-01-13', '1908-02-20', NULL
FROM plots WHERE plot_number = 'NW-C-001-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bessie', NULL, 'Stubbs', 'Rhem', '1898-02-02', '1994-05-17', NULL
FROM plots WHERE plot_number = 'NW-C-002-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ola', 'Ray', 'Stubbs', 'Pappy', '1898-02-22', '1984-09-02', NULL
FROM plots WHERE plot_number = 'NW-C-002-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'H.', 'Williamson', NULL, '1918-05-30', '1975-02-15', NULL
FROM plots WHERE plot_number = 'NW-C-002-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucy', 'Elnora', 'Hickman', NULL, '1919-08-15', '1996-02-22', NULL
FROM plots WHERE plot_number = 'NW-C-003-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ramona', 'Dianne', 'Rogers', NULL, '1949-09-13', '1970-07-08', NULL
FROM plots WHERE plot_number = 'NW-C-003-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benjamin', 'Herman', 'Rogers', NULL, '1917-10-17', '1980-01-06', NULL
FROM plots WHERE plot_number = 'NW-C-003-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gilda', NULL, 'Rogers', 'Arnold', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-C-004-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Janis', NULL, 'Gore', 'Arnold', '1930-03-31', '2001-05-24', NULL
FROM plots WHERE plot_number = 'NW-C-004-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Clifton', 'Arnold', NULL, '1900-07-19', '1972-01-23', NULL
FROM plots WHERE plot_number = 'NW-C-004-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Arnold', 'Ringgold', '1902-01-21', '1974-09-30', NULL
FROM plots WHERE plot_number = 'NW-C-004-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dean', 'Edward', 'Smith', NULL, '1963-11-21', '1993-02-18', NULL
FROM plots WHERE plot_number = 'NW-C-005-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Edward', 'Smith', NULL, '1904-11-11', '1975-01-20', NULL
FROM plots WHERE plot_number = 'NW-C-005-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Geneva', NULL, 'Smith', 'Hickman', '1911-08-08', '2001-09-16', NULL
FROM plots WHERE plot_number = 'NW-C-005-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella "Tea', 'Mae', 'Gray', 'Gore', '1940-11-18', '2016-05-10', NULL
FROM plots WHERE plot_number = 'NW-C-006-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William "Bill', 'Wesley', 'Gray', NULL, '1931-09-12', '2020-02-25', 'Sr'
FROM plots WHERE plot_number = 'NW-C-006-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gregory', 'Philip (II)', 'Johnston', NULL, '1963-11-29', NULL, NULL
FROM plots WHERE plot_number = 'NW-C-007-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Kathleen', 'Johnston', NULL, '1924-07-31', '2014-04-25', NULL
FROM plots WHERE plot_number = 'NW-C-007-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benedict', 'Malcolm (Mack)', 'Johnston', NULL, '1924-06-07', '2012-04-16', NULL
FROM plots WHERE plot_number = 'NW-C-007-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gregory', 'Plillip', 'Johnston', NULL, '1959-01-26', '1959-01-26', NULL
FROM plots WHERE plot_number = 'NW-C-007-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'Lee', 'Johnston', NULL, '1898-01-01', '1965-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-007-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Geraldine', NULL, 'Johnston', 'Kaneer', '1902-09-01', '1990-01-14', NULL
FROM plots WHERE plot_number = 'NW-C-007-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Philip', 'Johnston', NULL, '1928-05-13', '2017-04-25', NULL
FROM plots WHERE plot_number = 'NW-C-007-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kevin', NULL, 'Smith', NULL, '1963-08-20', '2022-01-24', NULL
FROM plots WHERE plot_number = 'NW-C-008-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', 'Rebecca', 'Smith', NULL, '1936-10-04', '1991-11-04', NULL
FROM plots WHERE plot_number = 'NW-C-008-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Delores', NULL, 'Fortiscue', 'Brown', '1926-09-13', '2005-11-16', NULL
FROM plots WHERE plot_number = 'NW-C-008-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', NULL, 'Brown', NULL, '1895-12-12', '1963-09-17', NULL
FROM plots WHERE plot_number = 'NW-C-008-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grace', NULL, 'Brown', 'Jones', '1889-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-008-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', NULL, 'Brown,', NULL, '1920-03-12', '1983-05-14', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-008-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', 'A.', 'Dosher', NULL, '1921-09-01', '1965-04-01', NULL
FROM plots WHERE plot_number = 'NW-C-009-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margie', 'Lee', 'Dosher', NULL, '1926-09-07', '1986-04-15', NULL
FROM plots WHERE plot_number = 'NW-C-009-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lettiw', NULL, 'Hickman', NULL, '1923-08-07', '2006-02-06', NULL
FROM plots WHERE plot_number = 'NW-C-009-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Lois', 'Hickman', NULL, '1938-12-11', '1978-11-23', NULL
FROM plots WHERE plot_number = 'NW-C-009-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Henry', 'Potts', NULL, '1899-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-009-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'H.', 'Hickman', NULL, NULL, '1948-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-010-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mama', 'Minnie', 'Hickman', NULL, '1886-06-13', '1981-05-22', NULL
FROM plots WHERE plot_number = 'NW-C-010-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dallie', 'H.', 'Hickman', NULL, '1906-01-01', '1949-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-010-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'E.', 'Hickman', NULL, '1888-10-11', '1964-10-25', NULL
FROM plots WHERE plot_number = 'NW-C-011-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', 'F.', 'Hickman', NULL, '1897-05-02', '1969-04-27', NULL
FROM plots WHERE plot_number = 'NW-C-011-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'B.', 'Hickman', NULL, '1949-06-19', '1986-12-01', NULL
FROM plots WHERE plot_number = 'NW-C-012-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', 'E.', 'Hickman', NULL, '1918-10-05', '1999-01-29', NULL
FROM plots WHERE plot_number = 'NW-C-012-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', NULL, 'Gilbert', 'Hickman', '1925-10-22', '1996-08-20', NULL
FROM plots WHERE plot_number = 'NW-C-012-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Earl', 'Gilbert,', NULL, '1924-02-13', '2001-12-11', ' III'
FROM plots WHERE plot_number = 'NW-C-012-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bradie', 'E.', 'Lewis', NULL, '1895-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-013-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'E.', 'Lewis', NULL, '1895-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-013-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louis', NULL, 'Dorme', NULL, '1913-05-16', '1977-12-05', NULL
FROM plots WHERE plot_number = 'NW-C-014-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lilian', 'Viola', 'Morton', 'Dorme', '1936-08-19', '2013-05-04', NULL
FROM plots WHERE plot_number = 'NW-C-014-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', 'Alice', 'Dorme', 'Danford', '1912-06-10', '1995-01-20', NULL
FROM plots WHERE plot_number = 'NW-C-014-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tina', 'Louise', 'Walker', NULL, '1964-10-23', '2015-03-08', NULL
FROM plots WHERE plot_number = 'NW-C-014-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Olie', NULL, 'Danford', NULL, '1879-09-02', '1977-02-15', NULL
FROM plots WHERE plot_number = 'NW-C-015-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fletcher', NULL, 'Danford', NULL, '1883-02-22', '1964-03-04', NULL
FROM plots WHERE plot_number = 'NW-C-015-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Pamel', NULL, 'Heeger', 'Coring', '1966-07-04', NULL, NULL
FROM plots WHERE plot_number = 'NW-C-015-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Steven', 'Arthur', 'Heeger', NULL, '1963-03-03', '2002-09-16', NULL
FROM plots WHERE plot_number = 'NW-C-015-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', 'S.', 'Johnson', 'Stevens', '1921-09-19', '1999-10-04', NULL
FROM plots WHERE plot_number = 'NW-C-016-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wesley', 'N.', 'Johnson', NULL, '1917-09-10', '1972-01-20', NULL
FROM plots WHERE plot_number = 'NW-C-016-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', NULL, 'Stevens', NULL, '1889-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-017-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margie', NULL, 'Stevens', NULL, '1892-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-017-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', NULL, 'Wolfe', NULL, '1985-07-30', '1985-08-08', NULL
FROM plots WHERE plot_number = 'NW-C-017-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Belinda / John', 'William', 'Howie / Hewett Jr', '11/02/1929 - 03/10/2014', '1950-03-22', '1984-06-05', NULL
FROM plots WHERE plot_number = 'NW-C-018-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris', 'S.', 'Hewett', NULL, '1929-11-21', '1984-06-09', NULL
FROM plots WHERE plot_number = 'NW-C-018-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Odis', 'Eugene', 'Fullwood', NULL, '1933-06-28', '1976-03-08', NULL
FROM plots WHERE plot_number = 'NW-C-019-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Guliford', 'Hilburn', NULL, '1930-12-02', '2011-09-04', NULL
FROM plots WHERE plot_number = 'NW-C-019-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ronald (Ronnie)', 'Dean', 'Fullwood', NULL, '1957-12-01', '2009-02-02', NULL
FROM plots WHERE plot_number = 'NW-C-019-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', NULL, 'Barnhill', NULL, '1912-03-31', '1990-10-30', NULL
FROM plots WHERE plot_number = 'NW-C-020-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Euletha', '(Letha)', 'Barnhill', 'Simmons', '1925-11-20', '2005-06-18', NULL
FROM plots WHERE plot_number = 'NW-C-020-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edyth', 'Purvis', 'Smith', 'Smith', '1932-01-25', '2025-01-07', NULL
FROM plots WHERE plot_number = 'NW-C-021-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Georgia', 'C.', 'Smith', NULL, '1889-10-24', '1968-06-05', NULL
FROM plots WHERE plot_number = 'NW-C-021-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Afton', 'W.', 'Smith', NULL, '1891-09-12', '1960-04-07', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-021-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'L.', 'McNeil', NULL, '1930-08-07', '1894-01-23', NULL
FROM plots WHERE plot_number = 'NW-C-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Buddy', 'K.', 'Blohm', NULL, '1938-03-24', '1983-05-14', NULL
FROM plots WHERE plot_number = 'NW-C-022-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Drothy', 'M.', 'Lewis', NULL, '1904-01-01', '1961-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-022-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', NULL, 'Moore', 'Apple', '1900-08-31', '1970-02-11', NULL
FROM plots WHERE plot_number = 'NW-C-023-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Claude', NULL, 'Moore', NULL, '1893-12-19', '1962-12-15', NULL
FROM plots WHERE plot_number = 'NW-C-023-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', NULL, 'Fulcher', 'Carr', '1906-06-04', '1993-04-10', NULL
FROM plots WHERE plot_number = 'NW-C-024-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Delmas', 'J.', 'Fulcher', NULL, '1907-03-17', '1962-06-15', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-024-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'L.', 'McNeil', NULL, '1930-08-07', '1984-01-23', NULL
FROM plots WHERE plot_number = 'NW-C-024-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bradley', 'K.', 'Blohm', NULL, '1938-03-24', '1983-05-14', NULL
FROM plots WHERE plot_number = 'NW-C-024-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Drothy', 'M.', 'Lewis', NULL, '1904-01-01', '1961-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-024-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edgar', 'W.', 'Smith', NULL, '1871-01-01', '1934-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-025-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susan', 'J.', 'Smith', NULL, '1876-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-025-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sadie', NULL, 'Moore', 'Orr', '1895-04-04', '1962-10-01', NULL
FROM plots WHERE plot_number = 'NW-C-026-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Adrian', 'Wallace', 'Moore', NULL, '1885-12-23', '1978-10-23', NULL
FROM plots WHERE plot_number = 'NW-C-026-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Adrian', 'Elliott', 'Moore', NULL, '1921-04-10', '1938-07-09', NULL
FROM plots WHERE plot_number = 'NW-C-027-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Janie', NULL, 'Moore', 'Elliot', '1896-05-09', '1963-08-03', NULL
FROM plots WHERE plot_number = 'NW-C-027-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joel', 'L.', 'Moore', NULL, '1926-08-27', '1986-10-06', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-027-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joel', 'L.', 'Moore', NULL, '1893-08-13', '1963-04-06', NULL
FROM plots WHERE plot_number = 'NW-C-027-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', 'Joyce', 'Potter', NULL, '1942-12-12', '2022-09-19', NULL
FROM plots WHERE plot_number = 'NW-C-028-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Francis', 'Potter', NULL, '1884-01-23', '1968-04-23', NULL
FROM plots WHERE plot_number = 'NW-C-028-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Una', NULL, 'Potter', 'Knowles', '1894-05-10', '1966-03-10', NULL
FROM plots WHERE plot_number = 'NW-C-028-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Monroe', 'Potter', NULL, '1911-06-21', '1968-04-13', NULL
FROM plots WHERE plot_number = 'NW-C-028-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mayme', NULL, 'Davis', NULL, '1890-08-08', '1960-06-01', NULL
FROM plots WHERE plot_number = 'NW-C-029-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roma', NULL, 'Covington', 'Moore', '1909-11-18', '1964-12-19', NULL
FROM plots WHERE plot_number = 'NW-C-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Graddy', 'Faulk,', NULL, '1928-03-10', '1993-10-28', ' Jr.'
FROM plots WHERE plot_number = 'NW-C-031-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillian', NULL, 'Faulk', 'Dozier', '1896-02-19', '1958-04-05', NULL
FROM plots WHERE plot_number = 'NW-C-031-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Graddy', 'Faulk,', NULL, NULL, '1945-03-09', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-031-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Brittany', 'Elizabeth', 'Brendle', NULL, '1991-03-22', '2007-12-11', NULL
FROM plots WHERE plot_number = 'NW-C-032-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Richard', 'Brendle', NULL, '1962-11-28', '1997-06-05', NULL
FROM plots WHERE plot_number = 'NW-C-032-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Leon', 'Brendle', NULL, '1905-01-01', '1954-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-033-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marjorie', 'N.', 'Brendle', NULL, '1901-01-01', '1968-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-033-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lottie', 'Mae', 'Brendle', NULL, '1889-04-15', '1977-05-01', NULL
FROM plots WHERE plot_number = 'NW-C-033-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Leon', 'Brendle', NULL, '1931-09-03', '2012-09-13', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-033-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'K.', 'Galloway', NULL, '1915-09-23', '1978-11-30', NULL
FROM plots WHERE plot_number = 'NW-C-034-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ona', NULL, 'Galloway', 'Hobbs', '1886-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-034-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louie', 'Albert', 'Galloway', NULL, '1879-01-01', '1954-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-034-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roberta', NULL, 'Lewis', 'Hobbs', '1882-01-01', '1957-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-035-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Young', 'Willing', NULL, '1912-01-14', '1983-05-04', NULL
FROM plots WHERE plot_number = 'NW-C-035-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albirta', 'Jeanette', 'Willing', NULL, '1924-04-18', '2003-10-29', NULL
FROM plots WHERE plot_number = 'NW-C-035-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joan', 'Sturdivant', 'Coan', 'Galloway', '1911-01-10', '1982-05-25', NULL
FROM plots WHERE plot_number = 'NW-C-035-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'B.', 'Bronson', NULL, '1884-07-06', '1955-10-17', NULL
FROM plots WHERE plot_number = 'NW-C-036-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'R.', 'Bronson', NULL, '1881-02-12', '1950-07-09', NULL
FROM plots WHERE plot_number = 'NW-C-036-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'David', 'Shannon', NULL, '1940-09-21', '1950-06-18', NULL
FROM plots WHERE plot_number = 'NW-C-039-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patricia', 'Ann', 'Shannon', NULL, '1944-01-26', '1950-06-18', NULL
FROM plots WHERE plot_number = 'NW-C-039-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'D.', 'Shannon', NULL, '1917-07-07', '1991-12-02', NULL
FROM plots WHERE plot_number = 'NW-C-039-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Inez', 'H.', 'Shannon', NULL, '1916-04-27', '1991-12-02', NULL
FROM plots WHERE plot_number = 'NW-C-039-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Laurie', 'Myers', 'Harrelson', '1911-09-11', '2003-03-03', NULL
FROM plots WHERE plot_number = 'NW-C-040-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'T.', 'Ramseur', NULL, '1910-01-12', '1958-02-21', NULL
FROM plots WHERE plot_number = 'NW-C-040-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'J.', 'Ramseur', NULL, '1876-01-19', '1960-03-23', NULL
FROM plots WHERE plot_number = 'NW-C-041-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth Sallie', 'Floe', 'Ramseur', NULL, '1885-09-20', '1960-03-18', NULL
FROM plots WHERE plot_number = 'NW-C-041-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Galloway', 'Ramseur', '1911-09-25', '1993-01-28', NULL
FROM plots WHERE plot_number = 'NW-C-041-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clara', 'N', 'St. George', NULL, '1906-11-14', '1988-07-22', NULL
FROM plots WHERE plot_number = 'NW-C-042-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'W.', 'St. George', NULL, '1903-04-27', '1960-12-06', NULL
FROM plots WHERE plot_number = 'NW-C-042-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lewis', 'H.', 'Bringloe', NULL, '1876-09-05', '1954-06-18', NULL
FROM plots WHERE plot_number = 'NW-C-043-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Agnes', NULL, 'Bringloe', 'Grisson', '1885-08-06', '1978-06-28', NULL
FROM plots WHERE plot_number = 'NW-C-043-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', 'T.', 'Miller', NULL, '1904-01-01', '1964-05-25', NULL
FROM plots WHERE plot_number = 'NW-C-044-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hal', 'Young', 'Miller', NULL, '1900-11-01', '1954-03-02', NULL
FROM plots WHERE plot_number = 'NW-C-044-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', 'E.', 'Dosher', NULL, '1888-12-02', '1974-12-31', NULL
FROM plots WHERE plot_number = 'NW-C-045-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margarette', 'L.', 'Dozier', NULL, '1893-10-05', '1966-03-12', NULL
FROM plots WHERE plot_number = 'NW-C-045-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'D.', 'Smith', NULL, '1878-01-01', '1962-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-046-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jessie', 'M.', 'Smith', NULL, '1887-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-046-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julia', 'Faye', 'Daniel', 'Smith', '1935-12-13', '2011-04-01', NULL
FROM plots WHERE plot_number = 'NW-C-047-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Rose', 'Smith', 'Tinke', '1947-01-19', '2002-10-24', NULL
FROM plots WHERE plot_number = 'NW-C-047-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', NULL, 'Smith', 'Spivey', '1920-04-29', '1956-09-28', NULL
FROM plots WHERE plot_number = 'NW-C-047-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leon', 'Thomas (L.T.)', 'Smith', NULL, '1916-04-28', '1999-05-03', NULL
FROM plots WHERE plot_number = 'NW-C-047-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louise', NULL, 'Smith', 'Carroll', '1924-12-15', '1990-06-21', NULL
FROM plots WHERE plot_number = 'NW-C-048-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'Estelle', 'Nichols', NULL, '1888-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-049-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'A.', 'Baker', NULL, '1901-02-23', '1956-06-07', NULL
FROM plots WHERE plot_number = 'NW-C-049-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Cate', 'Lincoln', '1921-01-01', '1982-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-050-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Cate', 'Andrews', '1880-11-04', '1973-01-04', NULL
FROM plots WHERE plot_number = 'NW-C-050-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'Pleasant', 'Cate', NULL, '1876-03-21', '1956-10-09', NULL
FROM plots WHERE plot_number = 'NW-C-050-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anthony', 'A.', 'Martin', NULL, '1958-09-15', '1988-09-04', NULL
FROM plots WHERE plot_number = 'NW-C-051-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Aldege', 'A.', 'Martin', NULL, '1911-12-27', '1982-05-01', NULL
FROM plots WHERE plot_number = 'NW-C-051-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', 'C.', 'Martin', NULL, '1904-10-14', '1988-08-08', NULL
FROM plots WHERE plot_number = 'NW-C-051-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'A.', 'Turner', NULL, '1930-12-05', '1972-03-08', NULL
FROM plots WHERE plot_number = 'NW-C-052-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alexander', 'L.', 'Turner, .', NULL, '1907-01-01', '1973-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-052-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Turner', 'Jones', '1909-01-01', '1960-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-052-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'V.', 'Register', 'Meadows', '1912-11-27', '1968-09-22', NULL
FROM plots WHERE plot_number = 'NW-C-053-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'T.', 'Meadows,', NULL, '1890-09-27', '1946-07-21', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-053-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marguerite', NULL, 'Meadows', 'Carter', '1895-02-03', '1980-01-23', NULL
FROM plots WHERE plot_number = 'NW-C-053-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'A.', 'Watts', NULL, '1946-01-01', '1946-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-054-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellen', NULL, 'Watts', 'Hinnant', '1922-12-17', '2001-04-22', NULL
FROM plots WHERE plot_number = 'NW-C-054-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Basil', 'Cortez', 'Watts', NULL, '1924-05-25', '1983-05-18', NULL
FROM plots WHERE plot_number = 'NW-C-054-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', 'Peggy', 'Holden', NULL, '1920-11-05', '1994-05-01', NULL
FROM plots WHERE plot_number = 'NW-C-055-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Price', 'Spencer', NULL, '1904-04-30', '1960-03-31', NULL
FROM plots WHERE plot_number = 'NW-C-056-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnie', NULL, 'Spencer', 'Wescott', '1912-06-03', '1984-06-23', NULL
FROM plots WHERE plot_number = 'NW-C-056-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Raymond', 'Gerald', 'Spencer', NULL, '1934-01-13', '2011-08-10', ' Sr.'
FROM plots WHERE plot_number = 'NW-C-056-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'Earl', 'Wescott', NULL, '1879-07-01', '1958-09-01', NULL
FROM plots WHERE plot_number = 'NW-C-057-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lydia', NULL, 'Wescott', 'Lewis', '1891-03-01', '1987-03-18', NULL
FROM plots WHERE plot_number = 'NW-C-057-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'E.', 'Wescott', NULL, '1914-04-13', '1948-12-10', NULL
FROM plots WHERE plot_number = 'NW-C-057-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vernon', 'W.', 'Wescott', NULL, '1916-10-20', '1969-03-27', NULL
FROM plots WHERE plot_number = 'NW-C-057-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertrand', 'J.', 'Holden', NULL, '1876-05-18', '1955-11-07', NULL
FROM plots WHERE plot_number = 'NW-C-058-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', 'Bell', 'Holden', NULL, '1881-06-23', '1978-02-16', NULL
FROM plots WHERE plot_number = 'NW-C-058-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Olive', NULL, 'Standland', 'Holden', '1913-11-11', '1972-06-09', NULL
FROM plots WHERE plot_number = 'NW-C-059-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', NULL, 'Cochran', NULL, '1910-09-20', '1990-06-28', NULL
FROM plots WHERE plot_number = 'NW-C-060-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cassie', NULL, 'Cochran', 'Smith', '1916-03-26', '2002-08-12', NULL
FROM plots WHERE plot_number = 'NW-C-060-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Daniel', 'Cochran', NULL, '1937-08-03', '2013-09-22', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-060-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'William', 'Cochran', NULL, '1939-04-17', '2016-08-18', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-060-8a'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'Hermus', 'Smith', NULL, '1924-03-24', '2016-10-01', NULL
FROM plots WHERE plot_number = 'NW-C-061-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Smith', 'Rener', '1921-08-03', '2013-06-30', NULL
FROM plots WHERE plot_number = 'NW-C-061-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elijah', 'H.', 'Smith', NULL, '1891-10-25', '1942-09-19', NULL
FROM plots WHERE plot_number = 'NW-C-061-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Minnie', 'F.', 'Smith', NULL, '1892-10-14', '1977-08-05', NULL
FROM plots WHERE plot_number = 'NW-C-061-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ella', 'Mae', 'Smith', NULL, '1927-03-11', '1927-04-06', NULL
FROM plots WHERE plot_number = 'NW-C-061-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothe', 'J.', 'Smith', NULL, '1922-01-14', '1933-02-01', NULL
FROM plots WHERE plot_number = 'NW-C-061-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Marion', 'Stephens', NULL, '1922-01-10', '2005-08-10', NULL
FROM plots WHERE plot_number = 'NW-C-062-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Josephine', NULL, 'Stephens', 'Smith', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-C-062-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anita', NULL, 'Hickman', 'Tunstall', '1937-11-09', NULL, NULL
FROM plots WHERE plot_number = 'NW-C-063-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elliot', NULL, 'Hickman', NULL, '1932-10-24', NULL, 'William'
FROM plots WHERE plot_number = 'NW-C-063-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Josephine', NULL, 'Hickman', 'Johnson', '1934-12-01', '1999-02-14', NULL
FROM plots WHERE plot_number = 'NW-C-064-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Otto', 'Elliot', 'Hickman', NULL, '1914-05-05', '1996-01-06', NULL
FROM plots WHERE plot_number = 'NW-C-064-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Randolph', NULL, 'Grant,', NULL, '1913-06-13', '1999-10-30', ' Jr.'
FROM plots WHERE plot_number = 'NW-C-064-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter', 'Boyd', 'Burnish', NULL, '1908-02-23', '1956-02-20', NULL
FROM plots WHERE plot_number = 'NW-C-065-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Franklin', 'Pierce', 'Barbee,', NULL, '1949-10-18', '2007-04-05', 'Sr.'
FROM plots WHERE plot_number = 'NW-C-066-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Crowell', 'Barbee', NULL, '1958-09-26', '1958-09-26', NULL
FROM plots WHERE plot_number = 'NW-C-066-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Infant', 'Daughter', 'Barbee', NULL, '1957-06-27', '1957-06-27', NULL
FROM plots WHERE plot_number = 'NW-C-067-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dudley', NULL, 'Barbee', 'Womble', '1917-09-06', '1978-07-09', NULL
FROM plots WHERE plot_number = 'NW-C-067-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gibson', 'Vester', 'Barbee,', NULL, '1913-04-21', '1958-07-09', ' Sr.'
FROM plots WHERE plot_number = 'NW-C-067-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gibson', 'Vester', 'Barbee,', NULL, '1938-07-29', '2010-11-15', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-067-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Milton', 'R.', 'Wiggs', NULL, '1900-05-03', '1962-04-11', NULL
FROM plots WHERE plot_number = 'NW-C-068-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruble', NULL, 'Wolfertz', 'Hall', '1913-06-11', '1978-05-30', NULL
FROM plots WHERE plot_number = 'NW-C-069-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harvey', 'Alexnder', 'Wolfertz', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-C-069-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'W.', 'Hall', NULL, '1896-01-01', '1965-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-069-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellen', NULL, 'Hall', 'Merle', '1896-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-069-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hoyt', 'J.', 'Jernigan', NULL, '1903-09-18', '1988-03-30', NULL
FROM plots WHERE plot_number = 'NW-C-070-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucille', 'G.', 'Jernigan', NULL, '1909-04-08', '1968-05-30', NULL
FROM plots WHERE plot_number = 'NW-C-070-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leatha', NULL, 'Warth', 'Arnold', '1922-06-29', '1968-12-22', NULL
FROM plots WHERE plot_number = 'NW-C-071-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'B.', 'Warth,', NULL, '1918-09-09', '1968-12-22', 'Jr.'
FROM plots WHERE plot_number = 'NW-C-071-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bryant', 'Lee', 'Tritt', NULL, '1903-12-07', '1978-01-06', NULL
FROM plots WHERE plot_number = 'NW-C-072-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leona', NULL, 'Tritt', 'Whitley', '1906-02-13', '1997-11-29', NULL
FROM plots WHERE plot_number = 'NW-C-072-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dillard', 'E.', 'Gaydon', NULL, '1909-01-01', '1885-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-072-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Mae', 'Gaydon', NULL, '1913-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-C-072-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Ozzie', 'Lee', NULL, '1920-06-29', '1970-07-30', NULL
FROM plots WHERE plot_number = 'NW-C-073-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', NULL, 'Edwards', 'Lee', '1923-04-13', '1995-06-22', NULL
FROM plots WHERE plot_number = 'NW-C-073-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Betty', 'Cochran', 'McGlammery', '1938-04-04', '2020-02-22', NULL
FROM plots WHERE plot_number = 'NW-C-060-8b'
ON CONFLICT DO NOTHING;

