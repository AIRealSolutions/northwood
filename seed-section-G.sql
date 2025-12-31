-- ============================================
-- Northwood Cemetery - Section G Data Migration
-- ============================================
-- Total plots: 871
-- Deceased records: 575
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section G
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-G-001-1', 'G', 1, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-002-1', 'G', 2, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-003-1', 'G', 3, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-004-1', 'G', 4, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-005-1', 'G', 5, 1, 'standard', 'occupied', 4.0, 10.0, 'Tiffany Barrett', '2730 St James Drive, Southport, NC, 28461', '2013-04-26'),
('NW-G-006-1', 'G', 6, 1, 'standard', 'available', 4.0, 10.0, 'Tiffany Barrett', '2730 St James Drive, Southport, NC, 28461', '2013-04-26'),
('NW-G-007-1', 'G', 7, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Melvin Barksdale', 'Rt. 5 Box 340, Southport, NC, 28461-0340', '1983-06-29'),
('NW-G-008-1', 'G', 8, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Melvin Barksdale', 'Rt. 5 Box 340, Southport, NC, 28461-0340', '1983-06-29'),
('NW-G-009-1', 'G', 9, 1, 'standard', 'available', 4.0, 10.0, 'Rosa Lee Ledet', '420 Keziah Street, Yaupon Beach, NC, 28465-0420', '1983-05-22'),
('NW-G-010-1', 'G', 10, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Evelyn (C/o Mrs Myrtle Grisetti) Cook', '28 W. Trace, Southport, NC, 28461-0028', '1987-12-21'),
('NW-G-011-1', 'G', 11, 1, 'standard', 'occupied', 4.0, 10.0, 'James Elmore Smith', 'Hwy 211 Smith Farm, Southport, NC, 28461', '1986-01-09'),
('NW-G-012-1', 'G', 12, 1, 'standard', 'occupied', 4.0, 10.0, 'Harriett Eaton', 'Green Moss Rd., Boiling Springs, NC, 28461', '1984-07-19'),
('NW-G-013-1', 'G', 13, 1, 'standard', 'occupied', 4.0, 10.0, 'Joseph L. Stearns', 'Boiling Springs, NC, 28461', '1972-09-20'),
('NW-G-013-2', 'G', 13, 2, 'standard', 'occupied', 4.0, 10.0, 'Joseph L. Stearns', 'Boiling Springs, NC, 28461', '1972-09-20'),
('NW-G-014-1', 'G', 14, 1, 'standard', 'occupied', 4.0, 10.0, 'Ellis Herring', NULL, '1972-09-11'),
('NW-G-014-2', 'G', 14, 2, 'standard', 'available', 4.0, 10.0, 'Ellis Herring', NULL, '1972-09-11'),
('NW-G-015-1', 'G', 15, 1, 'standard', 'occupied', 4.0, 10.0, 'E. J. Prevatte', 'P.O. Box 10969, Southport, NC, 28461-0969', '1986-03-11'),
('NW-G-015-2', 'G', 15, 2, 'standard', 'occupied', 4.0, 10.0, 'E. J. Prevatte', 'P.O. Box 10969, Southport, NC, 28461-0969', '1986-03-11'),
('NW-G-016-1', 'G', 16, 1, 'standard', 'occupied', 4.0, 10.0, 'George & Melissa P. Dutcher', NULL, '1971-11-11'),
('NW-G-016-2', 'G', 16, 2, 'standard', 'occupied', 4.0, 10.0, 'George & Melissa P. Dutcher', NULL, '1971-11-11'),
('NW-G-017-1', 'G', 17, 1, 'standard', 'occupied', 4.0, 10.0, 'Cecil Webster', NULL, '1978-06-06'),
('NW-G-017-2', 'G', 17, 2, 'standard', 'occupied', 4.0, 10.0, 'Cecil Webster', NULL, '1978-06-06'),
('NW-G-017-3', 'G', 17, 3, 'standard', 'available', 4.0, 10.0, 'Cecil Webster', NULL, '1978-06-06'),
('NW-G-018-1', 'G', 18, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James R. Frasier', '715 E. Moore Street, Southport, NC, 28461-0715', '1983-02-01'),
('NW-G-018-2', 'G', 18, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James R. Frasier', '715 E. Moore Street, Southport, NC, 28461-0715', '1983-02-01'),
('NW-G-018-3', 'G', 18, 3, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James R. Frasier', '715 E. Moore Street, Southport, NC, 28461-0715', '1983-02-01'),
('NW-G-019-1', 'G', 19, 1, 'standard', 'occupied', 4.0, 10.0, 'Fred L. & Julia C. Babington', 'Rt. 2 Box 214 Norton, Yaupon Beach, NC, 28456-0214', '1986-12-16'),
('NW-G-019-2', 'G', 19, 2, 'standard', 'occupied', 4.0, 10.0, 'Fred L. & Julia C. Babington', 'Rt. 2 Box 214 Norton, Yaupon Beach, NC, 28456-0214', '1986-12-16'),
('NW-G-019-3', 'G', 19, 3, 'standard', 'occupied', 4.0, 10.0, 'Fred L. & Julia C. Babington', 'Rt. 2 Box 214 Norton, Yaupon Beach, NC, 28456-0214', '1986-12-16'),
('NW-G-020-1', 'G', 20, 1, 'standard', 'available', 4.0, 10.0, 'Dr. J. L. Sampson', '122 River Drive, Southport, NC, 28461-0122', '1972-08-09'),
('NW-G-020-2', 'G', 20, 2, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. L. Sampson', '122 River Drive, Southport, NC, 28461-0122', '1972-08-09'),
('NW-G-020-3', 'G', 20, 3, 'standard', 'available', 4.0, 10.0, 'Dr. J. L. Sampson', '122 River Drive, Southport, NC, 28461-0122', '1972-08-09'),
('NW-G-021-1', 'G', 21, 1, 'standard', 'available', 4.0, 10.0, 'Hazel  (Mrs.) Watts', 'Rt. 1 Box 10, Southport, NC, 28461-0010', '1975-02-12'),
('NW-G-021-2', 'G', 21, 2, 'standard', 'available', 4.0, 10.0, 'Hazel  (Mrs.) Watts', 'Rt. 1 Box 10, Southport, NC, 28461-0010', '1975-02-12'),
('NW-G-021-3', 'G', 21, 3, 'standard', 'available', 4.0, 10.0, 'Hazel  (Mrs.) Watts', 'Rt. 1 Box 10, Southport, NC, 28461-0010', '1975-02-12'),
('NW-G-021-4', 'G', 21, 4, 'standard', 'available', 4.0, 10.0, 'Hazel  (Mrs.) Watts', 'Rt. 1 Box 10, Southport, NC, 28461-0010', '1975-02-12'),
('NW-G-022-1', 'G', 22, 1, 'standard', 'occupied', 4.0, 10.0, 'Lucielle L. Causey', '9th  Street East, Long Beach, NC, 28465', '1986-04-31'),
('NW-G-022-2', 'G', 22, 2, 'standard', 'occupied', 4.0, 10.0, 'Lucielle L. Causey', '9th  Street East, Long Beach, NC, 28465', '1986-04-31'),
('NW-G-022-3', 'G', 22, 3, 'standard', 'available', 4.0, 10.0, 'Lucielle L. Causey', '9th  Street East, Long Beach, NC, 28465', '1986-04-31'),
('NW-G-022-4', 'G', 22, 4, 'standard', 'available', 4.0, 10.0, 'Lucielle L. Causey', '9th  Street East, Long Beach, NC, 28465', '1986-04-31'),
('NW-G-023-1', 'G', 23, 1, 'standard', 'occupied', 4.0, 10.0, 'Eddie Spencer', 'Jabbertown Rd., Southport, NC, 28461', '1979-07-13'),
('NW-G-023-2', 'G', 23, 2, 'standard', 'occupied', 4.0, 10.0, 'Eddie Spencer', 'Jabbertown Rd., Southport, NC, 28461', '1979-07-13'),
('NW-G-023-3', 'G', 23, 3, 'standard', 'available', 4.0, 10.0, 'Eddie Spencer', 'Jabbertown Rd., Southport, NC, 28461', '1979-07-13'),
('NW-G-023-4', 'G', 23, 4, 'standard', 'occupied', 4.0, 10.0, 'Eddie Spencer', 'Jabbertown Rd., Southport, NC, 28461', '1979-07-13'),
('NW-G-024-1', 'G', 24, 1, 'standard', 'occupied', 4.0, 10.0, 'Audret (Leo) Dowling', '102 Park Ave., Southport, NC, 28461', '1972-09-18'),
('NW-G-024-2', 'G', 24, 2, 'standard', 'occupied', 4.0, 10.0, 'Audret (Leo) Dowling', '102 Park Ave., Southport, NC, 28461', '1972-09-18'),
('NW-G-024-3', 'G', 24, 3, 'standard', 'occupied', 4.0, 10.0, 'Audret (Leo) Dowling', '102 Park Ave., Southport, NC, 28461', '1972-09-18'),
('NW-G-024-4', 'G', 24, 4, 'standard', 'available', 4.0, 10.0, 'Audret (Leo) Dowling', '102 Park Ave., Southport, NC, 28461', '1972-09-18'),
('NW-G-025-1', 'G', 25, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Henrietta (C/o Dr.N.Hornstein) Hornstein', '106 River Drive, Southport, NC, 28461', '1974-05-24'),
('NW-G-026-1', 'G', 26, 1, 'standard', 'available', 4.0, 10.0, 'E. Margaret Neilson Martin Bean', '313 N. Atlantic Ave., Southport, NC, 28461-0313', '1979-07-13'),
('NW-G-027-1', 'G', 27, 1, 'standard', 'occupied', 4.0, 10.0, 'F. L. Benton', '(Not Paid For)', NULL),
('NW-G-028-1', 'G', 28, 1, 'standard', 'occupied', 4.0, 10.0, 'Hazel Watts', 'Rt. 1 Box 210, Southport, NC, 28461', '1975-02-12'),
('NW-G-029-1', 'G', 29, 1, 'standard', 'occupied', 4.0, 10.0, 'Earl Eugene (C/oBerry Barksdale) Shirley', 'Rt. 5 Box 340 LBR, Southport, NC, 28461', '1988-07-05'),
('NW-G-030-1', 'G', 30, 1, 'standard', 'occupied', 4.0, 10.0, 'Dr. Norman M. Hornstein', '106 River Drive, Southport, NC, 28461', '1981-11-05'),
('NW-G-031-1', 'G', 31, 1, 'standard', 'occupied', 4.0, 10.0, 'Rufus V. King', 'Sea Pines LBR, Southport, NC, 28461', '1978-05-23'),
('NW-G-032-1', 'G', 32, 1, 'standard', 'occupied', 4.0, 10.0, 'John G. O''Brien', NULL, '1977-06-01'),
('NW-G-033-1', 'G', 33, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert L Jones', NULL, '1973-06-11'),
('NW-G-033-2', 'G', 33, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert L Jones', NULL, '1973-06-11'),
('NW-G-034-1', 'G', 34, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Craig Caster  Sr.', '1427 N. Howe Street, Southport, NC, 28461', '1973-07-23'),
('NW-G-034-2', 'G', 34, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Craig Caster  Sr.', '1427 N. Howe Street, Southport, NC, 28461', '1973-07-23'),
('NW-G-035-1', 'G', 35, 1, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28461-', '2013-09-09'),
('NW-G-035-2', 'G', 35, 2, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28461-', '2013-09-09'),
('NW-G-036-1', 'G', 36, 1, 'standard', 'available', 4.0, 10.0, 'Fred H. Williams', '(PaidbyGilbertFuneral, Southport, NC, 28461', '1973-01-15'),
('NW-G-036-2', 'G', 36, 2, 'standard', 'available', 4.0, 10.0, 'Fred H. Williams', '(PaidbyGilbertFuneral, Southport, NC, 28461', '1973-01-15'),
('NW-G-037-1', 'G', 37, 1, 'standard', 'occupied', 4.0, 10.0, 'Lawrence R. Willings, Sr.', '1222 N. Howe Street, Southport, NC, 28461', '1986-07-24'),
('NW-G-037-2', 'G', 37, 2, 'standard', 'occupied', 4.0, 10.0, 'Lawrence R. Willings, Sr.', '1222 N. Howe Street, Southport, NC, 28461', '1986-07-24'),
('NW-G-037-3', 'G', 37, 3, 'standard', 'occupied', 4.0, 10.0, 'Lawrence R. Willings, Sr.', '1222 N. Howe Street, Southport, NC, 28461', '1986-07-24'),
('NW-G-038-1', 'G', 38, 1, 'standard', 'available', 4.0, 10.0, 'Patricia Busby', '116 S.E. 13th St, Long Beach, NC, 28461', '1989-09-01'),
('NW-G-038-2', 'G', 38, 2, 'standard', 'occupied', 4.0, 10.0, 'Patricia Busby', '116 S.E. 13th St, Long Beach, NC, 28461', '1989-09-01'),
('NW-G-038-3', 'G', 38, 3, 'standard', 'available', 4.0, 10.0, 'Patricia Busby', '116 S.E. 13th St, Long Beach, NC, 28461', '1989-09-01'),
('NW-G-039-1', 'G', 39, 1, 'standard', 'occupied', 4.0, 10.0, 'Eldridge McKeithan', NULL, '1977-05-05'),
('NW-G-039-2', 'G', 39, 2, 'standard', 'occupied', 4.0, 10.0, 'Eldridge McKeithan', NULL, '1977-05-05'),
('NW-G-039-3', 'G', 39, 3, 'standard', 'occupied', 4.0, 10.0, 'Eldridge McKeithan', NULL, '1977-05-05'),
('NW-G-040-1', 'G', 40, 1, 'standard', 'occupied', 4.0, 10.0, 'Maryland Mims', 'N. Clarendon, Southport, NC, 28461', '1973-10-17'),
('NW-G-040-2', 'G', 40, 2, 'standard', 'occupied', 4.0, 10.0, 'Maryland Mims', 'N. Clarendon, Southport, NC, 28461', '1973-10-17'),
('NW-G-040-3', 'G', 40, 3, 'standard', 'available', 4.0, 10.0, 'Maryland Mims', 'N. Clarendon, Southport, NC, 28461', '1973-10-17'),
('NW-G-041-1', 'G', 41, 1, 'standard', 'occupied', 4.0, 10.0, 'Claude Harrelson', NULL, '1972-03-08'),
('NW-G-041-2', 'G', 41, 2, 'standard', 'occupied', 4.0, 10.0, 'Claude Harrelson', NULL, '1972-03-08'),
('NW-G-041-3', 'G', 41, 3, 'standard', 'available', 4.0, 10.0, 'Claude Harrelson', NULL, '1972-03-08'),
('NW-G-041-4', 'G', 41, 4, 'standard', 'available', 4.0, 10.0, 'Claude Harrelson', NULL, '1972-03-08'),
('NW-G-042-1', 'G', 42, 1, 'standard', 'occupied', 4.0, 10.0, 'Doris Harrelson (Ed Harrelson) Ward', NULL, '1980-07-21'),
('NW-G-042-2', 'G', 42, 2, 'standard', 'available', 4.0, 10.0, 'Doris Harrelson (Ed Harrelson) Ward', NULL, '1980-07-21'),
('NW-G-042-3', 'G', 42, 3, 'standard', 'available', 4.0, 10.0, 'Doris Harrelson (Ed Harrelson) Ward', NULL, '1980-07-21'),
('NW-G-042-4', 'G', 42, 4, 'standard', 'available', 4.0, 10.0, 'Doris Harrelson (Ed Harrelson) Ward', NULL, '1980-07-21'),
('NW-G-043-1', 'G', 43, 1, 'standard', 'occupied', 4.0, 10.0, 'Edward L. & Antionette Oliver', '304 River Drive, Souhtport, NC, 28461', '1973-07-27'),
('NW-G-043-2', 'G', 43, 2, 'standard', 'occupied', 4.0, 10.0, 'Edward L. & Antionette Oliver', '304 River Drive, Souhtport, NC, 28461', '1973-07-27'),
('NW-G-043-3', 'G', 43, 3, 'standard', 'available', 4.0, 10.0, 'Edward L. & Antionette Oliver', '304 River Drive, Souhtport, NC, 28461', '1973-07-27'),
('NW-G-043-4', 'G', 43, 4, 'standard', 'available', 4.0, 10.0, 'Edward L. & Antionette Oliver', '304 River Drive, Souhtport, NC, 28461', '1973-07-27'),
('NW-G-044-1', 'G', 44, 1, 'standard', 'occupied', 4.0, 10.0, 'E. L. Oliver, . Sr.', NULL, '1973-07-27'),
('NW-G-044-2', 'G', 44, 2, 'standard', 'occupied', 4.0, 10.0, 'E. L. Oliver, . Sr.', NULL, '1973-07-27'),
('NW-G-044-3', 'G', 44, 3, 'standard', 'occupied', 4.0, 10.0, 'E. L. Oliver, . Sr.', NULL, '1973-07-27'),
('NW-G-044-4', 'G', 44, 4, 'standard', 'occupied', 4.0, 10.0, 'E. L. Oliver, . Sr.', NULL, '1973-07-27'),
('NW-G-045-1', 'G', 45, 1, 'standard', 'available', 4.0, 10.0, 'R. F. Wood', '(PaidbyGilbertFuneral', '1973-03-12'),
('NW-G-045-2', 'G', 45, 2, 'standard', 'occupied', 4.0, 10.0, 'R. F. Wood', '(PaidbyGilbertFuneral', '1973-03-12'),
('NW-G-046-1', 'G', 46, 1, 'standard', 'occupied', 4.0, 10.0, 'Vera Boymer', NULL, '1971-11-16'),
('NW-G-046-2', 'G', 46, 2, 'standard', 'occupied', 4.0, 10.0, 'Vera Boymer', NULL, '1971-11-16'),
('NW-G-047-1', 'G', 47, 1, 'standard', 'occupied', 4.0, 10.0, 'Leo Jones', '(PaidbyGilbertFuneral', '1974-11-15'),
('NW-G-047-2', 'G', 47, 2, 'standard', 'occupied', 4.0, 10.0, 'Leo Jones', '(PaidbyGilbertFuneral', '1974-11-15'),
('NW-G-048-1', 'G', 48, 1, 'standard', 'occupied', 4.0, 10.0, 'J. K. Porterfield', '708 Longleaf Drive, Southport, NC, 28461', '1972-09-18'),
('NW-G-048-2', 'G', 48, 2, 'standard', 'occupied', 4.0, 10.0, 'J. K. Porterfield', '708 Longleaf Drive, Southport, NC, 28461', '1972-09-18'),
('NW-G-049-1', 'G', 49, 1, 'standard', 'occupied', 4.0, 10.0, 'Walter Lewis', 'E. Moore Street, Southport, NC, 28461', '1972-04-20'),
('NW-G-049-2', 'G', 49, 2, 'standard', 'available', 4.0, 10.0, 'Walter Lewis', 'E. Moore Street, Southport, NC, 28461', '1972-04-20'),
('NW-G-050-1', 'G', 50, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. David B. Garrish', '1418 N. Howe Street, Southport, NC, 28461', '1973-09-19'),
('NW-G-050-2', 'G', 50, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. David B. Garrish', '1418 N. Howe Street, Southport, NC, 28461', '1973-09-19'),
('NW-G-051-1', 'G', 51, 1, 'standard', 'available', 4.0, 10.0, 'Phillip & Susan King', '613 E. Leonard Street, Southport, NC, 28461', '1978-02-06'),
('NW-G-051-2', 'G', 51, 2, 'standard', 'available', 4.0, 10.0, 'Phillip & Susan King', '613 E. Leonard Street, Southport, NC, 28461', '1978-02-06'),
('NW-G-052-1', 'G', 52, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Calvin Brown', 'Jabbertown Road, Southport, NC, 28461', '1973-11-19'),
('NW-G-052-2', 'G', 52, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Calvin Brown', 'Jabbertown Road, Southport, NC, 28461', '1973-11-19'),
('NW-G-053-1', 'G', 53, 1, 'standard', 'available', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-053-2', 'G', 53, 2, 'standard', 'available', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-053-3', 'G', 53, 3, 'standard', 'available', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-054-1', 'G', 54, 1, 'standard', 'available', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-054-2', 'G', 54, 2, 'standard', 'occupied', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-054-3', 'G', 54, 3, 'standard', 'occupied', 4.0, 10.0, 'Raymond M. Gill', 'Jabbertown Road, Southport, NC, 28461', '1975-08-04'),
('NW-G-055-1', 'G', 55, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie Blohm', 'Southport, NC, 28461', '1975-05-19'),
('NW-G-055-2', 'G', 55, 2, 'standard', 'occupied', 4.0, 10.0, 'Archie Blohm', 'Southport, NC, 28461', '1975-05-19'),
('NW-G-055-3', 'G', 55, 3, 'standard', 'occupied', 4.0, 10.0, 'Archie Blohm', 'Southport, NC, 28461', '1975-05-19'),
('NW-G-056-1', 'G', 56, 1, 'standard', 'occupied', 4.0, 10.0, 'Maggie (Maybelle) Hewett (Heirs)', '708 N. Burrington Ave, Southport, NC, 28461', '1972-10-04'),
('NW-G-056-2', 'G', 56, 2, 'standard', 'occupied', 4.0, 10.0, 'Maggie (Maybelle) Hewett (Heirs)', '708 N. Burrington Ave, Southport, NC, 28461', '1972-10-04'),
('NW-G-056-3', 'G', 56, 3, 'standard', 'available', 4.0, 10.0, 'Maggie (Maybelle) Hewett (Heirs)', '708 N. Burrington Ave, Southport, NC, 28461', '1972-10-04'),
('NW-G-057-1', 'G', 57, 1, 'standard', 'occupied', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-057-2', 'G', 57, 2, 'standard', 'occupied', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-057-3', 'G', 57, 3, 'standard', 'occupied', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-057-4', 'G', 57, 4, 'standard', 'occupied', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-058-1', 'G', 58, 1, 'standard', 'available', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-058-2', 'G', 58, 2, 'standard', 'available', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-058-3', 'G', 58, 3, 'standard', 'available', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-058-4', 'G', 58, 4, 'standard', 'available', 4.0, 10.0, 'John A. Eagles', '823 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-059-A-1', 'G', 59, 1, 'standard', 'available', 4.0, 10.0, 'Lynn Williams', '202 W Moore Street, Southport, NC, 28461', '2011-09-26'),
('NW-G-059-B-1', 'G', 59, 1, 'standard', 'available', 4.0, 10.0, 'Lynn Williams', '202 W Moore Street, Southport, NC, 28461', '2011-09-26'),
('NW-G-059-C-1', 'G', 59, 1, 'standard', 'available', 4.0, 10.0, 'Lynn Williams', '202 W Moore Street, Southport, NC, 28461', '2011-09-26'),
('NW-G-059-D-1', 'G', 59, 1, 'standard', 'occupied', 4.0, 10.0, 'Magdaleen Ferrell', '3212-D Yancyville St., Greensboro, NC, 27405-3212', '1992-03-02'),
('NW-G-060-1', 'G', 60, 1, 'standard', 'occupied', 4.0, 10.0, 'Wendel Watson, Sr.', '601 N. Burrington Ave, Southport, NC, 28461-0601', NULL),
('NW-G-060-2', 'G', 60, 2, 'standard', 'occupied', 4.0, 10.0, 'Wendel Watson, Sr.', '601 N. Burrington Ave, Southport, NC, 28461-0601', NULL),
('NW-G-060-3', 'G', 60, 3, 'standard', 'available', 4.0, 10.0, 'Wendel Watson, Sr.', '601 N. Burrington Ave, Southport, NC, 28461-0601', NULL),
('NW-G-060-4', 'G', 60, 4, 'standard', 'available', 4.0, 10.0, 'Wendel Watson, Sr.', '601 N. Burrington Ave, Southport, NC, 28461-0601', NULL),
('NW-G-061-1', 'G', 61, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Brown', 'Jabbertown Rd., Southport, NC, 28461', '1974-10-24'),
('NW-G-062-1', 'G', 62, 1, 'standard', 'occupied', 4.0, 10.0, 'Isabell Wilson', '416 N. Howe Street, Southport, NC, 28461', '1981-11-03'),
('NW-G-063-1', 'G', 63, 1, 'standard', 'occupied', 4.0, 10.0, 'Kay Sherdon', 'Southport, NC, 28461', '1975-06-02'),
('NW-G-064-1', 'G', 64, 1, 'standard', 'occupied', 4.0, 10.0, 'Lula B. (C/o Samuel Davis) Smith', '903 N. Lord Street, Southport, NC, 28461', '1972-02-22'),
('NW-G-065-1', 'G', 65, 1, 'standard', 'available', 4.0, 10.0, 'Ben Reasee', '416 N. Howe Street, Southport, NC, 28461', '1983-05-26'),
('NW-G-066-1', 'G', 66, 1, 'standard', 'occupied', 4.0, 10.0, 'Neal Eagles', '619 N. Caswell Ave., Southport, NC, 28461', '1984-08-15'),
('NW-G-067-1', 'G', 67, 1, 'standard', 'occupied', 4.0, 10.0, 'John Bowen', 'Southport, NC, 28461', '1975-11-24'),
('NW-G-068-1', 'G', 68, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard (Mrs. Vienna Watson) Griffin', '(Not Paid For), Southport, NC, 28461', NULL),
('NW-G-069-1', 'G', 69, 1, 'standard', 'available', 4.0, 10.0, 'H. R. Laonhardt', '217 Willis Drive, Southport, NC, 28461', '1975-10-05'),
('NW-G-069-2', 'G', 69, 2, 'standard', 'available', 4.0, 10.0, 'H. R. Laonhardt', '217 Willis Drive, Southport, NC, 28461', '1975-10-05'),
('NW-G-070-1', 'G', 70, 1, 'standard', 'occupied', 4.0, 10.0, 'H.R.  (Paid By T. E. Gilbert Funeral Ser) McCorkle', 'Southport, NC, 28461', '1972-12-11'),
('NW-G-070-2', 'G', 70, 2, 'standard', 'occupied', 4.0, 10.0, 'H.R.  (Paid By T. E. Gilbert Funeral Ser) McCorkle', 'Southport, NC, 28461', '1972-12-11'),
('NW-G-071-1', 'G', 71, 1, 'standard', 'available', 4.0, 10.0, 'Ray H. & Mae Walton', '212 Park Ave. Ext, Southport, NC, 28461', '1981-08-14'),
('NW-G-071-2', 'G', 71, 2, 'standard', 'available', 4.0, 10.0, 'Ray H. & Mae Walton', '212 Park Ave. Ext, Southport, NC, 28461', '1981-08-14'),
('NW-G-072-1', 'G', 72, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. H. M. Fain', 'Southport, NC, 28461', '1971-08-04'),
('NW-G-072-2', 'G', 72, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. H. M. Fain', 'Southport, NC, 28461', '1971-08-04'),
('NW-G-073-1', 'G', 73, 1, 'standard', 'occupied', 4.0, 10.0, 'Frances Graham Key,  Estate', '110 Kinsley Dr., Southport, NC, 28461', '1972-07-10'),
('NW-G-073-2', 'G', 73, 2, 'standard', 'occupied', 4.0, 10.0, 'Frances Graham Key,  Estate', '110 Kinsley Dr., Southport, NC, 28461', '1972-07-10'),
('NW-G-073-3', 'G', 73, 3, 'standard', 'available', 4.0, 10.0, 'Frances Graham Key,  Estate', '110 Kinsley Dr., Southport, NC, 28461', '1972-07-10'),
('NW-G-074-1', 'G', 74, 1, 'standard', 'occupied', 4.0, 10.0, 'Carlos Fallon', '10 Quail Hollow Drive, Yaupon Beach, NC, 28465', '1975-08-20'),
('NW-G-074-2', 'G', 74, 2, 'standard', 'occupied', 4.0, 10.0, 'Carlos Fallon', '10 Quail Hollow Drive, Yaupon Beach, NC, 28465', '1975-08-20'),
('NW-G-074-3', 'G', 74, 3, 'standard', 'occupied', 4.0, 10.0, 'Carlos Fallon', '10 Quail Hollow Drive, Yaupon Beach, NC, 28465', '1975-08-20'),
('NW-G-075-1', 'G', 75, 1, 'standard', 'available', 4.0, 10.0, 'Charles D. & Ada M. McGill', '4817 Skelly Rd, Toledo, OH, 43623-4817', '1984-11-26'),
('NW-G-075-2', 'G', 75, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles D. & Ada M. McGill', '4817 Skelly Rd, Toledo, OH, 43623-4817', '1984-11-26'),
('NW-G-075-3', 'G', 75, 3, 'standard', 'occupied', 4.0, 10.0, 'Charles D. & Ada M. McGill', '4817 Skelly Rd, Toledo, OH, 43623-4817', '1984-11-26'),
('NW-G-076-1', 'G', 76, 1, 'standard', 'available', 4.0, 10.0, 'William J. & Ava M. Lackey', '403 Stuart Ave, Southport, NC, 28461', '1984-11-27'),
('NW-G-076-2', 'G', 76, 2, 'standard', 'occupied', 4.0, 10.0, 'William J. & Ava M. Lackey', '403 Stuart Ave, Southport, NC, 28461', '1984-11-27'),
('NW-G-076-3', 'G', 76, 3, 'standard', 'occupied', 4.0, 10.0, 'William J. & Ava M. Lackey', '403 Stuart Ave, Southport, NC, 28461', '1984-11-27'),
('NW-G-077-1', 'G', 77, 1, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-077-2', 'G', 77, 2, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-077-3', 'G', 77, 3, 'standard', 'occupied', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-077-4', 'G', 77, 4, 'standard', 'occupied', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-078-1', 'G', 78, 1, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-078-2', 'G', 78, 2, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-078-3', 'G', 78, 3, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-078-4', 'G', 78, 4, 'standard', 'available', 4.0, 10.0, 'Peggy Webb', '417 E. Leonard Street, Southport, NC, 28461', '1992-10-19'),
('NW-G-079-1', 'G', 79, 1, 'standard', 'occupied', 4.0, 10.0, 'William J. & Thelma S. Carlin', '8291 River Rd. S.E., Southport, NC, 28461', '1994-08-09'),
('NW-G-079-2', 'G', 79, 2, 'standard', 'occupied', 4.0, 10.0, 'William J. & Thelma S. Carlin', '8291 River Rd. S.E., Southport, NC, 28461', '1994-08-09'),
('NW-G-079-3', 'G', 79, 3, 'standard', 'occupied', 4.0, 10.0, 'William J. & Thelma S. Carlin', '8291 River Rd. S.E., Southport, NC, 28461', '1994-08-09'),
('NW-G-079-4', 'G', 79, 4, 'standard', 'occupied', 4.0, 10.0, 'William J. & Thelma S. Carlin', '8291 River Rd. S.E., Southport, NC, 28461', '1994-08-09'),
('NW-G-080-1', 'G', 80, 1, 'standard', 'available', 4.0, 10.0, 'Glennie Austin Howard', 'Rt 1 Box 260 LBR, Southport, NC, 28461-0260', '1980-11-17'),
('NW-G-080-2', 'G', 80, 2, 'standard', 'occupied', 4.0, 10.0, 'Glennie Austin Howard', 'Rt 1 Box 260 LBR, Southport, NC, 28461-0260', '1980-11-17'),
('NW-G-080-3', 'G', 80, 3, 'standard', 'occupied', 4.0, 10.0, 'Glennie Austin Howard', 'Rt 1 Box 260 LBR, Southport, NC, 28461-0260', '1980-11-17'),
('NW-G-080-4', 'G', 80, 4, 'standard', 'occupied', 4.0, 10.0, 'Glennie Austin Howard', 'Rt 1 Box 260 LBR, Southport, NC, 28461-0260', '1980-11-17'),
('NW-G-081-1', 'G', 81, 1, 'standard', 'occupied', 4.0, 10.0, 'Ronald Davis', 'Southport, NC, 28461', '1973-11-16'),
('NW-G-082-1', 'G', 82, 1, 'standard', 'occupied', 4.0, 10.0, 'H. H. Pinkerton', 'Southport, NC, 28461', '1979-06-12'),
('NW-G-083-1', 'G', 83, 1, 'standard', 'occupied', 4.0, 10.0, 'Charles Nelson McCoy', '414 N. Howe Street, Southport, NC, 28461-0414', '1978-09-08'),
('NW-G-084-1', 'G', 84, 1, 'standard', 'occupied', 4.0, 10.0, 'Catherine Sanders', 'Southport, NC, 28461', '1976-03-29'),
('NW-G-085-1', 'G', 85, 1, 'standard', 'occupied', 4.0, 10.0, 'Wilma B. McHose', '124 River Drive, Southport, NC, 28461-0124', '1975-07-11'),
('NW-G-086-1', 'G', 86, 1, 'standard', 'occupied', 4.0, 10.0, 'J. D. Jeffers', '(Lot Not Paid For), Southport, NC, 28461', NULL),
('NW-G-087-1', 'G', 87, 1, 'standard', 'occupied', 4.0, 10.0, 'Elton (Paid By T. E. Gilbert Funeral Ser) Stanbrook', 'Southport, NC, 28461', '1979-04-19'),
('NW-G-088-1', 'G', 88, 1, 'standard', 'occupied', 4.0, 10.0, 'V. A. Fish', 'Southport, NC, 28461', '1972-12-19'),
('NW-G-089-1', 'G', 89, 1, 'standard', 'occupied', 4.0, 10.0, 'Clair D. & Edythe F. Lewis', '205 74yh St, Long Beach, NC, 28465-0205', '1975-09-04'),
('NW-G-089-2', 'G', 89, 2, 'standard', 'occupied', 4.0, 10.0, 'Clair D. & Edythe F. Lewis', '205 74yh St, Long Beach, NC, 28465-0205', '1975-09-04'),
('NW-G-090-1', 'G', 90, 1, 'standard', 'available', 4.0, 10.0, 'Gilbert T. Mitchell', 'Southport, NC, 28461', '1973-10-30'),
('NW-G-090-2', 'G', 90, 2, 'standard', 'available', 4.0, 10.0, 'Gilbert T. Mitchell', 'Southport, NC, 28461', '1973-10-30'),
('NW-G-091-1', 'G', 91, 1, 'standard', 'occupied', 4.0, 10.0, 'John W. Thompson', 'Southport, NC, 28461', '1973-08-28'),
('NW-G-091-2', 'G', 91, 2, 'standard', 'occupied', 4.0, 10.0, 'John W. Thompson', 'Southport, NC, 28461', '1973-08-28'),
('NW-G-092-1', 'G', 92, 1, 'standard', 'occupied', 4.0, 10.0, 'R. W. Duncan, Sr.', 'Southport, NC, 28461', '1974-04-12'),
('NW-G-092-2', 'G', 92, 2, 'standard', 'occupied', 4.0, 10.0, 'R. W. Duncan, Sr.', 'Southport, NC, 28461', '1974-04-12'),
('NW-G-093-1', 'G', 93, 1, 'standard', 'available', 4.0, 10.0, 'A. P. & Lucy Henry', '202 E. Brown Street, Southport, NC, 28461-0202', '1986-03-26'),
('NW-G-093-2', 'G', 93, 2, 'standard', 'occupied', 4.0, 10.0, 'A. P. & Lucy Henry', '202 E. Brown Street, Southport, NC, 28461-0202', '1986-03-26'),
('NW-G-093-3', 'G', 93, 3, 'standard', 'occupied', 4.0, 10.0, 'A. P. & Lucy Henry', '202 E. Brown Street, Southport, NC, 28461-0202', '1986-03-26'),
('NW-G-094-1', 'G', 94, 1, 'standard', 'available', 4.0, 10.0, 'George & Charlotte Lindner', '426 Brunswick Street, Southport, NC, 28461-0426', '1984-06-26'),
('NW-G-094-2', 'G', 94, 2, 'standard', 'occupied', 4.0, 10.0, 'George & Charlotte Lindner', '426 Brunswick Street, Southport, NC, 28461-0426', '1984-06-26'),
('NW-G-094-3', 'G', 94, 3, 'standard', 'occupied', 4.0, 10.0, 'George & Charlotte Lindner', '426 Brunswick Street, Southport, NC, 28461-0426', '1984-06-26'),
('NW-G-095-1', 'G', 95, 1, 'standard', 'occupied', 4.0, 10.0, 'James P. Erwin', 'Southport, NC, 28461', '1982-09-15'),
('NW-G-095-2', 'G', 95, 2, 'standard', 'occupied', 4.0, 10.0, 'James P. Erwin', 'Southport, NC, 28461', '1982-09-15'),
('NW-G-095-3', 'G', 95, 3, 'standard', 'available', 4.0, 10.0, 'James P. Erwin', 'Southport, NC, 28461', '1982-09-15'),
('NW-G-096-1', 'G', 96, 1, 'standard', 'occupied', 4.0, 10.0, 'Jonathan Hankins', '403 W. St. George St., Southport, NC, 28461-0403', '1972-10-09'),
('NW-G-096-2', 'G', 96, 2, 'standard', 'available', 4.0, 10.0, 'Jonathan Hankins', '403 W. St. George St., Southport, NC, 28461-0403', '1972-10-09'),
('NW-G-096-3', 'G', 96, 3, 'standard', 'available', 4.0, 10.0, 'Jonathan Hankins', '403 W. St. George St., Southport, NC, 28461-0403', '1972-10-09'),
('NW-G-097-1', 'G', 97, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. C. E. Murphy,  Sr.', 'Long Beach, NC, 28465', '1983-05-06'),
('NW-G-097-2', 'G', 97, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. C. E. Murphy,  Sr.', 'Long Beach, NC, 28465', '1983-05-06'),
('NW-G-097-3', 'G', 97, 3, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. C. E. Murphy,  Sr.', 'Long Beach, NC, 28465', '1983-05-06'),
('NW-G-097-4', 'G', 97, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. C. E. Murphy,  Sr.', 'Long Beach, NC, 28465', '1983-05-06'),
('NW-G-098-1', 'G', 98, 1, 'standard', 'available', 4.0, 10.0, 'Calvin B. Whitley', 'P.O. Box 10130, Southport, NC, 28461-0130', '1987-06-30'),
('NW-G-098-2', 'G', 98, 2, 'standard', 'occupied', 4.0, 10.0, 'Calvin B. Whitley', 'P.O. Box 10130, Southport, NC, 28461-0130', '1987-06-30'),
('NW-G-098-3', 'G', 98, 3, 'standard', 'available', 4.0, 10.0, 'Calvin B. Whitley', 'P.O. Box 10130, Southport, NC, 28461-0130', '1987-06-30'),
('NW-G-098-4', 'G', 98, 4, 'standard', 'available', 4.0, 10.0, 'Calvin B. Whitley', 'P.O. Box 10130, Southport, NC, 28461-0130', '1987-06-30'),
('NW-G-099-1', 'G', 99, 1, 'standard', 'occupied', 4.0, 10.0, 'D. G. Lipe', 'Yaupon Beach, NC, 28465', '1974-11-25'),
('NW-G-099-2', 'G', 99, 2, 'standard', 'occupied', 4.0, 10.0, 'D. G. Lipe', 'Yaupon Beach, NC, 28465', '1974-11-25'),
('NW-G-099-3', 'G', 99, 3, 'standard', 'occupied', 4.0, 10.0, 'D. G. Lipe', 'Yaupon Beach, NC, 28465', '1974-11-25'),
('NW-G-099-4', 'G', 99, 4, 'standard', 'occupied', 4.0, 10.0, 'D. G. Lipe', 'Yaupon Beach, NC, 28465', '1974-11-25'),
('NW-G-100-A-1', 'G', 100, 1, 'standard', 'available', 4.0, 10.0, 'Diane S. Clark', '135 Stuart Ave., Southport, NC, 28461', '2003-12-03'),
('NW-G-100-A-2', 'G', 100, 2, 'standard', 'occupied', 4.0, 10.0, 'Diane S. Clark', '135 Stuart Ave., Southport, NC, 28461', '2003-12-03'),
('NW-G-100-B-1', 'G', 100, 1, 'standard', 'occupied', 4.0, 10.0, 'Diane S. Clark', '135 Stuart Ave., Southport, NC, 28461', '2003-12-03'),
('NW-G-100-B-2', 'G', 100, 2, 'standard', 'occupied', 4.0, 10.0, 'Diane S. Clark', '135 Stuart Ave., Southport, NC, 28461', '2003-12-03'),
('NW-G-101-1', 'G', 101, 1, 'standard', 'occupied', 4.0, 10.0, 'R. S. & Lois W. Edwards,  Sr.', 'Southport, NC, 28461', '1974-03-14'),
('NW-G-101-2', 'G', 101, 2, 'standard', 'occupied', 4.0, 10.0, 'R. S. & Lois W. Edwards,  Sr.', 'Southport, NC, 28461', '1974-03-14'),
('NW-G-102-1', 'G', 102, 1, 'standard', 'occupied', 4.0, 10.0, 'Jimmy Champion', 'Long Beach, NC, 28465', '1975-01-03'),
('NW-G-102-2', 'G', 102, 2, 'standard', 'occupied', 4.0, 10.0, 'Jimmy Champion', 'Long Beach, NC, 28465', '1975-01-03'),
('NW-G-103-1', 'G', 103, 1, 'standard', 'occupied', 4.0, 10.0, 'Lloyd Harper', 'Southport, NC, 28461', '1973-08-08'),
('NW-G-103-2', 'G', 103, 2, 'standard', 'occupied', 4.0, 10.0, 'Lloyd Harper', 'Southport, NC, 28461', '1973-08-08'),
('NW-G-104-1', 'G', 104, 1, 'standard', 'occupied', 4.0, 10.0, 'Malcom Stidham', 'Southport, NC, 28461', '1972-03-06'),
('NW-G-104-2', 'G', 104, 2, 'standard', 'occupied', 4.0, 10.0, 'Malcom Stidham', 'Southport, NC, 28461', '1972-03-06'),
('NW-G-105-1', 'G', 105, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Daniel V. Johnson', '6th St East, Long Beach, NC, 28465', '1973-03-20'),
('NW-G-105-2', 'G', 105, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Daniel V. Johnson', '6th St East, Long Beach, NC, 28465', '1973-03-20'),
('NW-G-106-1', 'G', 106, 1, 'standard', 'occupied', 4.0, 10.0, 'George Hughes', 'Southport, NC, 28461', '1974-06-10'),
('NW-G-106-2', 'G', 106, 2, 'standard', 'occupied', 4.0, 10.0, 'George Hughes', 'Southport, NC, 28461', '1974-06-10'),
('NW-G-107-1', 'G', 107, 1, 'standard', 'occupied', 4.0, 10.0, 'Ray Spencer', '308 E. Nash Street, Southport, NC, 28461-0308', '1975-01-16'),
('NW-G-107-2', 'G', 107, 2, 'standard', 'occupied', 4.0, 10.0, 'Ray Spencer', '308 E. Nash Street, Southport, NC, 28461-0308', '1975-01-16'),
('NW-G-108-1', 'G', 108, 1, 'standard', 'occupied', 4.0, 10.0, 'William E. Baxter', 'Dutchman Acres, Southport, NC, 28461', '1974-08-07'),
('NW-G-108-2', 'G', 108, 2, 'standard', 'occupied', 4.0, 10.0, 'William E. Baxter', 'Dutchman Acres, Southport, NC, 28461', '1974-08-07'),
('NW-G-109-1', 'G', 109, 1, 'standard', 'occupied', 4.0, 10.0, 'Carl Morris', '314 N. Rhett St, Southport, NC, 28461-0189', '1973-10-03'),
('NW-G-109-2', 'G', 109, 2, 'standard', 'occupied', 4.0, 10.0, 'Carl Morris', '314 N. Rhett St, Southport, NC, 28461-0189', '1973-10-03'),
('NW-G-109-3', 'G', 109, 3, 'standard', 'occupied', 4.0, 10.0, 'Carl Morris', '314 N. Rhett St, Southport, NC, 28461-0189', '1973-10-03'),
('NW-G-110-1', 'G', 110, 1, 'standard', 'available', 4.0, 10.0, 'John Kinwood Varnum, Sr.', 'N. Clarendon Ave, Southport, NC, 28461', '1985-10-10'),
('NW-G-110-2', 'G', 110, 2, 'standard', 'occupied', 4.0, 10.0, 'John Kinwood Varnum, Sr.', 'N. Clarendon Ave, Southport, NC, 28461', '1985-10-10'),
('NW-G-110-3', 'G', 110, 3, 'standard', 'occupied', 4.0, 10.0, 'John Kinwood Varnum, Sr.', 'N. Clarendon Ave, Southport, NC, 28461', '1985-10-10'),
('NW-G-111-1', 'G', 111, 1, 'standard', 'available', 4.0, 10.0, 'Arthur C. James', 'P.O. Box 4835, Wilmington, NC, 28401-4835', '1982-06-25'),
('NW-G-111-2', 'G', 111, 2, 'standard', 'available', 4.0, 10.0, 'Arthur C. James', 'P.O. Box 4835, Wilmington, NC, 28401-4835', '1982-06-25'),
('NW-G-111-3', 'G', 111, 3, 'standard', 'occupied', 4.0, 10.0, 'Arthur C. James', 'P.O. Box 4835, Wilmington, NC, 28401-4835', '1982-06-25'),
('NW-G-112-1', 'G', 112, 1, 'standard', 'occupied', 4.0, 10.0, 'Freddy R. Phipps', '127 Park Ave, Southport, NC, 28461-0127', '1978-09-07'),
('NW-G-112-2', 'G', 112, 2, 'standard', 'occupied', 4.0, 10.0, 'Freddy R. Phipps', '127 Park Ave, Southport, NC, 28461-0127', '1978-09-07'),
('NW-G-112-3', 'G', 112, 3, 'standard', 'available', 4.0, 10.0, 'Freddy R. Phipps', '127 Park Ave, Southport, NC, 28461-0127', '1978-09-07'),
('NW-G-113-1', 'G', 113, 1, 'standard', 'occupied', 4.0, 10.0, 'Nola, Gertrude & E.B. Tyler', 'Long Beach Road, Southport, NC, 28461', '1972-09-06'),
('NW-G-113-2', 'G', 113, 2, 'standard', 'occupied', 4.0, 10.0, 'Nola, Gertrude & E.B. Tyler', 'Long Beach Road, Southport, NC, 28461', '1972-09-06'),
('NW-G-113-3', 'G', 113, 3, 'standard', 'occupied', 4.0, 10.0, 'Nola, Gertrude & E.B. Tyler', 'Long Beach Road, Southport, NC, 28461', '1972-09-06'),
('NW-G-113-4', 'G', 113, 4, 'standard', 'occupied', 4.0, 10.0, 'Nola, Gertrude & E.B. Tyler', 'Long Beach Road, Southport, NC, 28461', '1972-09-06'),
('NW-G-114-1', 'G', 114, 1, 'standard', 'occupied', 4.0, 10.0, 'Sidney Woolwich', '108 Cape Fear Drive, Southport, NC, 28461-0108', '1981-06-16'),
('NW-G-114-2', 'G', 114, 2, 'standard', 'occupied', 4.0, 10.0, 'Sidney Woolwich', '108 Cape Fear Drive, Southport, NC, 28461-0108', '1981-06-16'),
('NW-G-114-3', 'G', 114, 3, 'standard', 'occupied', 4.0, 10.0, 'Sidney Woolwich', '108 Cape Fear Drive, Southport, NC, 28461-0108', '1981-06-16'),
('NW-G-114-4', 'G', 114, 4, 'standard', 'occupied', 4.0, 10.0, 'Sidney Woolwich', '108 Cape Fear Drive, Southport, NC, 28461-0108', '1981-06-16'),
('NW-G-115-1', 'G', 115, 1, 'standard', 'occupied', 4.0, 10.0, 'John K. Varnam, Jr.', 'Rt. 5 Box 274-C, Southport, NC, 28461-0274', '1990-07-26'),
('NW-G-115-2', 'G', 115, 2, 'standard', 'available', 4.0, 10.0, 'John K. Varnam, Jr.', 'Rt. 5 Box 274-C, Southport, NC, 28461-0274', '1990-07-26'),
('NW-G-115-3', 'G', 115, 3, 'standard', 'available', 4.0, 10.0, 'John K. Varnam, Jr.', 'Rt. 5 Box 274-C, Southport, NC, 28461-0274', '1990-07-26'),
('NW-G-115-4', 'G', 115, 4, 'standard', 'occupied', 4.0, 10.0, 'John K. Varnam, Jr.', 'Rt. 5 Box 274-C, Southport, NC, 28461-0274', '1990-07-26'),
('NW-G-116-1', 'G', 116, 1, 'standard', 'available', 4.0, 10.0, 'O. W. Carrier', '422 W. West St, Southport, NC, 28461-0422', '1984-07-27'),
('NW-G-116-2', 'G', 116, 2, 'standard', 'occupied', 4.0, 10.0, 'O. W. Carrier', '422 W. West St, Southport, NC, 28461-0422', '1984-07-27'),
('NW-G-116-3', 'G', 116, 3, 'standard', 'available', 4.0, 10.0, 'O. W. Carrier', '422 W. West St, Southport, NC, 28461-0422', '1984-07-27'),
('NW-G-116-4', 'G', 116, 4, 'standard', 'available', 4.0, 10.0, 'O. W. Carrier', '422 W. West St, Southport, NC, 28461-0422', '1984-07-27'),
('NW-G-117-1', 'G', 117, 1, 'standard', 'available', 4.0, 10.0, 'Claude Morris,  Jr.', '337 Lancaster Rd., Wilmington, NC, 28401-0337', '1974-03-01'),
('NW-G-118-1', 'G', 118, 1, 'standard', 'available', 4.0, 10.0, 'Johnsie Gore', 'Southport, NC, 28461', '1974-11-08'),
('NW-G-119-1', 'G', 119, 1, 'standard', 'occupied', 4.0, 10.0, 'John Creech', 'Rt.5 Box 357, Southport, NC, 28461-0357', '1988-01-19'),
('NW-G-120-1', 'G', 120, 1, 'standard', 'occupied', 4.0, 10.0, 'Molly Stidham', 'Southport, NC, 28461', '1978-08-08'),
('NW-G-121-1', 'G', 121, 1, 'standard', 'occupied', 4.0, 10.0, 'O.R. (C/o Philip Stubbs) Stubbs,  Jr.', '5118 Blackman Road, Murfreesboro, TN, 37130-5118', '1987-10-02'),
('NW-G-122-1', 'G', 122, 1, 'standard', 'occupied', 4.0, 10.0, 'Gerthell (C/o Felica Hardy) Williams', 'Rt. @, Box 159, Bolivia, NC, 28422-0159', '1978-07-08'),
('NW-G-123-1', 'G', 123, 1, 'standard', 'occupied', 4.0, 10.0, 'Otha Williams', 'N. Lord Street, Southport, NC, 28461', '1974-11-12'),
('NW-G-124-1', 'G', 124, 1, 'standard', 'occupied', 4.0, 10.0, 'Laura M. Smith', '717 Jabbertown Road, Southport, NC, 28461-0717', '1974-06-24'),
('NW-G-125-1', 'G', 125, 1, 'standard', 'occupied', 4.0, 10.0, 'Laura M. Smith', '717 Jabbertown Road, Southport, NC, 28461', '1986-05-22'),
('NW-G-125-2', 'G', 125, 2, 'standard', 'occupied', 4.0, 10.0, 'Laura M. Smith', '717 Jabbertown Road, Southport, NC, 28461', '1986-05-22'),
('NW-G-126-1', 'G', 126, 1, 'standard', 'occupied', 4.0, 10.0, 'Cleveland (Mabel Moore Joyner) Joyner', 'W. 8th Street, Southport, NC, 28461', '1977-10-24'),
('NW-G-126-2', 'G', 126, 2, 'standard', 'occupied', 4.0, 10.0, 'Cleveland (Mabel Moore Joyner) Joyner', 'W. 8th Street, Southport, NC, 28461', '1977-10-24'),
('NW-G-127-1', 'G', 127, 1, 'standard', 'occupied', 4.0, 10.0, 'Catherine Kane', 'Southport, NC, 28461', '1973-10-24'),
('NW-G-127-2', 'G', 127, 2, 'standard', 'occupied', 4.0, 10.0, 'Catherine Kane', 'Southport, NC, 28461', '1973-10-24'),
('NW-G-128-1', 'G', 128, 1, 'standard', 'available', 4.0, 10.0, 'James Branch Moss', '407 Norton St., Yaupon Beach, NC, 28465-0407', '1973-12-14'),
('NW-G-128-2', 'G', 128, 2, 'standard', 'available', 4.0, 10.0, 'James Branch Moss', '407 Norton St., Yaupon Beach, NC, 28465-0407', '1973-12-14'),
('NW-G-129-1', 'G', 129, 1, 'standard', 'occupied', 4.0, 10.0, 'Roland Bunting', '121 Park Ave, Southport, NC, 28461-0121', '1980-04-21'),
('NW-G-129-2', 'G', 129, 2, 'standard', 'occupied', 4.0, 10.0, 'Roland Bunting', '121 Park Ave, Southport, NC, 28461-0121', '1980-04-21'),
('NW-G-129-3', 'G', 129, 3, 'standard', 'available', 4.0, 10.0, 'Roland Bunting', '121 Park Ave, Southport, NC, 28461-0121', '1980-04-21'),
('NW-G-130-1', 'G', 130, 1, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-130-2', 'G', 130, 2, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-130-3', 'G', 130, 3, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-131-1', 'G', 131, 1, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-131-2', 'G', 131, 2, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-131-3', 'G', 131, 3, 'standard', 'available', 4.0, 10.0, 'David & Harriet Lemaster', '510 W. West Street, Southport, NC, 28461-0510', NULL),
('NW-G-132-1', 'G', 132, 1, 'standard', 'occupied', 4.0, 10.0, 'Juanita Jones (Mrs. Hebron Winford ) Terrell', '118-42nd St., Long Beach, NC, 28465-0118', '1981-10-07'),
('NW-G-132-2', 'G', 132, 2, 'standard', 'occupied', 4.0, 10.0, 'Juanita Jones (Mrs. Hebron Winford ) Terrell', '118-42nd St., Long Beach, NC, 28465-0118', '1981-10-07'),
('NW-G-132-3', 'G', 132, 3, 'standard', 'available', 4.0, 10.0, 'Juanita Jones (Mrs. Hebron Winford ) Terrell', '118-42nd St., Long Beach, NC, 28465-0118', '1981-10-07'),
('NW-G-133-1', 'G', 133, 1, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461-0110', '1986-08-29'),
('NW-G-133-2', 'G', 133, 2, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461-0110', '1986-08-29'),
('NW-G-133-3', 'G', 133, 3, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461-0110', '1986-08-29'),
('NW-G-133-4', 'G', 133, 4, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461-0110', '1986-08-29'),
('NW-G-134-1', 'G', 134, 1, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1986-08-29'),
('NW-G-134-2', 'G', 134, 2, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1986-08-29'),
('NW-G-134-3', 'G', 134, 3, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1986-08-29'),
('NW-G-134-4', 'G', 134, 4, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1986-08-29'),
('NW-G-135-1', 'G', 135, 1, 'standard', 'available', 4.0, 10.0, 'Richard A. & Joyce Partello', 'Dale Acres, Southport, NC, 28461', '1986-08-29'),
('NW-G-135-2', 'G', 135, 2, 'standard', 'occupied', 4.0, 10.0, 'Richard A. & Joyce Partello', 'Dale Acres, Southport, NC, 28461', '1986-08-29'),
('NW-G-135-3', 'G', 135, 3, 'standard', 'occupied', 4.0, 10.0, 'Richard A. & Joyce Partello', 'Dale Acres, Southport, NC, 28461', '1986-08-29'),
('NW-G-135-4', 'G', 135, 4, 'standard', 'occupied', 4.0, 10.0, 'Richard A. & Joyce Partello', 'Dale Acres, Southport, NC, 28461', '1986-08-29'),
('NW-G-136-1', 'G', 136, 1, 'standard', 'available', 4.0, 10.0, 'Donald & Catherine St. George', '510 W. West Street, Southport, NC, 28461-0510', '1986-08-29'),
('NW-G-136-2', 'G', 136, 2, 'standard', 'available', 4.0, 10.0, 'Donald & Catherine St. George', '510 W. West Street, Southport, NC, 28461-0510', '1986-08-29'),
('NW-G-136-3', 'G', 136, 3, 'standard', 'occupied', 4.0, 10.0, 'Donald & Catherine St. George', '510 W. West Street, Southport, NC, 28461-0510', '1986-08-29'),
('NW-G-136-4', 'G', 136, 4, 'standard', 'occupied', 4.0, 10.0, 'Donald & Catherine St. George', '510 W. West Street, Southport, NC, 28461-0510', '1986-08-29'),
('NW-G-137-1', 'G', 137, 1, 'standard', 'available', 4.0, 10.0, 'Donald & Catherine St. George', '510 W. West Street, Southport, NC, 28461', '1986-08-29'),
('NW-G-138-1', 'G', 138, 1, 'standard', 'available', 4.0, 10.0, 'Richard A. & Joyce Partello', 'Dale Acres, Southport, NC, 28461', '1986-08-29'),
('NW-G-139-1', 'G', 139, 1, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1986-08-29'),
('NW-G-140-1', 'G', 140, 1, 'standard', 'available', 4.0, 10.0, 'Rick & Catherine Johnstone', '110 Willis Drive, Southport, NC, 28461', '1983-06-30'),
('NW-G-141-1', 'G', 141, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-142-1', 'G', 142, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-143-1', 'G', 143, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-144-1', 'G', 144, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-145-1', 'G', 145, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-146-1', 'G', 146, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-147-1', 'G', 147, 1, 'standard', 'occupied', 4.0, 10.0, 'Not For Sale Part Of Street', 'Southport, NC, 28461', NULL),
('NW-G-148-1', 'G', 148, 1, 'standard', 'occupied', 4.0, 10.0, 'Christopher Mark (C/ oMrs. Gayle Ballard) Ballard', 'P.O. Box 10744, Southport, NC, 28461-0744', '1987-12-01'),
('NW-G-149-1', 'G', 149, 1, 'standard', 'occupied', 4.0, 10.0, 'Roosevelt Clarida', '615 N. Burrington Ave, Southport, NC, 28461-0615', '1987-11-23'),
('NW-G-150-1', 'G', 150, 1, 'standard', 'occupied', 4.0, 10.0, 'Russell & Estelle C/o Mrs.Joyce Worden Mead', 'P.O. Box 10432, Southport, NC, 28461-0432', '1986-11-17'),
('NW-G-151-1', 'G', 151, 1, 'standard', 'occupied', 4.0, 10.0, 'Russell & Estelle C/o Mrs.Joyce Worden Mead', 'P.O. Box 10432, Southport, NC, 28461-0432', '1986-11-17'),
('NW-G-152-1', 'G', 152, 1, 'standard', 'occupied', 4.0, 10.0, 'Ida Spaulding Evans', '805 S. 3rd Street, Wilmington, NC, 28401-0805', '1986-02-24'),
('NW-G-153-1', 'G', 153, 1, 'standard', 'occupied', 4.0, 10.0, 'Ida Evans', '805 S. 3rd Street, Wilmington, NC, 28401-0805', '1986-02-19'),
('NW-G-154-1', 'G', 154, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert & Francisn McMillian', 'Rt. 4, Box 68, Leland, NC, 28451-0068', '1983-05-17'),
('NW-G-155-1', 'G', 155, 1, 'standard', 'occupied', 4.0, 10.0, 'Gertrude Davis', 'N. Howe Street, Southport, NC, 28461', '1982-12-09'),
('NW-G-156-1', 'G', 156, 1, 'standard', 'occupied', 4.0, 10.0, 'Gertrude Davis', 'N. Howe Street, Southport, NC, 28461', '1982-12-09'),
('NW-G-157-1', 'G', 157, 1, 'standard', 'occupied', 4.0, 10.0, 'Florence (C/o Inez Jackson) Brown', '309 W. St. George St., Southport, NC, 28461-0309', '1983-11-16'),
('NW-G-158-1', 'G', 158, 1, 'standard', 'occupied', 4.0, 10.0, 'Cassie (C/o Carolyn G. Price) Galloway', '200 Bayview Sr., Southport, NC, 28461-0200', '1990-01-16'),
('NW-G-159-1', 'G', 159, 1, 'standard', 'occupied', 4.0, 10.0, 'Joseph Hiram (C/o Harold Hankins) Hankins', 'P.O. Box 10883, Southport, NC, 28461-0883', '1986-01-15'),
('NW-G-160-1', 'G', 160, 1, 'standard', 'occupied', 4.0, 10.0, 'F. W. Smith', 'Southport, NC, 28461', '1978-02-06'),
('NW-G-161-1', 'G', 161, 1, 'standard', 'occupied', 4.0, 10.0, 'Davis A. Brown', 'P.O. Box 10974, Southport, NC, 28461-0974', '1981-07-30'),
('NW-G-162--1', 'G', 162, 1, 'standard', 'occupied', 4.0, 10.0, 'Charles C. (Helen Poole) Poole', '449 Jabbertown Road, Southport, NC, 28461-0449', '1976-08-23'),
('NW-G-162--2', 'G', 162, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles C. (Helen Poole) Poole', '449 Jabbertown Road, Southport, NC, 28461-0449', '1976-08-23'),
('NW-G-163-1', 'G', 163, 1, 'standard', 'occupied', 4.0, 10.0, 'Francis Raymond Grisetti, Sr.', '34 Spring Lake Dr., Boiling Spring Lakes, NC, 28461-0034', '1976-10-06'),
('NW-G-163-2', 'G', 163, 2, 'standard', 'occupied', 4.0, 10.0, 'Francis Raymond Grisetti, Sr.', '34 Spring Lake Dr., Boiling Spring Lakes, NC, 28461-0034', '1976-10-06'),
('NW-G-164-1', 'G', 164, 1, 'standard', 'occupied', 4.0, 10.0, 'William Drew', '448 Jabbertown Road, Southport, NC, 28461-0448', '1977-08-22'),
('NW-G-164-2', 'G', 164, 2, 'standard', 'occupied', 4.0, 10.0, 'William Drew', '448 Jabbertown Road, Southport, NC, 28461-0448', '1977-08-22'),
('NW-G-165-1', 'G', 165, 1, 'standard', 'occupied', 4.0, 10.0, 'Clara Knight', 'Southport, NC, 28461', '1978-06-19'),
('NW-G-165-2', 'G', 165, 2, 'standard', 'occupied', 4.0, 10.0, 'Clara Knight', 'Southport, NC, 28461', '1978-06-19'),
('NW-G-166-1', 'G', 166, 1, 'standard', 'occupied', 4.0, 10.0, 'William G. & Joann Boles', '220 41st St., N.E., Long Beach, NC, 28465-0220', '1978-12-05'),
('NW-G-166-2', 'G', 166, 2, 'standard', 'occupied', 4.0, 10.0, 'William G. & Joann Boles', '220 41st St., N.E., Long Beach, NC, 28465-0220', '1978-12-05'),
('NW-G-167-1', 'G', 167, 1, 'standard', 'available', 4.0, 10.0, 'Francis Southern', '212 Willis Drive, Southport, NC, 28461-0212', '1980-09-08'),
('NW-G-167-2', 'G', 167, 2, 'standard', 'available', 4.0, 10.0, 'Francis Southern', '212 Willis Drive, Southport, NC, 28461-0212', '1980-09-08'),
('NW-G-168-1', 'G', 168, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Niels Jorgensen', '212 Willis Drive, Southport, NC, 28461', '1981-08-19'),
('NW-G-168-2', 'G', 168, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Niels Jorgensen', '212 Willis Drive, Southport, NC, 28461', '1981-08-19'),
('NW-G-169-1', 'G', 169, 1, 'standard', 'occupied', 4.0, 10.0, 'Jones Bryant Jr.', 'Stuart Ave., Southport, NC, 28461', '1980-09-12'),
('NW-G-169-2', 'G', 169, 2, 'standard', 'occupied', 4.0, 10.0, 'Jones Bryant Jr.', 'Stuart Ave., Southport, NC, 28461', '1980-09-12'),
('NW-G-169-3', 'G', 169, 3, 'standard', 'available', 4.0, 10.0, 'Jones Bryant Jr.', 'Stuart Ave., Southport, NC, 28461', '1980-09-12'),
('NW-G-170-1', 'G', 170, 1, 'standard', 'occupied', 4.0, 10.0, 'Bertram M. Burriss  Sr.', '207 W. Nash Street, Southport, NC, 28461-0207', '1985-09-11'),
('NW-G-170-2', 'G', 170, 2, 'standard', 'occupied', 4.0, 10.0, 'Bertram M. Burriss  Sr.', '207 W. Nash Street, Southport, NC, 28461-0207', '1985-09-11'),
('NW-G-170-3', 'G', 170, 3, 'standard', 'occupied', 4.0, 10.0, 'Bertram M. Burriss  Sr.', '207 W. Nash Street, Southport, NC, 28461-0207', '1985-09-11'),
('NW-G-171-1', 'G', 171, 1, 'standard', 'available', 4.0, 10.0, 'Todd Coring', 'Southport, NC', '2020-03-25'),
('NW-G-171-2', 'G', 171, 2, 'standard', 'available', 4.0, 10.0, 'Todd Coring', 'Southport, NC', '2020-03-25'),
('NW-G-171-3', 'G', 171, 3, 'standard', 'available', 4.0, 10.0, 'Todd Coring', 'Southport, NC', '2020-03-25'),
('NW-G-172-1', 'G', 172, 1, 'standard', 'available', 4.0, 10.0, 'James A. & Gertrude Johnson', '120 N. Atlantic Ave., Southport, NC, 28461-0120', NULL),
('NW-G-172-2', 'G', 172, 2, 'standard', 'occupied', 4.0, 10.0, 'James A. & Gertrude Johnson', '120 N. Atlantic Ave., Southport, NC, 28461-0120', NULL),
('NW-G-172-3', 'G', 172, 3, 'standard', 'occupied', 4.0, 10.0, 'James A. & Gertrude Johnson', '120 N. Atlantic Ave., Southport, NC, 28461-0120', NULL),
('NW-G-173-1', 'G', 173, 1, 'standard', 'available', 4.0, 10.0, 'James Frances & Ava T. Lutsko', 'Southport, NC, 28461', NULL),
('NW-G-173-2', 'G', 173, 2, 'standard', 'available', 4.0, 10.0, 'James Frances & Ava T. Lutsko', 'Southport, NC, 28461', NULL),
('NW-G-173-3', 'G', 173, 3, 'standard', 'occupied', 4.0, 10.0, 'James Frances & Ava T. Lutsko', 'Southport, NC, 28461', NULL),
('NW-G-174-1', 'G', 174, 1, 'standard', 'occupied', 4.0, 10.0, 'Nathaniel Moore', '1017 N. Lord Street, Southport, NC, 28461-1017', '1984-03-01'),
('NW-G-174-2', 'G', 174, 2, 'standard', 'occupied', 4.0, 10.0, 'Nathaniel Moore', '1017 N. Lord Street, Southport, NC, 28461-1017', '1984-03-01'),
('NW-G-174-3', 'G', 174, 3, 'standard', 'occupied', 4.0, 10.0, 'Nathaniel Moore', '1017 N. Lord Street, Southport, NC, 28461-1017', '1984-03-01'),
('NW-G-175-1', 'G', 175, 1, 'standard', 'occupied', 4.0, 10.0, 'George W. Bonds', '111 Clearview Dr., Southport, NC, 28461-0111', '1983-02-17'),
('NW-G-175-2', 'G', 175, 2, 'standard', 'occupied', 4.0, 10.0, 'George W. Bonds', '111 Clearview Dr., Southport, NC, 28461-0111', '1983-02-17'),
('NW-G-175-3', 'G', 175, 3, 'standard', 'occupied', 4.0, 10.0, 'George W. Bonds', '111 Clearview Dr., Southport, NC, 28461-0111', '1983-02-17'),
('NW-G-176-1', 'G', 176, 1, 'standard', 'available', 4.0, 10.0, 'Bernice L. & Helen B Lawrence & Elise McIver / Twitty', '240 69th St. E, Southport, NC, 28465', '1980-04-21'),
('NW-G-176-2', 'G', 176, 2, 'standard', 'occupied', 4.0, 10.0, 'Bernice L. & Helen B Lawrence & Elise McIver / Twitty', '240 69th St. E, Southport, NC, 28465', '1980-04-21'),
('NW-G-176-3', 'G', 176, 3, 'standard', 'occupied', 4.0, 10.0, 'Bernice L. & Helen B Lawrence & Elise McIver / Twitty', '240 69th St. E, Southport, NC, 28465', '1980-04-21'),
('NW-G-176-4', 'G', 176, 4, 'standard', 'available', 4.0, 10.0, 'Bernice L. & Helen B Lawrence & Elise McIver / Twitty', '240 69th St. E, Southport, NC, 28465', '1980-04-21'),
('NW-G-177-1', 'G', 177, 1, 'standard', 'occupied', 4.0, 10.0, 'William & Al-Mary Phelphs', '302 W. St. George, Southport, NC, 28461-0302', NULL),
('NW-G-177-2', 'G', 177, 2, 'standard', 'occupied', 4.0, 10.0, 'William & Al-Mary Phelphs', '302 W. St. George, Southport, NC, 28461-0302', NULL),
('NW-G-177-3', 'G', 177, 3, 'standard', 'occupied', 4.0, 10.0, 'William & Al-Mary Phelphs', '302 W. St. George, Southport, NC, 28461-0302', NULL),
('NW-G-177-4', 'G', 177, 4, 'standard', 'occupied', 4.0, 10.0, 'William & Al-Mary Phelphs', '302 W. St. George, Southport, NC, 28461-0302', NULL),
('NW-G-178-A-1', 'G', 178, 1, 'standard', 'occupied', 4.0, 10.0, 'Lillian Ware (C/o Charles L. Baker) Baker', '2023 Carmel Rd., Charlotte, NC, 28226-2023', '1991-06-21'),
('NW-G-178-B-1', 'G', 178, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert Oliver (C/o Marjorie Clemmons) Lee', 'P.O. Box 10101, Southport, NC, 28461', '1991-06-17'),
('NW-G-178-C-1', 'G', 178, 1, 'standard', 'occupied', 4.0, 10.0, 'Lorrainne (C/o Nancy S. Kelly) Nieciecki', '403-B N. Fodale Ave., Southport, NC, 28461-0403', '1991-06-24'),
('NW-G-178-D-1', 'G', 178, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-179-A-1', 'G', 179, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie A Dixon', 'Rt. 2 Box 84-B, Bolivia, NC, 28422-0084', '1991-03-15'),
('NW-G-179-A-2', 'G', 179, 2, 'standard', 'occupied', 4.0, 10.0, 'Archie A Dixon', 'Rt. 2 Box 84-B, Bolivia, NC, 28422-0084', '1991-03-15'),
('NW-G-179-B-1', 'G', 179, 1, 'standard', 'occupied', 4.0, 10.0, 'Rebecca Petty', '129 E. Beach Dr., Long Beach, NC, 28465-0129', '1991-04-01'),
('NW-G-179-B-2', 'G', 179, 2, 'standard', 'occupied', 4.0, 10.0, 'Rebecca Petty', '129 E. Beach Dr., Long Beach, NC, 28465-0129', '1991-04-01'),
('NW-G-180-A-1', 'G', 180, 1, 'standard', 'occupied', 4.0, 10.0, 'Perry Castle', '402 Womble Street, Yaupon Beach, NC, 28465-0402', '1991-06-05'),
('NW-G-180-B-1', 'G', 180, 1, 'standard', 'occupied', 4.0, 10.0, 'James W. McMillion, Jr.', 'Rt. 1 Box 50, Southport, NC, 28461-0050', '1991-05-01'),
('NW-G-180-C-1', 'G', 180, 1, 'standard', 'occupied', 4.0, 10.0, 'Rufus King', 'Rt.5 H&S Trailer Park, Southport, NC, 28461', NULL),
('NW-G-180-C-2', 'G', 180, 2, 'standard', 'occupied', 4.0, 10.0, 'Rufus King', 'Rt.5 H&S Trailer Park, Southport, NC, 28461', NULL),
('NW-G-181-A-1', 'G', 181, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard (JoAnn) Holcomb', '115 NW 16th Street, Long Beach, NC, 28465-0115', '1991-05-30'),
('NW-G-181-B-1', 'G', 181, 1, 'standard', 'occupied', 4.0, 10.0, 'Roosevelt Clarida', '615 N. Burrington Ave, Southport, NC, 28461-0615', '1991-08-21'),
('NW-G-181-B-2', 'G', 181, 2, 'standard', 'occupied', 4.0, 10.0, 'Roosevelt Clarida', '615 N. Burrington Ave, Southport, NC, 28461-0615', '1991-08-21'),
('NW-G-181-C-1', 'G', 181, 1, 'standard', 'occupied', 4.0, 10.0, 'Clara Y. Fenick', '214 NE 62nd Street, Long Beach, NC, 28465-0214', '1991-08-27'),
('NW-G-182-1', 'G', 182, 1, 'standard', 'occupied', 4.0, 10.0, 'Israel Clemmons,  Jr.', '408 E. West Street, Southport, NC, 28461-0408', '1990-05-09'),
('NW-G-182-2', 'G', 182, 2, 'standard', 'occupied', 4.0, 10.0, 'Israel Clemmons,  Jr.', '408 E. West Street, Southport, NC, 28461-0408', '1990-05-09'),
('NW-G-182-3', 'G', 182, 3, 'standard', 'occupied', 4.0, 10.0, 'Israel Clemmons,  Jr.', '408 E. West Street, Southport, NC, 28461-0408', '1990-05-09'),
('NW-G-182-4', 'G', 182, 4, 'standard', 'available', 4.0, 10.0, 'Israel Clemmons,  Jr.', '408 E. West Street, Southport, NC, 28461-0408', '1990-05-09'),
('NW-G-183-1', 'G', 183, 1, 'standard', 'occupied', 4.0, 10.0, 'William S. Byrd', '711 Longleaf Drive, Southport, NC, 28461-0711', '1990-06-20'),
('NW-G-184-1', 'G', 184, 1, 'standard', 'available', 4.0, 10.0, 'Carroll Adams', '111 30th Street E., Long Beach, NC, 28465-0111', '1983-06-30'),
('NW-G-185-1', 'G', 185, 1, 'standard', 'occupied', 4.0, 10.0, 'Dewey Jackson', '215 W. Owens St., Southport, NC, 28461-0215', '1984-03-16'),
('NW-G-186-1', 'G', 186, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Rufus (Edna) Hayes', 'Rt. 5 Box 14, Southport, NC, 28461', '1991-08-13'),
('NW-G-187-1', 'G', 187, 1, 'standard', 'occupied', 4.0, 10.0, 'Frances Jordan', '516 N. Lord Street, Southport, NC, 28461-0516', '1984-10-23'),
('NW-G-188-1', 'G', 188, 1, 'standard', 'occupied', 4.0, 10.0, 'Elton H Jackson', '309 W. St. George, Southport, NC, 28461-0309', '1987-02-09'),
('NW-G-189-1', 'G', 189, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Lee Goodwin', '111 Oakview Dr., Southport, NC, 28461-0111', '1982-06-21'),
('NW-G-190-1', 'G', 190, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-191--1', 'G', 191, 1, 'standard', 'available', 4.0, 10.0, 'Clair S Rees', '2 Oak Island Drive, Yaupon Beach, NC, 28465-0002', '1979-07-19'),
('NW-G-192-1', 'G', 192, 1, 'standard', 'occupied', 4.0, 10.0, 'Blanche Wolfe', '925 E. Leonard Street, Southport, NC, 28461-0925', '1986-04-09'),
('NW-G-193-1', 'G', 193, 1, 'standard', 'available', 4.0, 10.0, 'Bryant Edwards', '211 W. College, Hartsville, SC, 29550-0211', '1979-09-28'),
('NW-G-194-1', 'G', 194, 1, 'standard', 'occupied', 4.0, 10.0, 'Dorothy Salter', '215 Frink Drive, Southport, NC, 28461-0215', '1984-06-05'),
('NW-G-195-1', 'G', 195, 1, 'standard', 'occupied', 4.0, 10.0, 'George & Linza Clarida', '615 N. Burrington Ave, Southport, NC, 28461-0615', '1985-10-30'),
('NW-G-196-1', 'G', 196, 1, 'standard', 'occupied', 4.0, 10.0, 'George & Linza Clarida', '615 N. Burrington Ave, Southport, NC, 28461-0615', '1986-05-22'),
('NW-G-197-1', 'G', 197, 1, 'standard', 'occupied', 4.0, 10.0, 'Lenora M. Gore', '705 N. Caswell Ave., Southport, NC, 28461-0705', '1986-01-27'),
('NW-G-198-1', 'G', 198, 1, 'standard', 'occupied', 4.0, 10.0, 'Herman E. & Serella B. Joyce', 'P.O. Box 101 64th St., Long Beach, NC, 28465-0101', '1979-12-03'),
('NW-G-198-2', 'G', 198, 2, 'standard', 'occupied', 4.0, 10.0, 'Herman E. & Serella B. Joyce', 'P.O. Box 101 64th St., Long Beach, NC, 28465-0101', '1979-12-03'),
('NW-G-199-1', 'G', 199, 1, 'standard', 'occupied', 4.0, 10.0, 'Edward Jones', 'Southport, NC, 28461', '1980-03-06'),
('NW-G-199-2', 'G', 199, 2, 'standard', 'occupied', 4.0, 10.0, 'Edward Jones', 'Southport, NC, 28461', '1980-03-06'),
('NW-G-200-1', 'G', 200, 1, 'standard', 'available', 4.0, 10.0, 'Frank Hutton, Jr.', '512 Brunswick Street, Southport, NC, 28461-0512', '1979-08-17'),
('NW-G-200-2', 'G', 200, 2, 'standard', 'occupied', 4.0, 10.0, 'Frank Hutton, Jr.', '512 Brunswick Street, Southport, NC, 28461-0512', '1979-08-17'),
('NW-G-201-1', 'G', 201, 1, 'standard', 'available', 4.0, 10.0, 'Lonnie Crisco', 'Southport, NC, 28461', NULL),
('NW-G-201-2', 'G', 201, 2, 'standard', 'occupied', 4.0, 10.0, 'Lonnie Crisco', 'Southport, NC, 28461', NULL),
('NW-G-202-1', 'G', 202, 1, 'standard', 'occupied', 4.0, 10.0, 'E. C. Blake', 'Hwy 211, Southport, NC, 28461', '1978-12-20'),
('NW-G-202-2', 'G', 202, 2, 'standard', 'occupied', 4.0, 10.0, 'E. C. Blake', 'Hwy 211, Southport, NC, 28461', '1978-12-20'),
('NW-G-203-1', 'G', 203, 1, 'standard', 'occupied', 4.0, 10.0, 'Harold (C/o Mrs. Maryland Revis) Warner, Sr.', '1831 St. Paul Ave, Fayetteville, NC, 28304-1831', '1978-07-06'),
('NW-G-203-2', 'G', 203, 2, 'standard', 'occupied', 4.0, 10.0, 'Harold (C/o Mrs. Maryland Revis) Warner, Sr.', '1831 St. Paul Ave, Fayetteville, NC, 28304-1831', '1978-07-06'),
('NW-G-204-1', 'G', 204, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert F. & Agnes V. Rumple', 'P.O. Box 517, Long Beach, NC, 28465-0517', '1979-01-16'),
('NW-G-204-2', 'G', 204, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert F. & Agnes V. Rumple', 'P.O. Box 517, Long Beach, NC, 28465-0517', '1979-01-16'),
('NW-G-205-1', 'G', 205, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Vernon (Hazel) (C/o MaryCobbWoodard Forbes', '116 NE 21st Street, Long Beach, NC, 28465-0116', '1981-10-05'),
('NW-G-205-2', 'G', 205, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Vernon (Hazel) (C/o MaryCobbWoodard Forbes', '116 NE 21st Street, Long Beach, NC, 28465-0116', '1981-10-05'),
('NW-G-205-3', 'G', 205, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Vernon (Hazel) (C/o MaryCobbWoodard Forbes', '116 NE 21st Street, Long Beach, NC, 28465-0116', '1981-10-05'),
('NW-G-206-1', 'G', 206, 1, 'standard', 'occupied', 4.0, 10.0, 'P.E. & Dorothy E. Moran', '202 McGlammery St., Yaupon Beach, NC, 28465-0202', '1985-05-08'),
('NW-G-206-2', 'G', 206, 2, 'standard', 'occupied', 4.0, 10.0, 'P.E. & Dorothy E. Moran', '202 McGlammery St., Yaupon Beach, NC, 28465-0202', '1985-05-08'),
('NW-G-206-3', 'G', 206, 3, 'standard', 'occupied', 4.0, 10.0, 'P.E. & Dorothy E. Moran', '202 McGlammery St., Yaupon Beach, NC, 28465-0202', '1985-05-08'),
('NW-G-207-1', 'G', 207, 1, 'standard', 'available', 4.0, 10.0, 'Robert Tay Blackwell', 'Rt5 Sea Pines Lot 379, Southport, NC, 28461-0379', '1986-09-02'),
('NW-G-207-2', 'G', 207, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert Tay Blackwell', 'Rt5 Sea Pines Lot 379, Southport, NC, 28461-0379', '1986-09-02'),
('NW-G-207-3', 'G', 207, 3, 'standard', 'occupied', 4.0, 10.0, 'Robert Tay Blackwell', 'Rt5 Sea Pines Lot 379, Southport, NC, 28461-0379', '1986-09-02'),
('NW-G-208-1', 'G', 208, 1, 'standard', 'available', 4.0, 10.0, 'Curtis & Mary Beheler', '5808 E. Yacht Drive, Long Beach, NC, 28465-5808', '1987-05-20'),
('NW-G-208-2', 'G', 208, 2, 'standard', 'occupied', 4.0, 10.0, 'Curtis & Mary Beheler', '5808 E. Yacht Drive, Long Beach, NC, 28465-5808', '1987-05-20'),
('NW-G-208-3', 'G', 208, 3, 'standard', 'occupied', 4.0, 10.0, 'Curtis & Mary Beheler', '5808 E. Yacht Drive, Long Beach, NC, 28465-5808', '1987-05-20'),
('NW-G-209-1', 'G', 209, 1, 'standard', 'occupied', 4.0, 10.0, 'Helen Christman', '208 Willis Drive, Southport, NC, 28461-0208', '1987-06-10'),
('NW-G-209-2', 'G', 209, 2, 'standard', 'occupied', 4.0, 10.0, 'Helen Christman', '208 Willis Drive, Southport, NC, 28461-0208', '1987-06-10'),
('NW-G-209-3', 'G', 209, 3, 'standard', 'occupied', 4.0, 10.0, 'Helen Christman', '208 Willis Drive, Southport, NC, 28461-0208', '1987-06-10'),
('NW-G-210-1', 'G', 210, 1, 'standard', 'available', 4.0, 10.0, 'Charles Moretz', '904 W. Yacht Drive, Long Beach, NC, 28465-0904', '1988-04-11'),
('NW-G-210-2', 'G', 210, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles Moretz', '904 W. Yacht Drive, Long Beach, NC, 28465-0904', '1988-04-11'),
('NW-G-210-3', 'G', 210, 3, 'standard', 'occupied', 4.0, 10.0, 'Charles Moretz', '904 W. Yacht Drive, Long Beach, NC, 28465-0904', '1988-04-11'),
('NW-G-211-1', 'G', 211, 1, 'standard', 'occupied', 4.0, 10.0, 'Cecil & Nora Southern', 'Rt. 5 102, Southport, NC, 28461-0102', '1988-04-25'),
('NW-G-211-2', 'G', 211, 2, 'standard', 'occupied', 4.0, 10.0, 'Cecil & Nora Southern', 'Rt. 5 102, Southport, NC, 28461-0102', '1988-04-25'),
('NW-G-211-3', 'G', 211, 3, 'standard', 'occupied', 4.0, 10.0, 'Cecil & Nora Southern', 'Rt. 5 102, Southport, NC, 28461-0102', '1988-04-25'),
('NW-G-212-1', 'G', 212, 1, 'standard', 'available', 4.0, 10.0, 'Henry J. & Susan Kaufman', '819 E. Moore Street, Southport, NC, 28461-0819', '1991-09-06'),
('NW-G-212-2', 'G', 212, 2, 'standard', 'available', 4.0, 10.0, 'Henry J. & Susan Kaufman', '819 E. Moore Street, Southport, NC, 28461-0819', '1991-09-06'),
('NW-G-212-3', 'G', 212, 3, 'standard', 'occupied', 4.0, 10.0, 'Henry J. & Susan Kaufman', '819 E. Moore Street, Southport, NC, 28461-0819', '1991-09-06'),
('NW-G-212-4', 'G', 212, 4, 'standard', 'occupied', 4.0, 10.0, 'Henry J. & Susan Kaufman', '819 E. Moore Street, Southport, NC, 28461-0819', '1991-09-06'),
('NW-G-213-A-1', 'G', 213, 1, 'standard', 'occupied', 4.0, 10.0, 'Peggy J. Parker', '821 N. Lord Street, Southport, NC, 28461', '2000-09-14'),
('NW-G-213-B-1', 'G', 213, 1, 'standard', 'occupied', 4.0, 10.0, 'Peggy J. Parker', '821 N. Lord Street, Southport, NC, 28461-0821', '1992-04-22'),
('NW-G-213-C-1', 'G', 213, 1, 'standard', 'occupied', 4.0, 10.0, 'Pieter H. & Jytte S. Davelaar', '2304 W. Yacht Drive, Long Beach, NC, 28465-0128', '1992-06-29'),
('NW-G-213-C-2', 'G', 213, 2, 'standard', 'occupied', 4.0, 10.0, 'Pieter H. & Jytte S. Davelaar', '2304 W. Yacht Drive, Long Beach, NC, 28465-0128', '1992-06-29'),
('NW-G-214-A-1', 'G', 214, 1, 'standard', 'occupied', 4.0, 10.0, 'Jeffrey B & Marsha Schenck, Sr.', '29 Woodcrest Rd., Boiling Springs Lakes, SC, 28461-0029', '1991-12-13'),
('NW-G-214-B-1', 'G', 214, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-214-C-1', 'G', 214, 1, 'standard', 'occupied', 4.0, 10.0, 'Janice (Elton B.) Jackson', 'P.O. Box 10091, Southport, NC, 28461', '1992-04-22'),
('NW-G-214-C-2', 'G', 214, 2, 'standard', 'available', 4.0, 10.0, 'Janice (Elton B.) Jackson', 'P.O. Box 10091, Southport, NC, 28461', '1992-04-22'),
('NW-G-215-1', 'G', 215, 1, 'standard', 'available', 4.0, 10.0, 'John A. Price,  Sr.', '605 N. Clarendon Ave, Southport, NC, 28461-0605', NULL),
('NW-G-215-2', 'G', 215, 2, 'standard', 'available', 4.0, 10.0, 'John A. Price,  Sr.', '605 N. Clarendon Ave, Southport, NC, 28461-0605', NULL),
('NW-G-215-3', 'G', 215, 3, 'standard', 'available', 4.0, 10.0, 'John A. Price,  Sr.', '605 N. Clarendon Ave, Southport, NC, 28461-0605', NULL),
('NW-G-215-4', 'G', 215, 4, 'standard', 'available', 4.0, 10.0, 'John A. Price,  Sr.', '605 N. Clarendon Ave, Southport, NC, 28461-0605', NULL),
('NW-G-216-1', 'G', 216, 1, 'standard', 'occupied', 4.0, 10.0, 'Mercelle Price Davis', '612 N Burrington Ave, Southport, NC, 28461-0612', NULL),
('NW-G-216-2', 'G', 216, 2, 'standard', 'occupied', 4.0, 10.0, 'Mercelle Price Davis', '612 N Burrington Ave, Southport, NC, 28461-0612', NULL),
('NW-G-216-3', 'G', 216, 3, 'standard', 'occupied', 4.0, 10.0, 'Mercelle Price Davis', '612 N Burrington Ave, Southport, NC, 28461-0612', NULL),
('NW-G-216-4', 'G', 216, 4, 'standard', 'available', 4.0, 10.0, 'Mercelle Price Davis', '612 N Burrington Ave, Southport, NC, 28461-0612', NULL),
('NW-G-217-1', 'G', 217, 1, 'standard', 'available', 4.0, 10.0, 'Clifton B. & Judy Y. White', '208 E. 8th Street, Southport, NC, 28461-0208', '1989-01-19'),
('NW-G-217-2', 'G', 217, 2, 'standard', 'available', 4.0, 10.0, 'Clifton B. & Judy Y. White', '208 E. 8th Street, Southport, NC, 28461-0208', '1989-01-19'),
('NW-G-217-3', 'G', 217, 3, 'standard', 'occupied', 4.0, 10.0, 'Clifton B. & Judy Y. White', '208 E. 8th Street, Southport, NC, 28461-0208', '1989-01-19'),
('NW-G-217-4', 'G', 217, 4, 'standard', 'occupied', 4.0, 10.0, 'Clifton B. & Judy Y. White', '208 E. 8th Street, Southport, NC, 28461-0208', '1989-01-19'),
('NW-G-218-1', 'G', 218, 1, 'standard', 'occupied', 4.0, 10.0, 'Ivon Wayne & Laura D. Ludlum', '1011 Captain Adkins D, Southport, NC, 28461-1011', '1992-07-02'),
('NW-G-218-2', 'G', 218, 2, 'standard', 'occupied', 4.0, 10.0, 'Ivon Wayne & Laura D. Ludlum', '1011 Captain Adkins D, Southport, NC, 28461-1011', '1992-07-02'),
('NW-G-218-3', 'G', 218, 3, 'standard', 'occupied', 4.0, 10.0, 'Ivon Wayne & Laura D. Ludlum', '1011 Captain Adkins D, Southport, NC, 28461-1011', '1992-07-02'),
('NW-G-218-4', 'G', 218, 4, 'standard', 'occupied', 4.0, 10.0, 'Ivon Wayne & Laura D. Ludlum', '1011 Captain Adkins D, Southport, NC, 28461-1011', '1992-07-02'),
('NW-G-219-1', 'G', 219, 1, 'standard', 'available', 4.0, 10.0, 'Preston Bryant', 'Southport, NC, 28461', '1979-02-05'),
('NW-G-219-2', 'G', 219, 2, 'standard', 'occupied', 4.0, 10.0, 'Preston Bryant', 'Southport, NC, 28461', '1979-02-05'),
('NW-G-220-1', 'G', 220, 1, 'standard', 'available', 4.0, 10.0, 'R. L, Drury', 'Southport, NC, 28461', '1977-03-23'),
('NW-G-220-2', 'G', 220, 2, 'standard', 'available', 4.0, 10.0, 'R. L, Drury', 'Southport, NC, 28461', '1977-03-23'),
('NW-G-221-1', 'G', 221, 1, 'standard', 'occupied', 4.0, 10.0, 'James Sanford Davis', '302 W. Brown Street, Southport, NC, 28461-0302', '1978-12-05'),
('NW-G-221-2', 'G', 221, 2, 'standard', 'occupied', 4.0, 10.0, 'James Sanford Davis', '302 W. Brown Street, Southport, NC, 28461-0302', '1978-12-05'),
('NW-G-222-1', 'G', 222, 1, 'standard', 'available', 4.0, 10.0, 'M. R, Thompson, Jr.', 'Southport, NC, 28461', '1977-06-08'),
('NW-G-222-2', 'G', 222, 2, 'standard', 'occupied', 4.0, 10.0, 'M. R, Thompson, Jr.', 'Southport, NC, 28461', '1977-06-08'),
('NW-G-223-1', 'G', 223, 1, 'standard', 'occupied', 4.0, 10.0, 'John Samuel (C/o Hilda Deese) Deese', '404 Brunswick St., Southport, NC, 28461-0404', NULL),
('NW-G-223-2', 'G', 223, 2, 'standard', 'occupied', 4.0, 10.0, 'John Samuel (C/o Hilda Deese) Deese', '404 Brunswick St., Southport, NC, 28461-0404', NULL),
('NW-G-224-1', 'G', 224, 1, 'standard', 'occupied', 4.0, 10.0, 'John Ganey, Jr.', '808 N. Atlantic Ave, Southport, NC, 28461-0808', '1980-03-14'),
('NW-G-224-2', 'G', 224, 2, 'standard', 'occupied', 4.0, 10.0, 'John Ganey, Jr.', '808 N. Atlantic Ave, Southport, NC, 28461-0808', '1980-03-14'),
('NW-G-225-1', 'G', 225, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. R. C. Caudill', 'Long Beach, NC, 28465', '1981-10-01'),
('NW-G-225-2', 'G', 225, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. R. C. Caudill', 'Long Beach, NC, 28465', '1981-10-01'),
('NW-G-226-1', 'G', 226, 1, 'standard', 'occupied', 4.0, 10.0, 'Earnest Stanley, Jr.', '318 Herring Drive, Southport, NC, 28461-0318', '1980-05-19'),
('NW-G-226-2', 'G', 226, 2, 'standard', 'occupied', 4.0, 10.0, 'Earnest Stanley, Jr.', '318 Herring Drive, Southport, NC, 28461-0318', '1980-05-19'),
('NW-G-227-1', 'G', 227, 1, 'standard', 'available', 4.0, 10.0, 'John Ganey, Jr.', '808 N. Atlantic Ave., Southport, NC, 28461-0808', '1980-03-14'),
('NW-G-227-2', 'G', 227, 2, 'standard', 'available', 4.0, 10.0, 'John Ganey, Jr.', '808 N. Atlantic Ave., Southport, NC, 28461-0808', '1980-03-14'),
('NW-G-228-1', 'G', 228, 1, 'standard', 'occupied', 4.0, 10.0, 'James Price', '901 N. Caswell Ave, Southport, NC, 28461-0901', '1978-04-03'),
('NW-G-228-2', 'G', 228, 2, 'standard', 'occupied', 4.0, 10.0, 'James Price', '901 N. Caswell Ave, Southport, NC, 28461-0901', '1978-04-03'),
('NW-G-229-1', 'G', 229, 1, 'standard', 'occupied', 4.0, 10.0, 'Alice Gore Price', '609 N. Clarendon Ave., Southport, NC, 28461-0609', '1978-01-03'),
('NW-G-229-2', 'G', 229, 2, 'standard', 'occupied', 4.0, 10.0, 'Alice Gore Price', '609 N. Clarendon Ave., Southport, NC, 28461-0609', '1978-01-03'),
('NW-G-230-1', 'G', 230, 1, 'standard', 'occupied', 4.0, 10.0, 'L. H. Turner', 'Southport, NC, 28461', '1977-11-04'),
('NW-G-230-2', 'G', 230, 2, 'standard', 'occupied', 4.0, 10.0, 'L. H. Turner', 'Southport, NC, 28461', '1977-11-04'),
('NW-G-231-1', 'G', 231, 1, 'standard', 'available', 4.0, 10.0, 'Charles (C/o Mrs Erma Swain) Heath', 'Rt. 1 Box 353, Rocky Point, NC, 28457-0352', '1977-07-01'),
('NW-G-231-2', 'G', 231, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles (C/o Mrs Erma Swain) Heath', 'Rt. 1 Box 353, Rocky Point, NC, 28457-0352', '1977-07-01'),
('NW-G-232-1', 'G', 232, 1, 'standard', 'occupied', 4.0, 10.0, 'G. C Brandon', 'Southport, NC, 28461', '1987-07-21'),
('NW-G-232-2', 'G', 232, 2, 'standard', 'occupied', 4.0, 10.0, 'G. C Brandon', 'Southport, NC, 28461', '1987-07-21'),
('NW-G-233-1', 'G', 233, 1, 'standard', 'available', 4.0, 10.0, 'L. R. & Ruth Carper', '111 E. 4th Street, Long Beach, NC, 28465-0111', '1987-07-21'),
('NW-G-233-2', 'G', 233, 2, 'standard', 'available', 4.0, 10.0, 'L. R. & Ruth Carper', '111 E. 4th Street, Long Beach, NC, 28465-0111', '1987-07-21'),
('NW-G-233-3', 'G', 233, 3, 'standard', 'available', 4.0, 10.0, 'L. R. & Ruth Carper', '111 E. 4th Street, Long Beach, NC, 28465-0111', '1987-07-21'),
('NW-G-234-1', 'G', 234, 1, 'standard', 'occupied', 4.0, 10.0, 'Elizabeth & Frank Demeter', '124 W. Island Drive, Long Beach, NC, 28465-0124', '1988-04-15'),
('NW-G-234-2', 'G', 234, 2, 'standard', 'occupied', 4.0, 10.0, 'Elizabeth & Frank Demeter', '124 W. Island Drive, Long Beach, NC, 28465-0124', '1988-04-15'),
('NW-G-234-3', 'G', 234, 3, 'standard', 'occupied', 4.0, 10.0, 'Elizabeth & Frank Demeter', '124 W. Island Drive, Long Beach, NC, 28465-0124', '1988-04-15'),
('NW-G-235-1', 'G', 235, 1, 'standard', 'available', 4.0, 10.0, 'Robert S. (C/0 Robert Wilson) Wilson', '565 N. Main Street, Mocksville, NC, 27028-0565', '1987-09-08'),
('NW-G-235-2', 'G', 235, 2, 'standard', 'available', 4.0, 10.0, 'Robert S. (C/0 Robert Wilson) Wilson', '565 N. Main Street, Mocksville, NC, 27028-0565', '1987-09-08'),
('NW-G-235-3', 'G', 235, 3, 'standard', 'available', 4.0, 10.0, 'Robert S. (C/0 Robert Wilson) Wilson', '565 N. Main Street, Mocksville, NC, 27028-0565', '1987-09-08'),
('NW-G-236-1', 'G', 236, 1, 'standard', 'available', 4.0, 10.0, 'Agnes (C/o Stuart Knox) Knox', '918 Reed Canal Rd., S. Daytona, FL, 32019-0918', '1985-09-12'),
('NW-G-236-2', 'G', 236, 2, 'standard', 'occupied', 4.0, 10.0, 'Agnes (C/o Stuart Knox) Knox', '918 Reed Canal Rd., S. Daytona, FL, 32019-0918', '1985-09-12'),
('NW-G-236-3', 'G', 236, 3, 'standard', 'occupied', 4.0, 10.0, 'Agnes (C/o Stuart Knox) Knox', '918 Reed Canal Rd., S. Daytona, FL, 32019-0918', '1985-09-12'),
('NW-G-237-1', 'G', 237, 1, 'standard', 'occupied', 4.0, 10.0, 'Law & Majorie Swan', '111 Park Ave, Southport, NC, 28461-0111', '1989-01-26'),
('NW-G-237-2', 'G', 237, 2, 'standard', 'occupied', 4.0, 10.0, 'Law & Majorie Swan', '111 Park Ave, Southport, NC, 28461-0111', '1989-01-26'),
('NW-G-237-3', 'G', 237, 3, 'standard', 'available', 4.0, 10.0, 'Law & Majorie Swan', '111 Park Ave, Southport, NC, 28461-0111', '1989-01-26'),
('NW-G-238-1', 'G', 238, 1, 'standard', 'occupied', 4.0, 10.0, 'Roger & Teresa Ward', '705 E. Leonard St., Southport, NC, 28461-0705', '1989-09-20'),
('NW-G-238-2', 'G', 238, 2, 'standard', 'occupied', 4.0, 10.0, 'Roger & Teresa Ward', '705 E. Leonard St., Southport, NC, 28461-0705', '1989-09-20'),
('NW-G-238-3', 'G', 238, 3, 'standard', 'available', 4.0, 10.0, 'Roger & Teresa Ward', '705 E. Leonard St., Southport, NC, 28461-0705', '1989-09-20'),
('NW-G-239-1', 'G', 239, 1, 'standard', 'occupied', 4.0, 10.0, 'William E. Stanley,  Jr.', '132 Park Ave., Southport, NC, 28461-0132', '1980-05-27'),
('NW-G-239-2', 'G', 239, 2, 'standard', 'occupied', 4.0, 10.0, 'William E. Stanley,  Jr.', '132 Park Ave., Southport, NC, 28461-0132', '1980-05-27'),
('NW-G-239-3', 'G', 239, 3, 'standard', 'available', 4.0, 10.0, 'William E. Stanley,  Jr.', '132 Park Ave., Southport, NC, 28461-0132', '1980-05-27'),
('NW-G-240-1', 'G', 240, 1, 'standard', 'occupied', 4.0, 10.0, 'Alan C. Lane', 'P.O. Box 10574, Southport, NC, 28461-0574', NULL),
('NW-G-240-2', 'G', 240, 2, 'standard', 'occupied', 4.0, 10.0, 'Alan C. Lane', 'P.O. Box 10574, Southport, NC, 28461-0574', NULL),
('NW-G-240-3', 'G', 240, 3, 'standard', 'available', 4.0, 10.0, 'Alan C. Lane', 'P.O. Box 10574, Southport, NC, 28461-0574', NULL),
('NW-G-240-4', 'G', 240, 4, 'standard', 'occupied', 4.0, 10.0, 'Alan C. Lane', 'P.O. Box 10574, Southport, NC, 28461-0574', NULL),
('NW-G-240-b', 'G', 240, 1, 'standard', 'occupied', 4.0, 10.0, 'Alan C. Lane', 'P.O. Box 10574, Southport, NC, 28461-0574', NULL),
('NW-G-241-1', 'G', 241, 1, 'standard', 'available', 4.0, 10.0, 'Regina Nichols', 'Southport, NC, 28461', '1992-08-17'),
('NW-G-241-2', 'G', 241, 2, 'standard', 'available', 4.0, 10.0, 'Regina Nichols', 'Southport, NC, 28461', '1992-08-17'),
('NW-G-241-3', 'G', 241, 3, 'standard', 'available', 4.0, 10.0, 'Regina Nichols', 'Southport, NC, 28461', '1992-08-17'),
('NW-G-241-4', 'G', 241, 4, 'standard', 'available', 4.0, 10.0, 'Regina Nichols', 'Southport, NC, 28461', '1992-08-17'),
('NW-G-242-A-1', 'G', 242, 1, 'standard', 'occupied', 4.0, 10.0, 'Louis J.& Maxine Cahours', '1373 S. Shore Dr., Boiling Spring Lakes, NC, 28461', '1992-09-21'),
('NW-G-242-A-2', 'G', 242, 2, 'standard', 'occupied', 4.0, 10.0, 'Louis J.& Maxine Cahours', '1373 S. Shore Dr., Boiling Spring Lakes, NC, 28461', '1992-09-21'),
('NW-G-242-B-1', 'G', 242, 1, 'standard', 'occupied', 4.0, 10.0, 'James Price', '901 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-242-B-2', 'G', 242, 2, 'standard', 'occupied', 4.0, 10.0, 'James Price', '901 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-243-A-1', 'G', 243, 1, 'standard', 'available', 4.0, 10.0, 'Mary Frances A. (C/o Pauline Swain) Adams', 'P.O. Box 10245, Southport, NC, 28461-0245', NULL),
('NW-G-243-B-1', 'G', 243, 1, 'standard', 'available', 4.0, 10.0, 'Open', 'NC', NULL),
('NW-G-243-B-2', 'G', 243, 2, 'standard', 'available', 4.0, 10.0, 'Open', 'NC', NULL),
('NW-G-243-C-1', 'G', 243, 1, 'standard', 'occupied', 4.0, 10.0, 'Elmore Lee', 'Rt1 Box 277-A, Council, NC, 28461', '1993-02-15'),
('NW-G-244-1', 'G', 244, 1, 'standard', 'available', 4.0, 10.0, 'J.D. (C/o Helen Skipper) Sharpe', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1977-10-31'),
('NW-G-244-2', 'G', 244, 2, 'standard', 'occupied', 4.0, 10.0, 'J.D. (C/o Helen Skipper) Sharpe', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1977-10-31'),
('NW-G-244-3', 'G', 244, 3, 'standard', 'occupied', 4.0, 10.0, 'J.D. (C/o Helen Skipper) Sharpe', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1977-10-31'),
('NW-G-244-4', 'G', 244, 4, 'standard', 'occupied', 4.0, 10.0, 'J.D. (C/o Helen Skipper) Sharpe', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1977-10-31'),
('NW-G-245-1', 'G', 245, 1, 'standard', 'available', 4.0, 10.0, 'J. D. Skipper', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1981-06-26'),
('NW-G-245-2', 'G', 245, 2, 'standard', 'occupied', 4.0, 10.0, 'J. D. Skipper', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1981-06-26'),
('NW-G-245-3', 'G', 245, 3, 'standard', 'occupied', 4.0, 10.0, 'J. D. Skipper', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1981-06-26'),
('NW-G-245-4', 'G', 245, 4, 'standard', 'occupied', 4.0, 10.0, 'J. D. Skipper', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1981-06-26'),
('NW-G-246-1', 'G', 246, 1, 'standard', 'available', 4.0, 10.0, 'Geneva Hargrove', '723 W. 11th St. Ext., Southport, NC, 28461-0292', NULL),
('NW-G-246-2', 'G', 246, 2, 'standard', 'available', 4.0, 10.0, 'Geneva Hargrove', '723 W. 11th St. Ext., Southport, NC, 28461-0292', NULL),
('NW-G-246-3', 'G', 246, 3, 'standard', 'available', 4.0, 10.0, 'Geneva Hargrove', '723 W. 11th St. Ext., Southport, NC, 28461-0292', NULL),
('NW-G-246-4', 'G', 246, 4, 'standard', 'available', 4.0, 10.0, 'Geneva Hargrove', '723 W. 11th St. Ext., Southport, NC, 28461-0292', NULL),
('NW-G-247-1', 'G', 247, 1, 'standard', 'available', 4.0, 10.0, 'Randolph Tacy', 'Southport, NC, 28461', '1979-02-06'),
('NW-G-248-1', 'G', 248, 1, 'standard', 'occupied', 4.0, 10.0, 'Eva W. Holms', '706 N. Burrington Ave, Southport, NC, 28461-0706', NULL),
('NW-G-249-1', 'G', 249, 1, 'standard', 'available', 4.0, 10.0, 'J. D. Skipper', '223 N. Caswell Ave, Southport, NC, 28461-0223', '1981-06-26'),
('NW-G-250-1', 'G', 250, 1, 'standard', 'occupied', 4.0, 10.0, 'S. L. Rogers', 'S. Atlantic Ave, Southport, NC, 28461', '1982-08-10'),
('NW-G-251-1', 'G', 251, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary (C/o The Method ist Retirement Home) Shuller', '2620 Erwin Rd., Durham, NC, 27705-2620', '1986-06-13'),
('NW-G-252-1', 'G', 252, 1, 'standard', 'occupied', 4.0, 10.0, 'Ruth H. Sharples', 'Rt 1 Box 68, Winnabow, NC, 28479-0068', '1986-05-19'),
('NW-G-253-1', 'G', 253, 1, 'standard', 'occupied', 4.0, 10.0, 'Cora Mae Murphy', 'Elizabeth Dr., Yaupon Beach, NC, 28465-0901', '1987-03-16'),
('NW-G-254-1', 'G', 254, 1, 'standard', 'occupied', 4.0, 10.0, 'David Fox', 'PO Box 10779, Southport, NC, 28461-', '2017-01-27'),
('NW-G-255-1', 'G', 255, 1, 'standard', 'occupied', 4.0, 10.0, 'Gary Fullwood', '1566 Stanley Road, Supply, NC, 28462-', '2017-05-26'),
('NW-G-256-1', 'G', 256, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary (C/o The Method ist Retirement Home) Shuller', '2620 Erwin Rd., Durham, NC, 27705-2620', '1986-06-13'),
('NW-G-257-1', 'G', 257, 1, 'standard', 'occupied', 4.0, 10.0, 'Leslie Paul & Adurey B. C. Day', '530 Boiling Sprg. Rd., Boiling Spring Lakes, NC, 28461-0530', '1986-11-28'),
('NW-G-258-1', 'G', 258, 1, 'standard', 'occupied', 4.0, 10.0, 'Leslie Paul & Adurey B. C. Day', '530 Boiling Sprg. Rd., Boiling Spring Lakes, NC, 28461-0530', '1986-11-28'),
('NW-G-259-1', 'G', 259, 1, 'standard', 'occupied', 4.0, 10.0, 'McKinley M. Galloway', '206 W. Brown Street, Southport, NC, 28461-0206', NULL),
('NW-G-260-1', 'G', 260, 1, 'standard', 'occupied', 4.0, 10.0, 'Geneva S. Hargrove', 'P.O. Box 19292, Southport, NC, 28461-0292', '1988-09-22'),
('NW-G-261-1', 'G', 261, 1, 'standard', 'occupied', 4.0, 10.0, 'Joe S. (C/o Joe W. Walton) Walton', '308 E. Leonard Street, Southport, NC, 28461-0308', '1976-12-30'),
('NW-G-261-2', 'G', 261, 2, 'standard', 'occupied', 4.0, 10.0, 'Joe S. (C/o Joe W. Walton) Walton', '308 E. Leonard Street, Southport, NC, 28461-0308', '1976-12-30'),
('NW-G-262-1', 'G', 262, 1, 'standard', 'occupied', 4.0, 10.0, 'Harold & Ester W. Cotton', '204 N. Fodale Ave, Southport, NC, 28461-0204', '1980-11-18'),
('NW-G-262-2', 'G', 262, 2, 'standard', 'occupied', 4.0, 10.0, 'Harold & Ester W. Cotton', '204 N. Fodale Ave, Southport, NC, 28461-0204', '1980-11-18'),
('NW-G-263-1', 'G', 263, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Lewis H. Conley', 'Southport, NC, 28461', '1977-05-19'),
('NW-G-263-2', 'G', 263, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. Lewis H. Conley', 'Southport, NC, 28461', '1977-05-19'),
('NW-G-264-1', 'G', 264, 1, 'standard', 'occupied', 4.0, 10.0, 'Mrs. T.N. (C/o Cape Fear Realty) Wood', 'P.O. Box 10517, Southport, NC, 28461-0517', '1978-02-22'),
('NW-G-264-2', 'G', 264, 2, 'standard', 'occupied', 4.0, 10.0, 'Mrs. T.N. (C/o Cape Fear Realty) Wood', 'P.O. Box 10517, Southport, NC, 28461-0517', '1978-02-22'),
('NW-G-265-1', 'G', 265, 1, 'standard', 'occupied', 4.0, 10.0, 'John B. (C/o Mrs. Ann Griffn) Hayward', 'Rt. 12 Box 465, Sanford, NC, 27330-0465', '1980-06-28'),
('NW-G-265-2', 'G', 265, 2, 'standard', 'occupied', 4.0, 10.0, 'John B. (C/o Mrs. Ann Griffn) Hayward', 'Rt. 12 Box 465, Sanford, NC, 27330-0465', '1980-06-28'),
('NW-G-266-1', 'G', 266, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs Rufus H. Faulk, Jr.', 'Box 901 Elizabeth Dr., Long Beach, NC, 28465-0901', '1985-05-29'),
('NW-G-266-2', 'G', 266, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs Rufus H. Faulk, Jr.', 'Box 901 Elizabeth Dr., Long Beach, NC, 28465-0901', '1985-05-29'),
('NW-G-267-1', 'G', 267, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-267-2', 'G', 267, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-268-1', 'G', 268, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-268-2', 'G', 268, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-268-3', 'G', 268, 3, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-269-1', 'G', 269, 1, 'standard', 'occupied', 4.0, 10.0, 'Kenneth W. & Joyce Worden', '444 N. Shore Drive, Boiling Springs Lakes, NC, 28461-0444', '1989-10-31'),
('NW-G-269-2', 'G', 269, 2, 'standard', 'occupied', 4.0, 10.0, 'Kenneth W. & Joyce Worden', '444 N. Shore Drive, Boiling Springs Lakes, NC, 28461-0444', '1989-10-31'),
('NW-G-269-3', 'G', 269, 3, 'standard', 'available', 4.0, 10.0, 'Kenneth W. & Joyce Worden', '444 N. Shore Drive, Boiling Springs Lakes, NC, 28461-0444', '1989-10-31'),
('NW-G-270-1', 'G', 270, 1, 'standard', 'occupied', 4.0, 10.0, 'William H. & Alneta D. Crowe', '101 N. Atlantic Ave, Southport, NC, 28461-0304', '1990-12-19'),
('NW-G-270-2', 'G', 270, 2, 'standard', 'occupied', 4.0, 10.0, 'William H. & Alneta D. Crowe', '101 N. Atlantic Ave, Southport, NC, 28461-0304', '1990-12-19'),
('NW-G-270-3', 'G', 270, 3, 'standard', 'available', 4.0, 10.0, 'William H. & Alneta D. Crowe', '101 N. Atlantic Ave, Southport, NC, 28461-0304', '1990-12-19'),
('NW-G-271--1', 'G', 271, 1, 'standard', 'occupied', 4.0, 10.0, 'Barbara L. Faulk', '210 W. West Street, Southport, NC, 28461-1326', '1990-08-22'),
('NW-G-271--2', 'G', 271, 2, 'standard', 'occupied', 4.0, 10.0, 'Barbara L. Faulk', '210 W. West Street, Southport, NC, 28461-1326', '1990-08-22'),
('NW-G-271--3', 'G', 271, 3, 'standard', 'available', 4.0, 10.0, 'Barbara L. Faulk', '210 W. West Street, Southport, NC, 28461-1326', '1990-08-22'),
('NW-G-272-1', 'G', 272, 1, 'standard', 'available', 4.0, 10.0, 'William J. Broadwell', '105 S. E. 18th Street, Long Beach, NC, 28465-0105', '1987-07-27'),
('NW-G-272-2', 'G', 272, 2, 'standard', 'occupied', 4.0, 10.0, 'William J. Broadwell', '105 S. E. 18th Street, Long Beach, NC, 28465-0105', '1987-07-27'),
('NW-G-272-3', 'G', 272, 3, 'standard', 'occupied', 4.0, 10.0, 'William J. Broadwell', '105 S. E. 18th Street, Long Beach, NC, 28465-0105', '1987-07-27'),
('NW-G-273-1', 'G', 273, 1, 'standard', 'available', 4.0, 10.0, 'Fredrick L. Davis', '2297 Four Seasons Dr., Gambril, MD, 21054-2297', '1989-01-31'),
('NW-G-273-2', 'G', 273, 2, 'standard', 'available', 4.0, 10.0, 'Fredrick L. Davis', '2297 Four Seasons Dr., Gambril, MD, 21054-2297', '1989-01-31'),
('NW-G-273-3', 'G', 273, 3, 'standard', 'occupied', 4.0, 10.0, 'Fredrick L. Davis', '2297 Four Seasons Dr., Gambril, MD, 21054-2297', '1989-01-31'),
('NW-G-274-1', 'G', 274, 1, 'standard', 'available', 4.0, 10.0, 'Lucy Sheldon', '112 N. Lord Street, Southport, NC, 28461-0112', '1984-10-02'),
('NW-G-274-2', 'G', 274, 2, 'standard', 'occupied', 4.0, 10.0, 'Lucy Sheldon', '112 N. Lord Street, Southport, NC, 28461-0112', '1984-10-02'),
('NW-G-274-3', 'G', 274, 3, 'standard', 'occupied', 4.0, 10.0, 'Lucy Sheldon', '112 N. Lord Street, Southport, NC, 28461-0112', '1984-10-02'),
('NW-G-275-1', 'G', 275, 1, 'standard', 'available', 4.0, 10.0, 'Donnie Potter', 'E. Leonard Ave, Southport, NC, 28461', NULL),
('NW-G-275-2', 'G', 275, 2, 'standard', 'available', 4.0, 10.0, 'Donnie Potter', 'E. Leonard Ave, Southport, NC, 28461', NULL),
('NW-G-275-3', 'G', 275, 3, 'standard', 'available', 4.0, 10.0, 'Donnie Potter', 'E. Leonard Ave, Southport, NC, 28461', NULL),
('NW-G-275-4', 'G', 275, 4, 'standard', 'available', 4.0, 10.0, 'Donnie Potter', 'E. Leonard Ave, Southport, NC, 28461', NULL),
('NW-G-276-A-1', 'G', 276, 1, 'standard', 'occupied', 4.0, 10.0, 'Marie Johnson', '617  17th Dr. N.W., Hickory, NC, 28461', '1993-01-25'),
('NW-G-276-B-1', 'G', 276, 1, 'standard', 'available', 4.0, 10.0, 'Troy & Nellie Duncan', '1061 Poplar Rd., Boiling Springs Lakes, NC, 28461', '1985-02-06'),
('NW-G-276-B-2', 'G', 276, 2, 'standard', 'available', 4.0, 10.0, 'Troy & Nellie Duncan', '1061 Poplar Rd., Boiling Springs Lakes, NC, 28461', '1985-02-06'),
('NW-G-276-C-1', 'G', 276, 1, 'standard', 'occupied', 4.0, 10.0, 'Rufus King', 'H & S Trailer Park', NULL),
('NW-G-277-A-1', 'G', 277, 1, 'standard', 'available', 4.0, 10.0, 'Addie McCracken', '529 Jabbertown Road, Southport, NC, 28461', '2013-06-18'),
('NW-G-277-A-2', 'G', 277, 2, 'standard', 'occupied', 4.0, 10.0, 'Addie McCracken', '529 Jabbertown Road, Southport, NC, 28461', '2013-06-18'),
('NW-G-277-B-1', 'G', 277, 1, 'standard', 'available', 4.0, 10.0, 'Tom and Carol Florkiewicz', 'Southport, NC, 28461-', NULL),
('NW-G-277-B-2', 'G', 277, 2, 'standard', 'occupied', 4.0, 10.0, 'Tom and Carol Florkiewicz', 'Southport, NC, 28461-', NULL),
('NW-G-278-1', 'G', 278, 1, 'standard', 'occupied', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-278-2', 'G', 278, 2, 'standard', 'occupied', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-278-3', 'G', 278, 3, 'standard', 'available', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-278-4', 'G', 278, 4, 'standard', 'occupied', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-279-1', 'G', 279, 1, 'standard', 'available', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-279-2', 'G', 279, 2, 'standard', 'available', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-279-3', 'G', 279, 3, 'standard', 'available', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-279-4', 'G', 279, 4, 'standard', 'available', 4.0, 10.0, 'Kenneth Edward Howard', '705 Cape Harbor Drive, Southport, NC, 28461', NULL),
('NW-G-280-A-1', 'G', 280, 1, 'standard', 'occupied', 4.0, 10.0, 'Horace Gibbs', '312 N. Rhett Street, Southport, NC, 28461', NULL),
('NW-G-280-A-2', 'G', 280, 2, 'standard', 'occupied', 4.0, 10.0, 'Horace Gibbs', '312 N. Rhett Street, Southport, NC, 28461', NULL),
('NW-G-280-A-3', 'G', 280, 3, 'standard', 'occupied', 4.0, 10.0, 'Horace Gibbs', '312 N. Rhett Street, Southport, NC, 28461', NULL),
('NW-G-280-B-1', 'G', 280, 1, 'standard', 'available', 4.0, 10.0, NULL, NULL, NULL),
('NW-G-281-1', 'G', 281, 1, 'standard', 'available', 4.0, 10.0, 'Lena May Ray  / Tobler', 'Southport, NC, 28461', NULL),
('NW-G-281-2', 'G', 281, 2, 'standard', 'available', 4.0, 10.0, 'Lena May Ray  / Tobler', 'Southport, NC, 28461', NULL),
('NW-G-281-3', 'G', 281, 3, 'standard', 'available', 4.0, 10.0, 'Lena May Ray  / Tobler', 'Southport, NC, 28461', NULL),
('NW-G-281-4', 'G', 281, 4, 'standard', 'occupied', 4.0, 10.0, 'Lena May Ray  / Tobler', 'Southport, NC, 28461', NULL),
('NW-G-282-1', 'G', 282, 1, 'standard', 'available', 4.0, 10.0, 'John Alfred (C/o Mrs Marzella Raye) Ray', '918 N. Caswell, Southport, NC, 28461', '1987-12-02'),
('NW-G-283-1', 'G', 283, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Louise Frink', '311 N. Rhett Street, Southport, NC, 28461', '1986-03-21'),
('NW-G-284-1', 'G', 284, 1, 'standard', 'available', 4.0, 10.0, 'David J. Floyd', '310 W. 11th Street, Southport, NC, 28461', NULL),
('NW-G-285-1', 'G', 285, 1, 'standard', 'occupied', 4.0, 10.0, 'Lewis H. Fulwood', 'P.O. Box 10124, Southport, NC, 28461', '1989-03-22'),
('NW-G-286-1', 'G', 286, 1, 'standard', 'occupied', 4.0, 10.0, 'Barbara B. Wilson', '1113 Morningside Dr, Kinston, NC, 28461', '1979-07-15'),
('NW-G-287-1', 'G', 287, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard (Pd. By McCo y Greene Funeral Hm) Mills', 'Southport, NC, 28461', '1978-10-30'),
('NW-G-288-1', 'G', 288, 1, 'standard', 'occupied', 4.0, 10.0, 'Eddie McCracken', 'Jabbertown Road, Southport, NC, 28461', '1979-04-23'),
('NW-G-289-1', 'G', 289, 1, 'standard', 'occupied', 4.0, 10.0, 'Alexander Gore,  Jr.', '604 N. Lord Street, Southport, NC, 28461-0604', '1976-09-27'),
('NW-G-290-1', 'G', 290, 1, 'standard', 'occupied', 4.0, 10.0, 'David J. Floyd, Jr.', '310 W. 11th Street, Southport, NC, 28461', '1979-01-16'),
('NW-G-291-1', 'G', 291, 1, 'standard', 'occupied', 4.0, 10.0, 'Katherine Garrett', '105 River Drive, Southport, NC, 28461', '1978-05-01'),
('NW-G-292-1', 'G', 292, 1, 'standard', 'occupied', 4.0, 10.0, 'Warren L. (C/o Johna than Hankins) Hankins', '403 W. St. George St., Southport, NC, 28461', '1978-11-17'),
('NW-G-293-1', 'G', 293, 1, 'standard', 'occupied', 4.0, 10.0, 'Annie Ruth Hankins', 'P.O> Box 10514, Southport, NC, 28461', '1979-11-19'),
('NW-G-294-1', 'G', 294, 1, 'standard', 'occupied', 4.0, 10.0, 'Tom L Frink', '319 Rhett Street, Southport, NC, 28461', '1980-03-18'),
('NW-G-295-1', 'G', 295, 1, 'standard', 'occupied', 4.0, 10.0, 'Christine Henderson', '914 N. Lord Street, Southport, NC, 28461', '1990-07-24'),
('NW-G-296-1', 'G', 296, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Gloria Hankins', 'P.O. Box 10133, Southport, NC, 28461', '1990-07-24'),
('NW-G-296-2', 'G', 296, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Gloria Hankins', 'P.O. Box 10133, Southport, NC, 28461', '1990-07-24'),
('NW-G-297-1', 'G', 297, 1, 'standard', 'occupied', 4.0, 10.0, 'Ben Fullwood', '712 N. Lord Street, Southport, NC, 28461', '1980-06-24'),
('NW-G-297-2', 'G', 297, 2, 'standard', 'occupied', 4.0, 10.0, 'Ben Fullwood', '712 N. Lord Street, Southport, NC, 28461', '1980-06-24'),
('NW-G-298-1', 'G', 298, 1, 'standard', 'occupied', 4.0, 10.0, 'Margaret Brown', '806 N. Clarendon Ave, Southport, NC, 28461', '1981-01-27'),
('NW-G-298-2', 'G', 298, 2, 'standard', 'occupied', 4.0, 10.0, 'Margaret Brown', '806 N. Clarendon Ave, Southport, NC, 28461', '1981-01-27'),
('NW-G-299-1', 'G', 299, 1, 'standard', 'occupied', 4.0, 10.0, 'Ruby White', 'Lot 20 Sea Pines TP, Southport, NC, 28461', '1982-07-22'),
('NW-G-299-2', 'G', 299, 2, 'standard', 'occupied', 4.0, 10.0, 'Ruby White', 'Lot 20 Sea Pines TP, Southport, NC, 28461', '1982-07-22'),
('NW-G-300-1', 'G', 300, 1, 'standard', 'occupied', 4.0, 10.0, 'Katherine Garrett', '105 River Drive, Southport, NC, 28461', '1978-05-01'),
('NW-G-300-2', 'G', 300, 2, 'standard', 'occupied', 4.0, 10.0, 'Katherine Garrett', '105 River Drive, Southport, NC, 28461', '1978-05-01'),
('NW-G-301-1', 'G', 301, 1, 'standard', 'occupied', 4.0, 10.0, 'M. C. Faulk', 'Sea Pines TP, Southport, NC, 28461', NULL),
('NW-G-301-2', 'G', 301, 2, 'standard', 'available', 4.0, 10.0, 'M. C. Faulk', 'Sea Pines TP, Southport, NC, 28461', NULL),
('NW-G-302-1', 'G', 302, 1, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs T. D. Lane', '420 N. Clarendon Ave, Southport, NC, 28461', '1976-03-24'),
('NW-G-302-2', 'G', 302, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs T. D. Lane', '420 N. Clarendon Ave, Southport, NC, 28461', '1976-03-24'),
('NW-G-303-1', 'G', 303, 1, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-303-2', 'G', 303, 2, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-303-3', 'G', 303, 3, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-304-1', 'G', 304, 1, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-304-2', 'G', 304, 2, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-304-3', 'G', 304, 3, 'standard', 'available', 4.0, 10.0, 'James I Marlowe', '8011 Hillcrest Drive, Manassas, VA, 28461', '1978-08-17'),
('NW-G-305-1', 'G', 305, 1, 'standard', 'occupied', 4.0, 10.0, 'Ray S. (C/o Patsy S. Brown) Brown', 'P.O. Box 10853, Southport, NC, 28461', '1987-01-20'),
('NW-G-305-2', 'G', 305, 2, 'standard', 'available', 4.0, 10.0, 'Ray S. (C/o Patsy S. Brown) Brown', 'P.O. Box 10853, Southport, NC, 28461', '1987-01-20'),
('NW-G-305-3', 'G', 305, 3, 'standard', 'available', 4.0, 10.0, 'Ray S. (C/o Patsy S. Brown) Brown', 'P.O. Box 10853, Southport, NC, 28461', '1987-01-20'),
('NW-G-306-1', 'G', 306, 1, 'standard', 'occupied', 4.0, 10.0, 'Julia White', 'Rt 5 Box 184 Flagshi, Southport, NC, 28461', '1992-02-25'),
('NW-G-306-2', 'G', 306, 2, 'standard', 'available', 4.0, 10.0, 'Julia White', 'Rt 5 Box 184 Flagshi, Southport, NC, 28461', '1992-02-25'),
('NW-G-306-3', 'G', 306, 3, 'standard', 'available', 4.0, 10.0, 'Julia White', 'Rt 5 Box 184 Flagshi, Southport, NC, 28461', '1992-02-25'),
('NW-G-307-1', 'G', 307, 1, 'standard', 'available', 4.0, 10.0, 'Debbie Lynn Blackburn', '319 Stuart Ave., Southport, NC, 28461', '1987-10-19'),
('NW-G-307-2', 'G', 307, 2, 'standard', 'occupied', 4.0, 10.0, 'Debbie Lynn Blackburn', '319 Stuart Ave., Southport, NC, 28461', '1987-10-19'),
('NW-G-307-3', 'G', 307, 3, 'standard', 'occupied', 4.0, 10.0, 'Debbie Lynn Blackburn', '319 Stuart Ave., Southport, NC, 28461', '1987-10-19'),
('NW-G-308-1', 'G', 308, 1, 'standard', 'available', 4.0, 10.0, 'William J. Greene', '519 N. Clarendon Ave., Southport, NC, 28461', '1988-01-05'),
('NW-G-308-2', 'G', 308, 2, 'standard', 'occupied', 4.0, 10.0, 'William J. Greene', '519 N. Clarendon Ave., Southport, NC, 28461', '1988-01-05'),
('NW-G-308-3', 'G', 308, 3, 'standard', 'occupied', 4.0, 10.0, 'William J. Greene', '519 N. Clarendon Ave., Southport, NC, 28461', '1988-01-05'),
('NW-G-309-1', 'G', 309, 1, 'standard', 'occupied', 4.0, 10.0, 'Curtis Scaggs', '109 N.E. 21st St, Long Beach, NC, 28465', '1985-09-10'),
('NW-G-309-2', 'G', 309, 2, 'standard', 'occupied', 4.0, 10.0, 'Curtis Scaggs', '109 N.E. 21st St, Long Beach, NC, 28465', '1985-09-10'),
('NW-G-309-3', 'G', 309, 3, 'standard', 'occupied', 4.0, 10.0, 'Curtis Scaggs', '109 N.E. 21st St, Long Beach, NC, 28465', '1985-09-10'),
('NW-G-310-1', 'G', 310, 1, 'standard', 'available', 4.0, 10.0, 'Raymond W. Cullis', '309 W. Brown Street, Southport, NC, 28461', '1992-02-28'),
('NW-G-310-2', 'G', 310, 2, 'standard', 'occupied', 4.0, 10.0, 'Raymond W. Cullis', '309 W. Brown Street, Southport, NC, 28461', '1992-02-28'),
('NW-G-310-3', 'G', 310, 3, 'standard', 'occupied', 4.0, 10.0, 'Raymond W. Cullis', '309 W. Brown Street, Southport, NC, 28461', '1992-02-28'),
('NW-G-310-4', 'G', 310, 4, 'standard', 'available', 4.0, 10.0, 'Raymond W. Cullis', '309 W. Brown Street, Southport, NC, 28461', '1992-02-28'),
('NW-G-311-1', 'G', 311, 1, 'standard', 'available', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-311-2', 'G', 311, 2, 'standard', 'occupied', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-311-3', 'G', 311, 3, 'standard', 'occupied', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-311-4', 'G', 311, 4, 'standard', 'available', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-312-1', 'G', 312, 1, 'standard', 'available', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-312-2', 'G', 312, 2, 'standard', 'occupied', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-312-3', 'G', 312, 3, 'standard', 'available', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-312-4', 'G', 312, 4, 'standard', 'available', 4.0, 10.0, 'Barbara Sellers', '801 N. Atlantic Ave., Southport, NC, 28461', '1992-12-08'),
('NW-G-313-1', 'G', 313, 1, 'standard', 'available', 4.0, 10.0, 'Cecil & Eula Mae Franck', '503 N. Atlantic Ave, Southport, NC, 28461', '1986-05-21'),
('NW-G-313-2', 'G', 313, 2, 'standard', 'occupied', 4.0, 10.0, 'Cecil & Eula Mae Franck', '503 N. Atlantic Ave, Southport, NC, 28461', '1986-05-21'),
('NW-G-313-3', 'G', 313, 3, 'standard', 'occupied', 4.0, 10.0, 'Cecil & Eula Mae Franck', '503 N. Atlantic Ave, Southport, NC, 28461', '1986-05-21'),
('NW-G-313-4', 'G', 313, 4, 'standard', 'available', 4.0, 10.0, 'Cecil & Eula Mae Franck', '503 N. Atlantic Ave, Southport, NC, 28461', '1986-05-21'),
('NW-G-314-A-1', 'G', 314, 1, 'standard', 'available', 4.0, 10.0, 'Bonnie John Bray  / Keifer', 'Clarendon, Southport, NC, 28461', '2013-03-21'),
('NW-G-314-A-2', 'G', 314, 2, 'standard', 'available', 4.0, 10.0, 'Bonnie John Bray  / Keifer', 'Clarendon, Southport, NC, 28461', '2013-03-21'),
('NW-G-314-B-1', 'G', 314, 1, 'standard', 'occupied', 4.0, 10.0, 'Troy & Nellie Dunkin', '1061 Poplar Rd Rt. 5, Boiling Spring Lakes, NC, 28461', '1985-02-06'),
('NW-G-314-B-2', 'G', 314, 2, 'standard', 'occupied', 4.0, 10.0, 'Troy & Nellie Dunkin', '1061 Poplar Rd Rt. 5, Boiling Spring Lakes, NC, 28461', '1985-02-06'),
('NW-G-315-1', 'G', 315, 1, 'standard', 'available', 4.0, 10.0, 'Nola Feilds', 'State Rd 1538, Southport, NC, 28461', '1986-12-05'),
('NW-G-315-2', 'G', 315, 2, 'standard', 'occupied', 4.0, 10.0, 'Nola Feilds', 'State Rd 1538, Southport, NC, 28461', '1986-12-05'),
('NW-G-315-3', 'G', 315, 3, 'standard', 'available', 4.0, 10.0, 'Nola Feilds', 'State Rd 1538, Southport, NC, 28461', '1986-12-05'),
('NW-G-315-4', 'G', 315, 4, 'standard', 'available', 4.0, 10.0, 'Nola Feilds', 'State Rd 1538, Southport, NC, 28461', '1986-12-05'),
('NW-G-316-1', 'G', 316, 1, 'standard', 'occupied', 4.0, 10.0, 'Charles & Rosa Miller', 'Hwy 133, Southport, NC, 28461', '1986-11-24'),
('NW-G-316-2', 'G', 316, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles & Rosa Miller', 'Hwy 133, Southport, NC, 28461', '1986-11-24'),
('NW-G-316-3', 'G', 316, 3, 'standard', 'occupied', 4.0, 10.0, 'Charles & Rosa Miller', 'Hwy 133, Southport, NC, 28461', '1986-11-24'),
('NW-G-316-4', 'G', 316, 4, 'standard', 'occupied', 4.0, 10.0, 'Charles & Rosa Miller', 'Hwy 133, Southport, NC, 28461', '1986-11-24'),
('NW-G-317-1', 'G', 317, 1, 'standard', 'occupied', 4.0, 10.0, 'Alton Johnson', 'N. Howe Street, Southport, NC, 28461', '1975-10-08'),
('NW-G-317-2', 'G', 317, 2, 'standard', 'occupied', 4.0, 10.0, 'Alton Johnson', 'N. Howe Street, Southport, NC, 28461', '1975-10-08'),
('NW-G-318-1', 'G', 318, 1, 'standard', 'occupied', 4.0, 10.0, 'Wallace Thompson', 'Southport, NC, 28461', '1978-04-25'),
('NW-G-318-2', 'G', 318, 2, 'standard', 'occupied', 4.0, 10.0, 'Wallace Thompson', 'Southport, NC, 28461', '1978-04-25'),
('NW-G-319-1', 'G', 319, 1, 'standard', 'occupied', 4.0, 10.0, 'John A. Bowen', '62nd Street East, Long Beach, NC, 28465', '1982-02-10'),
('NW-G-319-2', 'G', 319, 2, 'standard', 'occupied', 4.0, 10.0, 'John A. Bowen', '62nd Street East, Long Beach, NC, 28465', '1982-02-10'),
('NW-G-320-1', 'G', 320, 1, 'standard', 'occupied', 4.0, 10.0, 'Eula Mae Wilmoth', '315 N. Clarendon Ave, Southport, NC, 28461', '1983-03-02'),
('NW-G-320-2', 'G', 320, 2, 'standard', 'occupied', 4.0, 10.0, 'Eula Mae Wilmoth', '315 N. Clarendon Ave, Southport, NC, 28461', '1983-03-02'),
('NW-G-321-1', 'G', 321, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Frank Phillips', '1704 W. Yacht Drive, Long Beach, NC, 28465', '1982-09-20'),
('NW-G-321-2', 'G', 321, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. Frank Phillips', '1704 W. Yacht Drive, Long Beach, NC, 28465', '1982-09-20'),
('NW-G-322-1', 'G', 322, 1, 'standard', 'occupied', 4.0, 10.0, 'H. L. (C/o H. L. Bynum, Jr.) Bynum,  Sr.', '20 Foxfire Trace, Caswell Beach, NC, 28465', '1980-12-22'),
('NW-G-322-2', 'G', 322, 2, 'standard', 'occupied', 4.0, 10.0, 'H. L. (C/o H. L. Bynum, Jr.) Bynum,  Sr.', '20 Foxfire Trace, Caswell Beach, NC, 28465', '1980-12-22'),
('NW-G-323-1', 'G', 323, 1, 'standard', 'occupied', 4.0, 10.0, 'Frankie (C/o Clarie McNeill) Kane', '1017 E. Moore Street, Southport, NC, 28461', '1984-06-26'),
('NW-G-323-2', 'G', 323, 2, 'standard', 'occupied', 4.0, 10.0, 'Frankie (C/o Clarie McNeill) Kane', '1017 E. Moore Street, Southport, NC, 28461', '1984-06-26'),
('NW-G-324-1', 'G', 324, 1, 'standard', 'occupied', 4.0, 10.0, 'Elijah Hewett', '817 N. Lord Street, Southport, NC, 28461', '1982-08-19'),
('NW-G-324-2', 'G', 324, 2, 'standard', 'available', 4.0, 10.0, 'Elijah Hewett', '817 N. Lord Street, Southport, NC, 28461', '1982-08-19'),
('NW-G-325-1', 'G', 325, 1, 'standard', 'occupied', 4.0, 10.0, 'Harold & Victoria Aldridge', '312 W. West Street, Southport, 28461', '1989-10-24'),
('NW-G-325-2', 'G', 325, 2, 'standard', 'occupied', 4.0, 10.0, 'Harold & Victoria Aldridge', '312 W. West Street, Southport, 28461', '1989-10-24'),
('NW-G-326-1', 'G', 326, 1, 'standard', 'occupied', 4.0, 10.0, 'Vivian Atkinson', '1201 N. Howe Street, Southport, NC, 28461', '1981-06-03'),
('NW-G-326-2', 'G', 326, 2, 'standard', 'occupied', 4.0, 10.0, 'Vivian Atkinson', '1201 N. Howe Street, Southport, NC, 28461', '1981-06-03'),
('NW-G-327-1', 'G', 327, 1, 'standard', 'available', 4.0, 10.0, 'Larry Price', 'Southport, 28461', '1981-03-26'),
('NW-G-327-2', 'G', 327, 2, 'standard', 'available', 4.0, 10.0, 'Larry Price', 'Southport, 28461', '1981-03-26'),
('NW-G-328-1', 'G', 328, 1, 'standard', 'available', 4.0, 10.0, 'Larry Price', 'Southport, NC, 28461', '1981-03-26'),
('NW-G-328-2', 'G', 328, 2, 'standard', 'available', 4.0, 10.0, 'Larry Price', 'Southport, NC, 28461', '1981-03-26'),
('NW-G-329-1', 'G', 329, 1, 'standard', 'occupied', 4.0, 10.0, 'David K. Shaw', '201 N.E. 70th Street, Long Beach, NC, 28465', '1981-01-05'),
('NW-G-329-2', 'G', 329, 2, 'standard', 'occupied', 4.0, 10.0, 'David K. Shaw', '201 N.E. 70th Street, Long Beach, NC, 28465', '1981-01-05'),
('NW-G-330-1', 'G', 330, 1, 'standard', 'occupied', 4.0, 10.0, 'Norvell Lykins', '203 E. Brown Street, Southport, NC, 28461', '1978-07-14'),
('NW-G-330-2', 'G', 330, 2, 'standard', 'occupied', 4.0, 10.0, 'Norvell Lykins', '203 E. Brown Street, Southport, NC, 28461', '1978-07-14'),
('NW-G-331-1', 'G', 331, 1, 'standard', 'occupied', 4.0, 10.0, 'William S. & Nadine C. Byrd', '711 Longleaf Drive, Southport, NC, 28461', '1987-04-21'),
('NW-G-331-2', 'G', 331, 2, 'standard', 'occupied', 4.0, 10.0, 'William S. & Nadine C. Byrd', '711 Longleaf Drive, Southport, NC, 28461', '1987-04-21'),
('NW-G-331-3', 'G', 331, 3, 'standard', 'available', 4.0, 10.0, 'William S. & Nadine C. Byrd', '711 Longleaf Drive, Southport, NC, 28461', '1987-04-21'),
('NW-G-332-1', 'G', 332, 1, 'standard', 'occupied', 4.0, 10.0, 'G. W. McGlammery', 'Hwy 211, Southport, NC, 28461', '1979-04-06'),
('NW-G-332-2', 'G', 332, 2, 'standard', 'occupied', 4.0, 10.0, 'G. W. McGlammery', 'Hwy 211, Southport, NC, 28461', '1979-04-06'),
('NW-G-332-3', 'G', 332, 3, 'standard', 'occupied', 4.0, 10.0, 'G. W. McGlammery', 'Hwy 211, Southport, NC, 28461', '1979-04-06'),
('NW-G-333-1', 'G', 333, 1, 'standard', 'occupied', 4.0, 10.0, 'Barbara McLaurin Smith', '502 Brunswick Street, Southport, NC, 28461', '1986-03-21'),
('NW-G-333-2', 'G', 333, 2, 'standard', 'available', 4.0, 10.0, 'Barbara McLaurin Smith', '502 Brunswick Street, Southport, NC, 28461', '1986-03-21'),
('NW-G-333-3', 'G', 333, 3, 'standard', 'occupied', 4.0, 10.0, 'Barbara McLaurin Smith', '502 Brunswick Street, Southport, NC, 28461', '1986-03-21'),
('NW-G-334-1', 'G', 334, 1, 'standard', 'available', 4.0, 10.0, 'Margaret R. Leverett', '250 Funston Rd, Boiling Spring Lakes, NC, 28461', '1990-09-27'),
('NW-G-334-2', 'G', 334, 2, 'standard', 'occupied', 4.0, 10.0, 'Margaret R. Leverett', '250 Funston Rd, Boiling Spring Lakes, NC, 28461', '1990-09-27'),
('NW-G-334-3', 'G', 334, 3, 'standard', 'occupied', 4.0, 10.0, 'Margaret R. Leverett', '250 Funston Rd, Boiling Spring Lakes, NC, 28461', '1990-09-27'),
('NW-G-335-1', 'G', 335, 1, 'standard', 'occupied', 4.0, 10.0, 'Frankie Rogers', 'H & S Trailer Park, Southport, NC, 28461', '1992-01-29'),
('NW-G-335-2', 'G', 335, 2, 'standard', 'occupied', 4.0, 10.0, 'Frankie Rogers', 'H & S Trailer Park, Southport, NC, 28461', '1992-01-29'),
('NW-G-335-3', 'G', 335, 3, 'standard', 'occupied', 4.0, 10.0, 'Frankie Rogers', 'H & S Trailer Park, Southport, NC, 28461', '1992-01-29'),
('NW-G-336-1', 'G', 336, 1, 'standard', 'occupied', 4.0, 10.0, 'Lillie Mae Roberts', '317 N. Rhett Street, Southport, NC, 28461', '1990-07-12'),
('NW-G-336-2', 'G', 336, 2, 'standard', 'occupied', 4.0, 10.0, 'Lillie Mae Roberts', '317 N. Rhett Street, Southport, NC, 28461', '1990-07-12'),
('NW-G-336-3', 'G', 336, 3, 'standard', 'occupied', 4.0, 10.0, 'Lillie Mae Roberts', '317 N. Rhett Street, Southport, NC, 28461', '1990-07-12'),
('NW-G-337-1', 'G', 337, 1, 'standard', 'occupied', 4.0, 10.0, 'Thomas deVaux Fredricks', '806 E. Moore Street, Southport, NC, 28461', '1990-07-17'),
('NW-G-337-2', 'G', 337, 2, 'standard', 'occupied', 4.0, 10.0, 'Thomas deVaux Fredricks', '806 E. Moore Street, Southport, NC, 28461', '1990-07-17'),
('NW-G-337-3', 'G', 337, 3, 'standard', 'available', 4.0, 10.0, 'Thomas deVaux Fredricks', '806 E. Moore Street, Southport, NC, 28461', '1990-07-17'),
('NW-G-338-1', 'G', 338, 1, 'standard', 'available', 4.0, 10.0, 'Bruce & Monda Failor', '136 Park Ave, Southport, NC, 28461', '1992-08-25'),
('NW-G-338-2', 'G', 338, 2, 'standard', 'available', 4.0, 10.0, 'Bruce & Monda Failor', '136 Park Ave, Southport, NC, 28461', '1992-08-25'),
('NW-G-338-3', 'G', 338, 3, 'standard', 'occupied', 4.0, 10.0, 'Bruce & Monda Failor', '136 Park Ave, Southport, NC, 28461', '1992-08-25'),
('NW-G-338-4', 'G', 338, 4, 'standard', 'occupied', 4.0, 10.0, 'Bruce & Monda Failor', '136 Park Ave, Southport, NC, 28461', '1992-08-25'),
('NW-G-339-1', 'G', 339, 1, 'standard', 'occupied', 4.0, 10.0, 'Elizabeth F. Phillips', '111 10th St. N.E., Long Beach, NC, 28465', '1993-08-09'),
('NW-G-339-2', 'G', 339, 2, 'standard', 'occupied', 4.0, 10.0, 'Elizabeth F. Phillips', '111 10th St. N.E., Long Beach, NC, 28465', '1993-08-09'),
('NW-G-339-3', 'G', 339, 3, 'standard', 'available', 4.0, 10.0, 'Elizabeth F. Phillips', '111 10th St. N.E., Long Beach, NC, 28465', '1993-08-09'),
('NW-G-339-4', 'G', 339, 4, 'standard', 'available', 4.0, 10.0, 'Elizabeth F. Phillips', '111 10th St. N.E., Long Beach, NC, 28465', '1993-08-09'),
('NW-G-340-A-1', 'G', 340, 1, 'standard', 'occupied', 4.0, 10.0, 'Henry J & Susan D. Kaufman', '819 E. Moore Street, Southport, NC, 28461', '1994-03-15'),
('NW-G-340-A-2', 'G', 340, 2, 'standard', 'occupied', 4.0, 10.0, 'Henry J & Susan D. Kaufman', '819 E. Moore Street, Southport, NC, 28461', '1994-03-15'),
('NW-G-340-B-1', 'G', 340, 1, 'standard', 'available', 4.0, 10.0, 'Glen & Mary Clatterbaugh', '1049 Pine Crest Road, Boiling Spring Lakes, NC, 28461', '1993-09-13'),
('NW-G-340-B-2', 'G', 340, 2, 'standard', 'occupied', 4.0, 10.0, 'Glen & Mary Clatterbaugh', '1049 Pine Crest Road, Boiling Spring Lakes, NC, 28461', '1993-09-13'),
('NW-G-341-A-1', 'G', 341, 1, 'standard', 'occupied', 4.0, 10.0, 'Virginia H. Irvine', '234 N. E. 74th St., Long Beach, NC, 28465', '1993-10-01'),
('NW-G-341-A-2', 'G', 341, 2, 'standard', 'occupied', 4.0, 10.0, 'Virginia H. Irvine', '234 N. E. 74th St., Long Beach, NC, 28465', '1993-10-01'),
('NW-G-341-B-1', 'G', 341, 1, 'standard', 'occupied', 4.0, 10.0, 'William R. & Belle P. Dancey', '209 Womble Street, Yaupon Beach, NC, 28465', '1993-09-13'),
('NW-G-341-B-2', 'G', 341, 2, 'standard', 'occupied', 4.0, 10.0, 'William R. & Belle P. Dancey', '209 Womble Street, Yaupon Beach, NC, 28465', '1993-09-13'),
('NW-G-342-A-1', 'G', 342, 1, 'standard', 'occupied', 4.0, 10.0, 'Anthony Leroy Davis', '206 W. St. George St., Southport, NC, 28461', NULL),
('NW-G-342-A-2', 'G', 342, 2, 'standard', 'occupied', 4.0, 10.0, 'Anthony Leroy Davis', '206 W. St. George St., Southport, NC, 28461', NULL),
('NW-G-342-B-1', 'G', 342, 1, 'standard', 'occupied', 4.0, 10.0, 'Alfred Hankins', 'Rt 2 Box 220, Bolivia, NC, 28461', '1994-01-11'),
('NW-G-342-B-2', 'G', 342, 2, 'standard', 'occupied', 4.0, 10.0, 'Alfred Hankins', 'Rt 2 Box 220, Bolivia, NC, 28461', '1994-01-11'),
('NW-G-343-A-1', 'G', 343, 1, 'standard', 'available', 4.0, 10.0, 'Eddie A. Davis', '1005 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-343-A-2', 'G', 343, 2, 'standard', 'available', 4.0, 10.0, 'Eddie A. Davis', '1005 N. Caswell Ave, Southport, NC, 28461', NULL),
('NW-G-343-B-1', 'G', 343, 1, 'standard', 'available', 4.0, 10.0, 'Eddie A. Davis', '1005 N  Caswell Ave, Southport, NC, 28461-', NULL),
('NW-G-343-B-2', 'G', 343, 2, 'standard', 'available', 4.0, 10.0, 'Eddie A. Davis', '1005 N  Caswell Ave, Southport, NC, 28461-', NULL),
('NW-G-344---1', 'G', 344, 1, 'standard', 'available', 4.0, 10.0, 'Berris J. Duncan', 'Hwy 133, Southport, NC, 28461', '1992-03-02'),
('NW-G-344---2', 'G', 344, 2, 'standard', 'occupied', 4.0, 10.0, 'Berris J. Duncan', 'Hwy 133, Southport, NC, 28461', '1992-03-02'),
('NW-G-344---3', 'G', 344, 3, 'standard', 'occupied', 4.0, 10.0, 'Berris J. Duncan', 'Hwy 133, Southport, NC, 28461', '1992-03-02'),
('NW-G-344---4', 'G', 344, 4, 'standard', 'occupied', 4.0, 10.0, 'Berris J. Duncan', 'Hwy 133, Southport, NC, 28461', '1992-03-02'),
('NW-G-345---1', 'G', 345, 1, 'standard', 'occupied', 4.0, 10.0, 'John (C/o Herman Floyd Sr.) Hardem', '619 N. Fodale Ave, Southport, NC, 28461', '1986-02-18'),
('NW-G-346-1', 'G', 346, 1, 'standard', 'occupied', 4.0, 10.0, 'LLoyd L. (C/o Mrs. Sherrill P. Lubinsky Parker', '253 E. 11th St, Southport, NC, 28461', '1986-04-24'),
('NW-G-347-1', 'G', 347, 1, 'standard', 'occupied', 4.0, 10.0, 'Emory (C/o Ronald E. Atkinson) Russell', '253-E E 11th Street, Southport, NC, 28461', '1986-04-24'),
('NW-G-348-1', 'G', 348, 1, 'standard', 'occupied', 4.0, 10.0, 'Lenora M. Gore', '705 N. Caswell Ave., Southport, NC, 28461', '1987-03-17'),
('NW-G-349-1', 'G', 349, 1, 'standard', 'occupied', 4.0, 10.0, 'Lenora M. Gore', '705 N. Caswell Ave., Southport, NC, 28461', '1987-03-17'),
('NW-G-350-1', 'G', 350, 1, 'standard', 'occupied', 4.0, 10.0, 'Peggy Parker', '821 N Lord Street, Southport, NC, 28461', '2013-06-20'),
('NW-G-351-1', 'G', 351, 1, 'standard', 'occupied', 4.0, 10.0, 'Louis Leon McMillian', 'Pinecrest Dr, Wilmington, NC, 28401', '2013-04-03'),
('NW-G-352-1', 'G', 352, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James D. Pierce', '320 College Street, Southport, NC, 28461', '1982-05-14'),
('NW-G-353-1', 'G', 353, 1, 'standard', 'available', 4.0, 10.0, 'Joseph W. Pierce', '1207 E. Moore St, Southport, NC, 28461', '1982-01-15'),
('NW-G-354-1', 'G', 354, 1, 'standard', 'occupied', 4.0, 10.0, 'Doris Mae Lee', '703 E. Moore Street, Southport, NC, 28461', '1988-05-16'),
('NW-G-355-1', 'G', 355, 1, 'standard', 'occupied', 4.0, 10.0, 'William Edwars Parker, Sr.', '812 N. Lord Street, Southport, NC, 28461', '1988-09-30'),
('NW-G-356-1', 'G', 356, 1, 'standard', 'available', 4.0, 10.0, 'Ronald E. Atkinson', '353-E E. 11th Street, Southport, NC, 28461', '1988-09-08'),
('NW-G-357-1', 'G', 357, 1, 'standard', 'occupied', 4.0, 10.0, 'George Michael Swain', '111 N. Davis Street, Southport, NC, 28461', '1976-07-06'),
('NW-G-358-1', 'G', 358, 1, 'standard', 'available', 4.0, 10.0, 'Arthur J. McCay', 'Southport, NC, 28461', '1979-06-15'),
('NW-G-359-1', 'G', 359, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. D. M. Jarrell', 'Hwy 211 Doser Cut Off, Southport, NC, 28461', '1975-08-13'),
('NW-G-359-2', 'G', 359, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. D. M. Jarrell', 'Hwy 211 Doser Cut Off, Southport, NC, 28461', '1975-08-13'),
('NW-G-360-1', 'G', 360, 1, 'standard', 'occupied', 4.0, 10.0, 'George Michael Swain', '111 N. Davis Street, Southport, NC, 28461', '1975-09-18'),
('NW-G-360-2', 'G', 360, 2, 'standard', 'occupied', 4.0, 10.0, 'George Michael Swain', '111 N. Davis Street, Southport, NC, 28461', '1975-09-18'),
('NW-G-361-1', 'G', 361, 1, 'standard', 'occupied', 4.0, 10.0, 'Eva Milewski', 'Southport, NC, 28461', '1975-11-24'),
('NW-G-361-2', 'G', 361, 2, 'standard', 'occupied', 4.0, 10.0, 'Eva Milewski', 'Southport, NC, 28461', '1975-11-24'),
('NW-G-362-1', 'G', 362, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs.Jerry Calhoun', 'Caswell Beack, NC, 28465', '1977-03-09'),
('NW-G-362-2', 'G', 362, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs.Jerry Calhoun', 'Caswell Beack, NC, 28465', '1977-03-09'),
('NW-G-363-1', 'G', 363, 1, 'standard', 'available', 4.0, 10.0, 'G. A. McMillion', 'P.O. Box 10955, Southport, NC, 28461', '1978-07-07'),
('NW-G-363-2', 'G', 363, 2, 'standard', 'occupied', 4.0, 10.0, 'G. A. McMillion', 'P.O. Box 10955, Southport, NC, 28461', '1978-07-07'),
('NW-G-364-1', 'G', 364, 1, 'standard', 'occupied', 4.0, 10.0, 'Joseph W. Pierce', '1207 E. Moore St, Southport, NC, 28461', '1981-10-22'),
('NW-G-364-2', 'G', 364, 2, 'standard', 'occupied', 4.0, 10.0, 'Joseph W. Pierce', '1207 E. Moore St, Southport, NC, 28461', '1981-10-22'),
('NW-G-365-1', 'G', 365, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. James Davis Pierce', '320 College Street, Southport, NC, 28461', '1982-10-19'),
('NW-G-365-2', 'G', 365, 2, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. James Davis Pierce', '320 College Street, Southport, NC, 28461', '1982-10-19'),
('NW-G-366-1', 'G', 366, 1, 'standard', 'occupied', 4.0, 10.0, 'James Walker & Elizabeth C. Smith', '281 S. Shore Drive, Boiling Spring Lakes, NC, 28461', '1988-12-20'),
('NW-G-366-2', 'G', 366, 2, 'standard', 'occupied', 4.0, 10.0, 'James Walker & Elizabeth C. Smith', '281 S. Shore Drive, Boiling Spring Lakes, NC, 28461', '1988-12-20'),
('NW-G-366-3', 'G', 366, 3, 'standard', 'available', 4.0, 10.0, 'James Walker & Elizabeth C. Smith', '281 S. Shore Drive, Boiling Spring Lakes, NC, 28461', '1988-12-20'),
('NW-G-367-1', 'G', 367, 1, 'standard', 'occupied', 4.0, 10.0, 'Cecil E. & Bernice Becraft', '709 Longleaf Drive, Southport, NC, 28461', NULL),
('NW-G-367-2', 'G', 367, 2, 'standard', 'occupied', 4.0, 10.0, 'Cecil E. & Bernice Becraft', '709 Longleaf Drive, Southport, NC, 28461', NULL),
('NW-G-367-3', 'G', 367, 3, 'standard', 'occupied', 4.0, 10.0, 'Cecil E. & Bernice Becraft', '709 Longleaf Drive, Southport, NC, 28461', NULL),
('NW-G-368-1', 'G', 368, 1, 'standard', 'available', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-368-2', 'G', 368, 2, 'standard', 'occupied', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-368-3', 'G', 368, 3, 'standard', 'available', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-369-1', 'G', 369, 1, 'standard', 'available', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-369-2', 'G', 369, 2, 'standard', 'available', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-369-3', 'G', 369, 3, 'standard', 'available', 4.0, 10.0, 'Deborah Burris', '1006 E Moore Street, Southport, NC, 28461', '2013-03-12'),
('NW-G-370-1', 'G', 370, 1, 'standard', 'available', 4.0, 10.0, 'Herbert & Flossie S. Parker, Jr.', '407 N. Clarden Ave, Southport, NC, 28461', '1991-07-29'),
('NW-G-370-2', 'G', 370, 2, 'standard', 'occupied', 4.0, 10.0, 'Herbert & Flossie S. Parker, Jr.', '407 N. Clarden Ave, Southport, NC, 28461', '1991-07-29'),
('NW-G-370-3', 'G', 370, 3, 'standard', 'occupied', 4.0, 10.0, 'Herbert & Flossie S. Parker, Jr.', '407 N. Clarden Ave, Southport, NC, 28461', '1991-07-29'),
('NW-G-371-1', 'G', 371, 1, 'standard', 'available', 4.0, 10.0, 'Ellen Champion', 'P.O. Box 236, Long Beach, NC, 28465', '1990-10-01'),
('NW-G-371-2', 'G', 371, 2, 'standard', 'occupied', 4.0, 10.0, 'Ellen Champion', 'P.O. Box 236, Long Beach, NC, 28465', '1990-10-01'),
('NW-G-371-3', 'G', 371, 3, 'standard', 'occupied', 4.0, 10.0, 'Ellen Champion', 'P.O. Box 236, Long Beach, NC, 28465', '1990-10-01'),
('NW-G-372-1', 'G', 372, 1, 'standard', 'available', 4.0, 10.0, 'J. W. Edwards', '210 Norton Street, Yaupon Beach, NC, 28461', '1985-01-21'),
('NW-G-372-2', 'G', 372, 2, 'standard', 'available', 4.0, 10.0, 'J. W. Edwards', '210 Norton Street, Yaupon Beach, NC, 28461', '1985-01-21'),
('NW-G-372-3', 'G', 372, 3, 'standard', 'occupied', 4.0, 10.0, 'J. W. Edwards', '210 Norton Street, Yaupon Beach, NC, 28461', '1985-01-21'),
('NW-G-373-1', 'G', 373, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Jones', '109 River Drive, Southport, NC, 28461', '1993-10-27'),
('NW-G-373-2', 'G', 373, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert A. Jones', '109 River Drive, Southport, NC, 28461', '1993-10-27'),
('NW-G-373-3', 'G', 373, 3, 'standard', 'occupied', 4.0, 10.0, 'Robert A. Jones', '109 River Drive, Southport, NC, 28461', '1993-10-27'),
('NW-G-373-4', 'G', 373, 4, 'standard', 'available', 4.0, 10.0, 'Robert A. Jones', '109 River Drive, Southport, NC, 28461', '1993-10-27'),
('NW-G-374-1', 'G', 374, 1, 'standard', 'occupied', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-374-2', 'G', 374, 2, 'standard', 'occupied', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-374-3', 'G', 374, 3, 'standard', 'occupied', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-374-4', 'G', 374, 4, 'standard', 'available', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-375-1', 'G', 375, 1, 'standard', 'available', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-375-2', 'G', 375, 2, 'standard', 'available', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-375-3', 'G', 375, 3, 'standard', 'available', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-375-4', 'G', 375, 4, 'standard', 'available', 4.0, 10.0, 'Carlyle H. Richards', '211 W. 11th Street, Southport, NC, 28461', '1983-03-03'),
('NW-G-376-1', 'G', 376, 1, 'standard', 'occupied', 4.0, 10.0, 'Gladys Clary', '823 Cape Harbor Drive, Southport, NC, 28461', '1994-06-06'),
('NW-G-376-2', 'G', 376, 2, 'standard', 'occupied', 4.0, 10.0, 'Gladys Clary', '823 Cape Harbor Drive, Southport, NC, 28461', '1994-06-06'),
('NW-G-376-3', 'G', 376, 3, 'standard', 'available', 4.0, 10.0, 'Gladys Clary', '823 Cape Harbor Drive, Southport, NC, 28461', '1994-06-06'),
('NW-G-376-4', 'G', 376, 4, 'standard', 'occupied', 4.0, 10.0, 'Gladys Clary', '823 Cape Harbor Drive, Southport, NC, 28461', '1994-06-06'),
('NW-G-377-1', 'G', 377, 1, 'standard', 'available', 4.0, 10.0, 'Ellen Sherrod', '330 Airport Road, Southport, NC, 28461', '1979-06-26'),
('NW-G-377-2', 'G', 377, 2, 'standard', 'available', 4.0, 10.0, 'Ellen Sherrod', '330 Airport Road, Southport, NC, 28461', '1979-06-26'),
('NW-G-377-3', 'G', 377, 3, 'standard', 'occupied', 4.0, 10.0, 'Ellen Sherrod', '330 Airport Road, Southport, NC, 28461', '1979-06-26'),
('NW-G-377-4', 'G', 377, 4, 'standard', 'occupied', 4.0, 10.0, 'Ellen Sherrod', '330 Airport Road, Southport, NC, 28461', '1979-06-26'),
('NW-G-378-1', 'G', 378, 1, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-378-2', 'G', 378, 2, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-378-3', 'G', 378, 3, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-378-4', 'G', 378, 4, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-379-1', 'G', 379, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-379-2', 'G', 379, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-379-3', 'G', 379, 3, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-379-4', 'G', 379, 4, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-380-1', 'G', 380, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-381-1', 'G', 381, 1, 'standard', 'available', 4.0, 10.0, 'Mary E. McHose Strickland', '222 South River Dr., Southport, NC, 28461', '1975-03-13'),
('NW-G-382-1', 'G', 382, 1, 'standard', 'occupied', 4.0, 10.0, 'Ellen (Dorset) Sherrod', '330 Airport Road, Southport, NC, 28461', '1979-06-26'),
('NW-G-383-1', 'G', 383, 1, 'standard', 'occupied', 4.0, 10.0, 'Melvin Lee (C/o Dorothy Stewart) Stewart', '723 N. Clarendon Ave., Southport, NC, 28461', '1988-08-01'),
('NW-G-384-1', 'G', 384, 1, 'standard', 'available', 4.0, 10.0, 'Dan (C/0 Robert McMillan) McMillan', 'Rt. 4 Box 68, Leland, NC, 28461', '1988-08-10'),
('NW-G-385-1', 'G', 385, 1, 'standard', 'occupied', 4.0, 10.0, 'Jonathan Hankins', '403 W. St. George St., Southport, NC, 28461', '1988-10-14'),
('NW-G-386-1', 'G', 386, 1, 'standard', 'occupied', 4.0, 10.0, 'Richard Earl Mullins', 'P.O. Box 10043, Southport, NC, 28461', NULL)
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section G
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Louis', 'Brunner', NULL, '1925-09-11', '2013-04-28', NULL
FROM plots WHERE plot_number = 'NW-G-005-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', 'J.', 'Barksdale', NULL, '1924-03-19', '1991-03-30', NULL
FROM plots WHERE plot_number = 'NW-G-007-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Melvin', 'R. "Bud', 'Barksdale', NULL, '1927-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-008-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', NULL, 'Cook', 'Empie', '1915-06-27', '1987-12-16', NULL
FROM plots WHERE plot_number = 'NW-G-010-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Elmore', 'Smith', NULL, '1919-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-011-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Foster', 'Burritt', 'Eaton', NULL, '1917-10-08', '1984-02-18', NULL
FROM plots WHERE plot_number = 'NW-G-012-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Langdon', 'Stearns', NULL, '1907-06-17', '1981-10-05', NULL
FROM plots WHERE plot_number = 'NW-G-013-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nell', NULL, 'Stearns', 'Watts', '1909-01-17', '1997-09-25', NULL
FROM plots WHERE plot_number = 'NW-G-013-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellis', 'T. "Junior', 'Herring', NULL, '1944-01-01', '1972-07-23', NULL
FROM plots WHERE plot_number = 'NW-G-014-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elias', 'Jesse (Jimmy)', 'Prevatte', NULL, '1911-09-20', '2004-02-02', NULL
FROM plots WHERE plot_number = 'NW-G-015-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Amaretta', 'Bannett', 'Prevatte', 'Bannett', '1924-09-01', '2020-06-04', NULL
FROM plots WHERE plot_number = 'NW-G-015-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Van Wart', 'Dutcher', NULL, '1899-10-31', '1976-07-11', NULL
FROM plots WHERE plot_number = 'NW-G-016-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Melissa', NULL, 'Dutcher', 'Pearce', '1917-01-30', '2000-03-27', NULL
FROM plots WHERE plot_number = 'NW-G-016-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cecil', 'Herbert', 'Webster', NULL, '1907-05-09', '1982-04-05', NULL
FROM plots WHERE plot_number = 'NW-G-017-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betsy', NULL, 'Webster', 'Greene', '1912-04-19', '1978-06-07', NULL
FROM plots WHERE plot_number = 'NW-G-017-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Esther', 'S.', 'Fraser', NULL, '1907-11-05', '1983-12-24', NULL
FROM plots WHERE plot_number = 'NW-G-018-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'R.', 'Fraser', NULL, '1915-01-08', '1991-12-01', NULL
FROM plots WHERE plot_number = 'NW-G-018-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julia', 'Catherine', 'Babington', NULL, '1909-11-13', '1994-11-18', NULL
FROM plots WHERE plot_number = 'NW-G-019-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'Leak', 'Babington', NULL, '1907-04-07', '1986-12-24', NULL
FROM plots WHERE plot_number = 'NW-G-019-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julia', NULL, 'Demeter', NULL, '1939-05-14', '2022-11-10', NULL
FROM plots WHERE plot_number = 'NW-G-019-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jonathan', 'David', 'Sampson', 'Disinterred 12/12/05', '1969-02-14', '1971-12-14', NULL
FROM plots WHERE plot_number = 'NW-G-020-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucille', NULL, 'Causey', 'Lovin', '1921-08-23', '2001-06-20', NULL
FROM plots WHERE plot_number = 'NW-G-022-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'S.', 'Causey', NULL, '1920-02-12', '1986-04-17', NULL
FROM plots WHERE plot_number = 'NW-G-022-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Beulah', NULL, 'Ferrell', 'Hildebrand', '1917-09-24', '1989-09-25', NULL
FROM plots WHERE plot_number = 'NW-G-023-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Willard', 'F.', 'Ferrell', NULL, '1917-08-26', '1988-05-28', NULL
FROM plots WHERE plot_number = 'NW-G-023-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'P.', 'Spencer', NULL, '1909-10-31', '1980-05-16', NULL
FROM plots WHERE plot_number = 'NW-G-023-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Capt. Leo', 'A.', 'Dowling,', NULL, '1926-12-23', '1972-08-28', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-024-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Audry/Steve', 'D./Lee', 'Dowling/Steele', '06-17-1948/10-07-1996', '1926-02-27', '1987-05-09', NULL
FROM plots WHERE plot_number = 'NW-G-024-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leo', 'A.', 'Dowling,', NULL, '1908-07-14', '1974-05-01', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-024-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henrietta', NULL, 'Hornstein', NULL, '1886-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-025-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Emma', 'Benton', NULL, '1899-10-12', '1976-07-29', NULL
FROM plots WHERE plot_number = 'NW-G-027-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', NULL, 'Benton', NULL, '1930-07-19', '1994-04-25', NULL
FROM plots WHERE plot_number = 'NW-G-028-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earl', 'Eugene', 'Shirley', NULL, '1948-07-09', '1988-07-04', NULL
FROM plots WHERE plot_number = 'NW-G-029-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Normwn', 'Mark', 'Hornstein', NULL, '1914-11-23', '1989-07-26', NULL
FROM plots WHERE plot_number = 'NW-G-030-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patricia', 'Ann', 'King', NULL, '1954-03-26', '1978-04-23', NULL
FROM plots WHERE plot_number = 'NW-G-031-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'Marie', 'O''Brien', NULL, '1886-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-032-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlotte', NULL, 'Jones', 'LeClerc', '1911-05-15', '1971-11-26', NULL
FROM plots WHERE plot_number = 'NW-G-033-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlotte', NULL, 'Hart', 'McChain', '1969-09-08', '1987-09-14', NULL
FROM plots WHERE plot_number = 'NW-G-033-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mittie "Mit', 'Irene', 'Caster/Robinson', 'Whitaker', '1917-05-11', '2003-11-06', NULL
FROM plots WHERE plot_number = 'NW-G-034-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Craig', 'Melvn', 'Caster', NULL, '1913-07-01', '1992-07-24', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-034-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lawrence', 'R.', 'Willing, .', NULL, '1948-04-08', '1986-07-08', 'Jr'
FROM plots WHERE plot_number = 'NW-G-037-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emma', 'Jane', 'Willing', 'R.', '1923-12-26', '1987-02-10', NULL
FROM plots WHERE plot_number = 'NW-G-037-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lawrence', 'Robertson', 'Willing,', NULL, '1920-03-17', '2009-06-15', 'Sr'
FROM plots WHERE plot_number = 'NW-G-037-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'William', 'Busby', NULL, '1930-05-28', '1989-09-08', NULL
FROM plots WHERE plot_number = 'NW-G-038-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Eldridge', 'McKeithan', NULL, '1903-02-11', '1977-10-29', NULL
FROM plots WHERE plot_number = 'NW-G-039-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'E.', 'McKeithan,', NULL, '1929-08-17', '1977-04-12', 'Jr'
FROM plots WHERE plot_number = 'NW-G-039-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Lilly', 'McKeithan', 'Singletary', '1909-08-30', '2000-04-03', NULL
FROM plots WHERE plot_number = 'NW-G-039-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', NULL, 'Cofield', NULL, '1908-05-15', '1973-10-16', NULL
FROM plots WHERE plot_number = 'NW-G-040-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maryland', NULL, 'Mims', NULL, '1912-01-24', '1984-10-13', NULL
FROM plots WHERE plot_number = 'NW-G-040-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Claude', 'Early', 'Harrelson', NULL, '1904-01-01', '1979-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-041-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ina', 'Frances', 'Harrelson', NULL, '1908-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-041-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'C.', 'Harrelson', NULL, '1922-02-05', '1971-09-06', NULL
FROM plots WHERE plot_number = 'NW-G-042-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kendall', 'May', 'Coltrane', NULL, '1941-04-14', '2006-05-27', NULL
FROM plots WHERE plot_number = 'NW-G-043-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kendall', 'Coltrane', 'Bruno', 'May', '1911-09-02', '2002-05-17', NULL
FROM plots WHERE plot_number = 'NW-G-043-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eleanor', NULL, 'Willing', 'Carr', '1913-12-28', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-044-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'L.', 'Willing', NULL, '1909-04-15', '1990-06-18', NULL
FROM plots WHERE plot_number = 'NW-G-044-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'B', 'Riese', NULL, '1927-01-01', '2004-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-044-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Riese', 'Fanning', '1929-11-03', '2005-07-10', NULL
FROM plots WHERE plot_number = 'NW-G-044-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Jane', 'Wood', 'Sykes', '1920-05-24', '1973-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-045-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Edward', 'Boymer', NULL, '1899-01-08', '1971-11-17', NULL
FROM plots WHERE plot_number = 'NW-G-046-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vera', NULL, 'Boymer', 'Fogarty', '1903-01-17', '1981-10-02', NULL
FROM plots WHERE plot_number = 'NW-G-046-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', NULL, 'Jones', NULL, '1920-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-047-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leo', NULL, 'Jones', NULL, '1915-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-047-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Porterfield', 'Phillippe', '1914-03-26', '2010-04-21', NULL
FROM plots WHERE plot_number = 'NW-G-048-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'K.', 'Porterfield', NULL, '1913-03-09', '1991-10-26', NULL
FROM plots WHERE plot_number = 'NW-G-048-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louise', NULL, 'Lewis', 'Bragaw', '1913-04-12', '1972-03-23', NULL
FROM plots WHERE plot_number = 'NW-G-049-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earline', NULL, 'Garrish', 'Rogers', '1919-07-03', '2000-12-02', NULL
FROM plots WHERE plot_number = 'NW-G-050-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Benjamin', 'Garrish', NULL, '1910-01-10', '1973-09-04', NULL
FROM plots WHERE plot_number = 'NW-G-050-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Brown', 'Morgan', '1907-10-03', '1992-10-12', NULL
FROM plots WHERE plot_number = 'NW-G-052-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Calvin', 'Benjamin', 'Brown', NULL, '1896-08-13', '1973-11-15', NULL
FROM plots WHERE plot_number = 'NW-G-052-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Violet', NULL, 'Gill', 'Brown', '1929-04-12', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-054-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Raymond', 'Morris', 'Gill', NULL, '1929-05-30', '1986-05-22', NULL
FROM plots WHERE plot_number = 'NW-G-054-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walton', NULL, 'Blohm', NULL, '1898-04-29', '1975-04-24', NULL
FROM plots WHERE plot_number = 'NW-G-055-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'M.', 'Blohm', NULL, '1904-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-055-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'S.', 'Blohm', NULL, '1902-01-01', '1982-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-055-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', 'Sue', 'Sweeper', 'Hewitt', '1935-05-03', '2009-10-18', NULL
FROM plots WHERE plot_number = 'NW-G-056-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maybelle', NULL, 'Hewett', NULL, '1899-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-056-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Crystal', 'Danita', 'Charron', NULL, '1974-05-29', '2020-08-01', NULL
FROM plots WHERE plot_number = 'NW-G-057-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Colon', NULL, 'Eagles', NULL, NULL, '1979-07-05', NULL
FROM plots WHERE plot_number = 'NW-G-057-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellen', 'S.', 'Eagles', NULL, '1902-07-28', '1975-09-13', NULL
FROM plots WHERE plot_number = 'NW-G-057-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Arthur', 'Eagles', NULL, '1933-04-29', '2018-07-29', NULL
FROM plots WHERE plot_number = 'NW-G-057-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Conrad', 'Lee', 'Barrow', NULL, '1928-05-06', '1992-11-27', NULL
FROM plots WHERE plot_number = 'NW-G-059-D-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Watson', NULL, '1925-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-060-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wendell', NULL, 'Watson', NULL, '1920-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-060-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Elizabeth', 'Riggs', 'Brown', '1926-11-26', '1978-10-19', NULL
FROM plots WHERE plot_number = 'NW-G-061-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Isabelle', NULL, 'Wilson', NULL, '1892-01-01', '1982-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-062-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'R.', 'Sheridon', NULL, '1892-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-063-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lula', NULL, 'Smith', 'Brown', '1885-01-22', '1972-02-20', NULL
FROM plots WHERE plot_number = 'NW-G-064-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Neal', NULL, 'Eagles', NULL, '1899-09-10', '1983-11-14', NULL
FROM plots WHERE plot_number = 'NW-G-066-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Wesley', 'Bowen,', NULL, '1917-05-31', '1975-11-17', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-067-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'F.', 'Griffin', NULL, '1922-04-14', '1925-08-30', NULL
FROM plots WHERE plot_number = 'NW-G-068-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', 'B.', 'McCorkle', NULL, '1902-01-01', '1987-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-070-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', 'R.', 'MCCorkle', NULL, '1900-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-070-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hugh', 'McCoy', 'Fain', NULL, '1901-11-10', '1971-06-24', NULL
FROM plots WHERE plot_number = 'NW-G-072-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', NULL, 'Graham', 'Dalvey', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-073-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Graham', 'Key', NULL, '1916-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-073-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maureen', 'Byrne Fallon', 'Laird', 'Bligh', '1915-05-31', '1995-07-07', NULL
FROM plots WHERE plot_number = 'NW-G-074-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carlos', NULL, 'Fallon', NULL, '1909-01-21', '1989-02-12', NULL
FROM plots WHERE plot_number = 'NW-G-074-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Blanca', 'Convers', 'de Fallon', 'Codazzide', '1878-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-074-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ada', 'Mae', 'McGill', 'Schoup', '1913-12-13', '2001-10-27', NULL
FROM plots WHERE plot_number = 'NW-G-075-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'D.', 'McGill', NULL, '1913-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-075-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ava', 'Ann', 'Lackey', 'Mitchell', '1943-06-03', '2010-11-23', NULL
FROM plots WHERE plot_number = 'NW-G-076-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Jefferson', 'Lackey', NULL, '1934-12-09', '2007-06-18', NULL
FROM plots WHERE plot_number = 'NW-G-076-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Peggy', NULL, 'Webb', 'Anderson', '1934-04-30', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-077-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Allen', 'Webb', NULL, '1927-09-27', '1992-09-12', NULL
FROM plots WHERE plot_number = 'NW-G-077-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Michael', 'Ray', 'Carlin', NULL, '1961-08-30', '1991-03-24', NULL
FROM plots WHERE plot_number = 'NW-G-079-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kelly', 'Michele', 'Carlin', NULL, '1986-06-01', '1997-09-04', NULL
FROM plots WHERE plot_number = 'NW-G-079-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', NULL, 'Carlin', 'Smith', '1933-12-10', '2002-02-16', NULL
FROM plots WHERE plot_number = 'NW-G-079-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'James', 'Carlin', NULL, '1927-04-23', '2007-12-09', NULL
FROM plots WHERE plot_number = 'NW-G-079-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Gerald', 'Alewine', NULL, '1933-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-080-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stella', NULL, 'Howard', 'Jackson', '1913-03-03', '1983-02-01', NULL
FROM plots WHERE plot_number = 'NW-G-080-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Glennie', 'Austin', 'Howard', NULL, '1911-07-11', '2000-01-21', NULL
FROM plots WHERE plot_number = 'NW-G-080-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', 'Leilani', 'Roof', NULL, '1946-09-29', '1973-11-11', NULL
FROM plots WHERE plot_number = 'NW-G-081-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susan', NULL, 'Pinkerton', NULL, '1908-07-01', '1979-06-07', NULL
FROM plots WHERE plot_number = 'NW-G-082-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maria', 'Florina', 'McCoy', NULL, '1931-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-083-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', 'Kit', 'Sanders, R.N.', NULL, '1916-01-25', '1976-05-12', NULL
FROM plots WHERE plot_number = 'NW-G-084-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Matilda', 'A.', 'Barnett', NULL, '1887-01-19', '1975-06-14', NULL
FROM plots WHERE plot_number = 'NW-G-085-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Raymond', 'Daniel', 'Jeffers', NULL, '1925-01-11', '1976-11-12', NULL
FROM plots WHERE plot_number = 'NW-G-086-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marian', NULL, 'Stanbrook', NULL, '1900-01-01', '1979-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-087-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Petrie', 'Fish', NULL, '1904-04-18', '1972-12-15', NULL
FROM plots WHERE plot_number = 'NW-G-088-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edythe', NULL, 'Lewis', 'Zinn', '1909-01-28', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-089-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clair', 'Davis', 'Lewis', NULL, '1908-10-30', '1985-08-30', NULL
FROM plots WHERE plot_number = 'NW-G-089-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', 'Annie', 'Thompson', NULL, '1929-01-22', '2010-01-15', NULL
FROM plots WHERE plot_number = 'NW-G-091-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Atwood', 'Thompson', NULL, '1922-11-17', '1993-02-09', NULL
FROM plots WHERE plot_number = 'NW-G-091-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', 'M.', 'Duncan', NULL, '1918-04-08', '1973-12-22', NULL
FROM plots WHERE plot_number = 'NW-G-092-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Riley', 'W.', 'Duncan', NULL, '1910-08-04', '1985-03-18', NULL
FROM plots WHERE plot_number = 'NW-G-092-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucy', 'Oden', 'Henry', NULL, '1923-06-02', '2017-03-10', NULL
FROM plots WHERE plot_number = 'NW-G-093-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Asa', 'P.', 'Henry,', NULL, '1922-01-01', '1986-01-01', ' Jr.'
FROM plots WHERE plot_number = 'NW-G-093-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Henry', 'Lindner', NULL, '1900-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-094-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlotte', NULL, 'Lindner', 'Hudtwalcker', '1907-01-01', '2000-01-27', NULL
FROM plots WHERE plot_number = 'NW-G-094-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellen', NULL, 'Erwin', 'Witt', '1913-09-14', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-095-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Price', 'Erwin', NULL, '1910-07-07', '1982-09-12', NULL
FROM plots WHERE plot_number = 'NW-G-095-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jonathan', NULL, 'Hankins', NULL, '1926-08-03', '2004-01-31', NULL
FROM plots WHERE plot_number = 'NW-G-096-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Murphy', 'Rodgers', '1919-08-22', '2000-01-08', NULL
FROM plots WHERE plot_number = 'NW-G-097-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'E.', 'Murphy', NULL, '1917-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-097-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elaine', 'H.', 'Whitley', NULL, '1944-05-09', '1981-06-30', NULL
FROM plots WHERE plot_number = 'NW-G-098-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'Grady', 'Lipe', NULL, '1905-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-099-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerome', 'Harwood', 'Lipe', NULL, '1907-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-099-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Allen', 'Lipe', NULL, '1926-05-04', '1985-09-25', NULL
FROM plots WHERE plot_number = 'NW-G-099-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Myrtle', 'Boots', 'Lipe', NULL, '1931-08-09', '1994-06-06', NULL
FROM plots WHERE plot_number = 'NW-G-099-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Diane', NULL, 'Clark', 'Stidham', '1944-03-16', '2014-07-04', NULL
FROM plots WHERE plot_number = 'NW-G-100-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grace', 'R.', 'Gregory', 'Disinterred', '1932-05-27', '1991-08-13', NULL
FROM plots WHERE plot_number = 'NW-G-100-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'D.', 'Gregory', NULL, '1931-01-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-100-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lois', 'W.', 'Edwards', NULL, '1903-07-12', '1980-08-02', NULL
FROM plots WHERE plot_number = 'NW-G-101-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'R.', 'Sam', 'Edwards', NULL, '1898-10-03', '1981-12-09', NULL
FROM plots WHERE plot_number = 'NW-G-101-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', 'M.', 'Champion', NULL, '1906-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-102-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eber', 'L.', 'Champion', NULL, '1903-01-01', '1974-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-102-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', 'Rose', 'Harper', NULL, '1913-01-02', '1973-08-03', NULL
FROM plots WHERE plot_number = 'NW-G-103-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lloyd', 'James', 'Harper', NULL, '1910-12-24', '1980-05-24', NULL
FROM plots WHERE plot_number = 'NW-G-103-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'Sugar', 'Stidham', NULL, '1890-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-104-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Malcolm', NULL, 'Stidham', NULL, '1902-06-26', '1978-06-28', NULL
FROM plots WHERE plot_number = 'NW-G-104-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katie', 'E.', 'Johnson', NULL, '1908-06-20', '1981-02-27', NULL
FROM plots WHERE plot_number = 'NW-G-105-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'V.', 'Johnson', NULL, '1910-08-09', '1981-01-23', NULL
FROM plots WHERE plot_number = 'NW-G-105-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gay', 'Pat', 'Hughes', 'Spencer', '1937-01-02', '2001-09-17', NULL
FROM plots WHERE plot_number = 'NW-G-106-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'A.', 'Hughes', NULL, '1928-10-15', '1974-05-11', NULL
FROM plots WHERE plot_number = 'NW-G-106-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linnie', NULL, 'Spencer', 'Singletary', '1915-11-22', '1979-12-19', NULL
FROM plots WHERE plot_number = 'NW-G-107-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ray', 'J', 'Spencer', NULL, '1915-11-28', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-107-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mattie', NULL, 'Murray', 'Bell', '1920-07-02', '1980-07-13', NULL
FROM plots WHERE plot_number = 'NW-G-108-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William & Clifton', '7-8-1974/ Marie', 'Baxter', 'Maura Baxter', '1976-02-24', '1976-02-17', NULL
FROM plots WHERE plot_number = 'NW-G-108-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'McKinley', NULL, 'Morris', NULL, '1937-03-29', '1973-10-01', NULL
FROM plots WHERE plot_number = 'NW-G-109-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lela', NULL, 'Morris', 'Hill', '1909-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-109-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carl', NULL, 'Morris', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-109-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ena', NULL, 'Varnum', 'Etheridge', '1921-07-03', '1993-12-25', NULL
FROM plots WHERE plot_number = 'NW-G-110-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Kinwood', 'Varnum', NULL, '1915-11-10', '1985-09-11', NULL
FROM plots WHERE plot_number = 'NW-G-110-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'Cummings', 'James', NULL, '1912-07-12', '1982-11-15', NULL
FROM plots WHERE plot_number = 'NW-G-111-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sally', 'K.', 'Phipps', NULL, '1936-12-14', '1979-06-30', NULL
FROM plots WHERE plot_number = 'NW-G-112-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Freddy', 'R', 'Phipps', NULL, '1935-02-12', '2021-08-30', NULL
FROM plots WHERE plot_number = 'NW-G-112-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'M.', 'Tyler', NULL, '1895-11-27', '1982-10-13', NULL
FROM plots WHERE plot_number = 'NW-G-113-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cyrill', 'Floyd', 'Tyler', NULL, '1893-09-07', '1972-08-31', NULL
FROM plots WHERE plot_number = 'NW-G-113-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nola', NULL, 'Tyler', 'Stidham', '1918-03-10', '2010-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-113-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emerson', 'Bennet', 'Tyler', NULL, '1913-06-11', '1976-03-12', NULL
FROM plots WHERE plot_number = 'NW-G-113-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edith', 'L.', 'Woolwich', NULL, '1914-03-26', '1989-11-11', NULL
FROM plots WHERE plot_number = 'NW-G-114-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sidney', NULL, 'Woolwich', NULL, '1910-09-20', '1981-05-25', NULL
FROM plots WHERE plot_number = 'NW-G-114-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Louis', 'Woolwich', NULL, '1942-11-29', '2017-01-07', NULL
FROM plots WHERE plot_number = 'NW-G-114-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris', 'Jean', 'Woolwich', NULL, '1947-10-21', '2021-01-17', NULL
FROM plots WHERE plot_number = 'NW-G-114-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vera', 'P.', 'Varnam', NULL, '1946-11-30', '1990-07-24', NULL
FROM plots WHERE plot_number = 'NW-G-115-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', NULL, 'Hill', NULL, '1922-04-03', '1974-11-07', NULL
FROM plots WHERE plot_number = 'NW-G-115-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'A.', 'Simmons', NULL, '1912-11-15', '1984-07-21', NULL
FROM plots WHERE plot_number = 'NW-G-116-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', NULL, 'Creech', NULL, '1914-04-21', '1988-01-14', NULL
FROM plots WHERE plot_number = 'NW-G-119-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mollie', NULL, 'Stidham', NULL, '1910-01-01', '1996-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-120-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ray', NULL, 'Stubbs', NULL, '1919-04-05', '1987-07-07', NULL
FROM plots WHERE plot_number = 'NW-G-121-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gerthell', 'Joyner', 'Williams', NULL, '1928-06-11', '1978-07-07', NULL
FROM plots WHERE plot_number = 'NW-G-122-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Otha', 'H.', 'Williams', NULL, '1924-03-07', '1974-11-10', NULL
FROM plots WHERE plot_number = 'NW-G-123-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lonnie', 'A.', 'Smith', NULL, '1954-07-05', '1974-06-23', NULL
FROM plots WHERE plot_number = 'NW-G-124-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlene', 'Evette', 'Smith', NULL, '0960-11-09', '0985-09-17', NULL
FROM plots WHERE plot_number = 'NW-G-125-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', 'McCracken', 'Gore', 'Smith', '1932-10-16', '2013-01-03', NULL
FROM plots WHERE plot_number = 'NW-G-125-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cleveland', NULL, 'Joyner', NULL, '1917-01-01', '1974-10-02', NULL
FROM plots WHERE plot_number = 'NW-G-126-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mabel', 'Catherine', 'Joyner', 'Moore', '1927-09-09', '1977-10-01', NULL
FROM plots WHERE plot_number = 'NW-G-126-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'Kane', 'Kaiser', '1923-07-31', '2004-07-22', NULL
FROM plots WHERE plot_number = 'NW-G-127-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'James', 'Kane', NULL, '1915-07-08', '1973-09-15', NULL
FROM plots WHERE plot_number = 'NW-G-127-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marguerite', 'A.', 'Bunting', NULL, '1912-01-10', '2003-02-24', NULL
FROM plots WHERE plot_number = 'NW-G-129-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roland', NULL, 'Bunting', NULL, '1912-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-129-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Juanita', 'J.', 'Terrell', NULL, '1925-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-132-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hebron', 'W.', 'Terrell', NULL, '1915-01-01', '1981-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-132-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Alvey', 'Partello,', NULL, '1968-02-29', '2011-12-16', 'III'
FROM plots WHERE plot_number = 'NW-G-135-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joyce', NULL, 'Partello', 'St George', '1944-11-25', '2020-10-23', NULL
FROM plots WHERE plot_number = 'NW-G-135-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Alvey', 'Partello,', NULL, '1943-04-27', '2001-08-02', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-135-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'St. George', 'Hinnet', '1918-01-17', '1998-07-02', NULL
FROM plots WHERE plot_number = 'NW-G-136-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'F.', 'St. George,', NULL, '1923-08-04', '1978-06-06', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-136-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-141-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-142-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-143-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-144-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-145-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-146-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Garden Area', NULL, 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-147-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christopher', 'Mark', 'Ballard', NULL, '1952-11-01', '1986-10-18', NULL
FROM plots WHERE plot_number = 'NW-G-148-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Snow', 'W.', 'Clarida', NULL, '1922-10-28', '1987-11-22', NULL
FROM plots WHERE plot_number = 'NW-G-149-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Russell', 'B.', 'Mead', NULL, '1902-09-12', '1989-07-29', NULL
FROM plots WHERE plot_number = 'NW-G-150-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Estelle', 'S.', 'Mead', NULL, '1903-10-24', '1986-10-31', NULL
FROM plots WHERE plot_number = 'NW-G-151-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, '(No Marker)', NULL, 'Evans', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-152-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Jane', 'Hiller', NULL, '1914-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-153-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hattie', 'M.', 'Clark', NULL, '1923-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-154-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elmer', NULL, 'Davis', NULL, '1926-04-16', '1982-12-07', NULL
FROM plots WHERE plot_number = 'NW-G-155-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', NULL, 'Davis', NULL, '1902-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-156-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Florence', 'E.', 'Brown', NULL, '1899-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-157-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cassie', NULL, 'Galloway', 'Brown', '1890-06-06', '1990-01-12', NULL
FROM plots WHERE plot_number = 'NW-G-158-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Hiram', 'Hankins', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-159-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Delina', NULL, 'Smith', 'Grisette', '1937-01-17', '1978-01-23', NULL
FROM plots WHERE plot_number = 'NW-G-160-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Davis', 'Alfred', 'Brown', NULL, '1924-03-17', '1981-05-10', NULL
FROM plots WHERE plot_number = 'NW-G-161-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Poole', 'Surman', '1914-06-13', '2002-01-04', NULL
FROM plots WHERE plot_number = 'NW-G-162--1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Clayton', 'Poole', NULL, '1906-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-162--2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Florence', 'M.', 'Grisetti', NULL, '1910-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-163-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Francis', 'R.', 'Grisetti', NULL, '1904-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-163-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maude', NULL, 'Drew', NULL, '1910-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-164-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Byron', 'Drew', NULL, '1895-02-26', '1991-08-06', NULL
FROM plots WHERE plot_number = 'NW-G-164-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clara', NULL, 'Knight', 'Creech', '1907-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-165-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ernest', NULL, 'Knight', NULL, '1890-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-165-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joann', NULL, 'Boles', 'Thomas', '1929-07-29', '2008-05-10', NULL
FROM plots WHERE plot_number = 'NW-G-166-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'G.', 'Boles', NULL, '1920-06-19', '1978-10-21', NULL
FROM plots WHERE plot_number = 'NW-G-166-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Olive', NULL, 'Jorgensen', 'Hood', '1915-06-22', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-168-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Neils', NULL, 'Jorgensen', NULL, '1915-03-03', '1979-06-11', NULL
FROM plots WHERE plot_number = 'NW-G-168-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie and Jones', 'M.', 'Bryant', '11-28-1930 / 09-16-2013', '1932-01-01', '1980-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-169-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jones', NULL, 'Bryant', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-169-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susie', NULL, 'Burriss', 'Jones', '1912-01-14', '1988-05-09', NULL
FROM plots WHERE plot_number = 'NW-G-170-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Linwood', 'Burriss', NULL, '1948-01-23', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-170-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertram', 'Murphy', 'Burriss', NULL, '1909-06-18', '1990-12-10', NULL
FROM plots WHERE plot_number = 'NW-G-170-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'F.', 'Johnson', NULL, '1915-12-08', '1995-04-04', NULL
FROM plots WHERE plot_number = 'NW-G-172-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Arthur', 'Johnson', NULL, '1912-09-03', '1987-02-24', NULL
FROM plots WHERE plot_number = 'NW-G-172-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Francis', 'Lutsko', 'Big Jim', '1952-07-09', '1986-08-25', NULL
FROM plots WHERE plot_number = 'NW-G-173-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nathaniel', NULL, 'Moore', NULL, '1913-01-01', '1991-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-174-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maggie', NULL, 'Bhivell', NULL, '1885-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-174-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', NULL, 'Green', NULL, '1915-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-174-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hilda', NULL, 'Austin', 'Brown', '1926-09-19', '2008-06-12', NULL
FROM plots WHERE plot_number = 'NW-G-175-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Lee', 'Austin', NULL, '1907-01-28', '1995-08-24', NULL
FROM plots WHERE plot_number = 'NW-G-175-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thelma', 'Parker', 'Fagan', 'Castle', '1900-04-19', '1983-02-17', NULL
FROM plots WHERE plot_number = 'NW-G-175-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lawrence', 'G.', 'Twitty', NULL, '1914-05-24', '2009-09-24', NULL
FROM plots WHERE plot_number = 'NW-G-176-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elise', 'Mary', 'Twitty', NULL, '1916-03-24', '2000-10-07', NULL
FROM plots WHERE plot_number = 'NW-G-176-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', 'Mae', 'Ray', 'Ingrahm', '1980-03-04', '2020-01-20', NULL
FROM plots WHERE plot_number = 'NW-G-177-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', NULL, 'Phelps', NULL, '1947-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-177-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Al-Mary', NULL, 'Phelps', 'Hill', '1924-08-24', '2008-02-11', NULL
FROM plots WHERE plot_number = 'NW-G-177-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', NULL, 'Phelps', NULL, '1916-08-19', '1986-01-06', NULL
FROM plots WHERE plot_number = 'NW-G-177-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henton Lee 1902/1982', '/Lillian Ware Baker', 'Baker', NULL, '1902-01-01', '1991-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-178-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Oliver', 'Lee', NULL, '1925-05-19', '1991-09-12', NULL
FROM plots WHERE plot_number = 'NW-G-178-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Esther', 'Lorrainne', 'Nieceicki', NULL, '1932-02-19', '1991-06-23', NULL
FROM plots WHERE plot_number = 'NW-G-178-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kayte', NULL, 'Dixon', 'Chauncey', '1922-02-04', '2016-10-06', NULL
FROM plots WHERE plot_number = 'NW-G-179-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Alton', 'Dixon', NULL, '1922-04-27', '1991-02-16', NULL
FROM plots WHERE plot_number = 'NW-G-179-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rebecca', NULL, 'Petty', 'Maner', '1929-06-01', '1993-04-11', NULL
FROM plots WHERE plot_number = 'NW-G-179-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Leonard', 'Petty', NULL, '1921-07-19', '1991-03-30', NULL
FROM plots WHERE plot_number = 'NW-G-179-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Perry', 'Jack', 'Castle', NULL, '1914-08-11', '1991-04-09', NULL
FROM plots WHERE plot_number = 'NW-G-180-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'William', 'McMillion', NULL, '1913-12-24', '1991-04-22', NULL
FROM plots WHERE plot_number = 'NW-G-180-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', NULL, 'King', 'Blanton', '1919-12-13', '1993-03-08', NULL
FROM plots WHERE plot_number = 'NW-G-180-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rufus', 'Vonnie', 'King', NULL, '1910-09-01', '1991-05-30', NULL
FROM plots WHERE plot_number = 'NW-G-180-C-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'JoAnn &', 'Richard Watte', 'Holcomb', '03/01/1933 - 06-10-2014', '1938-01-01', '1991-05-30', NULL
FROM plots WHERE plot_number = 'NW-G-181-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rochelle', NULL, 'Clarida', NULL, '1916-01-01', '1991-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-181-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'G.', 'Clarida', NULL, '1925-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-181-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Steven', 'T.', 'Fenick,', NULL, '1933-09-28', '1991-09-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-181-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ronald', 'J', 'Clemmons', NULL, '1948-08-18', '2022-12-12', NULL
FROM plots WHERE plot_number = 'NW-G-182-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Israel', 'Edwards', 'Clemmons,', NULL, '1916-08-18', '1998-08-23', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-182-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louise', NULL, 'Clemmons', 'Morris', '1918-08-13', '2012-12-14', NULL
FROM plots WHERE plot_number = 'NW-G-182-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elouise', 'H.', 'Byrd', NULL, '1912-01-01', '1990-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-183-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dewey', 'H.', 'Jackson', NULL, '1923-10-19', '1984-05-16', NULL
FROM plots WHERE plot_number = 'NW-G-185-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'LaRoy', 'Gore', NULL, '1943-07-06', '1984-10-18', NULL
FROM plots WHERE plot_number = 'NW-G-187-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elton', 'H.', 'Jackson', NULL, '1920-03-13', '1987-02-06', NULL
FROM plots WHERE plot_number = 'NW-G-188-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tommie', NULL, 'Goodwin', NULL, '1923-12-02', '1982-06-19', NULL
FROM plots WHERE plot_number = 'NW-G-189-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Blanche', NULL, 'Wolfe', 'Minor', '1894-05-16', '1986-07-22', NULL
FROM plots WHERE plot_number = 'NW-G-192-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy J.', '& Rice, Harold Edward', 'Salter', '11-18-1947/12-3-2006', '1929-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-194-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', NULL, 'Clarida,', NULL, '1912-03-08', '1985-10-24', ' Jr.'
FROM plots WHERE plot_number = 'NW-G-195-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linz', 'h.', 'Clarida', NULL, '1915-07-28', '1988-04-20', NULL
FROM plots WHERE plot_number = 'NW-G-196-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Theresa', NULL, 'Moore', NULL, '1893-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-197-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Serella', 'Mac', 'Joyce', 'Barber', '1912-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-198-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Donald', 'Smith', NULL, '1942-02-03', '2014-07-16', NULL
FROM plots WHERE plot_number = 'NW-G-198-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margarette', NULL, 'Jones', 'Lee', '1948-04-30', '1980-06-20', NULL
FROM plots WHERE plot_number = 'NW-G-199-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bobby', 'Edward', 'Jones', NULL, '1935-06-18', '2001-05-24', NULL
FROM plots WHERE plot_number = 'NW-G-199-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fleta', 'Elizabeth', 'Hutton', 'Field', '1907-12-22', '1979-08-18', NULL
FROM plots WHERE plot_number = 'NW-G-200-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mandy', 'Marie', 'Crisco', NULL, '1977-03-03', '1977-03-03', NULL
FROM plots WHERE plot_number = 'NW-G-201-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', NULL, 'Blake', 'Downing', '1916-01-01', '2004-11-17', NULL
FROM plots WHERE plot_number = 'NW-G-202-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edgar', 'Cade', 'Blake', NULL, '1913-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-202-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Michael', 'Blaine', 'Revis', NULL, '1958-08-02', '1978-07-01', NULL
FROM plots WHERE plot_number = 'NW-G-203-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Leon', 'Warner', NULL, '1911-05-20', '1977-03-07', NULL
FROM plots WHERE plot_number = 'NW-G-203-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Agnes', NULL, 'Rumple', 'Saunders', '1910-10-17', '1982-06-08', NULL
FROM plots WHERE plot_number = 'NW-G-204-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Frank', 'Rumple', NULL, '1912-07-16', '1980-04-30', NULL
FROM plots WHERE plot_number = 'NW-G-204-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hazel', NULL, 'Forbes', 'Edgerton', '1910-04-09', '1996-10-14', NULL
FROM plots WHERE plot_number = 'NW-G-205-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vernon', 'McLeod', 'Forbes,', NULL, '1912-03-24', '1981-03-20', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-205-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Erwin', 'Moran', NULL, '1958-07-21', '1997-10-16', NULL
FROM plots WHERE plot_number = 'NW-G-206-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Moran', 'Enzore', '1922-09-03', '2005-07-26', NULL
FROM plots WHERE plot_number = 'NW-G-206-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Phifer', 'Erwin', 'Moran,', NULL, '1924-05-06', '2009-07-22', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-206-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Phyllis', 'Mae', 'Blackwell', NULL, '1931-08-30', '2020-07-12', NULL
FROM plots WHERE plot_number = 'NW-G-207-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dennis', 'Robert', 'Blackwell', NULL, '1957-09-12', '1986-08-31', NULL
FROM plots WHERE plot_number = 'NW-G-207-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Lois', 'Beheler', 'Marlow', '1943-10-13', '2005-02-11', NULL
FROM plots WHERE plot_number = 'NW-G-208-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Howard', 'Curtis', 'Beheler', NULL, '1940-08-17', '1987-05-19', NULL
FROM plots WHERE plot_number = 'NW-G-208-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'J.', 'Christman', NULL, '1934-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-209-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'M.', 'Christman', NULL, '1912-01-01', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-209-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'B.', 'Christman', NULL, '1909-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-209-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'Moretz', 'Summey', '1915-06-20', '1988-05-04', NULL
FROM plots WHERE plot_number = 'NW-G-210-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Krauth', 'Moretz', NULL, '1918-06-13', '1991-08-13', NULL
FROM plots WHERE plot_number = 'NW-G-210-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jonathan', 'W.', 'Southern', 'Pee Wee', '1959-08-27', '1987-05-02', NULL
FROM plots WHERE plot_number = 'NW-G-211-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nora', 'Lea', 'Southern', 'Lawson', '1928-07-30', '2009-08-27', NULL
FROM plots WHERE plot_number = 'NW-G-211-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cecil', 'R.', 'Southern', NULL, '1922-01-01', '1996-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-211-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jean', 'Catherine', 'Gray', NULL, '1923-01-15', '1993-06-18', NULL
FROM plots WHERE plot_number = 'NW-G-212-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Welsh', 'Gray', NULL, '1925-11-07', '2000-06-21', NULL
FROM plots WHERE plot_number = 'NW-G-212-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Jane', 'Davis', NULL, '1906-01-01', '2002-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-213-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'Davis', NULL, '1896-04-01', '1992-04-19', NULL
FROM plots WHERE plot_number = 'NW-G-213-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jytte', NULL, 'Davelaar', 'Solvejg', '1931-01-17', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-213-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Pieter', 'Herbert', 'Davelaar', NULL, '1930-10-02', '1992-06-27', NULL
FROM plots WHERE plot_number = 'NW-G-213-C-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffrey', 'Byron', 'Schenck,', NULL, '1991-12-11', '1991-12-11', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-214-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elton', 'Bernard', 'Jackson', NULL, '1938-05-14', '1992-03-11', NULL
FROM plots WHERE plot_number = 'NW-G-214-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Naomi', 'G. "Nee', 'Price', NULL, '1909-09-29', '1989-06-02', NULL
FROM plots WHERE plot_number = 'NW-G-216-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Quinton', 'J.', 'Price', NULL, '1967-03-21', '1991-11-26', NULL
FROM plots WHERE plot_number = 'NW-G-216-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Anthony "Uncle John', 'Price', NULL, '1947-10-23', '1996-09-22', NULL
FROM plots WHERE plot_number = 'NW-G-216-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clifton', 'Bryan', 'White', NULL, '1936-08-24', '2009-06-24', NULL
FROM plots WHERE plot_number = 'NW-G-217-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Judith', NULL, 'White', 'Young', '1941-01-24', '1989-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-217-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ivon', 'Wayne', 'Ludlum', '(Rabbit)', '1939-03-03', '2018-04-11', NULL
FROM plots WHERE plot_number = 'NW-G-218-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', NULL, 'Ludlum', 'Drew', '1924-05-08', '2017-06-13', NULL
FROM plots WHERE plot_number = 'NW-G-218-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', NULL, 'Ludlum', 'Aldridge', '1919-05-09', '1994-05-24', NULL
FROM plots WHERE plot_number = 'NW-G-218-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ivon', 'Lee', 'Ludlum', NULL, '1911-12-23', '1992-07-01', NULL
FROM plots WHERE plot_number = 'NW-G-218-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Preston', 'L.', 'Bryant', NULL, '1906-10-22', '1980-03-09', NULL
FROM plots WHERE plot_number = 'NW-G-219-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', NULL, 'Davis', 'Sellers', '1890-10-03', '1978-11-26', NULL
FROM plots WHERE plot_number = 'NW-G-221-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'S.', 'Davis', NULL, '1901-10-24', '1979-12-08', NULL
FROM plots WHERE plot_number = 'NW-G-221-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Michael', 'R.', 'Thompson,', NULL, '1903-01-01', '1977-03-10', ' Sr.'
FROM plots WHERE plot_number = 'NW-G-222-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'Hildia', 'Deese', 'Culp', '1926-11-27', '2008-07-22', NULL
FROM plots WHERE plot_number = 'NW-G-223-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Samuel', 'Deese', NULL, '1913-01-20', '1977-09-02', NULL
FROM plots WHERE plot_number = 'NW-G-223-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', NULL, 'Ganey', 'Drew', '1939-01-01', '1979-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-224-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'D.', 'Ganey', NULL, '1939-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-224-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eunice', NULL, 'Caudill', 'Daves', '1916-10-10', '1992-09-21', NULL
FROM plots WHERE plot_number = 'NW-G-225-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rufus', 'Clay', 'Caudill', NULL, '1904-03-27', '1980-11-05', NULL
FROM plots WHERE plot_number = 'NW-G-225-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', 'C.', 'Stanley', NULL, '1900-09-17', '1981-08-04', NULL
FROM plots WHERE plot_number = 'NW-G-226-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'E.', 'Stanley,', NULL, '1898-12-16', '1980-05-13', ' Sr.'
FROM plots WHERE plot_number = 'NW-G-226-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Pealie', NULL, 'Bryant', 'Price', '1908-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-228-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Frances', 'Garrett', NULL, '1930-01-22', '1992-12-27', NULL
FROM plots WHERE plot_number = 'NW-G-228-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'L.', 'Price', NULL, '1917-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-229-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', 'Gertrude', 'Price', 'Gore', '1915-01-31', '2001-01-31', NULL
FROM plots WHERE plot_number = 'NW-G-229-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', 'B.', 'Turner', NULL, '1911-09-24', '1973-10-22', NULL
FROM plots WHERE plot_number = 'NW-G-230-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Loren', 'H.', 'Turner', NULL, '1905-05-29', '1987-12-10', NULL
FROM plots WHERE plot_number = 'NW-G-230-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'B.', 'Heath', NULL, '1919-09-19', '1977-06-08', NULL
FROM plots WHERE plot_number = 'NW-G-231-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Glen', 'C', 'Brandon', NULL, '1910-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-232-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eddie', 'T.', 'Brandon', NULL, '1906-01-01', '1979-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-232-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frank', 'James', 'Demeter', NULL, '1944-03-04', '2010-06-26', ' Jr.'
FROM plots WHERE plot_number = 'NW-G-234-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Demeter', 'Jaczenko', '1911-10-13', '1988-05-19', NULL
FROM plots WHERE plot_number = 'NW-G-234-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frank', 'James', 'Demeter', NULL, '1910-03-27', '1994-07-20', NULL
FROM plots WHERE plot_number = 'NW-G-234-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Agnes', NULL, 'Knox', 'Todd', '1911-11-07', '2004-01-06', NULL
FROM plots WHERE plot_number = 'NW-G-236-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'I.', 'Gordon', 'Knox', NULL, '1912-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-236-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marjorie', NULL, 'Swan', 'Clark', '1923-12-29', '2006-10-20', NULL
FROM plots WHERE plot_number = 'NW-G-237-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'Law', 'Swan', 'Marrie 04-09-1942', '1920-03-15', '2002-05-08', NULL
FROM plots WHERE plot_number = 'NW-G-237-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffery', 'Douglas', 'Ward', NULL, '1962-01-18', '2011-05-11', NULL
FROM plots WHERE plot_number = 'NW-G-238-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Teresa', NULL, 'Ward', 'Fullwood', '1936-01-25', '2014-12-26', NULL
FROM plots WHERE plot_number = 'NW-G-238-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Ernest', 'Stanley,', NULL, '1936-04-28', '1999-12-08', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-239-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ann', 'Ellen', 'Stanley', 'Knight', '1943-10-10', '2008-10-21', NULL
FROM plots WHERE plot_number = 'NW-G-239-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'A. "Tater', 'Lane', NULL, '1974-03-20', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-240-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arnold', 'C.  "Flip', 'Lane', NULL, '1964-12-21', '1992-08-11', NULL
FROM plots WHERE plot_number = 'NW-G-240-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alan', 'C.', 'Lane', '4 a', '1945-06-07', '2012-10-01', NULL
FROM plots WHERE plot_number = 'NW-G-240-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlene', 'F.', 'Lane', '4 b', '1948-03-11', '2012-08-07', NULL
FROM plots WHERE plot_number = 'NW-G-240-b'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maxine', NULL, 'Cahours', 'Bilbrey', '1926-02-15', '2013-10-12', 'Maxine'
FROM plots WHERE plot_number = 'NW-G-242-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louis', 'Jacob', 'Cahours', NULL, '1925-10-19', '1992-09-19', NULL
FROM plots WHERE plot_number = 'NW-G-242-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Edward', 'Price', NULL, '1934-03-14', '2013-01-22', NULL
FROM plots WHERE plot_number = 'NW-G-242-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', NULL, 'Lee', 'Price', '1903-07-22', '1993-02-02', NULL
FROM plots WHERE plot_number = 'NW-G-242-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elmore', NULL, 'Lee', NULL, '1912-06-02', '1992-12-25', NULL
FROM plots WHERE plot_number = 'NW-G-243-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Dixon', 'Skipper,', NULL, '1956-08-17', '1998-09-04', 'III'
FROM plots WHERE plot_number = 'NW-G-244-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vista', 'Harris', 'Sharpe', NULL, '1897-07-03', '1984-12-22', NULL
FROM plots WHERE plot_number = 'NW-G-244-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'June', NULL, 'Sharpe', 'Dewey', '1898-04-12', '1978-12-09', NULL
FROM plots WHERE plot_number = 'NW-G-244-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Skipper', 'Sharpe', '1924-02-23', '2005-08-14', NULL
FROM plots WHERE plot_number = 'NW-G-245-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Dixon', 'Skipper,', NULL, '1923-03-23', '1990-12-13', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-245-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Burnett', 'Skipper', NULL, '1957-10-09', '1981-05-03', NULL
FROM plots WHERE plot_number = 'NW-G-245-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Toccara N. 02-22-1984', 'Tamara D. 02091983', 'Whitehead', NULL, NULL, '1988-03-17', NULL
FROM plots WHERE plot_number = 'NW-G-248-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stanley', 'Lannlau', 'Rogers,', NULL, '1902-05-14', '1990-12-14', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-250-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edgar', 'Ralph', 'Shuller', NULL, '1900-10-10', '1986-04-15', NULL
FROM plots WHERE plot_number = 'NW-G-251-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Russell', NULL, 'Sharples', NULL, '1918-01-01', '1985-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-252-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cora', 'Mae', 'Murphy', NULL, '1929-08-11', '1987-05-14', NULL
FROM plots WHERE plot_number = 'NW-G-253-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donna', 'Bernadette', 'Boyan', 'Tarasewicz', '1949-02-01', '2022-10-11', NULL
FROM plots WHERE plot_number = 'NW-G-254-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benjamin', 'Lee', 'Fullwood', NULL, '1943-06-25', '2017-05-27', NULL
FROM plots WHERE plot_number = 'NW-G-255-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Daniel', 'Shuller', NULL, '1907-09-06', '1987-11-19', NULL
FROM plots WHERE plot_number = 'NW-G-256-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Audrey', NULL, 'Day', 'Brown', '1922-07-19', '2001-04-05', NULL
FROM plots WHERE plot_number = 'NW-G-257-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leslie', 'Paul', 'Day', NULL, '1924-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-258-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'McKinley', 'M.', 'Galloway', NULL, '1931-01-14', '1983-07-03', NULL
FROM plots WHERE plot_number = 'NW-G-259-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Emma', 'Smith', NULL, '1920-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-260-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Silvester', 'Walton', NULL, '1887-02-23', '1976-12-17', NULL
FROM plots WHERE plot_number = 'NW-G-261-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Walton', 'Goley', '1902-06-29', '1991-02-03', NULL
FROM plots WHERE plot_number = 'NW-G-261-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'L.', 'Cotton', NULL, '1903-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-262-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Esther', 'W.', 'Cotton', NULL, '1908-01-01', '1982-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-262-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', NULL, 'Douglas', NULL, '1902-05-28', '1985-09-30', NULL
FROM plots WHERE plot_number = 'NW-G-263-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lewis', 'H.', 'Conley', NULL, '1918-10-07', '1977-03-23', NULL
FROM plots WHERE plot_number = 'NW-G-263-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nhien', NULL, 'Wood', 'Truong', '1942-06-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-264-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Truett', 'Nathan', 'Wood', NULL, '1922-10-19', '1978-02-03', NULL
FROM plots WHERE plot_number = 'NW-G-264-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Beverly', 'Arissa', 'Hayward', 'D.', '1915-01-01', '1987-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-265-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Barr', 'Hayward', NULL, '1905-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-265-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fannie', NULL, 'Faulk', 'Murphy', '1927-07-16', '2000-02-16', NULL
FROM plots WHERE plot_number = 'NW-G-266-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rufus', 'Hurley', 'Faulk,', NULL, '1925-08-07', '1987-02-28', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-266-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harley', 'Alexander', 'Waters', NULL, '1915-06-27', '1985-05-12', NULL
FROM plots WHERE plot_number = 'NW-G-267-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marie', NULL, 'Waters', 'Hartel', '1918-01-18', '2009-07-09', NULL
FROM plots WHERE plot_number = 'NW-G-267-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Schuck', 'Waters', '1937-05-27', '2015-12-19', NULL
FROM plots WHERE plot_number = 'NW-G-268-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Edward', 'Schuck', NULL, '1932-09-04', '2011-01-02', NULL
FROM plots WHERE plot_number = 'NW-G-268-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'William', 'Schuck', NULL, '1926-09-27', '1992-04-05', NULL
FROM plots WHERE plot_number = 'NW-G-268-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joyce', 'Elaine', 'Worden', NULL, '1926-04-28', '1989-12-27', NULL
FROM plots WHERE plot_number = 'NW-G-269-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', 'Wesley', 'Worden', NULL, '1922-02-05', '2008-04-27', NULL
FROM plots WHERE plot_number = 'NW-G-269-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'H', 'Crowe', NULL, '1927-03-03', '2010-12-01', NULL
FROM plots WHERE plot_number = 'NW-G-270-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alnita', NULL, 'Crowe', 'Dixon', '1939-03-03', '1997-12-04', NULL
FROM plots WHERE plot_number = 'NW-G-270-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'Dozier', 'Faulk', NULL, '1957-09-20', '1989-03-04', NULL
FROM plots WHERE plot_number = 'NW-G-271--1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', 'Lane', 'Faulk', NULL, '1928-06-17', '2016-05-10', NULL
FROM plots WHERE plot_number = 'NW-G-271--2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Viola', NULL, 'Broadwell', NULL, '1916-01-01', '1987-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-272-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', NULL, 'Broadwell', NULL, '1912-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-272-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'McNeil', 'Lee', '1920-01-01', '1989-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-273-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lucy', NULL, 'Sheldon', 'Watts', '1906-01-01', '1989-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-274-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'G.', 'Sheldon,', NULL, '1902-11-01', '1984-09-29', ' Jr.'
FROM plots WHERE plot_number = 'NW-G-274-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Timmy', 'Michael', 'Parker', NULL, '1959-09-15', '1993-01-21', NULL
FROM plots WHERE plot_number = 'NW-G-276-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Prosser', 'King', '1945-01-01', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-276-C-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Richard', 'McCracken', NULL, '1941-04-03', '2013-06-17', NULL
FROM plots WHERE plot_number = 'NW-G-277-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Henry', 'Florkiewicz', NULL, '1954-10-10', '2014-01-11', NULL
FROM plots WHERE plot_number = 'NW-G-277-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Eugene', 'Brown', NULL, '1948-09-10', '2014-01-12', NULL
FROM plots WHERE plot_number = 'NW-G-278-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vincent', 'Edward', 'Brown', NULL, '1973-04-28', '1993-03-18', NULL
FROM plots WHERE plot_number = 'NW-G-278-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Edgar', 'Brown', NULL, '1926-04-18', '2017-06-16', NULL
FROM plots WHERE plot_number = 'NW-G-278-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Horace', NULL, 'Gibbs', NULL, '1920-06-07', '1996-08-08', NULL
FROM plots WHERE plot_number = 'NW-G-280-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Willie', NULL, 'McCarthy', 'Gibbs', '1918-03-10', '2008-06-28', NULL
FROM plots WHERE plot_number = 'NW-G-280-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roderick', 'Wayne', 'McCarthy', NULL, '1955-10-11', '2013-09-19', 'Sr'
FROM plots WHERE plot_number = 'NW-G-280-A-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Martina', 'Nicole', 'Singleton', NULL, '1983-02-20', '2013-03-18', NULL
FROM plots WHERE plot_number = 'NW-G-281-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Louise', 'Frink', 'Jones', '1918-10-22', '1985-12-06', NULL
FROM plots WHERE plot_number = 'NW-G-283-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lewis', 'Herbert', 'Fulwood', NULL, '1931-02-05', '1988-12-26', NULL
FROM plots WHERE plot_number = 'NW-G-285-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ethel', NULL, 'Bellamy', 'Hankins', '1902-12-10', '1979-07-13', NULL
FROM plots WHERE plot_number = 'NW-G-286-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'Mills', NULL, '1902-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-287-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eddie', NULL, 'McCracken', NULL, '1939-08-02', '1978-10-17', NULL
FROM plots WHERE plot_number = 'NW-G-288-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hettie', 'G.', 'Echols', NULL, '1920-09-05', '1987-12-06', NULL
FROM plots WHERE plot_number = 'NW-G-289-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rosa', 'Marie', 'Floyd', NULL, '1934-09-18', '1979-01-14', NULL
FROM plots WHERE plot_number = 'NW-G-290-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Russell', 'S.', 'St. George', NULL, '1909-08-19', '1981-12-27', NULL
FROM plots WHERE plot_number = 'NW-G-291-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Warren', 'Elmer', 'Hankins', NULL, '1919-12-24', '1978-11-15', NULL
FROM plots WHERE plot_number = 'NW-G-292-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Ruth', 'Hankins', NULL, '1929-10-16', '1979-11-19', NULL
FROM plots WHERE plot_number = 'NW-G-293-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', NULL, 'Frink', NULL, '1912-03-05', '1980-03-16', NULL
FROM plots WHERE plot_number = 'NW-G-294-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christine', NULL, 'Henderson', 'Werren', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-295-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Hankins', NULL, '1931-01-01', '1992-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-296-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nelson', NULL, 'Hankins', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-296-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hazel', 'S.', 'Fullwood', NULL, '1917-01-26', '1980-02-27', NULL
FROM plots WHERE plot_number = 'NW-G-297-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benjamin', 'Levi', 'Fullwood', NULL, '1911-04-27', '1987-11-05', NULL
FROM plots WHERE plot_number = 'NW-G-297-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Brown', 'Delts', '1928-03-25', '2003-09-07', NULL
FROM plots WHERE plot_number = 'NW-G-298-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alfred', 'N.', 'Brown', NULL, '1922-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-298-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', NULL, 'White', 'Boles', '1918-01-01', '1992-02-09', NULL
FROM plots WHERE plot_number = 'NW-G-299-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joe', 'Bill', 'White', NULL, '1923-04-05', '1981-01-28', NULL
FROM plots WHERE plot_number = 'NW-G-299-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katherine', NULL, 'Garrett', 'St. George', '1897-01-26', '1990-08-29', NULL
FROM plots WHERE plot_number = 'NW-G-300-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Guy', 'Rutherford', 'Garrett', NULL, '1897-08-20', '1978-02-05', NULL
FROM plots WHERE plot_number = 'NW-G-300-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Milton', 'C.', 'Faulk', NULL, '1918-09-22', '1976-11-22', NULL
FROM plots WHERE plot_number = 'NW-G-301-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Miriam', NULL, 'Lane', 'Gore', NULL, '1986-10-06', NULL
FROM plots WHERE plot_number = 'NW-G-302-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tarsus', 'DeVaugh', 'Lane', NULL, '1906-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-302-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ray', 'S. "Tinker', 'Brown', NULL, '1935-05-27', '1987-01-19', NULL
FROM plots WHERE plot_number = 'NW-G-305-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christopher', 'Todd', 'White', NULL, '1960-12-19', '1992-02-24', NULL
FROM plots WHERE plot_number = 'NW-G-306-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', 'M.', 'Lewis', NULL, '1923-12-12', '2020-11-08', NULL
FROM plots WHERE plot_number = 'NW-G-307-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leonard', NULL, 'Lewis', NULL, '1922-04-30', '1987-09-26', NULL
FROM plots WHERE plot_number = 'NW-G-307-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', NULL, 'Greene', 'Bryant', '1924-08-31', '1987-11-03', NULL
FROM plots WHERE plot_number = 'NW-G-308-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Jacob', 'Greene', NULL, '1911-05-28', '1993-07-19', NULL
FROM plots WHERE plot_number = 'NW-G-308-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mrs. Chris', 'Cloud', 'Carmichael', NULL, '1951-10-08', '1988-11-04', NULL
FROM plots WHERE plot_number = 'NW-G-309-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Curtis', NULL, 'Scaggs', NULL, '1917-11-29', '2004-12-14', NULL
FROM plots WHERE plot_number = 'NW-G-309-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hattie', NULL, 'Scaggs', 'Rigsby', '1911-11-16', '1985-08-09', NULL
FROM plots WHERE plot_number = 'NW-G-309-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bessie', NULL, 'Cullis', 'Ringgold', '1904-03-23', '1992-05-26', NULL
FROM plots WHERE plot_number = 'NW-G-310-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rita', 'Ann', 'Pennington', 'Cullis', '1937-05-15', '2001-09-24', NULL
FROM plots WHERE plot_number = 'NW-G-310-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Elizabeth', 'Drew', 'Poole', '1937-07-20', '2014-05-27', NULL
FROM plots WHERE plot_number = 'NW-G-311-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', NULL, 'Drew', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-311-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Thomas', 'Drew', NULL, '1955-09-09', '2020-05-11', NULL
FROM plots WHERE plot_number = 'NW-G-312-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eula', 'Mae', 'Franck', NULL, '1945-10-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-313-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cecil', 'Conover', 'Franck', NULL, '1945-07-04', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-313-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nellie', 'E.', 'Dunkin', 'Wood', '1922-03-27', '1996-05-08', NULL
FROM plots WHERE plot_number = 'NW-G-314-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', 'Jean "Jo', 'Dunkin', 'Dunkin', '1944-10-16', '2016-02-17', NULL
FROM plots WHERE plot_number = 'NW-G-314-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nola', 'Cashwell', 'Fields', 'Miller', '1952-11-02', '2016-06-24', NULL
FROM plots WHERE plot_number = 'NW-G-315-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Anderson', 'Miller', NULL, '1913-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-316-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rose', NULL, 'Miller', 'Stidham', '1922-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-316-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Mack', 'Miller', NULL, '1937-09-20', '1998-04-15', NULL
FROM plots WHERE plot_number = 'NW-G-316-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Freida', 'Jane', 'Addison', NULL, '1927-01-01', '1990-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-316-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marie', 'M.', 'Johnson', NULL, '1912-01-01', '1984-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-317-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alton', 'D.', 'Johnson', NULL, '1906-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-317-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', 'Ashley', 'Thompson', NULL, '1923-09-22', '1978-04-05', NULL
FROM plots WHERE plot_number = 'NW-G-318-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wallace', 'Eugene', 'Thompson', NULL, '1924-12-20', '2002-10-22', NULL
FROM plots WHERE plot_number = 'NW-G-318-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Beverly', 'Joyce', 'Bowen', 'Champion', '1932-02-01', '2001-12-31', NULL
FROM plots WHERE plot_number = 'NW-G-319-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'A.', 'Bowen', NULL, '1923-09-24', '1982-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-319-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eula', 'Mae', 'Wilmoth', 'Smith', '1923-01-18', '2011-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-320-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Clarence', 'Wilmoth', NULL, '1921-08-12', '1983-03-01', NULL
FROM plots WHERE plot_number = 'NW-G-320-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'Bynum', 'Withers', '1907-09-17', '1980-09-15', NULL
FROM plots WHERE plot_number = 'NW-G-322-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'Lutterloh', 'Bynum', NULL, '1905-05-04', '1980-12-17', NULL
FROM plots WHERE plot_number = 'NW-G-322-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frankie', 'Joe', 'Kane', NULL, '1930-12-17', '1982-09-17', NULL
FROM plots WHERE plot_number = 'NW-G-323-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Claire', NULL, 'Kane', 'Cuthbert', '1912-11-10', '1987-08-13', NULL
FROM plots WHERE plot_number = 'NW-G-323-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyna', 'I.', 'Hewitt', NULL, '1921-03-26', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-324-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Victoria', NULL, 'Aldridge', 'Lancaster', '1924-08-18', '2004-01-10', NULL
FROM plots WHERE plot_number = 'NW-G-325-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Fisher', 'Aldridge', NULL, '1923-07-18', '1989-01-21', NULL
FROM plots WHERE plot_number = 'NW-G-325-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vivian', 'Mae', 'Atkinson', NULL, '1908-01-01', '1995-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-326-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Daniel', 'Kinchen', 'Atkinson', NULL, '1908-02-02', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-326-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eunice', NULL, 'Shaw', 'Weaver', '1926-01-25', '1993-12-28', NULL
FROM plots WHERE plot_number = 'NW-G-329-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Kenneth', 'Shaw', NULL, '1921-01-06', '1983-08-10', NULL
FROM plots WHERE plot_number = 'NW-G-329-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lula', NULL, 'Lykins', NULL, '1907-01-01', '1978-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-330-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Norvell', NULL, 'Lykins', NULL, '1910-01-01', '1983-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-330-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Samuel', 'Byrd', NULL, '1936-02-29', '2010-10-25', NULL
FROM plots WHERE plot_number = 'NW-G-331-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nadine', 'C.', 'Byrd', NULL, '1938-06-15', '1987-03-21', NULL
FROM plots WHERE plot_number = 'NW-G-331-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas R. 1-28-47/12-', '17-84 Grady Weldon,Jr', 'McGlamery', NULL, '1942-01-01', '1976-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-332-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'McGlamery', 'Swain', '1916-11-17', '1989-08-15', NULL
FROM plots WHERE plot_number = 'NW-G-332-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grady', 'Weldon "Mac', 'McGlamery', NULL, '1911-05-26', '1996-03-19', NULL
FROM plots WHERE plot_number = 'NW-G-332-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', NULL, 'Smith', 'McLaurin', '1921-01-01', '1996-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-333-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lewis', 'Holcomb', 'Smith', NULL, '1915-09-09', '1986-02-26', NULL
FROM plots WHERE plot_number = 'NW-G-333-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'A', 'Leveritt', 'Rich', '1922-11-06', '2012-04-29', NULL
FROM plots WHERE plot_number = 'NW-G-334-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Talmadge', 'Leveritt,', NULL, '1924-12-05', '1990-07-30', ' Jr.'
FROM plots WHERE plot_number = 'NW-G-334-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lee', 'A.', 'Rogers', NULL, '1950-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-335-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'H.', 'Andrew', 'Rogers', NULL, '1931-01-01', '1992-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-335-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'L.', 'Frankie', 'Rogers', NULL, '1944-01-01', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-335-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lela', 'G.', 'Johnson', 'Morris/Wilson', '1927-08-26', '1990-07-07', NULL
FROM plots WHERE plot_number = 'NW-G-336-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leon', 'Lanier', 'Morris', NULL, '1929-06-26', '2001-12-20', NULL
FROM plots WHERE plot_number = 'NW-G-336-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dianne', 'E', 'Williams', 'Morris', '1945-05-05', '2012-06-17', NULL
FROM plots WHERE plot_number = 'NW-G-336-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rae', 'deVaux', 'Fredricks', NULL, '1910-10-17', '2003-02-03', NULL
FROM plots WHERE plot_number = 'NW-G-337-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'deVaux', 'Fredricks', NULL, '1905-09-10', '1990-03-08', NULL
FROM plots WHERE plot_number = 'NW-G-337-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Monda', 'Louise', 'Failor', NULL, '1945-01-17', '2022-03-01', NULL
FROM plots WHERE plot_number = 'NW-G-338-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cari', 'Lynn', 'Failor', NULL, '1969-05-18', '1992-08-22', NULL
FROM plots WHERE plot_number = 'NW-G-338-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', 'F.', 'Phillips', NULL, '1933-11-18', '2000-06-13', NULL
FROM plots WHERE plot_number = 'NW-G-339-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jackson', 'W.', 'Phillips', NULL, '1928-04-27', '1993-08-09', NULL
FROM plots WHERE plot_number = 'NW-G-339-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sophie', NULL, 'Rogers', 'Jones', '1915-11-16', '1993-04-24', NULL
FROM plots WHERE plot_number = 'NW-G-340-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', 'Franklin', 'Rogers', NULL, '1912-09-20', '2001-02-07', NULL
FROM plots WHERE plot_number = 'NW-G-340-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Clatterbaugh', 'Woods', '1925-06-27', '2001-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-340-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', NULL, 'Irvine', 'Holden', '1932-12-25', '2005-05-29', NULL
FROM plots WHERE plot_number = 'NW-G-341-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Wilson', 'Irvine', NULL, '1926-01-27', '1994-01-10', NULL
FROM plots WHERE plot_number = 'NW-G-341-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Belk', 'T.', 'Dancy', NULL, '1909-02-26', '1993-09-13', NULL
FROM plots WHERE plot_number = 'NW-G-341-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'R.', 'Dancy', NULL, '1905-08-09', '1996-10-31', NULL
FROM plots WHERE plot_number = 'NW-G-341-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', 'L.', 'Davis', NULL, '1929-01-01', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-342-A-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anthony', 'Leroy', 'Davis', NULL, '1925-11-17', '2010-08-04', NULL
FROM plots WHERE plot_number = 'NW-G-342-A-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rev. Edward', 'A.', 'Hankins', NULL, '1924-03-08', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-342-B-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'W.', 'Hankins', NULL, '1913-06-30', '1994-01-09', NULL
FROM plots WHERE plot_number = 'NW-G-342-B-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Berris', NULL, 'Duncan', NULL, '1931-09-30', '2002-01-27', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-344---2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ina', 'M.', 'Duncan', NULL, '1935-02-28', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-344---3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mitchell', 'W.', 'Duncan', NULL, '1955-08-20', '1992-11-20', NULL
FROM plots WHERE plot_number = 'NW-G-344---4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', NULL, 'Harkin', NULL, '1909-01-01', '1986-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-345---1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lloyd', 'Robinson', 'Parker,', NULL, '1914-04-22', '1988-10-20', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-346-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emory', 'Lee', 'Russell', NULL, '1928-06-10', '1986-02-15', NULL
FROM plots WHERE plot_number = 'NW-G-347-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Israel', 'Jeptha', 'Gore', NULL, '1918-06-24', '1987-03-19', NULL
FROM plots WHERE plot_number = 'NW-G-348-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lenora', 'M', 'Gore', NULL, '1918-12-13', '2004-12-31', NULL
FROM plots WHERE plot_number = 'NW-G-349-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Edward', 'Parker', NULL, '1927-12-23', '2013-06-19', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-350-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louis', 'Leon', 'McMillian', NULL, '1959-07-03', '2013-03-28', 'Sr.'
FROM plots WHERE plot_number = 'NW-G-351-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris Mae 1913/1988', 'Charles Joseph 1911/', 'Lee', '1993', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-354-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', NULL, 'Parker', 'Alwilder', '1908-09-08', '1988-09-29', NULL
FROM plots WHERE plot_number = 'NW-G-355-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Michael', 'Swain', NULL, '1931-03-21', '1990-11-29', NULL
FROM plots WHERE plot_number = 'NW-G-357-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carroll', 'T.', 'Swain', NULL, '1899-11-16', '1975-09-04', NULL
FROM plots WHERE plot_number = 'NW-G-360-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Rutland', 'Swain', NULL, '1892-07-08', '1980-12-01', NULL
FROM plots WHERE plot_number = 'NW-G-360-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eva', 'F.', 'Milewski', NULL, '1912-01-20', '1981-09-19', NULL
FROM plots WHERE plot_number = 'NW-G-361-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Constant', 'E.', 'Milewski', NULL, '1908-02-08', '1975-09-17', NULL
FROM plots WHERE plot_number = 'NW-G-361-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerry', 'Lawrence', 'Calhoun', NULL, '1940-09-06', '1976-04-11', NULL
FROM plots WHERE plot_number = 'NW-G-362-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'A.', 'McMillion', NULL, '1926-09-04', '1976-01-31', NULL
FROM plots WHERE plot_number = 'NW-G-363-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tammy', NULL, 'Pierce', NULL, '1962-01-14', '1981-10-07', NULL
FROM plots WHERE plot_number = 'NW-G-364-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Wesley', 'Pierce', NULL, '1960-07-11', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-364-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Davis', 'Pierce', 'Buddy', '1930-09-05', '2001-03-16', NULL
FROM plots WHERE plot_number = 'NW-G-365-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Smith', 'Galloway', '1918-10-28', '1989-12-31', NULL
FROM plots WHERE plot_number = 'NW-G-366-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Walker', 'Smith', NULL, '1929-08-25', '1996-01-22', NULL
FROM plots WHERE plot_number = 'NW-G-366-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', 'Bernice', 'Becraft', NULL, '1926-12-19', '2003-11-14', NULL
FROM plots WHERE plot_number = 'NW-G-367-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cecil', 'Edman', 'Becraft', NULL, '1921-06-22', '1989-09-23', NULL
FROM plots WHERE plot_number = 'NW-G-367-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ray', NULL, 'Becraft', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-G-367-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lacy', 'Eugene', 'Alley', NULL, '1954-08-27', '2013-03-10', NULL
FROM plots WHERE plot_number = 'NW-G-368-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Flossie', NULL, 'Parker', 'Smith', '1929-07-20', '2014-09-24', NULL
FROM plots WHERE plot_number = 'NW-G-370-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', NULL, 'Parker', NULL, '1925-08-04', '1991-01-19', NULL
FROM plots WHERE plot_number = 'NW-G-370-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellen', NULL, 'Champion', 'Shytle', '1930-04-30', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-371-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lamar', 'Geran', 'Champion', NULL, '1927-07-04', '1990-08-15', NULL
FROM plots WHERE plot_number = 'NW-G-371-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Wilbur', 'Edwards', NULL, '1920-02-29', '1983-01-18', NULL
FROM plots WHERE plot_number = 'NW-G-372-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Darla', 'A.', 'LeClerc', NULL, '1952-01-18', NULL, NULL
FROM plots WHERE plot_number = 'NW-G-373-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur', 'B. "Butch', 'LeClerc', NULL, '1942-11-26', '1993-09-28', NULL
FROM plots WHERE plot_number = 'NW-G-373-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carlyle', 'H.', 'Richards', NULL, '1941-04-11', '1984-04-11', NULL
FROM plots WHERE plot_number = 'NW-G-374-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Richards', 'Nicol', '1909-12-24', '1996-06-09', NULL
FROM plots WHERE plot_number = 'NW-G-374-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Alfred', 'Richards', NULL, '1944-11-11', '2016-05-06', NULL
FROM plots WHERE plot_number = 'NW-G-374-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', 'Florence', 'Clary', NULL, '1915-11-30', '2008-07-01', NULL
FROM plots WHERE plot_number = 'NW-G-376-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Edward', 'Clary', NULL, '1914-05-06', '1994-01-27', NULL
FROM plots WHERE plot_number = 'NW-G-376-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', NULL, 'Clary', NULL, '1949-02-06', '2010-07-17', NULL
FROM plots WHERE plot_number = 'NW-G-376-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Jacob', 'Sherrod', NULL, '2002-05-31', '2002-05-31', NULL
FROM plots WHERE plot_number = 'NW-G-377-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerry', 'Sellers', 'Sherrod', NULL, '1940-06-10', '1979-06-03', NULL
FROM plots WHERE plot_number = 'NW-G-377-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Irene', 'Louise', 'Walcott', 'Elston', '1942-07-12', '2006-09-18', NULL
FROM plots WHERE plot_number = 'NW-G-379-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Malcolm', NULL, 'Walcott', NULL, '1937-02-26', '2022-01-31', NULL
FROM plots WHERE plot_number = 'NW-G-379-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Greer', 'McHose', NULL, '1929-09-04', '1975-01-06', NULL
FROM plots WHERE plot_number = 'NW-G-380-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Baxter', 'Sherrod', NULL, '1966-04-19', '1978-09-04', NULL
FROM plots WHERE plot_number = 'NW-G-382-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Melvin', 'Lee', 'Stewart', NULL, '1954-01-12', '1988-07-31', NULL
FROM plots WHERE plot_number = 'NW-G-383-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alfred', NULL, 'Wilson', NULL, '1908-01-01', '1988-01-01', NULL
FROM plots WHERE plot_number = 'NW-G-385-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earl', 'James', 'Pigg,', NULL, '1947-03-12', '1989-06-10', 'Jr.'
FROM plots WHERE plot_number = 'NW-G-386-1'
ON CONFLICT DO NOTHING;

