-- ============================================
-- Northwood Cemetery - Section H Data Migration
-- ============================================
-- Total plots: 1035
-- Deceased records: 408
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section H
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-H-001-1', 'H', 1, 1, 'standard', 'occupied', 4.0, 10.0, 'Willie & Alice P. Brown', '716 N. Burlington Ave, Southport, NC, 28461', '1994-05-05'),
('NW-H-001-2', 'H', 1, 2, 'standard', 'occupied', 4.0, 10.0, 'Willie & Alice P. Brown', '716 N. Burlington Ave, Southport, NC, 28461', '1994-05-05'),
('NW-H-002-1', 'H', 2, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie & Patricia McCracken', '803 N. Clarendon Ave., Southport, NC, 28461', '1994-07-05'),
('NW-H-002-2', 'H', 2, 2, 'standard', 'occupied', 4.0, 10.0, 'Archie & Patricia McCracken', '803 N. Clarendon Ave., Southport, NC, 28461', '1994-07-05'),
('NW-H-003-1', 'H', 3, 1, 'standard', 'occupied', 4.0, 10.0, 'George & Juliette Holmes', '217 E. 11th Street, Southport, NC, 28461', '1994-07-11'),
('NW-H-003-2', 'H', 3, 2, 'standard', 'occupied', 4.0, 10.0, 'George & Juliette Holmes', '217 E. 11th Street, Southport, NC, 28461', '1994-07-11'),
('NW-H-004-1', 'H', 4, 1, 'standard', 'occupied', 4.0, 10.0, 'Willie W. & Earla M. Parker', 'Southport, NC, 28461', '1994-07-11'),
('NW-H-004-2', 'H', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'Willie W. & Earla M. Parker', 'Southport, NC, 28461', '1994-07-11'),
('NW-H-005-1', 'H', 5, 1, 'standard', 'available', 4.0, 10.0, 'Harvey G. & Myrtle T. Ramsey', '205 River Drive, Southport, NC, 28461', '1994-08-11'),
('NW-H-005-2', 'H', 5, 2, 'standard', 'occupied', 4.0, 10.0, 'Harvey G. & Myrtle T. Ramsey', '205 River Drive, Southport, NC, 28461', '1994-08-11'),
('NW-H-006-1', 'H', 6, 1, 'standard', 'occupied', 4.0, 10.0, 'Louis Leon McMillan', '414 W. St. George, Southport, NC, 28461', '1994-11-15'),
('NW-H-006-2', 'H', 6, 2, 'standard', 'occupied', 4.0, 10.0, 'Louis Leon McMillan', '414 W. St. George, Southport, NC, 28461', '1994-11-15'),
('NW-H-007-1', 'H', 7, 1, 'standard', 'occupied', 4.0, 10.0, 'Eddie Davis', 'Southport, NC, 28461', '1996-01-11'),
('NW-H-008-1', 'H', 8, 1, 'standard', 'occupied', 4.0, 10.0, 'Maggie (C/o Carolyn Brown) Brown', '704 N. Caswell Ave., Southport, NC, 28461', '1996-01-29'),
('NW-H-009-1', 'H', 9, 1, 'standard', 'occupied', 4.0, 10.0, 'Aleyah Muhammad McKenzie', 'Southport, NC, 28461', NULL),
('NW-H-010-1', 'H', 10, 1, 'standard', 'occupied', 4.0, 10.0, 'Gertrude Betty (C/o Clifton M. Williams) Hill', '3020 N. 23rd St, Philadelphia, PA, 19132', '1995-04-13'),
('NW-H-011-1', 'H', 11, 1, 'standard', 'occupied', 4.0, 10.0, 'William Edward Parker,  Sr.', '821 N. Lord Street, Southport, NC, 28461', '1995-01-17'),
('NW-H-012-1', 'H', 12, 1, 'standard', 'occupied', 4.0, 10.0, 'Gertrude (C/o Elnora McNeil McNeil', '809 N. Clarendon Ave, Southport, NC, 28461', '1994-07-18'),
('NW-H-013-1', 'H', 13, 1, 'standard', 'occupied', 4.0, 10.0, 'Morella W. Catherine W. Gilmore /Wellington', '722 W. 11th Street, Southport, NC, 28461', '1994-09-24'),
('NW-H-013-2', 'H', 13, 2, 'standard', 'occupied', 4.0, 10.0, 'Morella W. Catherine W. Gilmore /Wellington', '722 W. 11th Street, Southport, NC, 28461', '1994-09-24'),
('NW-H-014-1', 'H', 14, 1, 'standard', 'available', 4.0, 10.0, 'Gary B. & Delores Shirley', 'P.O. Box 973, Long Beach, NC, 28465', '1994-07-06'),
('NW-H-014-2', 'H', 14, 2, 'standard', 'available', 4.0, 10.0, 'Gary B. & Delores Shirley', 'P.O. Box 973, Long Beach, NC, 28465', '1994-07-06'),
('NW-H-015-1', 'H', 15, 1, 'standard', 'occupied', 4.0, 10.0, 'William L. Holmes', '502 Owens Street, Southport, NC, 28461', '1995-11-13'),
('NW-H-015-2', 'H', 15, 2, 'standard', 'occupied', 4.0, 10.0, 'William L. Holmes', '502 Owens Street, Southport, NC, 28461', '1995-11-13'),
('NW-H-016-1', 'H', 16, 1, 'standard', 'available', 4.0, 10.0, 'Della Mae (William Henry) Morris', '912 N. Caswell Ave., Southport, NC, 28461', '1996-07-16'),
('NW-H-016-2', 'H', 16, 2, 'standard', 'occupied', 4.0, 10.0, 'Della Mae (William Henry) Morris', '912 N. Caswell Ave., Southport, NC, 28461', '1996-07-16'),
('NW-H-017-1', 'H', 17, 1, 'standard', 'occupied', 4.0, 10.0, 'Nina (James O. McNeil) Davis', '110 Hankins Street, Southport, NC, 28461', NULL),
('NW-H-017-2', 'H', 17, 2, 'standard', 'occupied', 4.0, 10.0, 'Nina (James O. McNeil) Davis', '110 Hankins Street, Southport, NC, 28461', NULL),
('NW-H-018-1', 'H', 18, 1, 'standard', 'available', 4.0, 10.0, 'Edward N. Lewis', '517 N. Atlantic Ave., Southport, NC, 28461', '1995-11-14'),
('NW-H-018-2', 'H', 18, 2, 'standard', 'available', 4.0, 10.0, 'Edward N. Lewis', '517 N. Atlantic Ave., Southport, NC, 28461', '1995-11-14'),
('NW-H-019-1', 'H', 19, 1, 'standard', 'available', 4.0, 10.0, 'Eddie Davis', 'Southport, NC, 28461', '1996-08-16'),
('NW-H-019-2', 'H', 19, 2, 'standard', 'available', 4.0, 10.0, 'Eddie Davis', 'Southport, NC, 28461', '1996-08-16'),
('NW-H-020-1', 'H', 20, 1, 'standard', 'occupied', 4.0, 10.0, 'Carolyn Brown', '704 N. Caswell Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-020-2', 'H', 20, 2, 'standard', 'occupied', 4.0, 10.0, 'Carolyn Brown', '704 N. Caswell Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-021-1', 'H', 21, 1, 'standard', 'available', 4.0, 10.0, 'Carolyn Brown', '704 N. Caswell Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-021-2', 'H', 21, 2, 'standard', 'available', 4.0, 10.0, 'Carolyn Brown', '704 N. Caswell Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-022-1', 'H', 22, 1, 'standard', 'occupied', 4.0, 10.0, 'Erna Swain', '831 S. Shore Drive, Southport/BSL, NC, 28461', '2000-12-29'),
('NW-H-022-2', 'H', 22, 2, 'standard', 'occupied', 4.0, 10.0, 'Erna Swain', '831 S. Shore Drive, Southport/BSL, NC, 28461', '2000-12-29'),
('NW-H-023-1', 'H', 23, 1, 'standard', 'occupied', 4.0, 10.0, 'James M. Sellers', '309 N. Atlantic Ave., Southport, NC, 28461', '1999-01-27'),
('NW-H-023-2', 'H', 23, 2, 'standard', 'occupied', 4.0, 10.0, 'James M. Sellers', '309 N. Atlantic Ave., Southport, NC, 28461', '1999-01-27'),
('NW-H-024-1', 'H', 24, 1, 'standard', 'occupied', 4.0, 10.0, 'Ruork Asa (C/o Lynn Sellers) Dosher,  Jr.', '309 N. Atlantic Ave, Southport, NC, 28461', '1995-05-08'),
('NW-H-024-2', 'H', 24, 2, 'standard', 'occupied', 4.0, 10.0, 'Ruork Asa (C/o Lynn Sellers) Dosher,  Jr.', '309 N. Atlantic Ave, Southport, NC, 28461', '1995-05-08'),
('NW-H-025-1', 'H', 25, 1, 'standard', 'available', 4.0, 10.0, 'Nina Davis', '110 Hankins Street, Southport, NC, 28461', '1996-09-03'),
('NW-H-026-1', 'H', 26, 1, 'standard', 'occupied', 4.0, 10.0, 'Heberto Smith', 'Southport, NC, 28461', '2008-06-30'),
('NW-H-027-1', 'H', 27, 1, 'standard', 'occupied', 4.0, 10.0, 'Christine Lenahan', '4138 Preston Place, Southport, NC, 28461', '1999-04-05'),
('NW-H-028-1', 'H', 28, 1, 'standard', 'occupied', 4.0, 10.0, 'Michael Lenahan', '4138 Preston Place, Southport, NC, 28461', '1999-03-05'),
('NW-H-029-1', 'H', 29, 1, 'standard', 'occupied', 4.0, 10.0, 'Michael Lenahan', '4138 Preston Place, Southport, NC, 28461', '1998-12-07'),
('NW-H-030-1', 'H', 30, 1, 'standard', 'occupied', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-031-1', 'H', 31, 1, 'standard', 'occupied', 4.0, 10.0, 'Patricia McCracken', '803 N. Clarendon Ave, Southport, NC, 28461', '2000-08-07'),
('NW-H-032-1', 'H', 32, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Galloway', '1019 N. Lord Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-033-1', 'H', 33, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Galloway', '1019 N. Lord Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-034-1', 'H', 34, 1, 'standard', 'occupied', 4.0, 10.0, 'Patricia Galloway', '818 W. 11th Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-035-1', 'H', 35, 1, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-036-1', 'H', 36, 1, 'standard', 'occupied', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-037-1', 'H', 37, 1, 'standard', 'occupied', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-037-2', 'H', 37, 2, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-038-1', 'H', 38, 1, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-038-2', 'H', 38, 2, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N. Rhett Street, Southport, NC, 28461', '1995-05-12'),
('NW-H-039-1', 'H', 39, 1, 'standard', 'available', 4.0, 10.0, 'Susan Shannon', '319 NE 51st Street, Oak Island, NC, 28465', '2003-11-14'),
('NW-H-039-2', 'H', 39, 2, 'standard', 'available', 4.0, 10.0, 'Susan Shannon', '319 NE 51st Street, Oak Island, NC, 28465', '2003-11-14'),
('NW-H-040-1', 'H', 40, 1, 'standard', 'occupied', 4.0, 10.0, 'Annmarie Goforth', '927 Mirror Lake Drive, Boiling Springs Lake, NC, 28461', '1999-05-10'),
('NW-H-040-2', 'H', 40, 2, 'standard', 'available', 4.0, 10.0, 'Annmarie Goforth', '927 Mirror Lake Drive, Boiling Springs Lake, NC, 28461', '1999-05-10'),
('NW-H-041-1', 'H', 41, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Galloway', '1019 N. Lord Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-041-2', 'H', 41, 2, 'standard', 'available', 4.0, 10.0, 'Tracy Galloway', '1019 N. Lord Street, Southport, NC, 28461', '2000-08-24'),
('NW-H-042-1', 'H', 42, 1, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N Rhett Street, Southport, NC, 28461', '2012-08-27'),
('NW-H-042-2', 'H', 42, 2, 'standard', 'available', 4.0, 10.0, 'Tom Frink', '319 N Rhett Street, Southport, NC, 28461', '2012-08-27'),
('NW-H-043-1', 'H', 43, 1, 'standard', 'available', 4.0, 10.0, 'Lisa N Tyson', '414 E. Leonard Street, Southport, 28461', '1999-03-19'),
('NW-H-043-2', 'H', 43, 2, 'standard', 'occupied', 4.0, 10.0, 'Lisa N Tyson', '414 E. Leonard Street, Southport, 28461', '1999-03-19'),
('NW-H-044-1', 'H', 44, 1, 'standard', 'available', 4.0, 10.0, 'Pamela Wells', '216-B Stuart Ave, Southport, NC, 28461', '1999-10-05'),
('NW-H-044-2', 'H', 44, 2, 'standard', 'occupied', 4.0, 10.0, 'Pamela Wells', '216-B Stuart Ave, Southport, NC, 28461', '1999-10-05'),
('NW-H-045-1', 'H', 45, 1, 'standard', 'occupied', 4.0, 10.0, 'Olivia Gore', '211 West St. George, Southport, NC, 28461', '2001-02-22'),
('NW-H-045-2', 'H', 45, 2, 'standard', 'available', 4.0, 10.0, 'Olivia Gore', '211 West St. George, Southport, NC, 28461', '2001-02-22'),
('NW-H-046-1', 'H', 46, 1, 'standard', 'available', 4.0, 10.0, 'Patricia Fravel', '419 McGlammery Street, Oak Island, NC, 28465', '2003-06-04'),
('NW-H-046-2', 'H', 46, 2, 'standard', 'occupied', 4.0, 10.0, 'Patricia Fravel', '419 McGlammery Street, Oak Island, NC, 28465', '2003-06-04'),
('NW-H-047-1', 'H', 47, 1, 'standard', 'occupied', 4.0, 10.0, 'Billy Bruton', '4569 Ceder St SE, Southport, NC, 28461', '2000-04-28'),
('NW-H-047-2', 'H', 47, 2, 'standard', 'occupied', 4.0, 10.0, 'Billy Bruton', '4569 Ceder St SE, Southport, NC, 28461', '2000-04-28'),
('NW-H-048-1', 'H', 48, 1, 'standard', 'occupied', 4.0, 10.0, 'Morris Long & Margie Ward', 'P. O. Box 10220, Southport, NC, 28461', '1995-03-01'),
('NW-H-048-2', 'H', 48, 2, 'standard', 'occupied', 4.0, 10.0, 'Morris Long & Margie Ward', 'P. O. Box 10220, Southport, NC, 28461', '1995-03-01'),
('NW-H-049-1', 'H', 49, 1, 'standard', 'occupied', 4.0, 10.0, 'Marvin Southern', '159 NE 32nd St, Long Beach, NC, 28465', '1994-05-06'),
('NW-H-050-1', 'H', 50, 1, 'standard', 'occupied', 4.0, 10.0, 'Ruby Beheler', '4510 Cove Road, Wilmington, NC, 28405', '1997-11-19'),
('NW-H-051-1', 'H', 51, 1, 'standard', 'occupied', 4.0, 10.0, 'Celestine Jackson', '215 W Owens St, Southport, NC, 28461', '2006-02-09'),
('NW-H-052-1', 'H', 52, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary S. Jackson', '611 N Burrington Ave, Southport, NC, 28461', '2004-05-26'),
('NW-H-053-1', 'H', 53, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Ann Deats', '105 NE 12th Street, Oak Island, NC, 28465', '2004-09-23'),
('NW-H-054-1', 'H', 54, 1, 'standard', 'occupied', 4.0, 10.0, 'Lisa L. Nash', '414 E. Leonard Street, Southport, NC, 28461', '1995-03-13'),
('NW-H-055-1', 'H', 55, 1, 'standard', 'occupied', 4.0, 10.0, 'John Haney', '411 S. Kerr Ave,, Wilmington, NC, 28403', '1999-01-22'),
('NW-H-056-1', 'H', 56, 1, 'standard', 'available', 4.0, 10.0, 'Dale Cummings', '974 Wimberly Road, BSL Southport, NC, 28461', '2001-03-30'),
('NW-H-057-1', 'H', 57, 1, 'standard', 'available', 4.0, 10.0, 'Dale Cummings', '974 Wimberly Road, BSL Southport, NC, 28461', '2001-03-30'),
('NW-H-058-1', 'H', 58, 1, 'standard', 'occupied', 4.0, 10.0, 'Dale Cummings', '974 Wimberly Road, BSL Southport, NC, 28461', '2001-03-02'),
('NW-H-059-1', 'H', 59, 1, 'standard', 'occupied', 4.0, 10.0, 'Michael E. Bellamy', '337 Gather Road, Belmont, NC, 28461', '2006-03-27'),
('NW-H-059-2', 'H', 59, 2, 'standard', 'occupied', 4.0, 10.0, 'Michael E. Bellamy', '337 Gather Road, Belmont, NC, 28461', '2006-03-27'),
('NW-H-059-3', 'H', 59, 3, 'standard', 'available', 4.0, 10.0, 'Michael E. Bellamy', '337 Gather Road, Belmont, NC, 28461', '2006-03-27'),
('NW-H-059-4', 'H', 59, 4, 'standard', 'occupied', 4.0, 10.0, 'Michael E. Bellamy', '337 Gather Road, Belmont, NC, 28461', '2006-03-27'),
('NW-H-060-1', 'H', 60, 1, 'standard', 'available', 4.0, 10.0, 'James R. Prevatte,  Jr.', 'P.O. Box 10969, Southport, NC, 28461', '1994-05-13'),
('NW-H-060-2', 'H', 60, 2, 'standard', 'occupied', 4.0, 10.0, 'James R. Prevatte,  Jr.', 'P.O. Box 10969, Southport, NC, 28461', '1994-05-13'),
('NW-H-060-3', 'H', 60, 3, 'standard', 'occupied', 4.0, 10.0, 'James R. Prevatte,  Jr.', 'P.O. Box 10969, Southport, NC, 28461', '1994-05-13'),
('NW-H-060-4', 'H', 60, 4, 'standard', 'available', 4.0, 10.0, 'James R. Prevatte,  Jr.', 'P.O. Box 10969, Southport, NC, 28461', '1994-05-13'),
('NW-H-061-1', 'H', 61, 1, 'standard', 'occupied', 4.0, 10.0, 'Leola Swain', '732 N. Lord Street, Southport, NC, 28461', '1997-02-12'),
('NW-H-061-2', 'H', 61, 2, 'standard', 'occupied', 4.0, 10.0, 'Leola Swain', '732 N. Lord Street, Southport, NC, 28461', '1997-02-12'),
('NW-H-061-3', 'H', 61, 3, 'standard', 'available', 4.0, 10.0, 'Leola Swain', '732 N. Lord Street, Southport, NC, 28461', '1997-02-12'),
('NW-H-061-4', 'H', 61, 4, 'standard', 'available', 4.0, 10.0, 'Leola Swain', '732 N. Lord Street, Southport, NC, 28461', '1997-02-12'),
('NW-H-062-1', 'H', 62, 1, 'standard', 'available', 4.0, 10.0, 'Augustus N. & Myrtle Swan', '7935 River Road, S.E., Southport, NC, 28461', '1995-01-19'),
('NW-H-062-2', 'H', 62, 2, 'standard', 'occupied', 4.0, 10.0, 'Augustus N. & Myrtle Swan', '7935 River Road, S.E., Southport, NC, 28461', '1995-01-19'),
('NW-H-062-3', 'H', 62, 3, 'standard', 'occupied', 4.0, 10.0, 'Augustus N. & Myrtle Swan', '7935 River Road, S.E., Southport, NC, 28461', '1995-01-19'),
('NW-H-062-4', 'H', 62, 4, 'standard', 'occupied', 4.0, 10.0, 'Augustus N. & Myrtle Swan', '7935 River Road, S.E., Southport, NC, 28461', '1995-01-19'),
('NW-H-063-1', 'H', 63, 1, 'standard', 'occupied', 4.0, 10.0, 'Dianne Bennett', '4269 Long Beach Rd.26, Southport, NC, 28461', '1996-07-01'),
('NW-H-064-1', 'H', 64, 1, 'standard', 'occupied', 4.0, 10.0, 'Dianne Bennett', '4269 Long Beach Rd.26, Southport, NC, 28461', '1996-07-01'),
('NW-H-065-1', 'H', 65, 1, 'standard', 'occupied', 4.0, 10.0, 'Nancy S. Leggett', 'P.O. Box 31, Bolivia, NC, 28422', '2000-12-18'),
('NW-H-066-1', 'H', 66, 1, 'standard', 'occupied', 4.0, 10.0, 'Grover Maurice Sinclair', '315 Barbee Blvd., Yaupon Beach, NC, 28465', '1998-07-15'),
('NW-H-067-1', 'H', 67, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, NC, 28461', '1994-08-08'),
('NW-H-067-2', 'H', 67, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, NC, 28461', '1994-08-08'),
('NW-H-068-1', 'H', 68, 1, 'standard', 'available', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, 28461', '1994-08-08'),
('NW-H-068-2', 'H', 68, 2, 'standard', 'available', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, 28461', '1994-08-08'),
('NW-H-069-1', 'H', 69, 1, 'standard', 'available', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, 28461', '1994-08-08'),
('NW-H-069-2', 'H', 69, 2, 'standard', 'available', 4.0, 10.0, 'Robert N. & Loretta G. Clevenger', '702 N. Atlantic Ave, Southport, 28461', '1994-08-08'),
('NW-H-070-1', 'H', 70, 1, 'standard', 'available', 4.0, 10.0, 'Marjorie Clemmons', 'P.O. Box 10101, Southport, NC, 28461', '2003-11-13'),
('NW-H-070-2', 'H', 70, 2, 'standard', 'available', 4.0, 10.0, 'Marjorie Clemmons', 'P.O. Box 10101, Southport, NC, 28461', '2003-11-13'),
('NW-H-071-1', 'H', 71, 1, 'standard', 'available', 4.0, 10.0, 'LA Trisha McKenzie Dye', '113 W. St George St, Southport, NC, 28461', '2002-03-06'),
('NW-H-071-2', 'H', 71, 2, 'standard', 'available', 4.0, 10.0, 'LA Trisha McKenzie Dye', '113 W. St George St, Southport, NC, 28461', '2002-03-06'),
('NW-H-072-1', 'H', 72, 1, 'standard', 'occupied', 4.0, 10.0, 'Dorothy Piper', '305 Mercer Ave., Yaupon Beach, NC, 28465', '1997-03-06'),
('NW-H-072-2', 'H', 72, 2, 'standard', 'available', 4.0, 10.0, 'Dorothy Piper', '305 Mercer Ave., Yaupon Beach, NC, 28465', '1997-03-06'),
('NW-H-073-1', 'H', 73, 1, 'standard', 'occupied', 4.0, 10.0, 'Dorothy Piper', '305 Mercer Ave, Yaupon Beach, NC, 28465', '1997-08-18'),
('NW-H-073-2', 'H', 73, 2, 'standard', 'available', 4.0, 10.0, 'Dorothy Piper', '305 Mercer Ave, Yaupon Beach, NC, 28465', '1997-08-18'),
('NW-H-074-1', 'H', 74, 1, 'standard', 'available', 4.0, 10.0, 'Norman Jones', '113 W. St. George St., Southport, NC, 28461', '2002-04-11'),
('NW-H-074-2', 'H', 74, 2, 'standard', 'available', 4.0, 10.0, 'Norman Jones', '113 W. St. George St., Southport, NC, 28461', '2002-04-11'),
('NW-H-075-1', 'H', 75, 1, 'standard', 'occupied', 4.0, 10.0, 'A.C. & Willie H. Miller', '417 Crowell, Yaupon Beach, NC, 28465', '1999-04-12'),
('NW-H-075-2', 'H', 75, 2, 'standard', 'occupied', 4.0, 10.0, 'A.C. & Willie H. Miller', '417 Crowell, Yaupon Beach, NC, 28465', '1999-04-12'),
('NW-H-076-1', 'H', 76, 1, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-09-09'),
('NW-H-076-2', 'H', 76, 2, 'standard', 'occupied', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-09-09'),
('NW-H-077-1', 'H', 77, 1, 'standard', 'available', 4.0, 10.0, 'William G. Stanley, . Jr.', '132 Park Ave., Southport, NC, 28461', '1994-09-14'),
('NW-H-077-2', 'H', 77, 2, 'standard', 'available', 4.0, 10.0, 'William G. Stanley, . Jr.', '132 Park Ave., Southport, NC, 28461', '1994-09-14'),
('NW-H-078-1', 'H', 78, 1, 'standard', 'available', 4.0, 10.0, 'William G. Stanley, Jr.', '132 Park Ave., Southport, NC, 28461', '1994-09-14'),
('NW-H-078-2', 'H', 78, 2, 'standard', 'occupied', 4.0, 10.0, 'William G. Stanley, Jr.', '132 Park Ave., Southport, NC, 28461', '1994-09-14'),
('NW-H-079-1', 'H', 79, 1, 'standard', 'occupied', 4.0, 10.0, 'Lavada Bevel', '809 E Leonard, Southport, NC, 28461', '1994-09-29'),
('NW-H-079-2', 'H', 79, 2, 'standard', 'occupied', 4.0, 10.0, 'Lavada Bevel', '809 E Leonard, Southport, NC, 28461', '1994-09-29'),
('NW-H-079-3', 'H', 79, 3, 'standard', 'available', 4.0, 10.0, 'Lavada Bevel', '809 E Leonard, Southport, NC, 28461', '1994-09-29'),
('NW-H-080-1', 'H', 80, 1, 'standard', 'available', 4.0, 10.0, 'Lavada Bevel', 'P.O. Box 10253, Southport, NC, 28461', '1994-09-29'),
('NW-H-080-2', 'H', 80, 2, 'standard', 'occupied', 4.0, 10.0, 'Lavada Bevel', 'P.O. Box 10253, Southport, NC, 28461', '1994-09-29'),
('NW-H-080-3', 'H', 80, 3, 'standard', 'available', 4.0, 10.0, 'Lavada Bevel', 'P.O. Box 10253, Southport, NC, 28461', '1994-09-29'),
('NW-H-081-1', 'H', 81, 1, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-07-30'),
('NW-H-081-2', 'H', 81, 2, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-07-30'),
('NW-H-081-3', 'H', 81, 3, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-07-30'),
('NW-H-082-1', 'H', 82, 1, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-09-09'),
('NW-H-082-2', 'H', 82, 2, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-09-09'),
('NW-H-082-3', 'H', 82, 3, 'standard', 'available', 4.0, 10.0, 'Annie Elizabeth Gore', '1101 N Caswell Ave., Southport, NC, 28461', '2004-09-09'),
('NW-H-083-1', 'H', 83, 1, 'standard', 'occupied', 4.0, 10.0, 'Reva Faye Vance', '570 Fifty Lakes Drive, Southport, NC, 28461', '2007-02-26'),
('NW-H-083-2', 'H', 83, 2, 'standard', 'occupied', 4.0, 10.0, 'Reva Faye Vance', '570 Fifty Lakes Drive, Southport, NC, 28461', '2007-02-26'),
('NW-H-083-3', 'H', 83, 3, 'standard', 'occupied', 4.0, 10.0, 'Reva Faye Vance', '570 Fifty Lakes Drive, Southport, NC, 28461', '2007-02-26'),
('NW-H-084-1', 'H', 84, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Anne & Kim Ann Russ', 'Southport, NC, 28461', '2004-08-24'),
('NW-H-084-2', 'H', 84, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Anne & Kim Ann Russ', 'Southport, NC, 28461', '2004-08-24'),
('NW-H-084-3', 'H', 84, 3, 'standard', 'available', 4.0, 10.0, 'Mary Anne & Kim Ann Russ', 'Southport, NC, 28461', '2004-08-24'),
('NW-H-085-1', 'H', 85, 1, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1998-02-13'),
('NW-H-085-2', 'H', 85, 2, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1998-02-13'),
('NW-H-086-1', 'H', 86, 1, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-11-01'),
('NW-H-086-2', 'H', 86, 2, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-11-01'),
('NW-H-087-1', 'H', 87, 1, 'standard', 'occupied', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-10-10'),
('NW-H-087-2', 'H', 87, 2, 'standard', 'occupied', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-10-10'),
('NW-H-088-1', 'H', 88, 1, 'standard', 'available', 4.0, 10.0, 'Justin & Kelly Helbig', '1286 N Shore Dr. BSL, Southport, NC, 28461', '2010-06-08'),
('NW-H-088-2', 'H', 88, 2, 'standard', 'available', 4.0, 10.0, 'Justin & Kelly Helbig', '1286 N Shore Dr. BSL, Southport, NC, 28461', '2010-06-08'),
('NW-H-089-1', 'H', 89, 1, 'standard', 'occupied', 4.0, 10.0, 'Floyd Gallop', '120 NE 34th St., Oak Island, 28465', '2005-02-08'),
('NW-H-089-2', 'H', 89, 2, 'standard', 'occupied', 4.0, 10.0, 'Floyd Gallop', '120 NE 34th St., Oak Island, 28465', '2005-02-08'),
('NW-H-090-1', 'H', 90, 1, 'standard', 'occupied', 4.0, 10.0, 'Mike Middleton', '213 N. Clarendon, Southport, NC, 28461', '1998-03-13'),
('NW-H-090-2', 'H', 90, 2, 'standard', 'occupied', 4.0, 10.0, 'Mike Middleton', '213 N. Clarendon, Southport, NC, 28461', '1998-03-13'),
('NW-H-091-1', 'H', 91, 1, 'standard', 'occupied', 4.0, 10.0, 'Helga Beacham', '408 Norton Street, Oak Island, NC, 28465', '2000-04-18'),
('NW-H-091-2', 'H', 91, 2, 'standard', 'available', 4.0, 10.0, 'Helga Beacham', '408 Norton Street, Oak Island, NC, 28465', '2000-04-18'),
('NW-H-092-1', 'H', 92, 1, 'standard', 'occupied', 4.0, 10.0, 'Kim Parker', '503 W Owens Street, Southport, NC, 28461', '2006-10-03'),
('NW-H-092-2', 'H', 92, 2, 'standard', 'occupied', 4.0, 10.0, 'Kim Parker', '503 W Owens Street, Southport, NC, 28461', '2006-10-03'),
('NW-H-093-1', 'H', 93, 1, 'standard', 'occupied', 4.0, 10.0, 'Justin & Kelly Helbig', '1286 N Shore Dr. BSL, Southport, NC, 28461', '2010-06-08'),
('NW-H-093-2', 'H', 93, 2, 'standard', 'available', 4.0, 10.0, 'Justin & Kelly Helbig', '1286 N Shore Dr. BSL, Southport, NC, 28461', '2010-06-08'),
('NW-H-094-1', 'H', 94, 1, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-11-01'),
('NW-H-094-2', 'H', 94, 2, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, NC, 28461', '1997-11-01'),
('NW-H-095-1', 'H', 95, 1, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1997-11-01'),
('NW-H-095-2', 'H', 95, 2, 'standard', 'occupied', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1997-11-01'),
('NW-H-096-1', 'H', 96, 1, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1998-02-13'),
('NW-H-096-2', 'H', 96, 2, 'standard', 'available', 4.0, 10.0, 'James E. Stanley', '910 N. Lord Street, Southport, 28461', '1998-02-13'),
('NW-H-097-1', 'H', 97, 1, 'standard', 'occupied', 4.0, 10.0, 'Margaret Hankins', '926 Hankinsville Road, Southport, NC, 28461', '2006-03-03'),
('NW-H-098-1', 'H', 98, 1, 'standard', 'occupied', 4.0, 10.0, 'James N Fullwood', '712 N Lord Street, Southport, MC, 28461', '2009-08-06'),
('NW-H-099-1', 'H', 99, 1, 'standard', 'occupied', 4.0, 10.0, 'Kim Parker', '503 W Owens Street, Southport, NC, 28461', '2007-07-17'),
('NW-H-100-1', 'H', 100, 1, 'standard', 'occupied', 4.0, 10.0, 'Herlene Garrett', 'P.O. Box 10243, Southport, NC, 28461', '2006-03-22'),
('NW-H-101-1', 'H', 101, 1, 'standard', 'occupied', 4.0, 10.0, 'George Kenneth Garrett', '901 N Caswell Ave, Southport, NC, 28461', '2006-02-23'),
('NW-H-102-1', 'H', 102, 1, 'standard', 'occupied', 4.0, 10.0, 'Vicki Williams', '19 Yaupon Way, Oak Island, NC, 28465', '2004-12-13'),
('NW-H-103-1', 'H', 103, 1, 'standard', 'occupied', 4.0, 10.0, 'William D. (C/o Judy Ezzell Blanchard) Ezzell', 'P.O. Box 1425, Burgaw, NC, 28425', '1996-07-01'),
('NW-H-104-1', 'H', 104, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-105-1', 'H', 105, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-106-1', 'H', 106, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-107-1', 'H', 107, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-108-1', 'H', 108, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-109-1', 'H', 109, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-109-2', 'H', 109, 2, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-110-1', 'H', 110, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-110-2', 'H', 110, 2, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-111-1', 'H', 111, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-111-2', 'H', 111, 2, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-09-18'),
('NW-H-112-1', 'H', 112, 1, 'standard', 'occupied', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-112-2', 'H', 112, 2, 'standard', 'occupied', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-113-1', 'H', 113, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-113-2', 'H', 113, 2, 'standard', 'occupied', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-114-1', 'H', 114, 1, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-114-2', 'H', 114, 2, 'standard', 'available', 4.0, 10.0, 'Robin Dale Swain', '215 Frink Drive, Southport, NC, 28461', '2000-01-03'),
('NW-H-115-1', 'H', 115, 1, 'standard', 'available', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-115-2', 'H', 115, 2, 'standard', 'available', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-116-1', 'H', 116, 1, 'standard', 'available', 4.0, 10.0, 'Ronald P. Caster', 'East 8th Street, Southport, NC, 28461', '2001-04-09'),
('NW-H-116-2', 'H', 116, 2, 'standard', 'available', 4.0, 10.0, 'Ronald P. Caster', 'East 8th Street, Southport, NC, 28461', '2001-04-09'),
('NW-H-117-1', 'H', 117, 1, 'standard', 'occupied', 4.0, 10.0, 'Lavonne Earl Schronce', '117 NW 27th St, Oak Island, NC, 28461', '2003-02-01'),
('NW-H-117-2', 'H', 117, 2, 'standard', 'occupied', 4.0, 10.0, 'Lavonne Earl Schronce', '117 NW 27th St, Oak Island, NC, 28461', '2003-02-01'),
('NW-H-118-1', 'H', 118, 1, 'standard', 'available', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2006-02-23'),
('NW-H-118-2', 'H', 118, 2, 'standard', 'available', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2006-02-23'),
('NW-H-119-1', 'H', 119, 1, 'standard', 'available', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2006-02-23'),
('NW-H-119-2', 'H', 119, 2, 'standard', 'available', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2006-02-23'),
('NW-H-120-1', 'H', 120, 1, 'standard', 'available', 4.0, 10.0, 'Michelle Hill', '106 Hankins Drive, Southport, NC, 28461', '2013-09-09'),
('NW-H-120-2', 'H', 120, 2, 'standard', 'available', 4.0, 10.0, 'Michelle Hill', '106 Hankins Drive, Southport, NC, 28461', '2013-09-09'),
('NW-H-121-1', 'H', 121, 1, 'standard', 'available', 4.0, 10.0, 'Diane Baxter', '6058 Bethel Road SE, Southport, NC, 28461', '2008-06-10'),
('NW-H-122-1', 'H', 122, 1, 'standard', 'available', 4.0, 10.0, 'Flora G Smith', '1070 Pine Crest Dr, BSL, NC, 28461', '2013-03-01'),
('NW-H-123-1', 'H', 123, 1, 'standard', 'occupied', 4.0, 10.0, 'Jason Smith', '534 Mission Rd, BSL, NC, 28461', '2011-09-20'),
('NW-H-124-1', 'H', 124, 1, 'standard', 'occupied', 4.0, 10.0, 'John Chaffin', '214 N Lord Street, Southport, NC, 28461', '2007-11-02'),
('NW-H-125-1', 'H', 125, 1, 'standard', 'available', 4.0, 10.0, 'Ronald Paul Caster', 'East 8th Street, Southport, NC, 28461', '2001-04-09'),
('NW-H-126-1', 'H', 126, 1, 'standard', 'available', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-127-1', 'H', 127, 1, 'standard', 'occupied', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-128-1', 'H', 128, 1, 'standard', 'occupied', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-129-1', 'H', 129, 1, 'standard', 'occupied', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-130-1', 'H', 130, 1, 'standard', 'occupied', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-131-1', 'H', 131, 1, 'standard', 'occupied', 4.0, 10.0, 'Eltha Caster', '405 E. Leonard, Southport, NC, 28461', '1995-05-15'),
('NW-H-132-1', 'H', 132, 1, 'standard', 'available', 4.0, 10.0, 'Thomas A. Blair', 'Southport, 28461', '1995-04-17'),
('NW-H-132-2', 'H', 132, 2, 'standard', 'occupied', 4.0, 10.0, 'Thomas A. Blair', 'Southport, 28461', '1995-04-17'),
('NW-H-132-3', 'H', 132, 3, 'standard', 'available', 4.0, 10.0, 'Thomas A. Blair', 'Southport, 28461', '1995-04-17'),
('NW-H-132-4', 'H', 132, 4, 'standard', 'available', 4.0, 10.0, 'Thomas A. Blair', 'Southport, 28461', '1995-04-17'),
('NW-H-133-1', 'H', 133, 1, 'standard', 'available', 4.0, 10.0, 'Pat Howard', '705 Cape Harbor Drive, Southport, NC, 28461', '2001-06-07'),
('NW-H-133-2', 'H', 133, 2, 'standard', 'available', 4.0, 10.0, 'Pat Howard', '705 Cape Harbor Drive, Southport, NC, 28461', '2001-06-07'),
('NW-H-133-3', 'H', 133, 3, 'standard', 'available', 4.0, 10.0, 'Pat Howard', '705 Cape Harbor Drive, Southport, NC, 28461', '2001-06-07'),
('NW-H-133-4', 'H', 133, 4, 'standard', 'available', 4.0, 10.0, 'Pat Howard', '705 Cape Harbor Drive, Southport, NC, 28461', '2001-06-07'),
('NW-H-134-1', 'H', 134, 1, 'standard', 'available', 4.0, 10.0, 'Jennette Reeves', '1105 N Caswell Ave, Southport, NC, 28461', '2004-08-18'),
('NW-H-134-2', 'H', 134, 2, 'standard', 'available', 4.0, 10.0, 'Jennette Reeves', '1105 N Caswell Ave, Southport, NC, 28461', '2004-08-18'),
('NW-H-134-3', 'H', 134, 3, 'standard', 'available', 4.0, 10.0, 'Jennette Reeves', '1105 N Caswell Ave, Southport, NC, 28461', '2004-08-18'),
('NW-H-134-4', 'H', 134, 4, 'standard', 'available', 4.0, 10.0, 'Jennette Reeves', '1105 N Caswell Ave, Southport, NC, 28461', '2004-08-18'),
('NW-H-135-', 'H', 135, 1, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-135-1', 'H', 135, 1, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-135-2', 'H', 135, 2, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-135-3', 'H', 135, 3, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-135-4', 'H', 135, 4, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-136-1', 'H', 136, 1, 'standard', 'occupied', 4.0, 10.0, 'Rufus King', 'Southport, 28461', '1998-09-07'),
('NW-H-137-1', 'H', 137, 1, 'standard', 'occupied', 4.0, 10.0, 'Rufus King', 'Southport, 28461', '1998-09-07'),
('NW-H-138-1', 'H', 138, 1, 'standard', 'occupied', 4.0, 10.0, 'Joe Buchanan', '1372 South Shore Driv, Southport, NC, 28461', '2005-12-30'),
('NW-H-139-1', 'H', 139, 1, 'standard', 'available', 4.0, 10.0, 'Joe Buchanan', '1372 South Shore Driv, Southport, NC, 28461', '2005-12-30'),
('NW-H-140-1', 'H', 140, 1, 'standard', 'occupied', 4.0, 10.0, 'Linda Evans', '2650 Evans Road, Bolivia, NC, 28422', '2009-06-24'),
('NW-H-141-1', 'H', 141, 1, 'standard', 'available', 4.0, 10.0, 'Robert Willis', '215 Willis Drive, Southport, NC, 28461', '2004-07-14'),
('NW-H-142-1', 'H', 142, 1, 'standard', 'available', 4.0, 10.0, 'Jennette Reeves', '1105 N Caswell Ave, Southport, NC, 28461', '2004-08-18'),
('NW-H-143-1', 'H', 143, 1, 'standard', 'occupied', 4.0, 10.0, 'Pat Howard', '705 Cape Harbor Drive, Southport, NC, 28461', '2001-06-07'),
('NW-H-144-1', 'H', 144, 1, 'standard', 'available', 4.0, 10.0, 'Ronnie Caster', '401 E 8th Steet, Southport, NC, 28461', '2004-08-18'),
('NW-H-145-1', 'H', 145, 1, 'standard', 'occupied', 4.0, 10.0, 'Tedder (Jeffrey/Deed to SybilTedderCarden Myerr /Walte', '217 N.E. 54th St, Long Beach, NC, 28465', NULL),
('NW-H-146-1', 'H', 146, 1, 'standard', 'available', 4.0, 10.0, 'Sandra Lucas Hyde', '691 Efteria Lane, Myrtle Beach, SC, 29572', '2006-04-05'),
('NW-H-147-1', 'H', 147, 1, 'standard', 'occupied', 4.0, 10.0, 'Emma Location by mistake McCracken', '627 Jabbertown Road, Southport, 28461', '2001-01-15'),
('NW-H-148-1', 'H', 148, 1, 'standard', 'occupied', 4.0, 10.0, 'Marcus C/o Gary D. Hankins Hankins', 'P.O. Box 10203, Southport, NC, 28461', '1997-04-28'),
('NW-H-149-1', 'H', 149, 1, 'standard', 'occupied', 4.0, 10.0, 'Francis Walter Smith', 'P.O. Box 11028, Southport, NC, 28461', '2012-10-16'),
('NW-H-150-1', 'H', 150, 1, 'standard', 'occupied', 4.0, 10.0, 'Elanor Stanzlaus', '108 SE 18th St, Oak Island, NC, 28465', '2010-04-22'),
('NW-H-151-1', 'H', 151, 1, 'standard', 'occupied', 4.0, 10.0, 'Daniel & JoAnn Callahan', '219 Herring Dr., Southport, NC, 28461', '1997-02-18'),
('NW-H-151-2', 'H', 151, 2, 'standard', 'available', 4.0, 10.0, 'Daniel & JoAnn Callahan', '219 Herring Dr., Southport, NC, 28461', '1997-02-18'),
('NW-H-151-3', 'H', 151, 3, 'standard', 'available', 4.0, 10.0, 'Daniel & JoAnn Callahan', '219 Herring Dr., Southport, NC, 28461', '1997-02-18'),
('NW-H-152-1', 'H', 152, 1, 'standard', 'occupied', 4.0, 10.0, 'Daniel & JoAnn Callahan', '219 Herring Dr., Southport, NC, 28461', '1997-02-18'),
('NW-H-152-2', 'H', 152, 2, 'standard', 'available', 4.0, 10.0, 'Daniel & JoAnn Callahan', '219 Herring Dr., Southport, NC, 28461', '1997-02-18'),
('NW-H-153-1', 'H', 153, 1, 'standard', 'available', 4.0, 10.0, 'Joyce Hankins', '706 Burrington Ave., Southport, NC, 28461', '1997-10-01'),
('NW-H-153-2', 'H', 153, 2, 'standard', 'available', 4.0, 10.0, 'Joyce Hankins', '706 Burrington Ave., Southport, NC, 28461', '1997-10-01'),
('NW-H-154-1', 'H', 154, 1, 'standard', 'occupied', 4.0, 10.0, 'Joseph & Mildred Silveira', '100 Herring Drive, Southport, NC, 28461', '2009-03-09'),
('NW-H-154-2', 'H', 154, 2, 'standard', 'occupied', 4.0, 10.0, 'Joseph & Mildred Silveira', '100 Herring Drive, Southport, NC, 28461', '2009-03-09'),
('NW-H-155-1', 'H', 155, 1, 'standard', 'occupied', 4.0, 10.0, 'James E. McCracken', '1002 Baristers Court, Southport, NC, 28461', '2000-12-29'),
('NW-H-155-2', 'H', 155, 2, 'standard', 'occupied', 4.0, 10.0, 'James E. McCracken', '1002 Baristers Court, Southport, NC, 28461', '2000-12-29'),
('NW-H-156-1', 'H', 156, 1, 'standard', 'available', 4.0, 10.0, 'Emma McCracken', '627 Jabbertown Road, Southport, NC, 28461', '2001-01-15'),
('NW-H-156-2', 'H', 156, 2, 'standard', 'available', 4.0, 10.0, 'Emma McCracken', '627 Jabbertown Road, Southport, NC, 28461', '2001-01-15'),
('NW-H-157-1', 'H', 157, 1, 'standard', 'available', 4.0, 10.0, 'Ronald Lee Thompson', '106 River Drive, Southport, NC, 28461', '1999-08-19'),
('NW-H-157-2', 'H', 157, 2, 'standard', 'available', 4.0, 10.0, 'Ronald Lee Thompson', '106 River Drive, Southport, NC, 28461', '1999-08-19'),
('NW-H-157-3', 'H', 157, 3, 'standard', 'available', 4.0, 10.0, 'Ronald Lee Thompson', '106 River Drive, Southport, NC, 28461', '1999-08-19'),
('NW-H-158-1', 'H', 158, 1, 'standard', 'available', 4.0, 10.0, 'William S. Lucas', '300 Trott Street, Oak Island, NC, 28465', '2006-03-21'),
('NW-H-158-2', 'H', 158, 2, 'standard', 'occupied', 4.0, 10.0, 'William S. Lucas', '300 Trott Street, Oak Island, NC, 28465', '2006-03-21'),
('NW-H-158-3', 'H', 158, 3, 'standard', 'available', 4.0, 10.0, 'William S. Lucas', '300 Trott Street, Oak Island, NC, 28465', '2006-03-21'),
('NW-H-159-1', 'H', 159, 1, 'standard', 'available', 4.0, 10.0, 'Jerry V Dove', 'P.O. Box 10027, Southport, NC, 28461', '2006-03-21'),
('NW-H-159-2', 'H', 159, 2, 'standard', 'occupied', 4.0, 10.0, 'Jerry V Dove', 'P.O. Box 10027, Southport, NC, 28461', '2006-03-21'),
('NW-H-159-3', 'H', 159, 3, 'standard', 'available', 4.0, 10.0, 'Jerry V Dove', 'P.O. Box 10027, Southport, NC, 28461', '2006-03-21'),
('NW-H-160-1', 'H', 160, 1, 'standard', 'occupied', 4.0, 10.0, 'Norman Hankins', '920 Hankinsville Road, Southport, NC, 28461', '2003-12-09'),
('NW-H-160-2', 'H', 160, 2, 'standard', 'available', 4.0, 10.0, 'Norman Hankins', '920 Hankinsville Road, Southport, NC, 28461', '2003-12-09'),
('NW-H-160-3', 'H', 160, 3, 'standard', 'available', 4.0, 10.0, 'Norman Hankins', '920 Hankinsville Road, Southport, NC, 28461', '2003-12-09'),
('NW-H-161-1', 'H', 161, 1, 'standard', 'occupied', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-161-2', 'H', 161, 2, 'standard', 'occupied', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-161-3', 'H', 161, 3, 'standard', 'available', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-162-1', 'H', 162, 1, 'standard', 'available', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-162-2', 'H', 162, 2, 'standard', 'available', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-162-3', 'H', 162, 3, 'standard', 'available', 4.0, 10.0, 'Katie Inez Matthis', '600 Cutchin St, Clinton, NC, 28328', '1995-03-23'),
('NW-H-163-1', 'H', 163, 1, 'standard', 'occupied', 4.0, 10.0, 'David A. Werner', '2707 E. Yacht Drive, Long Beach, NC, 28465', '1995-07-03'),
('NW-H-163-2', 'H', 163, 2, 'standard', 'occupied', 4.0, 10.0, 'David A. Werner', '2707 E. Yacht Drive, Long Beach, NC, 28465', '1995-07-03'),
('NW-H-164-1', 'H', 164, 1, 'standard', 'available', 4.0, 10.0, 'David A. Werner', '2707 E. Yacht Drive, Long Beach, NC, 28465', '1997-02-12'),
('NW-H-164-2', 'H', 164, 2, 'standard', 'available', 4.0, 10.0, 'David A. Werner', '2707 E. Yacht Drive, Long Beach, NC, 28465', '1997-02-12'),
('NW-H-165-1', 'H', 165, 1, 'standard', 'available', 4.0, 10.0, 'Mary Jane Culp /Ramos', '4778 SE Long Beach RD, Southport, NC, 28461', '2009-08-25'),
('NW-H-165-2', 'H', 165, 2, 'standard', 'available', 4.0, 10.0, 'Mary Jane Culp /Ramos', '4778 SE Long Beach RD, Southport, NC, 28461', '2009-08-25'),
('NW-H-166-1', 'H', 166, 1, 'standard', 'occupied', 4.0, 10.0, 'Don & Betty Johnson', '515 E Moore Street, Southport, NC, 28461', '1998-02-11'),
('NW-H-166-2', 'H', 166, 2, 'standard', 'occupied', 4.0, 10.0, 'Don & Betty Johnson', '515 E Moore Street, Southport, NC, 28461', '1998-02-11'),
('NW-H-167-1', 'H', 167, 1, 'standard', 'available', 4.0, 10.0, 'Jim & Connie Springle', '5008 Glenn Cove Drive, Southport, NC, 28461', '2008-07-07'),
('NW-H-167-2', 'H', 167, 2, 'standard', 'available', 4.0, 10.0, 'Jim & Connie Springle', '5008 Glenn Cove Drive, Southport, NC, 28461', '2008-07-07'),
('NW-H-168-1', 'H', 168, 1, 'standard', 'occupied', 4.0, 10.0, 'Faye Fields', '1147 Mebane Road, Winnabow, NC, 28479', '2006-03-22'),
('NW-H-168-2', 'H', 168, 2, 'standard', 'occupied', 4.0, 10.0, 'Faye Fields', '1147 Mebane Road, Winnabow, NC, 28479', '2006-03-22'),
('NW-H-169-1', 'H', 169, 1, 'standard', 'occupied', 4.0, 10.0, 'William Hargrove', '701 E Leonard Street, Southport, NC, 28461', '2003-08-12'),
('NW-H-169-2', 'H', 169, 2, 'standard', 'available', 4.0, 10.0, 'William Hargrove', '701 E Leonard Street, Southport, NC, 28461', '2003-08-12'),
('NW-H-170-1', 'H', 170, 1, 'standard', 'available', 4.0, 10.0, 'William Hargrove', '701 E Leonard Street, Southport, NC, 28461', '2003-08-12'),
('NW-H-170-2', 'H', 170, 2, 'standard', 'available', 4.0, 10.0, 'William Hargrove', '701 E Leonard Street, Southport, NC, 28461', '2003-08-12'),
('NW-H-171-1', 'H', 171, 1, 'standard', 'occupied', 4.0, 10.0, 'Steve Shrewsbury', '46 Carolina Rd., Boiling Spring Lakes, NC, 28461', '1995-11-20'),
('NW-H-171-2', 'H', 171, 2, 'standard', 'available', 4.0, 10.0, 'Steve Shrewsbury', '46 Carolina Rd., Boiling Spring Lakes, NC, 28461', '1995-11-20'),
('NW-H-172-1', 'H', 172, 1, 'standard', 'available', 4.0, 10.0, 'Mary Jane Culp /Ramos', '4778 SE Long Beach RD, Southport, NC, 28461', '2009-08-25'),
('NW-H-172-2', 'H', 172, 2, 'standard', 'available', 4.0, 10.0, 'Mary Jane Culp /Ramos', '4778 SE Long Beach RD, Southport, NC, 28461', '2009-08-25'),
('NW-H-173-1', 'H', 173, 1, 'standard', 'available', 4.0, 10.0, 'Johnny Raye Faulk', '91 Nassua Rd, Boiling Spring Lakes, NC, 28461', '2005-09-20'),
('NW-H-173-2', 'H', 173, 2, 'standard', 'available', 4.0, 10.0, 'Johnny Raye Faulk', '91 Nassua Rd, Boiling Spring Lakes, NC, 28461', '2005-09-20'),
('NW-H-174-1', 'H', 174, 1, 'standard', 'occupied', 4.0, 10.0, 'Charlotte Walton', 'Southport, 28461', '1995-12-27'),
('NW-H-174-2', 'H', 174, 2, 'standard', 'occupied', 4.0, 10.0, 'Charlotte Walton', 'Southport, 28461', '1995-12-27'),
('NW-H-175-1', 'H', 175, 1, 'standard', 'occupied', 4.0, 10.0, 'Harold Spencer, Sr.', '1025 Capt Adkin Dr., Southport, NC, 28461', '2001-03-26'),
('NW-H-175-2', 'H', 175, 2, 'standard', 'occupied', 4.0, 10.0, 'Harold Spencer, Sr.', '1025 Capt Adkin Dr., Southport, NC, 28461', '2001-03-26'),
('NW-H-176-1', 'H', 176, 1, 'standard', 'available', 4.0, 10.0, 'Richard & Marylin Thompson', '800 Indigo Village Co, Southport, NC, 28461', '2007-07-12'),
('NW-H-176-2', 'H', 176, 2, 'standard', 'occupied', 4.0, 10.0, 'Richard & Marylin Thompson', '800 Indigo Village Co, Southport, NC, 28461', '2007-07-12'),
('NW-H-177-1', 'H', 177, 1, 'standard', 'available', 4.0, 10.0, 'Marylin Thompson', '800 Indigo Village, Southport, NC, 28461', '2009-10-26'),
('NW-H-177-2', 'H', 177, 2, 'standard', 'available', 4.0, 10.0, 'Marylin Thompson', '800 Indigo Village, Southport, NC, 28461', '2009-10-26'),
('NW-H-178-1', 'H', 178, 1, 'standard', 'available', 4.0, 10.0, 'Buford & Evelyn Reynolds', '2606 W Oak Island Dr, Oak Island, NC, 28461', '2009-09-30'),
('NW-H-178-2', 'H', 178, 2, 'standard', 'occupied', 4.0, 10.0, 'Buford & Evelyn Reynolds', '2606 W Oak Island Dr, Oak Island, NC, 28461', '2009-09-30'),
('NW-H-179-1', 'H', 179, 1, 'standard', 'available', 4.0, 10.0, 'Ramon Alonso', '114 Burton Road, BSL, NC, 28461', '2008-07-14'),
('NW-H-179-2', 'H', 179, 2, 'standard', 'available', 4.0, 10.0, 'Ramon Alonso', '114 Burton Road, BSL, NC, 28461', '2008-07-14'),
('NW-H-180-1', 'H', 180, 1, 'standard', 'occupied', 4.0, 10.0, 'Beverly Brown', '225 E 11th Street, Southport, NC, 28461', '2005-06-27'),
('NW-H-180-2', 'H', 180, 2, 'standard', 'available', 4.0, 10.0, 'Beverly Brown', '225 E 11th Street, Southport, NC, 28461', '2005-06-27'),
('NW-H-181-1', 'H', 181, 1, 'standard', 'available', 4.0, 10.0, 'Jerry & Lynnine Webb', '898 Nicklaus Road, Southport, NC, 28461', '2009-04-13'),
('NW-H-181-2', 'H', 181, 2, 'standard', 'available', 4.0, 10.0, 'Jerry & Lynnine Webb', '898 Nicklaus Road, Southport, NC, 28461', '2009-04-13'),
('NW-H-182-1', 'H', 182, 1, 'standard', 'available', 4.0, 10.0, 'James Dean', '4395 Fish Factory Rd, Southport, NC, 28461', '2008-01-08'),
('NW-H-182-2', 'H', 182, 2, 'standard', 'available', 4.0, 10.0, 'James Dean', '4395 Fish Factory Rd, Southport, NC, 28461', '2008-01-08'),
('NW-H-183-1', 'H', 183, 1, 'standard', 'available', 4.0, 10.0, 'Malcolm Swain', '4395 Fish Factory Rd, Southport, NC, 28461', '2008-01-08'),
('NW-H-183-2', 'H', 183, 2, 'standard', 'occupied', 4.0, 10.0, 'Malcolm Swain', '4395 Fish Factory Rd, Southport, NC, 28461', '2008-01-08'),
('NW-H-184-1', 'H', 184, 1, 'standard', 'occupied', 4.0, 10.0, 'Truman P. Swain', '3704 Parson Ave., New Bern, NC, 28560', '2007-01-11'),
('NW-H-184-2', 'H', 184, 2, 'standard', 'occupied', 4.0, 10.0, 'Truman P. Swain', '3704 Parson Ave., New Bern, NC, 28560', '2007-01-11'),
('NW-H-185-1', 'H', 185, 1, 'standard', 'available', 4.0, 10.0, 'Truman P. Swain', '3704 Parson Ave., New Bern, NC, 28560', '2007-01-11'),
('NW-H-185-2', 'H', 185, 2, 'standard', 'available', 4.0, 10.0, 'Truman P. Swain', '3704 Parson Ave., New Bern, NC, 28560', '2007-01-11'),
('NW-H-186-1', 'H', 186, 1, 'standard', 'occupied', 4.0, 10.0, 'Truman Swain', '4405 Fish Factory Rd, Oak Island, NC, 28465', '2004-04-12'),
('NW-H-186-2', 'H', 186, 2, 'standard', 'occupied', 4.0, 10.0, 'Truman Swain', '4405 Fish Factory Rd, Oak Island, NC, 28465', '2004-04-12'),
('NW-H-187-1', 'H', 187, 1, 'standard', 'available', 4.0, 10.0, 'Lillie Mae Thompson', '317 N. Rhett Street, Southport, NC, 28461', '2001-12-27'),
('NW-H-187-2', 'H', 187, 2, 'standard', 'available', 4.0, 10.0, 'Lillie Mae Thompson', '317 N. Rhett Street, Southport, NC, 28461', '2001-12-27'),
('NW-H-188-1', 'H', 188, 1, 'standard', 'available', 4.0, 10.0, 'Clarence & Particia Sykes', '1002 Fairley St, Southport, 28461', '2010-06-22'),
('NW-H-188-2', 'H', 188, 2, 'standard', 'available', 4.0, 10.0, 'Clarence & Particia Sykes', '1002 Fairley St, Southport, 28461', '2010-06-22'),
('NW-H-189-1', 'H', 189, 1, 'standard', 'occupied', 4.0, 10.0, 'Herman L. Floyd, Sr.', '619 N. Fodale Ave., Southport, NC, 28461', '1996-12-18'),
('NW-H-189-2', 'H', 189, 2, 'standard', 'occupied', 4.0, 10.0, 'Herman L. Floyd, Sr.', '619 N. Fodale Ave., Southport, NC, 28461', '1996-12-18'),
('NW-H-190-1', 'H', 190, 1, 'standard', 'available', 4.0, 10.0, 'Gordon Wayne Saunders', '8474 Daws Cree Road S, Southport, NC, 28461', '2006-12-18'),
('NW-H-190-2', 'H', 190, 2, 'standard', 'available', 4.0, 10.0, 'Gordon Wayne Saunders', '8474 Daws Cree Road S, Southport, NC, 28461', '2006-12-18'),
('NW-H-191-1', 'H', 191, 1, 'standard', 'occupied', 4.0, 10.0, 'Gordon Wayne Saunders', '8474 Daws Cree Road S, Winnabow, NC, 28479', '2006-08-15'),
('NW-H-191-2', 'H', 191, 2, 'standard', 'occupied', 4.0, 10.0, 'Gordon Wayne Saunders', '8474 Daws Cree Road S, Winnabow, NC, 28479', '2006-08-15'),
('NW-H-192--1', 'H', 192, 1, 'standard', 'occupied', 4.0, 10.0, 'Walter S. & Gertrude Hanson ( C/o Charles Poppe', '700 Elton Ave, Carolina Beach, NC, 28428', '1995-05-09'),
('NW-H-192--2', 'H', 192, 2, 'standard', 'occupied', 4.0, 10.0, 'Walter S. & Gertrude Hanson ( C/o Charles Poppe', '700 Elton Ave, Carolina Beach, NC, 28428', '1995-05-09'),
('NW-H-193-1', 'H', 193, 1, 'standard', 'occupied', 4.0, 10.0, 'James Michael Willis', '104 NE 23rd St, Long Beach, NC, 28465', '1995-03-05'),
('NW-H-194-1', 'H', 194, 1, 'standard', 'occupied', 4.0, 10.0, 'Johnny Raye Faulk', '91 Nassua Rd, Boiling Spring Lakes, NC, 28461', '2005-12-15'),
('NW-H-195-1', 'H', 195, 1, 'standard', 'occupied', 4.0, 10.0, 'Herman L. Floyd, Sr.', '619 N. Fodale Ave., Southport, NC, 28461', '1998-11-13'),
('NW-H-196-1', 'H', 196, 1, 'standard', 'occupied', 4.0, 10.0, 'Herman L. Floyd,  Sr.', '619 N. Fodale Ave., Southport, NC, 28461', '1996-11-19'),
('NW-H-197-1', 'H', 197, 1, 'standard', 'occupied', 4.0, 10.0, 'Lucia Kincer', '205 Yaupon Drive, Southport, NC, 28461', '1995-12-11'),
('NW-H-198-1', 'H', 198, 1, 'standard', 'available', 4.0, 10.0, 'Lillie Mae Thompson', '317 N. Rhett Street, Southport, NC, 28461', '2001-12-27'),
('NW-H-199-1', 'H', 199, 1, 'standard', 'occupied', 4.0, 10.0, 'Rose Gregory Ryan', '5-B Fiddler''s Creek 2, Southport, NC, 28461', '2000-03-21'),
('NW-H-200-1', 'H', 200, 1, 'standard', 'available', 4.0, 10.0, 'Jim Brown', 'River Drive, Southport, NC, 28461', '2004-02-16'),
('NW-H-201-1', 'H', 201, 1, 'standard', 'occupied', 4.0, 10.0, 'Jim Brown', 'River Drive, Southport, NC, 28461', '2004-02-16'),
('NW-H-202-1', 'H', 202, 1, 'standard', 'available', 4.0, 10.0, 'Jim Brown', 'River Drive, Southport, NC, 28461', '2004-02-16'),
('NW-H-203-1', 'H', 203, 1, 'standard', 'available', 4.0, 10.0, 'Jim Brown', 'River Drive, Southport, NC, 28461', '2004-02-16'),
('NW-H-204-1', 'H', 204, 1, 'standard', 'occupied', 4.0, 10.0, 'Shelley Warnett', '201 W 11th Street, Southport, NC, 28461', '2005-05-03'),
('NW-H-204-2', 'H', 204, 2, 'standard', 'occupied', 4.0, 10.0, 'Shelley Warnett', '201 W 11th Street, Southport, NC, 28461', '2005-05-03'),
('NW-H-204-3', 'H', 204, 3, 'standard', 'available', 4.0, 10.0, 'Shelley Warnett', '201 W 11th Street, Southport, NC, 28461', '2005-05-03'),
('NW-H-204-4', 'H', 204, 4, 'standard', 'available', 4.0, 10.0, 'Shelley Warnett', '201 W 11th Street, Southport, NC, 28461', '2005-05-03'),
('NW-H-205-1', 'H', 205, 1, 'standard', 'occupied', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-205-2', 'H', 205, 2, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-205-3', 'H', 205, 3, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-205-4', 'H', 205, 4, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-206-1', 'H', 206, 1, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-206-2', 'H', 206, 2, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-206-3', 'H', 206, 3, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-206-4', 'H', 206, 4, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2007-07-30'),
('NW-H-207-1', 'H', 207, 1, 'standard', 'occupied', 4.0, 10.0, 'Barbara Dawson & Ashley Neal', 'P.O. Box 82, Winnabow, NC, 28479', '2006-02-25'),
('NW-H-207-2', 'H', 207, 2, 'standard', 'occupied', 4.0, 10.0, 'Barbara Dawson & Ashley Neal', 'P.O. Box 82, Winnabow, NC, 28479', '2006-02-25'),
('NW-H-207-3', 'H', 207, 3, 'standard', 'occupied', 4.0, 10.0, 'Barbara Dawson & Ashley Neal', 'P.O. Box 82, Winnabow, NC, 28479', '2006-02-25'),
('NW-H-207-4', 'H', 207, 4, 'standard', 'available', 4.0, 10.0, 'Barbara Dawson & Ashley Neal', 'P.O. Box 82, Winnabow, NC, 28479', '2006-02-25'),
('NW-H-208-1', 'H', 208, 1, 'standard', 'available', 4.0, 10.0, 'Sabrina Roberts', '44 Crystal Road, Southport BSL, NC, 28461', '2006-02-25'),
('NW-H-209-1', 'H', 209, 1, 'standard', 'available', 4.0, 10.0, 'Sabrina Roberts', '44 Crystal Road, Southport BSL, NC, 28461', '2006-02-25'),
('NW-H-210-1', 'H', 210, 1, 'standard', 'available', 4.0, 10.0, 'Stephen & Teresa Pearson', '6035 Bethel Road, Southport, NC, 28461', '2006-02-25'),
('NW-H-211-1', 'H', 211, 1, 'standard', 'available', 4.0, 10.0, 'Stephen & Teresa Pearson', '6035 Bethel Road, Southport, NC, 28461', '2006-02-25'),
('NW-H-212-1', 'H', 212, 1, 'standard', 'available', 4.0, 10.0, 'Tina Ward', '8122 Webster Court, Leland, NC, 28451', '2006-02-25'),
('NW-H-213-1', 'H', 213, 1, 'standard', 'available', 4.0, 10.0, 'Larry Ward', 'PO Box 82, Winnabow, NC, 28479', '2006-02-25'),
('NW-H-214-1', 'H', 214, 1, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box 10512, Southport, NC, 28461', '2011-02-03'),
('NW-H-215-1', 'H', 215, 1, 'standard', 'available', 4.0, 10.0, 'Charles Drew', 'P.O. Box  10512, Southport, NC, 28461', '2011-02-03'),
('NW-H-216-1', 'H', 216, 1, 'standard', 'occupied', 4.0, 10.0, 'Leander Cowan', '502 W Owens Street, Southport, NC, 28461', '2013-08-09'),
('NW-H-217-1', 'H', 217, 1, 'standard', 'occupied', 4.0, 10.0, 'Katharine Richadrson', '1021 Indian Trail, Raleigh, NC, 27609', '2006-11-09'),
('NW-H-218-1', 'H', 218, 1, 'standard', 'occupied', 4.0, 10.0, 'Leander Cowan', '502 W Owens Street, Southport, NC, 28461', '2013-08-09'),
('NW-H-219-1', 'H', 219, 1, 'standard', 'available', 4.0, 10.0, 'Nicole Wilsey', '409 Yaupon Drive, Southport, NC, 28461', '2007-10-26'),
('NW-H-220-1', 'H', 220, 1, 'standard', 'occupied', 4.0, 10.0, 'Dawn Worden', '1256 Grace Road, Southport, NC, 28461', '2008-04-24'),
('NW-H-221-1', 'H', 221, 1, 'standard', 'available', 4.0, 10.0, 'Philip Rex Bowen', '116 33rd St NE, Oak Island, NC, 28461', '2008-04-24'),
('NW-H-222-1', 'H', 222, 1, 'standard', 'occupied', 4.0, 10.0, 'Stacey Forsythe', '909 Phosphor Ave, Metarie, LA, 70005', '2012-02-09'),
('NW-H-223-1', 'H', 223, 1, 'standard', 'occupied', 4.0, 10.0, 'Eva Holms', '706 Burrington Ave, Southport, NC, 28461', '2006-12-05'),
('NW-H-223-2', 'H', 223, 2, 'standard', 'occupied', 4.0, 10.0, 'Eva Holms', '706 Burrington Ave, Southport, NC, 28461', '2006-12-05'),
('NW-H-224-1', 'H', 224, 1, 'standard', 'available', 4.0, 10.0, 'Dawn Worden', '1256 Grace Road, Southport, NC, 28461', '2008-04-24'),
('NW-H-224-2', 'H', 224, 2, 'standard', 'available', 4.0, 10.0, 'Dawn Worden', '1256 Grace Road, Southport, NC, 28461', '2008-04-24'),
('NW-H-225-1', 'H', 225, 1, 'standard', 'available', 4.0, 10.0, 'Beverly Bey', '128 Canal Drive, Southport, NC, 28461', '2008-04-24'),
('NW-H-225-2', 'H', 225, 2, 'standard', 'available', 4.0, 10.0, 'Beverly Bey', '128 Canal Drive, Southport, NC, 28461', '2008-04-24'),
('NW-H-226-1', 'H', 226, 1, 'standard', 'available', 4.0, 10.0, 'Nicole Wilsey', '409 Yaupon Drive, Southport, NC, 28461', '2007-10-26'),
('NW-H-226-2', 'H', 226, 2, 'standard', 'available', 4.0, 10.0, 'Nicole Wilsey', '409 Yaupon Drive, Southport, NC, 28461', '2007-10-26'),
('NW-H-227-1', 'H', 227, 1, 'standard', 'available', 4.0, 10.0, 'Don & Patricia Hughes', 'NC, 28465', '2010-01-01'),
('NW-H-227-2', 'H', 227, 2, 'standard', 'available', 4.0, 10.0, 'Don & Patricia Hughes', 'NC, 28465', '2010-01-01'),
('NW-H-228-1', 'H', 228, 1, 'standard', 'occupied', 4.0, 10.0, 'Henry Franklin Stevenson', '5493 Lynn Street SE, Southport, NC, 28461', '2000-04-28'),
('NW-H-228-2', 'H', 228, 2, 'standard', 'occupied', 4.0, 10.0, 'Henry Franklin Stevenson', '5493 Lynn Street SE, Southport, NC, 28461', '2000-04-28'),
('NW-H-229-1', 'H', 229, 1, 'standard', 'available', 4.0, 10.0, 'Robert R. Dorothy E. Harris', '4418 Willow Moss Way, Southport, NC, 28461', '2007-02-22'),
('NW-H-229-2', 'H', 229, 2, 'standard', 'available', 4.0, 10.0, 'Robert R. Dorothy E. Harris', '4418 Willow Moss Way, Southport, NC, 28461', '2007-02-22'),
('NW-H-229-3', 'H', 229, 3, 'standard', 'available', 4.0, 10.0, 'Robert R. Dorothy E. Harris', '4418 Willow Moss Way, Southport, NC, 28461', '2007-02-22'),
('NW-H-230-1', 'H', 230, 1, 'standard', 'available', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Rd, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-230-2', 'H', 230, 2, 'standard', 'occupied', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Rd, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-230-3', 'H', 230, 3, 'standard', 'available', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Rd, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-231-1', 'H', 231, 1, 'standard', 'available', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Road, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-231-2', 'H', 231, 2, 'standard', 'occupied', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Road, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-231-3', 'H', 231, 3, 'standard', 'available', 4.0, 10.0, 'Mark & Mary Wilsey', '1130 Presidents Road, Southport (BSL), NC, 28461', '2007-07-21'),
('NW-H-232-1', 'H', 232, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-232-2', 'H', 232, 2, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-232-3', 'H', 232, 3, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-233-1', 'H', 233, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-233-2', 'H', 233, 2, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-233-3', 'H', 233, 3, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-234-1', 'H', 234, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-234-2', 'H', 234, 2, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-234-3', 'H', 234, 3, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-235-1', 'H', 235, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-236-1', 'H', 236, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-237-1', 'H', 237, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-238-1', 'H', 238, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-239-1', 'H', 239, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-240-1', 'H', 240, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-240-2', 'H', 240, 2, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-240-3', 'H', 240, 3, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-240-4', 'H', 240, 4, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-241-1', 'H', 241, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-241-2', 'H', 241, 2, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-241-3', 'H', 241, 3, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-241-4', 'H', 241, 4, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-242-1', 'H', 242, 1, 'standard', 'occupied', 4.0, 10.0, 'William, Jr & Cynthia S. Evans', '312 Clarendon Ave, Southport, NC, 28461', '2007-05-31'),
('NW-H-242-2', 'H', 242, 2, 'standard', 'occupied', 4.0, 10.0, 'William, Jr & Cynthia S. Evans', '312 Clarendon Ave, Southport, NC, 28461', '2007-05-31'),
('NW-H-242-3', 'H', 242, 3, 'standard', 'available', 4.0, 10.0, 'William, Jr & Cynthia S. Evans', '312 Clarendon Ave, Southport, NC, 28461', '2007-05-31'),
('NW-H-242-4', 'H', 242, 4, 'standard', 'available', 4.0, 10.0, 'William, Jr & Cynthia S. Evans', '312 Clarendon Ave, Southport, NC, 28461', '2007-05-31'),
('NW-H-243-1', 'H', 243, 1, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2006-05-19'),
('NW-H-243-2', 'H', 243, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2006-05-19'),
('NW-H-243-3', 'H', 243, 3, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2006-05-19'),
('NW-H-243-4', 'H', 243, 4, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2006-05-19'),
('NW-H-244-1', 'H', 244, 1, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2008-04-09'),
('NW-H-245-1', 'H', 245, 1, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2008-04-08'),
('NW-H-246-1', 'H', 246, 1, 'standard', 'available', 4.0, 10.0, 'Mary Ward', '6860 Kilian Way, Leland, NC, 28451', '2008-04-08'),
('NW-H-247-1', 'H', 247, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Russ', '103 River Drive, Southport, NC, 28461', '2005-02-24'),
('NW-H-248-1', 'H', 248, 1, 'standard', 'occupied', 4.0, 10.0, 'Venessa Stewart', 'P.O. Box 10352, Southport, NC, 28461', '1995-02-02'),
('NW-H-249-1', 'H', 249, 1, 'standard', 'available', 4.0, 10.0, 'Sylvia Davis', '1005 N Caswell Ave, Southport, NC, 28461', '2007-03-14'),
('NW-H-250-1', 'H', 250, 1, 'standard', 'available', 4.0, 10.0, 'William, Jr & Cynthia S. Evans', '312 Clarendon Ave, Southport, NC, 28461', '2007-05-31'),
('NW-H-251-1', 'H', 251, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-252-1', 'H', 252, 1, 'standard', 'available', 4.0, 10.0, 'Margarett Rudd-Bishop', 'P.O. Box 10546, Southport, NC, 28461', '2007-06-05'),
('NW-H-253-1', 'H', 253, 1, 'standard', 'available', 4.0, 10.0, 'Paul Cain', '209 NE 61st Street, Oak Island, NC, 28465', '2008-09-29'),
('NW-H-253-2', 'H', 253, 2, 'standard', 'available', 4.0, 10.0, 'Paul Cain', '209 NE 61st Street, Oak Island, NC, 28465', '2008-09-29'),
('NW-H-254-1', 'H', 254, 1, 'standard', 'available', 4.0, 10.0, 'Paul Cain', '209 NE 61st Street, Oak Island, NC, 28465', '2008-09-29'),
('NW-H-254-2', 'H', 254, 2, 'standard', 'available', 4.0, 10.0, 'Paul Cain', '209 NE 61st Street, Oak Island, NC, 28465', '2008-09-29'),
('NW-H-255-1', 'H', 255, 1, 'standard', 'occupied', 4.0, 10.0, 'Isabelle Low', '205 W St George Stree, Southport, NC, 28461', '2009-07-30'),
('NW-H-255-2', 'H', 255, 2, 'standard', 'available', 4.0, 10.0, 'Isabelle Low', '205 W St George Stree, Southport, NC, 28461', '2009-07-30'),
('NW-H-256-1', 'H', 256, 1, 'standard', 'available', 4.0, 10.0, 'Nathanial Jackson', '1003 Caswell Ave, Southport, NC, 28461', '2009-05-04'),
('NW-H-256-2', 'H', 256, 2, 'standard', 'available', 4.0, 10.0, 'Nathanial Jackson', '1003 Caswell Ave, Southport, NC, 28461', '2009-05-04'),
('NW-H-257-1', 'H', 257, 1, 'standard', 'occupied', 4.0, 10.0, 'James W. Smith', 'P.O. Box 10154, Southport, NC, 28461', '2007-04-25'),
('NW-H-257-2', 'H', 257, 2, 'standard', 'available', 4.0, 10.0, 'James W. Smith', 'P.O. Box 10154, Southport, NC, 28461', '2007-04-25'),
('NW-H-258-1', 'H', 258, 1, 'standard', 'available', 4.0, 10.0, 'James W. Smith', 'P.O. Box 10154, Southport, NC, 28461', '2007-04-25'),
('NW-H-259-1', 'H', 259, 1, 'standard', 'available', 4.0, 10.0, 'Carole Randolph', '301 W 9th Street, Southport, NC, 28461', '2009-05-05'),
('NW-H-260-1', 'H', 260, 1, 'standard', 'occupied', 4.0, 10.0, 'Vernell Salmon', '236 E 11th Street, Southport, NC, 28461', '2012-03-22'),
('NW-H-261-1', 'H', 261, 1, 'standard', 'occupied', 4.0, 10.0, 'Vernell Salmon', '236 E 11th Street, Southport, NC, 28461', '2012-03-22'),
('NW-H-262-1', 'H', 262, 1, 'standard', 'occupied', 4.0, 10.0, 'Barbara Pugh', '1494 Midway Road SE, Bolivia, NC, 28422', '2013-01-25'),
('NW-H-263-1', 'H', 263, 1, 'standard', 'occupied', 4.0, 10.0, 'Tom Frink', '319 N Rhett Street, Southport, NC, 28461', '2012-12-27'),
('NW-H-264-1', 'H', 264, 1, 'standard', 'occupied', 4.0, 10.0, 'Wolfgang Furstenau', '2108 East Yacht Drive, Oak Island, NC, 28465', '2012-10-25'),
('NW-H-265-1', 'H', 265, 1, 'standard', 'occupied', 4.0, 10.0, 'Jonathan Johnson', '407 W. Burkhead St., Whiteville, NC, 28472', NULL),
('NW-H-266-1', 'H', 266, 1, 'standard', 'occupied', 4.0, 10.0, 'Allkay Small', '606 N Lord Street, Southport, NC, 28461', '2011-11-23'),
('NW-H-267-1', 'H', 267, 1, 'standard', 'occupied', 4.0, 10.0, 'Curtis O. Ledbetter, Jr.', '1151 Twin Lakes Drive, Boiling Springs Lakes, NC, 28461', '1997-02-11'),
('NW-H-268-1', 'H', 268, 1, 'standard', 'occupied', 4.0, 10.0, 'Curtis O. Ledbetter, Jr.', '1151 Twin Lakes Drive, Boiling Springs Lakes, NC, 28461', '1997-02-11'),
('NW-H-269-1', 'H', 269, 1, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-269-2', 'H', 269, 2, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-269-3', 'H', 269, 3, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-269-4', 'H', 269, 4, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-270-1', 'H', 270, 1, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-270-2', 'H', 270, 2, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-270-3', 'H', 270, 3, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-270-4', 'H', 270, 4, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-271-1', 'H', 271, 1, 'standard', 'occupied', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-271-2', 'H', 271, 2, 'standard', 'occupied', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-271-3', 'H', 271, 3, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-271-4', 'H', 271, 4, 'standard', 'available', 4.0, 10.0, 'James & Rose Minett', '103 Herring Drive, Southport, NC, 28461', '2007-11-07'),
('NW-H-272-1', 'H', 272, 1, 'standard', 'available', 4.0, 10.0, 'Willie Gore', '505 N Caswell Ave, Southport, NC, 28461', '2007-07-17'),
('NW-H-272-2', 'H', 272, 2, 'standard', 'available', 4.0, 10.0, 'Willie Gore', '505 N Caswell Ave, Southport, NC, 28461', '2007-07-17'),
('NW-H-272-3', 'H', 272, 3, 'standard', 'occupied', 4.0, 10.0, 'Willie Gore', '505 N Caswell Ave, Southport, NC, 28461', '2007-07-17'),
('NW-H-272-4', 'H', 272, 4, 'standard', 'occupied', 4.0, 10.0, 'Willie Gore', '505 N Caswell Ave, Southport, NC, 28461', '2007-07-17'),
('NW-H-273-1', 'H', 273, 1, 'standard', 'available', 4.0, 10.0, 'James D. Cochran', '110 Stuart Ave, Southport, NC, 28461', '2004-11-10'),
('NW-H-274-1', 'H', 274, 1, 'standard', 'available', 4.0, 10.0, 'James D. Cochran', '110 Stuart Ave, Southport, NC, 28461', '2004-11-10'),
('NW-H-275-1', 'H', 275, 1, 'standard', 'available', 4.0, 10.0, 'James D. Cochran', '110 Stuart Ave, Southport, NC, 28461', '2004-11-10'),
('NW-H-276-1', 'H', 276, 1, 'standard', 'available', 4.0, 10.0, 'James D. Cochran', '110 Stuart Ave, Southport, NC, 28461', '2004-11-10'),
('NW-H-277-1', 'H', 277, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-278-1', 'H', 278, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-279-1', 'H', 279, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-280-1', 'H', 280, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-281-1', 'H', 281, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-282-1', 'H', 282, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-283-1', 'H', 283, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-283-2', 'H', 283, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-284-1', 'H', 284, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-284-2', 'H', 284, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-285-1', 'H', 285, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-285-2', 'H', 285, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell', NULL),
('NW-H-286-1', 'H', 286, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-286-2', 'H', 286, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-287-1', 'H', 287, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-287-2', 'H', 287, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-288-1', 'H', 288, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-288-2', 'H', 288, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell Do Not Sell Do Not Sell', 'Do Not Sell, Do Not Sell, NC, 28461', '2001-05-15'),
('NW-H-289-1', 'H', 289, 1, 'standard', 'occupied', 4.0, 10.0, 'James D. & Betty P. Hinson', '5185 Dutch Village, Southport, NC, 28461', '1994-10-19'),
('NW-H-289-2', 'H', 289, 2, 'standard', 'occupied', 4.0, 10.0, 'James D. & Betty P. Hinson', '5185 Dutch Village, Southport, NC, 28461', '1994-10-19'),
('NW-H-290-1', 'H', 290, 1, 'standard', 'occupied', 4.0, 10.0, 'Ira Buddy Teague', '111 NE 30th Street, Oak Island, NC, 28465', '2003-06-10'),
('NW-H-290-2', 'H', 290, 2, 'standard', 'available', 4.0, 10.0, 'Ira Buddy Teague', '111 NE 30th Street, Oak Island, NC, 28465', '2003-06-10'),
('NW-H-291-1', 'H', 291, 1, 'standard', 'occupied', 4.0, 10.0, 'Lois Price', '130 Oakview Drive, Southport, NC, 28461', '1997-10-01'),
('NW-H-291-2', 'H', 291, 2, 'standard', 'occupied', 4.0, 10.0, 'Lois Price', '130 Oakview Drive, Southport, NC, 28461', '1997-10-01'),
('NW-H-292-1', 'H', 292, 1, 'standard', 'occupied', 4.0, 10.0, 'Charles Joyner', '918 N. Lord Street, Southport, NC, 28461', '1997-04-23'),
('NW-H-292-2', 'H', 292, 2, 'standard', 'occupied', 4.0, 10.0, 'Charles Joyner', '918 N. Lord Street, Southport, NC, 28461', '1997-04-23'),
('NW-H-293-1', 'H', 293, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie Gore', '822 N. Lord St., Southport, NC, 28461', '1997-01-22'),
('NW-H-293-2', 'H', 293, 2, 'standard', 'occupied', 4.0, 10.0, 'Archie Gore', '822 N. Lord St., Southport, NC, 28461', '1997-01-22'),
('NW-H-294-1', 'H', 294, 1, 'standard', 'occupied', 4.0, 10.0, 'Annie Mae Lee', '506 W. 11th St., Southport, NC, 28461', '1994-08-07'),
('NW-H-295-1', 'H', 295, 1, 'standard', 'occupied', 4.0, 10.0, 'Mamie Odom McNeil', '1205 N. Atlantic Ave, Southport, NC, 28461', '1997-10-27'),
('NW-H-296-1', 'H', 296, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Jane Davis', '820 N. Lord Street, Southport, NC, 28461', '1997-12-10'),
('NW-H-297-1', 'H', 297, 1, 'standard', 'occupied', 4.0, 10.0, 'James Davis,  Sr.', '821 N. Lord Street, Southport, NC, 28461', '2000-04-13'),
('NW-H-298-1', 'H', 298, 1, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28461', '2013-09-09'),
('NW-H-299-1', 'H', 299, 1, 'standard', 'available', 4.0, 10.0, 'Robert Barr (Toby) Thompson', '215 W. Moore Street, Southport, NC, 28461', '2000-09-22'),
('NW-H-299-2', 'H', 299, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert Barr (Toby) Thompson', '215 W. Moore Street, Southport, NC, 28461', '2000-09-22'),
('NW-H-300-1', 'H', 300, 1, 'standard', 'available', 4.0, 10.0, 'Charise Bryant', '210 W. St. George St, Southport, NC, 28461', '2001-08-15'),
('NW-H-300-2', 'H', 300, 2, 'standard', 'occupied', 4.0, 10.0, 'Charise Bryant', '210 W. St. George St, Southport, NC, 28461', '2001-08-15'),
('NW-H-301-1', 'H', 301, 1, 'standard', 'occupied', 4.0, 10.0, 'Mae Ray', '556 Jabbertown Rd Lt9, Southport, NC, 28461', '2003-06-30'),
('NW-H-301-2', 'H', 301, 2, 'standard', 'occupied', 4.0, 10.0, 'Mae Ray', '556 Jabbertown Rd Lt9, Southport, NC, 28461', '2003-06-30'),
('NW-H-302-1', 'H', 302, 1, 'standard', 'occupied', 4.0, 10.0, 'Orabelle Clemmons', '317 W. 11th Street, Southport, NC, 28461', '1999-01-07'),
('NW-H-302-2', 'H', 302, 2, 'standard', 'occupied', 4.0, 10.0, 'Orabelle Clemmons', '317 W. 11th Street, Southport, NC, 28461', '1999-01-07'),
('NW-H-303-1', 'H', 303, 1, 'standard', 'occupied', 4.0, 10.0, 'Donald R. Sykes', '319 Herring Drive, Southport, NC, 28461', '1995-07-09'),
('NW-H-303-2', 'H', 303, 2, 'standard', 'occupied', 4.0, 10.0, 'Donald R. Sykes', '319 Herring Drive, Southport, NC, 28461', '1995-07-09'),
('NW-H-304-1', 'H', 304, 1, 'standard', 'occupied', 4.0, 10.0, 'Samuel A. Fridley', '4852 Coastal Drive, Southport, NC, 28461', '1998-02-23'),
('NW-H-304-2', 'H', 304, 2, 'standard', 'occupied', 4.0, 10.0, 'Samuel A. Fridley', '4852 Coastal Drive, Southport, NC, 28461', '1998-02-23'),
('NW-H-305-1', 'H', 305, 1, 'standard', 'occupied', 4.0, 10.0, 'Jane Creech', '693 Gilbert Road, Bolivia, NC, 28422', '2003-05-19'),
('NW-H-305-2', 'H', 305, 2, 'standard', 'occupied', 4.0, 10.0, 'Jane Creech', '693 Gilbert Road, Bolivia, NC, 28422', '2003-05-19'),
('NW-H-306-1', 'H', 306, 1, 'standard', 'available', 4.0, 10.0, 'Richmond H. Creech', '1087 Hollywood Road, Sanford, NC, 27332', '2002-05-21'),
('NW-H-306-2', 'H', 306, 2, 'standard', 'available', 4.0, 10.0, 'Richmond H. Creech', '1087 Hollywood Road, Sanford, NC, 27332', '2002-05-21'),
('NW-H-307-1', 'H', 307, 1, 'standard', 'available', 4.0, 10.0, 'Donald C. Sturm', '151810 Sarah Court, Brandywine, MD, 20613', '2003-05-21'),
('NW-H-307-2', 'H', 307, 2, 'standard', 'available', 4.0, 10.0, 'Donald C. Sturm', '151810 Sarah Court, Brandywine, MD, 20613', '2003-05-21'),
('NW-H-308-1', 'H', 308, 1, 'standard', 'occupied', 4.0, 10.0, 'Carolyn King', '1002 N. Caswell Ave., Southport, NC, 28461', '2001-07-05'),
('NW-H-308-2', 'H', 308, 2, 'standard', 'occupied', 4.0, 10.0, 'Carolyn King', '1002 N. Caswell Ave., Southport, NC, 28461', '2001-07-05'),
('NW-H-309-1', 'H', 309, 1, 'standard', 'available', 4.0, 10.0, 'Rhonda Davis', '609 Clarendon Ave., Southport, NC, 28461', '2003-10-15'),
('NW-H-310-1', 'H', 310, 1, 'standard', 'available', 4.0, 10.0, 'Rhonda Davis', '609 Clarendon Ave., Southport, NC, 28461', '2003-10-15'),
('NW-H-311-1', 'H', 311, 1, 'standard', 'occupied', 4.0, 10.0, 'Rhonda Davis', '609 Clarendon Ave., Southport, NC, 28461', '2003-10-15'),
('NW-H-312-1', 'H', 312, 1, 'standard', 'available', 4.0, 10.0, 'Howard Cain', '609 Clarendon Ave., Southport, NC, 28461', '2001-12-11'),
('NW-H-313-1', 'H', 313, 1, 'standard', 'occupied', 4.0, 10.0, 'Mildred Hewett Best', '459 Jabbertown Road, Southport, NC, 28461', '1999-03-30'),
('NW-H-314-1', 'H', 314, 1, 'standard', 'occupied', 4.0, 10.0, 'Jacqueline Bryant Green', '2913 Melrose Drive, Valdosta, GA, 31602', '2007-07-05'),
('NW-H-315-1', 'H', 315, 1, 'standard', 'occupied', 4.0, 10.0, 'James Washington', '909 N. Lord Street, Southport, NC, 28461', '2004-05-13'),
('NW-H-316-1', 'H', 316, 1, 'standard', 'occupied', 4.0, 10.0, 'Jacqueline/Fredrick Green /Bryant', '2913 Melrose Drive, Valdosta, GA, 31602', '1997-09-15'),
('NW-H-317-1', 'H', 317, 1, 'standard', 'occupied', 4.0, 10.0, 'Rhonda Davis', '609 Clarendon Ave., Southport, NC, 28461', '2003-10-15'),
('NW-H-318-1', 'H', 318, 1, 'standard', 'available', 4.0, 10.0, 'Lavonne Gentry', '419 E. Leonard Street, Southport, NC, 28461', '1998-12-10'),
('NW-H-319-1', 'H', 319, 1, 'standard', 'available', 4.0, 10.0, 'John W. & Onie W. Dennis', '425 Caswell Beach Rd., Caswell Beach, NC, 28465', '2003-07-29'),
('NW-H-319-2', 'H', 319, 2, 'standard', 'occupied', 4.0, 10.0, 'John W. & Onie W. Dennis', '425 Caswell Beach Rd., Caswell Beach, NC, 28465', '2003-07-29'),
('NW-H-320-1', 'H', 320, 1, 'standard', 'available', 4.0, 10.0, 'Roosevelt Clarida', '614 Burrington Ave, Southport, NC, 28461', '2004-04-15'),
('NW-H-320-2', 'H', 320, 2, 'standard', 'occupied', 4.0, 10.0, 'Roosevelt Clarida', '614 Burrington Ave, Southport, NC, 28461', '2004-04-15'),
('NW-H-321-1', 'H', 321, 1, 'standard', 'occupied', 4.0, 10.0, 'Jacqueline/Fredrick Green /Bryant', '2913 Melrose Drive, Valdosta, GA, 31602', '1997-09-15'),
('NW-H-321-2', 'H', 321, 2, 'standard', 'occupied', 4.0, 10.0, 'Jacqueline/Fredrick Green /Bryant', '2913 Melrose Drive, Valdosta, GA, 31602', '1997-09-15'),
('NW-H-322-1', 'H', 322, 1, 'standard', 'occupied', 4.0, 10.0, 'Mathew Varnum', '7000 A Pickerell Driv, Southport, NC, 28461', '2003-07-21'),
('NW-H-322-2', 'H', 322, 2, 'standard', 'available', 4.0, 10.0, 'Mathew Varnum', '7000 A Pickerell Driv, Southport, NC, 28461', '2003-07-21'),
('NW-H-323-1', 'H', 323, 1, 'standard', 'occupied', 4.0, 10.0, 'William S. Loeffler', '1500 Shepard Rd., Southport, NC, 28461', '2001-01-18'),
('NW-H-323-2', 'H', 323, 2, 'standard', 'occupied', 4.0, 10.0, 'William S. Loeffler', '1500 Shepard Rd., Southport, NC, 28461', '2001-01-18'),
('NW-H-324-1', 'H', 324, 1, 'standard', 'available', 4.0, 10.0, 'Donald E. Turner', '409 Norton Street, Oak Island, NC, 28465', '2001-03-28'),
('NW-H-324-2', 'H', 324, 2, 'standard', 'available', 4.0, 10.0, 'Donald E. Turner', '409 Norton Street, Oak Island, NC, 28465', '2001-03-28'),
('NW-H-325-1', 'H', 325, 1, 'standard', 'occupied', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-325-2', 'H', 325, 2, 'standard', 'occupied', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-326-1', 'H', 326, 1, 'standard', 'occupied', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-326-2', 'H', 326, 2, 'standard', 'available', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-327-1', 'H', 327, 1, 'standard', 'available', 4.0, 10.0, 'Judy D. Hinson', '197 S Shore Drive BSL, Southport, NC, 28461', '2004-04-30'),
('NW-H-327-2', 'H', 327, 2, 'standard', 'available', 4.0, 10.0, 'Judy D. Hinson', '197 S Shore Drive BSL, Southport, NC, 28461', '2004-04-30'),
('NW-H-328-1', 'H', 328, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Rhyne', '421 Norton Street, Oak Island, NC, 28465', '2003-08-18'),
('NW-H-328-2', 'H', 328, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Rhyne', '421 Norton Street, Oak Island, NC, 28465', '2003-08-18'),
('NW-H-329-1', 'H', 329, 1, 'standard', 'occupied', 4.0, 10.0, 'Hilda Baxter', '306 Hillcrest, Southport, NC, 28461', '2003-04-21'),
('NW-H-330-1', 'H', 330, 1, 'standard', 'occupied', 4.0, 10.0, 'Carolyn Howard', '1002 N Caswell Ave, Southport, NC, 28461', '2004-09-01'),
('NW-H-331-1', 'H', 331, 1, 'standard', 'occupied', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-332-1', 'H', 332, 1, 'standard', 'occupied', 4.0, 10.0, 'Aywanna C. Monroe', '502 W. Owens Street, Southport, NC, 28461', '2002-04-25'),
('NW-H-333-1', 'H', 333, 1, 'standard', 'occupied', 4.0, 10.0, 'Michelle Hill', '106 Hankins Lane, Southport, NC, 28461', '2004-07-09'),
('NW-H-334-1', 'H', 334, 1, 'standard', 'occupied', 4.0, 10.0, 'Garrett Wayne Mellor', '404 N. Atlantic Ave, Southport, NC, 28461', '1998-12-15'),
('NW-H-335-1', 'H', 335, 1, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-336-1', 'H', 336, 1, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-337-1', 'H', 337, 1, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-338-1', 'H', 338, 1, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-338-2', 'H', 338, 2, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-338-3', 'H', 338, 3, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-338-4', 'H', 338, 4, 'standard', 'available', 4.0, 10.0, 'Robert Howard', '114 N. Atlantic, Southport, NC, 28461', '2004-03-24'),
('NW-H-339-1', 'H', 339, 1, 'standard', 'occupied', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-339-2', 'H', 339, 2, 'standard', 'occupied', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-339-3', 'H', 339, 3, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-339-4', 'H', 339, 4, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-340-1', 'H', 340, 1, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-340-2', 'H', 340, 2, 'standard', 'occupied', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-340-3', 'H', 340, 3, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-340-4', 'H', 340, 4, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-341-1', 'H', 341, 1, 'standard', 'available', 4.0, 10.0, 'James F. & Vera Howard', '114 N. Atlantic, Southport, NC, 28461', '2001-05-15'),
('NW-H-342-1', 'H', 342, 1, 'standard', 'available', 4.0, 10.0, 'Terry & Beverly Stephens', 'P.O. Box 10771, Southport, NC, 28461', '2001-05-15'),
('NW-H-343-1', 'H', 343, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry & Beverly Stephens', 'P.O. Box 10771, Southport, NC, 28461', '2001-05-15'),
('NW-H-344-1', 'H', 344, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry & Beverly Stephens', 'P.O. Box 10771, Southport, NC, 28461', '2001-05-15'),
('NW-H-345-1', 'H', 345, 1, 'standard', 'occupied', 4.0, 10.0, 'David L. Winch, Sr.', '972 Mirror Lake Drive, Boiling Springs Lake, NC, 28461', '1999-05-01'),
('NW-H-345-2', 'H', 345, 2, 'standard', 'occupied', 4.0, 10.0, 'David L. Winch, Sr.', '972 Mirror Lake Drive, Boiling Springs Lake, NC, 28461', '1999-05-01'),
('NW-H-346-1', 'H', 346, 1, 'standard', 'occupied', 4.0, 10.0, 'Herbert Simmons', '29 Crystal Road, Boiling Springs Lake, NC, 28461', '2006-02-08'),
('NW-H-346-2', 'H', 346, 2, 'standard', 'occupied', 4.0, 10.0, 'Herbert Simmons', '29 Crystal Road, Boiling Springs Lake, NC, 28461', '2006-02-08'),
('NW-H-347-1', 'H', 347, 1, 'standard', 'occupied', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2004-09-13'),
('NW-H-347-2', 'H', 347, 2, 'standard', 'available', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2004-09-13'),
('NW-H-348-1', 'H', 348, 1, 'standard', 'occupied', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2004-09-13'),
('NW-H-348-2', 'H', 348, 2, 'standard', 'occupied', 4.0, 10.0, 'Bobby D Brown', '811 Clarendon Ave, Southport, NC, 28461', '2004-09-13'),
('NW-H-349-1', 'H', 349, 1, 'standard', 'occupied', 4.0, 10.0, 'Marjorie Jackson', '411 N. Caswell  Ave., Southport, NC, 28461', '1997-02-20'),
('NW-H-349-2', 'H', 349, 2, 'standard', 'occupied', 4.0, 10.0, 'Marjorie Jackson', '411 N. Caswell  Ave., Southport, NC, 28461', '1997-02-20'),
('NW-H-350-1', 'H', 350, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Mealy', '1211 N. Caswell Ave4C, Southport, NC, 28461', '1995-06-27'),
('NW-H-350-2', 'H', 350, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Mealy', '1211 N. Caswell Ave4C, Southport, NC, 28461', '1995-06-27'),
('NW-H-351-1', 'H', 351, 1, 'standard', 'occupied', 4.0, 10.0, 'Ernest Warren', '507 W 11th Street, Southport, NC, 28461', '2006-05-08'),
('NW-H-351-2', 'H', 351, 2, 'standard', 'available', 4.0, 10.0, 'Ernest Warren', '507 W 11th Street, Southport, NC, 28461', '2006-05-08'),
('NW-H-352-1', 'H', 352, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert Peter Felber', '5990 Dutchman Creek r, Southport, NC, 28461', '2006-05-09'),
('NW-H-352-2', 'H', 352, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert Peter Felber', '5990 Dutchman Creek r, Southport, NC, 28461', '2006-05-09'),
('NW-H-353-1', 'H', 353, 1, 'standard', 'occupied', 4.0, 10.0, 'Myron Kesler, Sr', '516 East BSL Road, Southport BSL, NC, 28461', '2006-09-13'),
('NW-H-353-2', 'H', 353, 2, 'standard', 'occupied', 4.0, 10.0, 'Myron Kesler, Sr', '516 East BSL Road, Southport BSL, NC, 28461', '2006-09-13'),
('NW-H-354-1', 'H', 354, 1, 'standard', 'available', 4.0, 10.0, 'Marty Kessmodel', '45 Graham Circle BSL, Southport, NC, 28461', '1994-09-20'),
('NW-H-354-2', 'H', 354, 2, 'standard', 'available', 4.0, 10.0, 'Marty Kessmodel', '45 Graham Circle BSL, Southport, NC, 28461', '1994-09-20'),
('NW-H-355-1', 'H', 355, 1, 'standard', 'occupied', 4.0, 10.0, 'Carol Conn', '5341 DosherCutoff 109, Southport, NC, 28461', '2005-06-03'),
('NW-H-355-2', 'H', 355, 2, 'standard', 'occupied', 4.0, 10.0, 'Carol Conn', '5341 DosherCutoff 109, Southport, NC, 28461', '2005-06-03'),
('NW-H-356-1', 'H', 356, 1, 'standard', 'occupied', 4.0, 10.0, 'Robert Ward', '6667 Funston Road, Winnabow, NC, 28479', '2006-08-25'),
('NW-H-356-2', 'H', 356, 2, 'standard', 'available', 4.0, 10.0, 'Robert Ward', '6667 Funston Road, Winnabow, NC, 28479', '2006-08-25'),
('NW-H-357-1', 'H', 357, 1, 'standard', 'available', 4.0, 10.0, 'Elton Jackson', 'Southport, NC, 28461', '2006-05-24'),
('NW-H-357-2', 'H', 357, 2, 'standard', 'available', 4.0, 10.0, 'Elton Jackson', 'Southport, NC, 28461', '2006-05-24'),
('NW-H-358-1', 'H', 358, 1, 'standard', 'available', 4.0, 10.0, 'Mary Anderson', '305 St George Street, Southport, NC, 28461', '2006-08-01'),
('NW-H-358-2', 'H', 358, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary Anderson', '305 St George Street, Southport, NC, 28461', '2006-08-01'),
('NW-H-358-3', 'H', 358, 3, 'standard', 'occupied', 4.0, 10.0, 'Mary Anderson', '305 St George Street, Southport, NC, 28461', '2006-08-01'),
('NW-H-359-1', 'H', 359, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. D. M. (Heirs) Jarrell', '5024 Pender Place, Shallotte, NC, 28470', '2002-05-30'),
('NW-H-359-2', 'H', 359, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. D. M. (Heirs) Jarrell', '5024 Pender Place, Shallotte, NC, 28470', '2002-05-30'),
('NW-H-359-3', 'H', 359, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. D. M. (Heirs) Jarrell', '5024 Pender Place, Shallotte, NC, 28470', '2002-05-30'),
('NW-H-360-1', 'H', 360, 1, 'standard', 'occupied', 4.0, 10.0, 'Mary Wigfaln', '4768 Oak View Drive, Southport, NC, 28461', '2006-10-13'),
('NW-H-361-1', 'H', 361, 1, 'standard', 'available', 4.0, 10.0, 'Elaine Nelson', '2032 Forest Drive, Holden Beach, NC', NULL),
('NW-H-362-1', 'H', 362, 1, 'standard', 'available', 4.0, 10.0, 'Cynthia Bryant Smith', '2913 Melrose Drive, Valdosta, GA, 31602', '2007-07-05'),
('NW-H-363-1', 'H', 363, 1, 'standard', 'available', 4.0, 10.0, 'Bobby & Carolyn Clemmer', 'P.O. Box 730, Oak Island, NC, 28465', '2001-07-02'),
('NW-H-363-2', 'H', 363, 2, 'standard', 'occupied', 4.0, 10.0, 'Bobby & Carolyn Clemmer', 'P.O. Box 730, Oak Island, NC, 28465', '2001-07-02'),
('NW-H-364-1', 'H', 364, 1, 'standard', 'occupied', 4.0, 10.0, 'Winiferd Nelson', '2032 Forest Drive SW, Holden Beach, NC, 28462', '2003-09-08'),
('NW-H-364-2', 'H', 364, 2, 'standard', 'available', 4.0, 10.0, 'Winiferd Nelson', '2032 Forest Drive SW, Holden Beach, NC, 28462', '2003-09-08'),
('NW-H-365-1', 'H', 365, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-365-2', 'H', 365, 2, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-366-1', 'H', 366, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-366-2', 'H', 366, 2, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-367-1', 'H', 367, 1, 'standard', 'occupied', 4.0, 10.0, 'Eddrena McAfee', '301 W. 9th Street, Southport, NC, 28461', '1998-05-18'),
('NW-H-367-2', 'H', 367, 2, 'standard', 'occupied', 4.0, 10.0, 'Eddrena McAfee', '301 W. 9th Street, Southport, NC, 28461', '1998-05-18'),
('NW-H-368-1', 'H', 368, 1, 'standard', 'available', 4.0, 10.0, 'Bobby & Carolyn Clemmer', 'P.O. Box 730, Oak Island, NC, 28465', '2001-07-01'),
('NW-H-368-2', 'H', 368, 2, 'standard', 'available', 4.0, 10.0, 'Bobby & Carolyn Clemmer', 'P.O. Box 730, Oak Island, NC, 28465', '2001-07-01'),
('NW-H-369-1', 'H', 369, 1, 'standard', 'occupied', 4.0, 10.0, 'Clyde Smith', '116 SE 4th Street, Oak Island, NC, 28465', '2003-09-03'),
('NW-H-369-2', 'H', 369, 2, 'standard', 'occupied', 4.0, 10.0, 'Clyde Smith', '116 SE 4th Street, Oak Island, NC, 28465', '2003-09-03'),
('NW-H-370-1', 'H', 370, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-370-2', 'H', 370, 2, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-371-1', 'H', 371, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-371-2', 'H', 371, 2, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-372-1', 'H', 372, 1, 'standard', 'occupied', 4.0, 10.0, 'Joyce Jankus', '221 Mercer Street, Oak Island, NC, 28465', '2005-02-10'),
('NW-H-372-2', 'H', 372, 2, 'standard', 'available', 4.0, 10.0, 'Joyce Jankus', '221 Mercer Street, Oak Island, NC, 28465', '2005-02-10'),
('NW-H-373-1', 'H', 373, 1, 'standard', 'available', 4.0, 10.0, 'Olivia Gore', '211 W St. George St, Southport, NC, 28461', '2006-09-20'),
('NW-H-374-1', 'H', 374, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-375-1', 'H', 375, 1, 'standard', 'available', 4.0, 10.0, 'Jackie / Judy Fowler /Smith', 'P.O. Box 15134, Washington, DC, 20003', '2005-06-09'),
('NW-H-376-1', 'H', 376, 1, 'standard', 'available', 4.0, 10.0, 'Gladys Myrie', '403 Stuart Ave, Southport, NC, 28461', '2005-06-13'),
('NW-H-377-1', 'H', 377, 1, 'standard', 'occupied', 4.0, 10.0, 'Gladys Myrie', '403 Stuart Ave, Southport, NC, 28461', '2005-06-13'),
('NW-H-378-1', 'H', 378, 1, 'standard', 'available', 4.0, 10.0, 'Ede Biefeld', '131 NE 12th Street, Oak Island, NC, 28461', '2006-09-22'),
('NW-H-379-1', 'H', 379, 1, 'standard', 'occupied', 4.0, 10.0, 'Edris Jackowski', '9219 Southern Blvd, Winnabow, NC, 28479', '2008-12-08'),
('NW-H-380-1', 'H', 380, 1, 'standard', 'occupied', 4.0, 10.0, 'Dena Haney', '411 S Kerr Ave, Wilmington, NC, 28403', '2008-09-02'),
('NW-H-381-1', 'H', 381, 1, 'standard', 'available', 4.0, 10.0, 'Lori Ann Dennis', '4000 Pickerrell Apt F, Southport, NC, 28461', '2007-04-19'),
('NW-H-382-1', 'H', 382, 1, 'standard', 'occupied', 4.0, 10.0, 'Lori A. Dennis', '4000 Pickerrell Apt F, Southport, NC, 28461', '2007-04-19'),
('NW-H-383-1', 'H', 383, 1, 'standard', 'occupied', 4.0, 10.0, 'Gene Nelson Cowan', '1209 N. Howe Street, Southport, NC, 28461', '1997-04-03'),
('NW-H-383-2', 'H', 383, 2, 'standard', 'occupied', 4.0, 10.0, 'Gene Nelson Cowan', '1209 N. Howe Street, Southport, NC, 28461', '1997-04-03'),
('NW-H-384-1', 'H', 384, 1, 'standard', 'available', 4.0, 10.0, 'Judy Cowan', '1209 N. Howe Street, Southport, NC, 28461', '1999-11-15'),
('NW-H-384-2', 'H', 384, 2, 'standard', 'available', 4.0, 10.0, 'Judy Cowan', '1209 N. Howe Street, Southport, NC, 28461', '1999-11-15'),
('NW-H-385-1', 'H', 385, 1, 'standard', 'available', 4.0, 10.0, 'Olivia Gore', '211 W St. George St, Southport', '2006-09-20'),
('NW-H-385-2', 'H', 385, 2, 'standard', 'occupied', 4.0, 10.0, 'Olivia Gore', '211 W St. George St, Southport', '2006-09-20'),
('NW-H-386-1', 'H', 386, 1, 'standard', 'occupied', 4.0, 10.0, 'Jimmy & Margaret Champion', '6606 Red Bridge Trail, Charllotte, NC, 28362', '2007-05-22'),
('NW-H-386-2', 'H', 386, 2, 'standard', 'occupied', 4.0, 10.0, 'Jimmy & Margaret Champion', '6606 Red Bridge Trail, Charllotte, NC, 28362', '2007-05-22'),
('NW-H-387-1', 'H', 387, 1, 'standard', 'occupied', 4.0, 10.0, 'Albert L. Mathews', '407 N. Atlantic Ave., Southport, NC, 28461-3501', '2002-03-29'),
('NW-H-387-2', 'H', 387, 2, 'standard', 'occupied', 4.0, 10.0, 'Albert L. Mathews', '407 N. Atlantic Ave., Southport, NC, 28461-3501', '2002-03-29'),
('NW-H-388-1', 'H', 388, 1, 'standard', 'available', 4.0, 10.0, 'Nancy Gregson', '3589 Sanderling Dr.SE, St. James, NC, 28461', '1999-10-25'),
('NW-H-388-2', 'H', 388, 2, 'standard', 'occupied', 4.0, 10.0, 'Nancy Gregson', '3589 Sanderling Dr.SE, St. James, NC, 28461', '1999-10-25'),
('NW-H-389-1', 'H', 389, 1, 'standard', 'occupied', 4.0, 10.0, 'Francis Cromartie Lennon', '2402 W Yacht Drive, Oak Island, NC, 28461', '2004-06-08'),
('NW-H-389-2', 'H', 389, 2, 'standard', 'occupied', 4.0, 10.0, 'Francis Cromartie Lennon', '2402 W Yacht Drive, Oak Island, NC, 28461', '2004-06-08'),
('NW-H-390-1', 'H', 390, 1, 'standard', 'occupied', 4.0, 10.0, 'Alicia Evans', '716 N Burrington Ave, Southport, NC, 28461', '2007-06-27'),
('NW-H-390-2', 'H', 390, 2, 'standard', 'occupied', 4.0, 10.0, 'Alicia Evans', '716 N Burrington Ave, Southport, NC, 28461', '2007-06-27'),
('NW-H-391-1', 'H', 391, 1, 'standard', 'occupied', 4.0, 10.0, 'Gloria Stanley', '1026 N Lord Street, Southport, NC, 28461', '2006-09-27'),
('NW-H-391-2', 'H', 391, 2, 'standard', 'available', 4.0, 10.0, 'Gloria Stanley', '1026 N Lord Street, Southport, NC, 28461', '2006-09-27'),
('NW-H-392-1', 'H', 392, 1, 'standard', 'available', 4.0, 10.0, 'Gloria Hankins', '409 Clarendon Ave, Southport, NC, 28461', '2005-10-25'),
('NW-H-392-2', 'H', 392, 2, 'standard', 'occupied', 4.0, 10.0, 'Gloria Hankins', '409 Clarendon Ave, Southport, NC, 28461', '2005-10-25'),
('NW-H-393-1', 'H', 393, 1, 'standard', 'occupied', 4.0, 10.0, 'Kevin Bell', '5419 E. Oak Island Dr, Long Beach, NC, 28465', '1999-02-26'),
('NW-H-394-1', 'H', 394, 1, 'standard', 'available', 4.0, 10.0, 'Richard Frink', '308 W 11th St, Southport, NC, 28461', '2011-03-03'),
('NW-H-395-1', 'H', 395, 1, 'standard', 'occupied', 4.0, 10.0, 'Alicia Evans', '716 N Burrington, Southport, NC, 28461', '2010-09-03'),
('NW-H-396-1', 'H', 396, 1, 'standard', 'available', 4.0, 10.0, 'Fred DeVaughn', '2170 Trout Ave SW 15, Supply, NC, 28462', '2008-08-11'),
('NW-H-397-1', 'H', 397, 1, 'standard', 'occupied', 4.0, 10.0, 'Ardella George', '1008 Tidings Road, Leland, NC, 28451', '2007-08-16'),
('NW-H-398-1', 'H', 398, 1, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-399-1', 'H', 399, 1, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-400-1', 'H', 400, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-401-1', 'H', 401, 1, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-402-1', 'H', 402, 1, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-402-2', 'H', 402, 2, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-402-3', 'H', 402, 3, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-402-4', 'H', 402, 4, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-12'),
('NW-H-403-1', 'H', 403, 1, 'standard', 'available', 4.0, 10.0, 'John A. Potter', '812 Memory Lane, Southport, NC, 28461', '2001-08-06'),
('NW-H-403-2', 'H', 403, 2, 'standard', 'available', 4.0, 10.0, 'John A. Potter', '812 Memory Lane, Southport, NC, 28461', '2001-08-06'),
('NW-H-403-3', 'H', 403, 3, 'standard', 'available', 4.0, 10.0, 'John A. Potter', '812 Memory Lane, Southport, NC, 28461', '2001-08-06'),
('NW-H-403-4', 'H', 403, 4, 'standard', 'available', 4.0, 10.0, 'John A. Potter', '812 Memory Lane, Southport, NC, 28461', '2001-08-06'),
('NW-H-404-1', 'H', 404, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-404-2', 'H', 404, 2, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-404-3', 'H', 404, 3, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-404-4', 'H', 404, 4, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-405-1', 'H', 405, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-406-1', 'H', 406, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-407-1', 'H', 407, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-408-1', 'H', 408, 1, 'standard', 'available', 4.0, 10.0, 'Robert A. Potter', 'P.O. Box 10215, Southport, NC, 28461', '2002-09-18'),
('NW-H-409-1', 'H', 409, 1, 'standard', 'occupied', 4.0, 10.0, 'Ronald Lee Thompson', '106 River Drive, Southport, NC, 28461', '2000-09-29'),
('NW-H-410-1', 'H', 410, 1, 'standard', 'occupied', 4.0, 10.0, 'Ronald Lee Thompson', '106 River Drive, Southport, NC, 28461', '2001-04-05'),
('NW-H-411-1', 'H', 411, 1, 'standard', 'available', 4.0, 10.0, 'John A. Potter', '812 Memory Lane, Southport, NC, 28461', '2001-08-06'),
('NW-H-412-1', 'H', 412, 1, 'standard', 'occupied', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-13'),
('NW-H-413-1', 'H', 413, 1, 'standard', 'available', 4.0, 10.0, 'Archie Leroy Potter', 'P.O. Box 10215, Southport, NC, 28461', '2001-07-13'),
('NW-H-414-1', 'H', 414, 1, 'standard', 'occupied', 4.0, 10.0, 'Francis Hughes', '936 Tulip Poplar Lane, Birmingham, AL, 35244', '2004-06-11'),
('NW-H-415-1', 'H', 415, 1, 'standard', 'occupied', 4.0, 10.0, 'Lea Susan Pederson', '4550 Regency Crossing, Southport, NC, 28461', '2009-08-07'),
('NW-H-416-1', 'H', 416, 1, 'standard', 'available', 4.0, 10.0, 'Regina White Alexander', '130 Stuart Ave, Southport, NC, 28461', '2010-09-02'),
('NW-H-417-1', 'H', 417, 1, 'standard', 'occupied', 4.0, 10.0, 'Regina White Alexander', '130 Stuart Ave, Southport, NC, 28461', '2010-09-02'),
('NW-H-418-1', 'H', 418, 1, 'standard', 'occupied', 4.0, 10.0, 'Evelyn Hewett Lee', '624 Jabbertown Road, Southport, NC, 28461', '2009-02-18'),
('NW-H-419-1', 'H', 419, 1, 'standard', 'occupied', 4.0, 10.0, 'Joseph & Mary White', '554 Jabbertown Road, Southport, NC, 28461', '2001-12-10'),
('NW-H-419-2', 'H', 419, 2, 'standard', 'available', 4.0, 10.0, 'Joseph & Mary White', '554 Jabbertown Road, Southport, NC, 28461', '2001-12-10'),
('NW-H-420-1', 'H', 420, 1, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28465', '2013-09-09'),
('NW-H-420-2', 'H', 420, 2, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28465', '2013-09-09'),
('NW-H-421-1', 'H', 421, 1, 'standard', 'occupied', 4.0, 10.0, 'Paul Clemmons', '514 W 11th Street, Southport, NC, 28461', '2007-10-15'),
('NW-H-421-2', 'H', 421, 2, 'standard', 'available', 4.0, 10.0, 'Paul Clemmons', '514 W 11th Street, Southport, NC, 28461', '2007-10-15'),
('NW-H-422-1', 'H', 422, 1, 'standard', 'available', 4.0, 10.0, 'Lee R. & Diane M. Smyrne', '213 Narcissus Mews, Oak Island, NC, 28465', '2002-06-21'),
('NW-H-422-2', 'H', 422, 2, 'standard', 'available', 4.0, 10.0, 'Lee R. & Diane M. Smyrne', '213 Narcissus Mews, Oak Island, NC, 28465', '2002-06-21'),
('NW-H-423-1', 'H', 423, 1, 'standard', 'occupied', 4.0, 10.0, 'Pamela A. Sanders', '213 Narcissus Mews, Oak Island, NC, 28465', '2002-06-21'),
('NW-H-423-2', 'H', 423, 2, 'standard', 'available', 4.0, 10.0, 'Pamela A. Sanders', '213 Narcissus Mews, Oak Island, NC, 28465', '2002-06-21'),
('NW-H-424-1', 'H', 424, 1, 'standard', 'occupied', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-424-2', 'H', 424, 2, 'standard', 'occupied', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-424-3', 'H', 424, 3, 'standard', 'available', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-425-1', 'H', 425, 1, 'standard', 'available', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-425-2', 'H', 425, 2, 'standard', 'available', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-425-3', 'H', 425, 3, 'standard', 'available', 4.0, 10.0, 'Laura / John Fullwood /Baggett', 'Oak Island, NC, 28465', '2003-10-01'),
('NW-H-426-1', 'H', 426, 1, 'standard', 'available', 4.0, 10.0, 'Charlie & Patty Miller', 'Southport, NC, 28461', '2008-09-02'),
('NW-H-426-2', 'H', 426, 2, 'standard', 'available', 4.0, 10.0, 'Charlie & Patty Miller', 'Southport, NC, 28461', '2008-09-02'),
('NW-H-426-3', 'H', 426, 3, 'standard', 'available', 4.0, 10.0, 'Charlie & Patty Miller', 'Southport, NC, 28461', '2008-09-02'),
('NW-H-427-1', 'H', 427, 1, 'standard', 'occupied', 4.0, 10.0, 'Edward Jones', 'POB11211 810Clarendon, Southport, NC, 28461', '2009-09-28'),
('NW-H-427-2', 'H', 427, 2, 'standard', 'occupied', 4.0, 10.0, 'Edward Jones', 'POB11211 810Clarendon, Southport, NC, 28461', '2009-09-28'),
('NW-H-427-3', 'H', 427, 3, 'standard', 'occupied', 4.0, 10.0, 'Edward Jones', 'POB11211 810Clarendon, Southport, NC, 28461', '2009-09-28'),
('NW-H-428-1', 'H', 428, 1, 'standard', 'available', 4.0, 10.0, 'Reginia Alexander', '130 Stuart Ave, Southport, NC, 28461', '2002-11-01'),
('NW-H-428-2', 'H', 428, 2, 'standard', 'occupied', 4.0, 10.0, 'Reginia Alexander', '130 Stuart Ave, Southport, NC, 28461', '2002-11-01'),
('NW-H-428-3', 'H', 428, 3, 'standard', 'available', 4.0, 10.0, 'Reginia Alexander', '130 Stuart Ave, Southport, NC, 28461', '2002-11-01'),
('NW-H-429-1', 'H', 429, 1, 'standard', 'occupied', 4.0, 10.0, 'Lula McKeithan', '512 N. Atlantic Ave., Southport, NC, 28461', '2000-12-15'),
('NW-H-429-2', 'H', 429, 2, 'standard', 'occupied', 4.0, 10.0, 'Lula McKeithan', '512 N. Atlantic Ave., Southport, NC, 28461', '2000-12-15'),
('NW-H-430-1', 'H', 430, 1, 'standard', 'occupied', 4.0, 10.0, 'Lula McKeithan', '512 N. Atlantic Ave., Southport, NC, 28461', '2001-01-30'),
('NW-H-430-2', 'H', 430, 2, 'standard', 'occupied', 4.0, 10.0, 'Lula McKeithan', '512 N. Atlantic Ave., Southport, NC, 28461', '2001-01-30'),
('NW-H-431-1', 'H', 431, 1, 'standard', 'available', 4.0, 10.0, 'James Allen McNutt', '3548 Medinah Ave E., Southport, NC, 28461', '2006-07-31'),
('NW-H-431-2', 'H', 431, 2, 'standard', 'available', 4.0, 10.0, 'James Allen McNutt', '3548 Medinah Ave E., Southport, NC, 28461', '2006-07-31'),
('NW-H-432-1', 'H', 432, 1, 'standard', 'available', 4.0, 10.0, 'James Allen McNutt', '3548 Medinah Ave E., Southport, NC, 28461', '2006-07-31'),
('NW-H-433-1', 'H', 433, 1, 'standard', 'occupied', 4.0, 10.0, 'James Allen McNutt', '3548 Medinah Ave E., Southport, NC, 28461', '2006-07-31'),
('NW-H-433-2', 'H', 433, 2, 'standard', 'available', 4.0, 10.0, 'James Allen McNutt', '3548 Medinah Ave E., Southport, NC, 28461', '2006-07-31'),
('NW-H-434-1', 'H', 434, 1, 'standard', 'occupied', 4.0, 10.0, 'Loyd & Julie Brown', '661 South Shore Drive, Southport (BSL), NC, 28461', '2004-03-18'),
('NW-H-434-2', 'H', 434, 2, 'standard', 'occupied', 4.0, 10.0, 'Loyd & Julie Brown', '661 South Shore Drive, Southport (BSL), NC, 28461', '2004-03-18'),
('NW-H-435-1', 'H', 435, 1, 'standard', 'available', 4.0, 10.0, 'Danny & Kathrine Watts', '7118 Fresh Aire, Springfield, VA, 22153', '2009-03-09'),
('NW-H-435-2', 'H', 435, 2, 'standard', 'available', 4.0, 10.0, 'Danny & Kathrine Watts', '7118 Fresh Aire, Springfield, VA, 22153', '2009-03-09'),
('NW-H-436-1', 'H', 436, 1, 'standard', 'available', 4.0, 10.0, 'Robert & Cheryl Shew', '110 Davis Circle, Rogersville, TN, 37857', '2008-10-07'),
('NW-H-436-2', 'H', 436, 2, 'standard', 'available', 4.0, 10.0, 'Robert & Cheryl Shew', '110 Davis Circle, Rogersville, TN, 37857', '2008-10-07'),
('NW-H-437-1', 'H', 437, 1, 'standard', 'available', 4.0, 10.0, 'Robert & Cheryl Shew', '110 Davis Circle, Rogersville, TN, 37857', '2008-10-07'),
('NW-H-437-2', 'H', 437, 2, 'standard', 'available', 4.0, 10.0, 'Robert & Cheryl Shew', '110 Davis Circle, Rogersville, TN, 37857', '2008-10-07'),
('NW-H-438-1', 'H', 438, 1, 'standard', 'occupied', 4.0, 10.0, 'Emily McKeithan', 'P.O. Box 10305, Southport, NC, 28461', '2003-10-15'),
('NW-H-438-2', 'H', 438, 2, 'standard', 'occupied', 4.0, 10.0, 'Emily McKeithan', 'P.O. Box 10305, Southport, NC, 28461', '2003-10-15'),
('NW-H-439-1', 'H', 439, 1, 'standard', 'occupied', 4.0, 10.0, 'Jerry & Donna Champiion', '9085 Mellaney Lane, Winnabow, NC, 28479', '2007-02-08'),
('NW-H-439-2', 'H', 439, 2, 'standard', 'occupied', 4.0, 10.0, 'Jerry & Donna Champiion', '9085 Mellaney Lane, Winnabow, NC, 28479', '2007-02-08'),
('NW-H-440-1', 'H', 440, 1, 'standard', 'available', 4.0, 10.0, 'Stephen & Toni Miley', '804 Indigo Village Ct, Southport, NC, 28461', '2007-06-22'),
('NW-H-440-2', 'H', 440, 2, 'standard', 'available', 4.0, 10.0, 'Stephen & Toni Miley', '804 Indigo Village Ct, Southport, NC, 28461', '2007-06-22'),
('NW-H-441-1', 'H', 441, 1, 'standard', 'available', 4.0, 10.0, 'Skipper Stiller', 'Longleaf Drive, Southport, NC, 28461', '2005-03-23'),
('NW-H-441-2', 'H', 441, 2, 'standard', 'available', 4.0, 10.0, 'Skipper Stiller', 'Longleaf Drive, Southport, NC, 28461', '2005-03-23'),
('NW-H-442-1', 'H', 442, 1, 'standard', 'available', 4.0, 10.0, 'Sandy Harvey', '6263 Sawdust Lane, Winnabow, NC, 28479', '2005-03-12'),
('NW-H-442-2', 'H', 442, 2, 'standard', 'occupied', 4.0, 10.0, 'Sandy Harvey', '6263 Sawdust Lane, Winnabow, NC, 28479', '2005-03-12'),
('NW-H-443-1', 'H', 443, 1, 'standard', 'available', 4.0, 10.0, 'Bonner & Julie Stiller', '4908 East Yacht Drive, Oak Island, NC, 28465', '2002-04-09'),
('NW-H-443-2', 'H', 443, 2, 'standard', 'available', 4.0, 10.0, 'Bonner & Julie Stiller', '4908 East Yacht Drive, Oak Island, NC, 28465', '2002-04-09'),
('NW-H-444-1', 'H', 444, 1, 'standard', 'occupied', 4.0, 10.0, 'Harvey Barnes', '885 Lake Drive, Miami Springs, FL', '1996-12-04'),
('NW-H-444-2', 'H', 444, 2, 'standard', 'occupied', 4.0, 10.0, 'Harvey Barnes', '885 Lake Drive, Miami Springs, FL', '1996-12-04'),
('NW-H-445-1', 'H', 445, 1, 'standard', 'available', 4.0, 10.0, 'Skipper Stiller', 'Longleaf Drive, Southport, NC, 28461', '2005-03-14'),
('NW-H-445-2', 'H', 445, 2, 'standard', 'available', 4.0, 10.0, 'Skipper Stiller', 'Longleaf Drive, Southport, NC, 28461', '2005-03-14'),
('NW-H-446-1', 'H', 446, 1, 'standard', 'occupied', 4.0, 10.0, 'Amanda Greer', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-09-28'),
('NW-H-446-2', 'H', 446, 2, 'standard', 'available', 4.0, 10.0, 'Amanda Greer', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-09-28'),
('NW-H-447-1', 'H', 447, 1, 'standard', 'occupied', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-447-2', 'H', 447, 2, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-448-1', 'H', 448, 1, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-448-2', 'H', 448, 2, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-449-1', 'H', 449, 1, 'standard', 'occupied', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-449-2', 'H', 449, 2, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-450-1', 'H', 450, 1, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-450-2', 'H', 450, 2, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-451-1', 'H', 451, 1, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-451-2', 'H', 451, 2, 'standard', 'available', 4.0, 10.0, 'Paula Wallace', '315 1/2 E Nash Street, Southport, NC, 28461', '2004-11-12'),
('NW-H-452-1', 'H', 452, 1, 'standard', 'available', 4.0, 10.0, 'John Krish', '2004 Pete''s Camp Driv, Southport, NC, 28461', '2010-02-11'),
('NW-H-452-2', 'H', 452, 2, 'standard', 'available', 4.0, 10.0, 'John Krish', '2004 Pete''s Camp Driv, Southport, NC, 28461', '2010-02-11'),
('NW-H-453-1', 'H', 453, 1, 'standard', 'available', 4.0, 10.0, 'Mary K. Scoggins', 'Box 8275 River RoadSE, Southport, NC, 28461', '1998-11-23'),
('NW-H-453-2', 'H', 453, 2, 'standard', 'occupied', 4.0, 10.0, 'Mary K. Scoggins', 'Box 8275 River RoadSE, Southport, NC, 28461', '1998-11-23'),
('NW-H-454-1', 'H', 454, 1, 'standard', 'available', 4.0, 10.0, 'Kitty Renn', '111 S. Atlantic Ave, Southport, NC, 28461', '2000-02-28'),
('NW-H-455-1', 'H', 455, 1, 'standard', 'occupied', 4.0, 10.0, 'Kitty Renn', '111 S. Atlantic Ave, Southport, NC, 28461', '2000-02-28'),
('NW-H-456-1', 'H', 456, 1, 'standard', 'available', 4.0, 10.0, 'Kitty Renn', '111 S. Atlantic Ave, Southport, NC, 28461', '2000-02-28'),
('NW-H-457-1', 'H', 457, 1, 'standard', 'occupied', 4.0, 10.0, 'Kitty Renn', '111 S. Atlantic Ave, Southport, NC, 28461', '2000-02-28'),
('NW-H-458-1', 'H', 458, 1, 'standard', 'available', 4.0, 10.0, 'Kitty Renn', '111 S. Atlantic Ave, Southport, NC, 28461', '2000-02-28'),
('NW-H-459-1', 'H', 459, 1, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-459-2', 'H', 459, 2, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-459-3', 'H', 459, 3, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-459-4', 'H', 459, 4, 'standard', 'occupied', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-460-1', 'H', 460, 1, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-460-2', 'H', 460, 2, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-460-3', 'H', 460, 3, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-460-4', 'H', 460, 4, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-461-1', 'H', 461, 1, 'standard', 'available', 4.0, 10.0, 'Gwen Davis', '207 W St George Stree, Southport, NC, 28461', '2005-06-23'),
('NW-H-461-2', 'H', 461, 2, 'standard', 'available', 4.0, 10.0, 'Gwen Davis', '207 W St George Stree, Southport, NC, 28461', '2005-06-23'),
('NW-H-461-3', 'H', 461, 3, 'standard', 'available', 4.0, 10.0, 'Gwen Davis', '207 W St George Stree, Southport, NC, 28461', '2005-06-23'),
('NW-H-461-4', 'H', 461, 4, 'standard', 'available', 4.0, 10.0, 'Gwen Davis', '207 W St George Stree, Southport, NC, 28461', '2005-06-23'),
('NW-H-462-1', 'H', 462, 1, 'standard', 'available', 4.0, 10.0, 'John & Pauline Swain', '110 Frink Drive, Southport, NC, 28461', '2006-09-11'),
('NW-H-463-1', 'H', 463, 1, 'standard', 'available', 4.0, 10.0, 'John & Pauline Swain', '110 Frink Drive, Southport, NC, 28461', '2006-09-11'),
('NW-H-464-1', 'H', 464, 1, 'standard', 'available', 4.0, 10.0, 'John & Pauline Swain', '110 Frink Drive, Southport, NC, 28461', '2006-09-13'),
('NW-H-465-1', 'H', 465, 1, 'standard', 'available', 4.0, 10.0, 'Ellen / Delores Gore  / Moore', '736 Jabbertown Rd, Southport, NC, 28461', '2010-01-08'),
('NW-H-466-1', 'H', 466, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry Graham', 'POB 11083, BSL, NC, 28461', '2010-09-22'),
('NW-H-467-1', 'H', 467, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry Graham', 'POB 11083, BSL, NC, 28461', '2010-09-22'),
('NW-H-468-1', 'H', 468, 1, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-469-1', 'H', 469, 1, 'standard', 'available', 4.0, 10.0, 'Ricky Evans', '122 Park Ave, Southport, NC, 28461', '2004-04-26'),
('NW-H-470-1', 'H', 470, 1, 'standard', 'occupied', 4.0, 10.0, 'Ronald Hensley', '311 NE 61st St, Oak Island, NC, 28465', '2008-09-17'),
('NW-H-471-1', 'H', 471, 1, 'standard', 'available', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dr, Southport, NC, 28461', '2003-11-03'),
('NW-H-472-1', 'H', 472, 1, 'standard', 'available', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dr, Southport, NC, 28461', '2003-12-12'),
('NW-H-473-1', 'H', 473, 1, 'standard', 'occupied', 4.0, 10.0, 'James Hargrove', 'POB 10292, Southport, NC, 28461', '2010-09-14'),
('NW-H-474-1', 'H', 474, 1, 'standard', 'available', 4.0, 10.0, 'James Hargrove', 'POB 10292, Southport, NC, 28461', '2010-09-14'),
('NW-H-475-1', 'H', 475, 1, 'standard', 'occupied', 4.0, 10.0, 'Kathleen Pascale', '1001 Bay Side Lane, Southport (BSL), NC, 28461', '2005-01-31'),
('NW-H-475-2', 'H', 475, 2, 'standard', 'available', 4.0, 10.0, 'Kathleen Pascale', '1001 Bay Side Lane, Southport (BSL), NC, 28461', '2005-01-31'),
('NW-H-476-1', 'H', 476, 1, 'standard', 'occupied', 4.0, 10.0, 'Minervia Ray-Davis', '925 Hankinsville Road, Southport, NC, 29461', '2009-10-08'),
('NW-H-476-2', 'H', 476, 2, 'standard', 'available', 4.0, 10.0, 'Minervia Ray-Davis', '925 Hankinsville Road, Southport, NC, 29461', '2009-10-08'),
('NW-H-477-1', 'H', 477, 1, 'standard', 'available', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dr, Southport, NC, 28461', '2003-12-12'),
('NW-H-477-2', 'H', 477, 2, 'standard', 'available', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dr, Southport, NC, 28461', '2003-12-12'),
('NW-H-478-1', 'H', 478, 1, 'standard', 'occupied', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dri, Southport, NC, 28461', '2003-09-09'),
('NW-H-478-2', 'H', 478, 2, 'standard', 'occupied', 4.0, 10.0, 'Marion Wise', '5104 Prices Creek Dri, Southport, NC, 28461', '2003-09-09'),
('NW-H-479-1', 'H', 479, 1, 'standard', 'available', 4.0, 10.0, 'Thomas A. Honeycutt', '4995 Carol Street, Southport, NC, 28461', '2000-04-03'),
('NW-H-479-2', 'H', 479, 2, 'standard', 'occupied', 4.0, 10.0, 'Thomas A. Honeycutt', '4995 Carol Street, Southport, NC, 28461', '2000-04-03'),
('NW-H-480-1', 'H', 480, 1, 'standard', 'available', 4.0, 10.0, 'Kenneth M. Hill, Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-480-2', 'H', 480, 2, 'standard', 'available', 4.0, 10.0, 'Kenneth M. Hill, Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-480-3', 'H', 480, 3, 'standard', 'occupied', 4.0, 10.0, 'Kenneth M. Hill, Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-481-1', 'H', 481, 1, 'standard', 'available', 4.0, 10.0, 'Kenneth M. Hill,  Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-481-2', 'H', 481, 2, 'standard', 'available', 4.0, 10.0, 'Kenneth M. Hill,  Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-481-3', 'H', 481, 3, 'standard', 'available', 4.0, 10.0, 'Kenneth M. Hill,  Jr.', '1005 Osprey Circle, Southport, NC, 28461', '2001-07-02'),
('NW-H-482-1', 'H', 482, 1, 'standard', 'available', 4.0, 10.0, 'Michael Winebar', '610 E Leonard Street, Southport, NC, 28461', '2010-09-07'),
('NW-H-482-2', 'H', 482, 2, 'standard', 'available', 4.0, 10.0, 'Michael Winebar', '610 E Leonard Street, Southport, NC, 28461', '2010-09-07'),
('NW-H-482-3', 'H', 482, 3, 'standard', 'available', 4.0, 10.0, 'Michael Winebar', '610 E Leonard Street, Southport, NC, 28461', '2010-09-07'),
('NW-H-483-1', 'H', 483, 1, 'standard', 'available', 4.0, 10.0, 'Kimberly McClain', '109 NW 20th Street, Oak Island, NC, 28465', '2007-04-13'),
('NW-H-483-2', 'H', 483, 2, 'standard', 'available', 4.0, 10.0, 'Kimberly McClain', '109 NW 20th Street, Oak Island, NC, 28465', '2007-04-13'),
('NW-H-483-3', 'H', 483, 3, 'standard', 'available', 4.0, 10.0, 'Kimberly McClain', '109 NW 20th Street, Oak Island, NC, 28465', '2007-04-13'),
('NW-H-484-1', 'H', 484, 1, 'standard', 'occupied', 4.0, 10.0, 'Melvin Victer McCowan', '6608 E. Yacht Drive, Oak Island, NC, 28465', '2007-02-28'),
('NW-H-484-2', 'H', 484, 2, 'standard', 'available', 4.0, 10.0, 'Melvin Victer McCowan', '6608 E. Yacht Drive, Oak Island, NC, 28465', '2007-02-28'),
('NW-H-484-3', 'H', 484, 3, 'standard', 'available', 4.0, 10.0, 'Melvin Victer McCowan', '6608 E. Yacht Drive, Oak Island, NC, 28465', '2007-02-28'),
('NW-H-485-1', 'H', 485, 1, 'standard', 'available', 4.0, 10.0, 'Nelson Adams', '303 W 10th Street, Southport, NC, 28461', '2007-11-19'),
('NW-H-486-1', 'H', 486, 1, 'standard', 'available', 4.0, 10.0, 'Nelson Adams', '303 W 10th Street, Southport, NC, 28461', '2007-11-19'),
('NW-H-487-1', 'H', 487, 1, 'standard', 'available', 4.0, 10.0, 'Nelson Adams', '303 W 10th Street, Southport, NC, 28461', '2007-11-19'),
('NW-H-488-1', 'H', 488, 1, 'standard', 'available', 4.0, 10.0, 'Nelson Adams', '303 W 10th Street, Southport, NC, 28461', '2007-11-19'),
('NW-H-489-1', 'H', 489, 1, 'standard', 'available', 4.0, 10.0, 'Nelson Adams', '303 W 10th Street, Southport, NC, 28461', '2007-11-19'),
('NW-H-490-1', 'H', 490, 1, 'standard', 'available', 4.0, 10.0, 'Max Lineberry', '3675 Lewis Loop Road, Bolivia, NC, 28422', '2006-07-22'),
('NW-H-490-2', 'H', 490, 2, 'standard', 'available', 4.0, 10.0, 'Max Lineberry', '3675 Lewis Loop Road, Bolivia, NC, 28422', '2006-07-22'),
('NW-H-490-3', 'H', 490, 3, 'standard', 'available', 4.0, 10.0, 'Max Lineberry', '3675 Lewis Loop Road, Bolivia, NC, 28422', '2006-07-22'),
('NW-H-490-4', 'H', 490, 4, 'standard', 'occupied', 4.0, 10.0, 'Max Lineberry', '3675 Lewis Loop Road, Bolivia, NC, 28422', '2006-07-22'),
('NW-H-491-1', 'H', 491, 1, 'standard', 'available', 4.0, 10.0, 'James Criscoe', '228 NE 52nd Street, Oak Island, NC, 28465', '2008-06-25'),
('NW-H-491-2', 'H', 491, 2, 'standard', 'occupied', 4.0, 10.0, 'James Criscoe', '228 NE 52nd Street, Oak Island, NC, 28465', '2008-06-25'),
('NW-H-491-3', 'H', 491, 3, 'standard', 'available', 4.0, 10.0, 'James Criscoe', '228 NE 52nd Street, Oak Island, NC, 28465', '2008-06-25'),
('NW-H-491-4', 'H', 491, 4, 'standard', 'available', 4.0, 10.0, 'James Criscoe', '228 NE 52nd Street, Oak Island, NC, 28465', '2008-06-25'),
('NW-H-492-1', 'H', 492, 1, 'standard', 'available', 4.0, 10.0, 'Russ & Joan Morrison', '5042 Glen Cove Drive, Southport, NC, 28461', '2008-05-02'),
('NW-H-492-2', 'H', 492, 2, 'standard', 'occupied', 4.0, 10.0, 'Russ & Joan Morrison', '5042 Glen Cove Drive, Southport, NC, 28461', '2008-05-02'),
('NW-H-492-3', 'H', 492, 3, 'standard', 'available', 4.0, 10.0, 'Russ & Joan Morrison', '5042 Glen Cove Drive, Southport, NC, 28461', '2008-05-02'),
('NW-H-492-4', 'H', 492, 4, 'standard', 'available', 4.0, 10.0, 'Russ & Joan Morrison', '5042 Glen Cove Drive, Southport, NC, 28461', '2008-05-02'),
('NW-H-493-1', 'H', 493, 1, 'standard', 'occupied', 4.0, 10.0, 'Virginia L. Austin', 'C/o 1990 Albemarle, BSL Southport, NC, 28461', '2001-04-24'),
('NW-H-494-1', 'H', 494, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Aman', '1990 Albermarle, BSL Southport, NC, 28461', '2002-05-01'),
('NW-H-495-1', 'H', 495, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Aman', '1990 Albermarle, BSL Southport, NC, 28461', '2001-04-24'),
('NW-H-496-1', 'H', 496, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Aman', '1990 Albermarle, BSL Southport, NC, 28461', '2001-04-24'),
('NW-H-497-1', 'H', 497, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Aman', '1990 Albermarle, BSL Southport, NC, 28461', '2001-04-24'),
('NW-H-498-1', 'H', 498, 1, 'standard', 'occupied', 4.0, 10.0, 'Jutta Bracy', '351 Franklin Street, Petersburg, VA, 23803', '2012-09-12'),
('NW-H-499-1', 'H', 499, 1, 'standard', 'available', 4.0, 10.0, 'Michelle Hankins', '106 Hankins Drive, Southport, NC, 28461', '2013-09-09'),
('NW-H-500-1', 'H', 500, 1, 'standard', 'available', 4.0, 10.0, 'Tracy Aman', '1990 Albermarle, BSL Southport, NC, 28461', '2001-04-24'),
('NW-H-501-1', 'H', 501, 1, 'standard', 'occupied', 4.0, 10.0, 'Anna Dell Zimms', '2906 East Oak Island, Oak Island, NC, 28465', '2003-04-22'),
('NW-H-501-2', 'H', 501, 2, 'standard', 'occupied', 4.0, 10.0, 'Anna Dell Zimms', '2906 East Oak Island, Oak Island, NC, 28465', '2003-04-22'),
('NW-H-502-1', 'H', 502, 1, 'standard', 'occupied', 4.0, 10.0, 'Donald R. Wilson', '212 NE 56th Street, Oak Island, NC, 28465', '2003-04-23'),
('NW-H-502-2', 'H', 502, 2, 'standard', 'occupied', 4.0, 10.0, 'Donald R. Wilson', '212 NE 56th Street, Oak Island, NC, 28465', '2003-04-23'),
('NW-H-503-1', 'H', 503, 1, 'standard', 'available', 4.0, 10.0, 'Laura Baker', '2780 Midway Rd SE, Bolivia, NC, 28422', '2006-12-01'),
('NW-H-503-2', 'H', 503, 2, 'standard', 'available', 4.0, 10.0, 'Laura Baker', '2780 Midway Rd SE, Bolivia, NC, 28422', '2006-12-01'),
('NW-H-504-1', 'H', 504, 1, 'standard', 'occupied', 4.0, 10.0, 'Theodore Hiatt', '4806 Navigation Road, Southport, NC, 28461', '2009-09-01'),
('NW-H-504-2', 'H', 504, 2, 'standard', 'available', 4.0, 10.0, 'Theodore Hiatt', '4806 Navigation Road, Southport, NC, 28461', '2009-09-01'),
('NW-H-505-1', 'H', 505, 1, 'standard', 'occupied', 4.0, 10.0, 'Edward Barry', '592 Pelican Circle SE, Bolivia, NC, 28422', '2007-11-13'),
('NW-H-505-2', 'H', 505, 2, 'standard', 'occupied', 4.0, 10.0, 'Edward Barry', '592 Pelican Circle SE, Bolivia, NC, 28422', '2007-11-13'),
('NW-H-506-1', 'H', 506, 1, 'standard', 'available', 4.0, 10.0, 'Ruth F. Ollivier', '1229 N Caswell Ave Ap, Southport, NC, 28461', '2010-04-20'),
('NW-H-507-1', 'H', 507, 1, 'standard', 'available', 4.0, 10.0, 'Theodore Hiatt', '4806 Navigation Road, Southport, NC, 28461', '2009-09-01'),
('NW-H-508-1', 'H', 508, 1, 'standard', 'occupied', 4.0, 10.0, 'Antione LaShawn Jackson', '712 Jabbertown Road, Southport, NC, 28461', '2012-04-25'),
('NW-H-509-1', 'H', 509, 1, 'standard', 'available', 4.0, 10.0, 'Kelly Small', '4357 Sweetbay Dr SE, Southport, NC, 28461', '2011-08-23'),
('NW-H-510-1', 'H', 510, 1, 'standard', 'available', 4.0, 10.0, 'Kelly Small', '4357 Sweetbay Dr SE, Southport, NC, 28461', '2011-03-08'),
('NW-H-511-1', 'H', 511, 1, 'standard', 'available', 4.0, 10.0, 'Ian & Barbara Davidson', '518 Brunswick Street, Southport, NC, 28461', '2003-11-17'),
('NW-H-512-1', 'H', 512, 1, 'standard', 'occupied', 4.0, 10.0, 'Ian & Barbara Davidson', '518 Brunswick Street, Southport, NC, 28461', '2003-11-17'),
('NW-H-513-1', 'H', 513, 1, 'standard', 'occupied', 4.0, 10.0, 'Tina Jackson', '723 Jabbertown Road, Southport, NC, 28461', '2012-12-27'),
('NW-H-514-1', 'H', 514, 1, 'standard', 'occupied', 4.0, 10.0, 'Wendy Goins', '4839 Coastal Drive, Southport, NC, 28461', '2004-04-30'),
('NW-H-515-1', 'H', 515, 1, 'standard', 'occupied', 4.0, 10.0, 'Kenneth & Patricia Howard', '705 Cap Harbor Drive, Southport, NC, 28461', '2006-11-08'),
('NW-H-515-2', 'H', 515, 2, 'standard', 'available', 4.0, 10.0, 'Kenneth & Patricia Howard', '705 Cap Harbor Drive, Southport, NC, 28461', '2006-11-08'),
('NW-H-515-3', 'H', 515, 3, 'standard', 'available', 4.0, 10.0, 'Kenneth & Patricia Howard', '705 Cap Harbor Drive, Southport, NC, 28461', '2006-11-08'),
('NW-H-515-4', 'H', 515, 4, 'standard', 'available', 4.0, 10.0, 'Kenneth & Patricia Howard', '705 Cap Harbor Drive, Southport, NC, 28461', '2006-11-08'),
('NW-H-516-1', 'H', 516, 1, 'standard', 'available', 4.0, 10.0, 'Philo Joyner', '812 N Caswell Ave, Southport, NC, 28461', '2007-11-05'),
('NW-H-516-2', 'H', 516, 2, 'standard', 'available', 4.0, 10.0, 'Philo Joyner', '812 N Caswell Ave, Southport, NC, 28461', '2007-11-05'),
('NW-H-516-3', 'H', 516, 3, 'standard', 'available', 4.0, 10.0, 'Philo Joyner', '812 N Caswell Ave, Southport, NC, 28461', '2007-11-05'),
('NW-H-516-4', 'H', 516, 4, 'standard', 'available', 4.0, 10.0, 'Philo Joyner', '812 N Caswell Ave, Southport, NC, 28461', '2007-11-05'),
('NW-H-517-1', 'H', 517, 1, 'standard', 'available', 4.0, 10.0, 'Christopher Schnell', '422 W Brunswick St, Southport, NC, 28461', '2008-03-07'),
('NW-H-517-2', 'H', 517, 2, 'standard', 'available', 4.0, 10.0, 'Christopher Schnell', '422 W Brunswick St, Southport, NC, 28461', '2008-03-07'),
('NW-H-517-3', 'H', 517, 3, 'standard', 'available', 4.0, 10.0, 'Christopher Schnell', '422 W Brunswick St, Southport, NC, 28461', '2008-03-07'),
('NW-H-517-4', 'H', 517, 4, 'standard', 'available', 4.0, 10.0, 'Christopher Schnell', '422 W Brunswick St, Southport, NC, 28461', '2008-03-07'),
('NW-H-518-1', 'H', 518, 1, 'standard', 'available', 4.0, 10.0, 'Robert D & Kay P. Creech', '426 Brunswick Street, Southport, NC, 28461', '2008-03-06'),
('NW-H-519-1', 'H', 519, 1, 'standard', 'available', 4.0, 10.0, 'Robert D & Kay P. Creech', '426 Brunswick Street, Southport, NC, 28461', '2008-03-06'),
('NW-H-520-1', 'H', 520, 1, 'standard', 'available', 4.0, 10.0, 'Robert D & Kay P. Creech', '426 Brunswick Street, Southport, NC, 28461', '2008-03-06'),
('NW-H-521-1', 'H', 521, 1, 'standard', 'available', 4.0, 10.0, 'Robert D & Kay P. Creech', '426 Brunswick Street, Southport, NC, 28461', '2008-03-06'),
('NW-H-522-1', 'H', 522, 1, 'standard', 'available', 4.0, 10.0, 'George / Debrah Graham / Smith', '610 Clarendon Ave, Southport, NC, 28461', '2011-02-28'),
('NW-H-523-1', 'H', 523, 1, 'standard', 'occupied', 4.0, 10.0, 'George Graham', '610 Clarendon, Southport, NC, 28461-', '2011-02-28'),
('NW-H-524-1', 'H', 524, 1, 'standard', 'available', 4.0, 10.0, 'Ruben Velez', 'Southport, NC, 28461', '2018-08-28'),
('NW-H-525-1', 'H', 525, 1, 'standard', 'available', 4.0, 10.0, 'Hunt/James', NULL, NULL),
('NW-H-526-1', 'H', 526, 1, 'standard', 'available', 4.0, 10.0, 'Mabe', 'NC, 28461', NULL),
('NW-H-527-1', 'H', 527, 1, 'standard', 'occupied', 4.0, 10.0, 'Judy Mabe', 'P.O. Box 244, Bolivia, NC, 28422', '2010-09-09'),
('NW-H-527-2', 'H', 527, 2, 'standard', 'available', 4.0, 10.0, 'Judy Mabe', 'P.O. Box 244, Bolivia, NC, 28422', '2010-09-09'),
('NW-H-528-1', 'H', 528, 1, 'standard', 'available', 4.0, 10.0, 'Royce James', '162 NE 19th St, Oak Island, NC, 28465', '2011-07-27'),
('NW-H-528-2', 'H', 528, 2, 'standard', 'available', 4.0, 10.0, 'Royce James', '162 NE 19th St, Oak Island, NC, 28465', '2011-07-27'),
('NW-H-529-1', 'H', 529, 1, 'standard', 'available', 4.0, 10.0, 'Ruben Velez', 'Southport, NC, 28461', '2018-08-28'),
('NW-H-529-2', 'H', 529, 2, 'standard', 'available', 4.0, 10.0, 'Ruben Velez', 'Southport, NC, 28461', '2018-08-28'),
('NW-H-530-1', 'H', 530, 1, 'standard', 'available', 4.0, 10.0, 'George / Betty S. Graham / Jones', '610 Clarendon Ave, Southport, NC, 28461', '2011-02-28'),
('NW-H-530-2', 'H', 530, 2, 'standard', 'available', 4.0, 10.0, 'George / Betty S. Graham / Jones', '610 Clarendon Ave, Southport, NC, 28461', '2011-02-28'),
('NW-H-531-1', 'H', 531, 1, 'standard', 'occupied', 4.0, 10.0, 'George / Betty S. Graham / Jones', '610 Clarendon Ave, Southport, NC, 28461', '2011-02-28'),
('NW-H-531-2', 'H', 531, 2, 'standard', 'available', 4.0, 10.0, 'George / Betty S. Graham / Jones', '610 Clarendon Ave, Southport, NC, 28461', '2011-02-28'),
('NW-H-532-1', 'H', 532, 1, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-532-2', 'H', 532, 2, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-532-3', 'H', 532, 3, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-533-1', 'H', 533, 1, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-533-2', 'H', 533, 2, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-533-3', 'H', 533, 3, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-534-1', 'H', 534, 1, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-534-2', 'H', 534, 2, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-534-3', 'H', 534, 3, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-535-1', 'H', 535, 1, 'standard', 'occupied', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-535-2', 'H', 535, 2, 'standard', 'occupied', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-535-3', 'H', 535, 3, 'standard', 'available', 4.0, 10.0, 'Catherine Holth', '809 Cape Harbor, Southport, NC, 28461', '2003-11-14'),
('NW-H-536-1', 'H', 536, 1, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-536-2', 'H', 536, 2, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-536-3', 'H', 536, 3, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-537-1', 'H', 537, 1, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-537-2', 'H', 537, 2, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-537-3', 'H', 537, 3, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-538-1', 'H', 538, 1, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-538-2', 'H', 538, 2, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-538-3', 'H', 538, 3, 'standard', 'available', 4.0, 10.0, 'William M Sherrod', '224 River Drive, Southport, NC, 28461', '2005-07-22'),
('NW-H-539-1', 'H', 539, 1, 'standard', 'occupied', 4.0, 10.0, 'Elvra Washington Pringle', '825 Eden Drive, BSL, NC, 28461', '2006-10-30'),
('NW-H-540-1', 'H', 540, 1, 'standard', 'occupied', 4.0, 10.0, 'Pam Bumgardner', 'NC, 28461', '2013-03-14'),
('NW-H-541-1', 'H', 541, 1, 'standard', 'available', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-542-1', 'H', 542, 1, 'standard', 'available', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-543-1', 'H', 543, 1, 'standard', 'available', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-543-2', 'H', 543, 2, 'standard', 'occupied', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-543-3', 'H', 543, 3, 'standard', 'available', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-543-4', 'H', 543, 4, 'standard', 'available', 4.0, 10.0, 'Eulene Lee', '4363 Fish  Factory Rd, Southport, NC, 28461', '2008-08-13'),
('NW-H-544-1', 'H', 544, 1, 'standard', 'occupied', 4.0, 10.0, 'Debra Davis', '2104 George 2nd Hwy, Bolivia, NC, 28422', '2008-09-29'),
('NW-H-544-2', 'H', 544, 2, 'standard', 'available', 4.0, 10.0, 'Debra Davis', '2104 George 2nd Hwy, Bolivia, NC, 28422', '2008-09-29'),
('NW-H-544-3', 'H', 544, 3, 'standard', 'available', 4.0, 10.0, 'Debra Davis', '2104 George 2nd Hwy, Bolivia, NC, 28422', '2008-09-29'),
('NW-H-544-4', 'H', 544, 4, 'standard', 'available', 4.0, 10.0, 'Debra Davis', '2104 George 2nd Hwy, Bolivia, NC, 28422', '2008-09-29'),
('NW-H-545-1', 'H', 545, 1, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-545-2', 'H', 545, 2, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-545-3', 'H', 545, 3, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-545-4', 'H', 545, 4, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-546-1', 'H', 546, 1, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-546-2', 'H', 546, 2, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-546-3', 'H', 546, 3, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-546-4', 'H', 546, 4, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-547-1', 'H', 547, 1, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-547-2', 'H', 547, 2, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-547-3', 'H', 547, 3, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-547-4', 'H', 547, 4, 'standard', 'available', 4.0, 10.0, 'Susan Ellen Holth/Nuguen', '809 Cape Harbor Drive, Southport, NC, 28461', '2006-04-05'),
('NW-H-548-1', 'H', 548, 1, 'standard', 'available', 4.0, 10.0, 'B. Wayne & Mary E. Strickland', '222 River Drive, Southport, NC, 28461', '2008-02-18'),
('NW-H-549-1', 'H', 549, 1, 'standard', 'available', 4.0, 10.0, 'B. Wayne & Mary E. Strickland', '222 River Drive, Southport, NC, 28461', '2008-02-18'),
('NW-H-550-1', 'H', 550, 1, 'standard', 'available', 4.0, 10.0, 'B. Wayne & Mary E. Strickland', '222 River Drive, Southport, NC, 28461', '2008-02-18'),
('NW-H-551-1', 'H', 551, 1, 'standard', 'available', 4.0, 10.0, 'B. Wayne & Mary E. Strickland', '222 River Drive, Southport, NC, 28461', '2008-02-18'),
('NW-H-552-1', 'H', 552, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-552-2', 'H', 552, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-552-3', 'H', 552, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-553-1', 'H', 553, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-553-2', 'H', 553, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-553-3', 'H', 553, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-554-1', 'H', 554, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-554-2', 'H', 554, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-554-3', 'H', 554, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-555-1', 'H', 555, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-555-2', 'H', 555, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-555-3', 'H', 555, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-556-1', 'H', 556, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-556-2', 'H', 556, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-556-3', 'H', 556, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-557-1', 'H', 557, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-557-2', 'H', 557, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-557-3', 'H', 557, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-558-1', 'H', 558, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-558-2', 'H', 558, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-558-3', 'H', 558, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-559-1', 'H', 559, 1, 'standard', 'occupied', 4.0, 10.0, 'Jesse Price', '523 Mission Road, Southport, NC, 28461', '2011-02-03'),
('NW-H-559-2', 'H', 559, 2, 'standard', 'available', 4.0, 10.0, 'Jesse Price', '523 Mission Road, Southport, NC, 28461', '2011-02-03'),
('NW-H-559-3', 'H', 559, 3, 'standard', 'available', 4.0, 10.0, 'Jesse Price', '523 Mission Road, Southport, NC, 28461', '2011-02-03'),
('NW-H-560-1', 'H', 560, 1, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-03'),
('NW-H-560-2', 'H', 560, 2, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-03'),
('NW-H-560-3', 'H', 560, 3, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-03'),
('NW-H-561-1', 'H', 561, 1, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-04'),
('NW-H-561-2', 'H', 561, 2, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-04'),
('NW-H-561-3', 'H', 561, 3, 'standard', 'available', 4.0, 10.0, 'Todd Coring', '318 N Dry Street, Southport, NC, 28461', '2011-03-04'),
('NW-H-562-1', 'H', 562, 1, 'standard', 'occupied', 4.0, 10.0, 'Cynthia Zarella', '5339 Dosher Cutoff122, Southport, NC, 28461', '2011-08-11'),
('NW-H-562-2', 'H', 562, 2, 'standard', 'occupied', 4.0, 10.0, 'Cynthia Zarella', '5339 Dosher Cutoff122, Southport, NC, 28461', '2011-08-11'),
('NW-H-562-3', 'H', 562, 3, 'standard', 'occupied', 4.0, 10.0, 'Cynthia Zarella', '5339 Dosher Cutoff122, Southport, NC, 28461', '2011-08-11'),
('NW-H-563-1', 'H', 563, 1, 'standard', 'occupied', 4.0, 10.0, 'Catherine Clemmons', '628 Jabbertown Road, Southport, NC, 28461', '2012-05-25'),
('NW-H-564-1', 'H', 564, 1, 'standard', 'available', 4.0, 10.0, 'Catherine Clemmons', '628 Jabbertown Road, Southport, NC, 28461', '2012-05-25'),
('NW-H-565-1', 'H', 565, 1, 'standard', 'occupied', 4.0, 10.0, 'Annie Mae Lee', '506 W 11th Street, Southport, NC, 28461', '2013-06-18'),
('NW-H-566-1', 'H', 566, 1, 'standard', 'occupied', 4.0, 10.0, 'Cyntha McClain', '5026 1/2 Trails End R, Southport, NC, 28461', '2013-03-14'),
('NW-H-567 A-1', 'H', 1, 1, 'standard', 'available', 4.0, 10.0, 'Stephen Zarella', '3535 St James Dr SE, St James, NC, 28461', '2012-06-27'),
('NW-H-567 A-2', 'H', 1, 2, 'standard', 'available', 4.0, 10.0, 'Stephen Zarella', '3535 St James Dr SE, St James, NC, 28461', '2012-06-27'),
('NW-H-567 B-3', 'H', 1, 3, 'standard', 'occupied', 4.0, 10.0, 'Kenneth Price', '4794 Longview Drive, Southport, NC, 28461', '2013-05-30'),
('NW-H-567 B-4', 'H', 1, 4, 'standard', 'occupied', 4.0, 10.0, 'Kenneth Price', '4794 Longview Drive, Southport, NC, 28461', '2013-05-30'),
('NW-H-568-1', 'H', 568, 1, 'standard', 'available', 4.0, 10.0, 'Robert Quinn', '3587 Member''s Club Bl, St James, NC, 28461', '2012-05-18'),
('NW-H-568-2', 'H', 568, 2, 'standard', 'occupied', 4.0, 10.0, 'Robert Quinn', '3587 Member''s Club Bl, St James, NC, 28461', '2012-05-18'),
('NW-H-568-3', 'H', 568, 3, 'standard', 'occupied', 4.0, 10.0, 'Robert Quinn', '3587 Member''s Club Bl, St James, NC, 28461', '2012-05-18'),
('NW-H-568-4', 'H', 568, 4, 'standard', 'occupied', 4.0, 10.0, 'Robert Quinn', '3587 Member''s Club Bl, St James, NC, 28461', '2012-05-18'),
('NW-H-569-', 'H', 569, 1, 'standard', 'available', 4.0, 10.0, 'Number Skipped Over', NULL, NULL),
('NW-H-570-1', 'H', 570, 1, 'standard', 'available', 4.0, 10.0, 'Claude Marston', '3807 E Yacht Drive, Oak Island, NC, 28465', '2011-06-20'),
('NW-H-571-1', 'H', 571, 1, 'standard', 'available', 4.0, 10.0, 'Claude Marston', '3807 E Yacht Drive, Oak Island, NC, 28465', '2011-06-20'),
('NW-H-572-1', 'H', 572, 1, 'standard', 'available', 4.0, 10.0, 'Roy & Cheryl Daniel', '120 W Bay St, Southport, NC, 28461', '2011-09-29'),
('NW-H-573-1', 'H', 573, 1, 'standard', 'occupied', 4.0, 10.0, 'Roy & Cheryl Daniel', '120 W Bay St, Southport, NC, 28461', '2011-09-29'),
('NW-H-574-1', 'H', 574, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-574-2', 'H', 574, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-574-3', 'H', 574, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-575-1', 'H', 575, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-575-2', 'H', 575, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-575-3', 'H', 575, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-576-1', 'H', 576, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-576-2', 'H', 576, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-576-3', 'H', 576, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-577-1', 'H', 577, 1, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-577-2', 'H', 577, 2, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-577-3', 'H', 577, 3, 'standard', 'available', 4.0, 10.0, 'Do Not Sell', NULL, NULL),
('NW-H-578-1', 'H', 578, 1, 'standard', 'available', 4.0, 10.0, 'Jamie lee Simms', '250 Cherry Rd Unit 2, BSL Southport, NC, 28461', '2009-10-20'),
('NW-H-579-1', 'H', 579, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry Graham', '610 Clarendon Ave, Southport, NC, 28461', '2010-11-03'),
('NW-H-580-1', 'H', 580, 1, 'standard', 'occupied', 4.0, 10.0, 'Terry Graham', '610 Clarendon Ave, Southport, NC, 28461', '2010-11-03'),
('NW-H-581-1', 'H', 581, 1, 'standard', 'occupied', 4.0, 10.0, 'Patricia Coles', '302 Sherrill Ave, Oak Island, NC, 28465', '2009-08-20'),
('NW-H-582-1', 'H', 582, 1, 'standard', 'occupied', 4.0, 10.0, 'Jacklyn W. Gorton', '101 Throckmorton St, Oak Island, NC, 28465', '2004-09-20')
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section H
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alice', NULL, 'Brown', 'Parker', '1924-05-26', '1994-04-30', NULL
FROM plots WHERE plot_number = 'NW-H-001-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Willie', NULL, 'Brown', NULL, '1924-10-26', '2005-04-14', NULL
FROM plots WHERE plot_number = 'NW-H-001-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', NULL, 'McCracken', NULL, '1947-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-002-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patricia', NULL, 'McCracken', NULL, '1944-01-10', '2008-05-23', NULL
FROM plots WHERE plot_number = 'NW-H-002-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Murray', 'Holmes,', NULL, '1918-05-01', '1994-07-09', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-003-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Juliette', 'H.', 'Holmes', NULL, '1921-01-01', '2000-11-11', NULL
FROM plots WHERE plot_number = 'NW-H-003-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Willie', NULL, 'Parker', NULL, '1934-08-10', '2022-10-02', NULL
FROM plots WHERE plot_number = 'NW-H-004-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earla', 'Maye', 'Parker', NULL, '1938-09-08', '1994-07-11', NULL
FROM plots WHERE plot_number = 'NW-H-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harvey', 'Goodwin', 'Ramsey', NULL, '1939-03-05', '1994-08-01', NULL
FROM plots WHERE plot_number = 'NW-H-005-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'P.', 'McMillan', NULL, '1930-02-07', '2008-02-12', NULL
FROM plots WHERE plot_number = 'NW-H-006-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'McMillan', NULL, '1928-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-006-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'H.', 'Davis', NULL, '1958-09-25', '1996-01-11', NULL
FROM plots WHERE plot_number = 'NW-H-007-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maggie', 'Muriel', 'Brown', NULL, '1925-04-17', '1996-01-28', NULL
FROM plots WHERE plot_number = 'NW-H-008-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'L.', 'Lee', NULL, '1939-01-01', '1995-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-009-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'Betty', 'Williams', NULL, '1932-01-11', '1995-04-08', NULL
FROM plots WHERE plot_number = 'NW-H-010-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Josephine', NULL, 'Parker', NULL, '1906-01-05', '1995-01-13', NULL
FROM plots WHERE plot_number = 'NW-H-011-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lovie', 'Gertrude', 'McNeil', NULL, '1924-11-06', '1994-07-16', NULL
FROM plots WHERE plot_number = 'NW-H-012-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mozella', NULL, 'Gilmore', 'Williams', '1919-11-21', '2001-12-17', NULL
FROM plots WHERE plot_number = 'NW-H-013-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', NULL, 'Wellington', 'Williams', '1932-01-19', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-013-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Connie', 'L.', 'Holmes', NULL, '1945-02-09', '1995-11-10', NULL
FROM plots WHERE plot_number = 'NW-H-015-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Georgia', 'Irene', 'Cowan', NULL, '1923-05-30', '2001-12-22', NULL
FROM plots WHERE plot_number = 'NW-H-015-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Henry', 'Morris', NULL, '1930-02-27', '1996-07-14', NULL
FROM plots WHERE plot_number = 'NW-H-016-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marie', 'Elizabeth', 'Davis', 'Evans', '1924-04-15', '2002-04-14', NULL
FROM plots WHERE plot_number = 'NW-H-017-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'O.', 'McNeil', NULL, '1925-12-26', '1996-09-09', NULL
FROM plots WHERE plot_number = 'NW-H-017-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', NULL, 'Brown', NULL, '1949-06-10', '2004-05-03', NULL
FROM plots WHERE plot_number = 'NW-H-020-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ronald', 'Steward', 'Clemmons', NULL, '1947-03-01', '2006-03-30', NULL
FROM plots WHERE plot_number = 'NW-H-020-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alvin', 'Lincoln', 'Swain', NULL, '1923-08-26', '2000-12-28', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-022-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Erna', NULL, 'Swain', 'Smith', '1927-11-24', '2015-12-18', NULL
FROM plots WHERE plot_number = 'NW-H-022-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lynn', NULL, 'Sellers', 'Ruark', '1948-01-02', '2014-05-10', NULL
FROM plots WHERE plot_number = 'NW-H-023-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Michael', 'Sellers', NULL, '1945-02-28', '2019-04-07', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-023-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'E.', 'Ruark', 'Upchurch', '1917-06-30', '1998-04-19', NULL
FROM plots WHERE plot_number = 'NW-H-024-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Asa', 'Dosher', 'Ruark,', NULL, '1916-08-25', '1995-05-06', ' Jr.'
FROM plots WHERE plot_number = 'NW-H-024-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Heberto', NULL, 'Smith', NULL, '1920-11-08', '2008-06-28', NULL
FROM plots WHERE plot_number = 'NW-H-026-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christine', 'A.', 'Lenahan', NULL, '1933-02-27', '2010-05-05', NULL
FROM plots WHERE plot_number = 'NW-H-027-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Michael', 'James', 'Lenahan', NULL, '1933-04-04', '2016-10-11', NULL
FROM plots WHERE plot_number = 'NW-H-028-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Peter', 'Thomas', 'Lenahan', NULL, '1961-04-13', '1998-12-05', NULL
FROM plots WHERE plot_number = 'NW-H-029-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Zuella', NULL, 'Gore', 'Frink', '1921-04-11', '1995-05-10', NULL
FROM plots WHERE plot_number = 'NW-H-030-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Leon', 'Joyner', NULL, '1942-06-17', '2000-08-05', NULL
FROM plots WHERE plot_number = 'NW-H-031-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julius', NULL, 'Galloway', NULL, NULL, '2000-08-23', NULL
FROM plots WHERE plot_number = 'NW-H-034-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clinton', 'Lindell', 'Frink', NULL, '1959-06-21', '2002-09-07', NULL
FROM plots WHERE plot_number = 'NW-H-036-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Janice', 'Lee', 'Brown', 'Frink', '1957-01-30', '2012-08-20', NULL
FROM plots WHERE plot_number = 'NW-H-037-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Giles Andrew', 'Alan', 'Goforth', NULL, '1960-04-23', '1999-05-08', NULL
FROM plots WHERE plot_number = 'NW-H-040-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Faye', NULL, 'Nash', 'Gore', '1941-09-14', '1999-05-20', NULL
FROM plots WHERE plot_number = 'NW-H-043-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', NULL, 'Wells', 'Wilmoth', '1949-11-12', '1999-10-06', NULL
FROM plots WHERE plot_number = 'NW-H-044-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'Wellington', 'Gore,', NULL, '1922-09-07', '2001-02-21', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-045-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', 'Ray', 'Fravel', NULL, '1936-10-07', '2003-06-02', NULL
FROM plots WHERE plot_number = 'NW-H-046-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Billy', 'Farrington', 'Burton', NULL, '1928-05-22', '2003-08-01', NULL
FROM plots WHERE plot_number = 'NW-H-047-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lou', 'Etta', 'Burton', 'Morris', '1934-01-20', '2000-04-27', NULL
FROM plots WHERE plot_number = 'NW-H-047-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mae', NULL, 'Long', 'Morris', '1925-09-03', '2010-03-27', NULL
FROM plots WHERE plot_number = 'NW-H-048-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margie', 'Rebecca', 'Ward', 'McRoy', '1930-11-01', '2006-03-28', NULL
FROM plots WHERE plot_number = 'NW-H-048-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rita', 'Diane', 'McDowell', NULL, '1959-12-06', '2003-04-17', NULL
FROM plots WHERE plot_number = 'NW-H-049-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruby', NULL, 'Beheler', 'Brown', '1913-06-09', '1997-11-19', NULL
FROM plots WHERE plot_number = 'NW-H-050-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Celestine', NULL, 'Jackson', NULL, '1930-06-21', '2006-02-08', NULL
FROM plots WHERE plot_number = 'NW-H-051-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Inez', 'Jackson', 'Slade', '1927-09-29', '2004-05-25', NULL
FROM plots WHERE plot_number = 'NW-H-052-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clayton', 'Van Doren', 'Deats', 'Bud', '1925-11-15', '2004-09-22', NULL
FROM plots WHERE plot_number = 'NW-H-053-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffery', 'Brian', 'Nash', NULL, '1968-02-19', '1995-03-10', NULL
FROM plots WHERE plot_number = 'NW-H-054-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', 'Gilbert', 'Haney', NULL, '1938-08-28', '1999-01-20', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-055-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Michael', 'McKeithan', 'Cummings', NULL, '1984-08-20', '2001-03-01', NULL
FROM plots WHERE plot_number = 'NW-H-058-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', NULL, 'Bellamy', NULL, '1929-08-10', '2015-08-31', NULL
FROM plots WHERE plot_number = 'NW-H-059-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Malissa', 'Jane', 'Bellamy', NULL, '1931-09-04', '2020-04-25', NULL
FROM plots WHERE plot_number = 'NW-H-059-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', NULL, 'Wilson', NULL, '1938-08-06', '2022-11-15', NULL
FROM plots WHERE plot_number = 'NW-H-059-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katherine', NULL, 'Prevatte', 'Upchurch', '1944-07-09', '1998-03-19', NULL
FROM plots WHERE plot_number = 'NW-H-060-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', NULL, 'Prevatte', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-060-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Aaron', 'Thomas', 'Swain', NULL, '1969-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-061-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leola', NULL, 'Swain', NULL, '1939-12-25', '2003-01-16', NULL
FROM plots WHERE plot_number = 'NW-H-061-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Victoria', 'Marie', 'Swan', NULL, '1954-03-20', '2008-11-28', NULL
FROM plots WHERE plot_number = 'NW-H-062-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Myrtle', NULL, 'Swan', 'Taylor', '1913-07-22', '1995-01-19', NULL
FROM plots WHERE plot_number = 'NW-H-062-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Augustus', 'Norton', 'Swan', NULL, '1915-08-21', '2002-09-17', NULL
FROM plots WHERE plot_number = 'NW-H-062-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'J.', 'Bennett', NULL, '1923-05-16', '1992-05-05', NULL
FROM plots WHERE plot_number = 'NW-H-063-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Dean', 'Barton', NULL, '1958-05-20', '2002-07-31', NULL
FROM plots WHERE plot_number = 'NW-H-064-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Lynwood', 'Leggett,', NULL, '1935-02-22', '2000-12-17', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-065-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grover', 'Maurice', 'Sinclair', NULL, '1934-05-08', '1998-08-31', NULL
FROM plots WHERE plot_number = 'NW-H-066-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Loretta', NULL, 'Clevenger', 'Gollette', '1921-12-02', '2006-11-15', NULL
FROM plots WHERE plot_number = 'NW-H-067-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Neal', 'Clevenger', NULL, '1908-05-18', '1994-08-06', NULL
FROM plots WHERE plot_number = 'NW-H-067-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'William', 'Gould', NULL, '1972-11-03', '1997-03-06', NULL
FROM plots WHERE plot_number = 'NW-H-072-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', 'Rose', 'Piper', 'Rankin', '1917-06-14', '2015-01-20', NULL
FROM plots WHERE plot_number = 'NW-H-073-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alexander', 'Coke', 'Miller', NULL, '1915-09-15', '1999-04-21', NULL
FROM plots WHERE plot_number = 'NW-H-075-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Willie', 'Hemmings', 'Miller', NULL, '1915-09-24', '1999-12-04', NULL
FROM plots WHERE plot_number = 'NW-H-075-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Elizabeth', 'Gore', 'Frink', '1942-10-19', '2016-10-20', NULL
FROM plots WHERE plot_number = 'NW-H-076-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Bradley', 'Smith', NULL, '1960-07-30', '1994-09-13', NULL
FROM plots WHERE plot_number = 'NW-H-078-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'LaVada', NULL, 'Bevel', 'Helton', '1919-02-25', '2014-09-02', NULL
FROM plots WHERE plot_number = 'NW-H-079-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Morris', 'Eugene', 'Bevel', NULL, '1917-08-08', '2005-07-05', NULL
FROM plots WHERE plot_number = 'NW-H-079-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Morris', 'Eugene', 'Bevel', NULL, '1941-08-25', '2008-12-14', ' Jr.'
FROM plots WHERE plot_number = 'NW-H-080-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'Jennings', 'Vance', NULL, '1933-06-15', '2007-02-26', NULL
FROM plots WHERE plot_number = 'NW-H-083-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Reva', 'Faye', 'Vance', NULL, '1935-06-16', '2010-10-28', NULL
FROM plots WHERE plot_number = 'NW-H-083-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Larry', 'Allen', 'Vance', NULL, '2010-09-25', '2014-10-18', NULL
FROM plots WHERE plot_number = 'NW-H-083-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alla', 'Kay', 'Small', 'Parker', '1942-01-23', '2019-01-12', NULL
FROM plots WHERE plot_number = 'NW-H-084-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Joseph', 'Russ', NULL, '1940-05-11', '2019-02-21', NULL
FROM plots WHERE plot_number = 'NW-H-084-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Olida', 'S.', 'Stanley', NULL, '1925-05-22', '1997-10-08', NULL
FROM plots WHERE plot_number = 'NW-H-087-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Elmer', 'Stanley', NULL, '1925-10-13', '2016-07-16', NULL
FROM plots WHERE plot_number = 'NW-H-087-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeaneanne', NULL, 'Gallop', 'Newnam', '1932-12-25', '2006-01-23', NULL
FROM plots WHERE plot_number = 'NW-H-089-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Floyd', NULL, 'Gallop', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-089-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kyra', 'Ann', 'Middleton', 'Schmidt', '1947-12-10', '1998-03-25', NULL
FROM plots WHERE plot_number = 'NW-H-090-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Dixon', 'Whittington', NULL, '1969-06-27', '2005-08-11', NULL
FROM plots WHERE plot_number = 'NW-H-090-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Randall', 'Beacham', NULL, '1944-03-14', '2000-04-17', NULL
FROM plots WHERE plot_number = 'NW-H-091-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maggie', 'Alberta', 'Parker', 'Cowan', '1929-04-28', '2006-09-30', NULL
FROM plots WHERE plot_number = 'NW-H-092-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sabrina', 'Lavette', 'Parker', NULL, '1967-02-15', '2014-06-25', NULL
FROM plots WHERE plot_number = 'NW-H-092-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jackson', 'C', 'Helbig', NULL, '2006-01-16', '2010-06-05', NULL
FROM plots WHERE plot_number = 'NW-H-093-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marguline', 'Rose', 'Cromartie', 'Stanley', '1950-09-03', '1978-08-07', NULL
FROM plots WHERE plot_number = 'NW-H-095-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Hankins', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-097-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Norris', 'Fullwood', NULL, '1945-07-11', '2009-08-05', NULL
FROM plots WHERE plot_number = 'NW-H-098-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Harrison', 'Parker', NULL, '1934-03-17', '2007-07-16', NULL
FROM plots WHERE plot_number = 'NW-H-099-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Brenda', 'Ann', 'Gore', NULL, '1954-06-30', '2022-10-27', NULL
FROM plots WHERE plot_number = 'NW-H-100-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Kenneth', 'Garrett', NULL, '1934-12-05', '2006-02-22', NULL
FROM plots WHERE plot_number = 'NW-H-101-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Esther', 'Marie', 'Hartwig', 'Kiplinger', '1905-04-14', '1996-11-24', NULL
FROM plots WHERE plot_number = 'NW-H-102-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wiliam', 'David', 'Ezzell', NULL, '1944-08-11', '1996-07-01', NULL
FROM plots WHERE plot_number = 'NW-H-103-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dearmond', NULL, 'Swain', NULL, '1918-11-11', '2000-01-02', NULL
FROM plots WHERE plot_number = 'NW-H-112-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rubye', NULL, 'Swain', 'Vest', '1913-08-12', '2004-11-03', NULL
FROM plots WHERE plot_number = 'NW-H-112-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Judith', 'Ann', 'Swain', 'Miller', '1944-08-24', '2016-06-14', NULL
FROM plots WHERE plot_number = 'NW-H-113-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Johnnie', 'Faye', 'Schronce', NULL, '1938-03-01', '2003-01-31', NULL
FROM plots WHERE plot_number = 'NW-H-117-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lavonne', 'Earl', 'Schronce', NULL, '1934-06-23', '2007-08-08', NULL
FROM plots WHERE plot_number = 'NW-H-117-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Teddie', 'Albert', 'Smith', NULL, '1950-03-16', '2011-09-19', NULL
FROM plots WHERE plot_number = 'NW-H-123-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Felicity Grace', 'Eden', 'Chaffin', NULL, '2007-10-29', '2007-10-31', NULL
FROM plots WHERE plot_number = 'NW-H-124-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lois', 'Jane', 'Caster', 'Sellers', '1944-04-20', '2012-12-08', NULL
FROM plots WHERE plot_number = 'NW-H-127-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ronald', 'Paul', 'Caster', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-128-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Davis', 'Perry', NULL, '1943-02-10', '2019-03-06', 'III'
FROM plots WHERE plot_number = 'NW-H-129-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Etha', NULL, 'Caster', 'Basinger', '1919-10-07', '2004-06-07', NULL
FROM plots WHERE plot_number = 'NW-H-130-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lee', 'Berlin', 'Caster', NULL, '1916-12-09', '1995-02-23', NULL
FROM plots WHERE plot_number = 'NW-H-131-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kristi', 'Denise', 'Blair', NULL, '1965-08-04', '1995-04-13', NULL
FROM plots WHERE plot_number = 'NW-H-132-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', 'Faye', 'King', 'Thomas', '1945-01-05', '2000-04-28', NULL
FROM plots WHERE plot_number = 'NW-H-136-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rufus', 'Vonnie', 'King', NULL, '1937-10-31', '1998-09-05', NULL
FROM plots WHERE plot_number = 'NW-H-137-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margareta', NULL, 'Buchanan', 'Eicherber', '1929-01-27', '2007-07-24', NULL
FROM plots WHERE plot_number = 'NW-H-138-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Larry', 'Darnell', 'McNeil', NULL, '1956-09-28', '2009-06-22', NULL
FROM plots WHERE plot_number = 'NW-H-140-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mandy', 'Leeanne', 'Davis', NULL, '1980-06-02', '2001-06-08', NULL
FROM plots WHERE plot_number = 'NW-H-143-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffrey', 'Wayne', 'Myers', NULL, '1981-07-29', '1996-10-12', NULL
FROM plots WHERE plot_number = 'NW-H-145-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Cisro', 'McCracken', NULL, '1930-06-21', '2001-01-14', NULL
FROM plots WHERE plot_number = 'NW-H-147-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marcus', 'Lyndon', 'Hankins', NULL, '1962-12-26', '1997-04-25', NULL
FROM plots WHERE plot_number = 'NW-H-148-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Francis', 'Walter', 'Smith', NULL, '1928-12-14', '2013-10-11', NULL
FROM plots WHERE plot_number = 'NW-H-149-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Donald', 'Stanzlaus', NULL, '1945-03-14', '2010-02-04', NULL
FROM plots WHERE plot_number = 'NW-H-150-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jo-Ann', 'Fluffy', 'Callahan', NULL, '1941-01-01', '1994-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-151-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fredrick', 'James', 'Brooks', NULL, '1970-02-16', '1997-02-17', NULL
FROM plots WHERE plot_number = 'NW-H-152-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Henry', 'Silveira', NULL, '1928-06-30', '2011-09-25', NULL
FROM plots WHERE plot_number = 'NW-H-154-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mildred', 'Evangeline', 'Silveira', NULL, '1924-10-10', '2011-06-28', NULL
FROM plots WHERE plot_number = 'NW-H-154-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herman', 'Ephriam', 'McCracken', NULL, '1936-07-11', '2001-06-17', NULL
FROM plots WHERE plot_number = 'NW-H-155-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Saundra', 'J.', 'McCracken', 'Morris', '1935-02-19', '2000-12-27', NULL
FROM plots WHERE plot_number = 'NW-H-155-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hazel', NULL, 'Lucas', 'Whitaker', '1924-01-14', '2006-06-04', NULL
FROM plots WHERE plot_number = 'NW-H-158-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerry', 'Van', 'Dove', NULL, '1945-08-26', '2022-06-16', NULL
FROM plots WHERE plot_number = 'NW-H-159-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Norman', NULL, 'Hankins', NULL, '1934-05-03', '2016-09-20', NULL
FROM plots WHERE plot_number = 'NW-H-160-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jesse', 'Robert', 'Matthis', NULL, '1927-01-01', '2007-08-30', NULL
FROM plots WHERE plot_number = 'NW-H-161-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katie', 'Inez', 'Matthis', 'Phelps', '1925-05-12', '1995-12-04', NULL
FROM plots WHERE plot_number = 'NW-H-161-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris', NULL, 'Werner', 'Huggins', '1922-10-14', '1995-07-02', NULL
FROM plots WHERE plot_number = 'NW-H-163-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Davis', 'Allen', 'Werner', NULL, '1921-02-24', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-163-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Knute', 'Johnson', 'Grumpy Grandpa', '1930-01-01', '2002-10-12', NULL
FROM plots WHERE plot_number = 'NW-H-166-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Johnson', 'Briggs', '1939-06-04', '2010-11-10', NULL
FROM plots WHERE plot_number = 'NW-H-166-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlie', 'B.', 'Fields', NULL, '1931-07-07', '2006-03-21', NULL
FROM plots WHERE plot_number = 'NW-H-168-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Faye', NULL, 'Fields', 'Bush', '1937-07-25', '2015-01-26', NULL
FROM plots WHERE plot_number = 'NW-H-168-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'T', 'Hargrove', NULL, '1945-01-04', '2008-11-30', NULL
FROM plots WHERE plot_number = 'NW-H-169-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stephanie', 'Lynn', 'Shrewsbury', NULL, '1979-04-21', '1995-11-19', NULL
FROM plots WHERE plot_number = 'NW-H-171-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlotte', NULL, 'Walton', 'Spencer', '1935-03-24', '2001-01-22', NULL
FROM plots WHERE plot_number = 'NW-H-174-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'William', 'Walton', NULL, '1929-09-24', '1995-12-25', NULL
FROM plots WHERE plot_number = 'NW-H-174-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eloise', NULL, 'Spencer', 'Lewis', '1933-09-15', '2005-01-14', NULL
FROM plots WHERE plot_number = 'NW-H-175-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harold', 'Travis', 'Spencer', NULL, '1933-08-26', '2021-08-01', NULL
FROM plots WHERE plot_number = 'NW-H-175-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Lee', 'Thompson', NULL, '1939-09-15', '2008-02-27', NULL
FROM plots WHERE plot_number = 'NW-H-176-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Buford', 'Madison', 'Reynolds', NULL, '1927-10-24', '2010-06-05', NULL
FROM plots WHERE plot_number = 'NW-H-178-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerry', 'Wayne', 'Webb', NULL, '1948-07-03', '2009-04-09', NULL
FROM plots WHERE plot_number = 'NW-H-180-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Helen', 'Lood', 'Swain', 'Sinconiegue', '1952-02-20', '2008-01-04', NULL
FROM plots WHERE plot_number = 'NW-H-183-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carl', 'Vernon', 'Stidham', NULL, '1928-05-29', '2012-07-02', 'Sr'
FROM plots WHERE plot_number = 'NW-H-184-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Perlina', 'C', 'Stidham', 'Causey', '1927-03-13', '2012-08-05', NULL
FROM plots WHERE plot_number = 'NW-H-184-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Goldie', 'Faye', 'Swain', 'Stidham', '1925-07-20', '2005-09-03', NULL
FROM plots WHERE plot_number = 'NW-H-186-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Truman', 'Porter', 'Swain', NULL, '1933-08-21', '2012-10-22', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-186-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anne', 'M.', 'Floyd', 'Thomas', '1926-04-19', '2005-06-27', NULL
FROM plots WHERE plot_number = 'NW-H-189-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cpo. Herman', 'Lanneau', 'Floyd,', NULL, '1930-03-09', '2016-08-17', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-189-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gordon.', 'Wayne', 'Saunders, /', '09/22/1968/d12/15/06', NULL, NULL, 'Jr.'
FROM plots WHERE plot_number = 'NW-H-191-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julia', 'Ann', 'Saunders', 'Watson', '1942-08-16', '2020-10-08', NULL
FROM plots WHERE plot_number = 'NW-H-191-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gertrude', 'H.', 'Poppe', NULL, '1924-01-01', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-192--1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter', 'S.', 'Poppe', NULL, '1922-01-01', '1995-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-192--2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herbert', 'G.', 'Willis', NULL, '1935-10-01', '1996-03-03', NULL
FROM plots WHERE plot_number = 'NW-H-193-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'Allen', 'Faulk', NULL, '1959-01-14', '2005-12-22', NULL
FROM plots WHERE plot_number = 'NW-H-194-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Herman', 'L', 'Floyd,', NULL, '1954-10-20', '1998-11-13', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-195-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', 'Causette', 'Floyd', NULL, '1913-10-09', '2001-03-07', NULL
FROM plots WHERE plot_number = 'NW-H-196-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nancy', NULL, 'Champion', NULL, '1935-06-05', '1995-12-09', NULL
FROM plots WHERE plot_number = 'NW-H-197-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rose', 'Gregory', 'Ryan', NULL, '1922-09-17', '2009-06-21', NULL
FROM plots WHERE plot_number = 'NW-H-199-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'June', 'Gotlieb', 'Brown', 'Hannon', '1930-06-10', '2015-12-04', NULL
FROM plots WHERE plot_number = 'NW-H-201-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'Young', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-204-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', NULL, 'Young', 'Williams', '1934-10-23', '2007-10-04', NULL
FROM plots WHERE plot_number = 'NW-H-204-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'E.', 'J.', 'Davis', NULL, '1938-03-06', '2007-07-28', NULL
FROM plots WHERE plot_number = 'NW-H-205-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gerry', 'Wayne (Pac-Man)', 'Neal', NULL, '1947-12-18', '2006-02-23', NULL
FROM plots WHERE plot_number = 'NW-H-207-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', NULL, 'Neal', 'Dawson', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-207-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sidney', 'Alphis', 'Dawson', NULL, '1952-04-26', '2020-03-26', NULL
FROM plots WHERE plot_number = 'NW-H-207-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wayne', 'C', 'Hewett', NULL, '1948-09-20', '2022-11-06', NULL
FROM plots WHERE plot_number = 'NW-H-216-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Georgianna', 'Duncan', 'Harmon', 'Reeves', '1923-05-10', '2006-11-08', NULL
FROM plots WHERE plot_number = 'NW-H-217-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kim', 'M', 'Parker', NULL, '1960-02-03', '2013-08-08', NULL
FROM plots WHERE plot_number = 'NW-H-218-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffrey', 'Keith', 'Bowen', NULL, '1960-11-12', '2008-04-23', NULL
FROM plots WHERE plot_number = 'NW-H-220-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Merton', 'Edward', 'Bouchard', NULL, '1936-06-14', '2012-01-12', NULL
FROM plots WHERE plot_number = 'NW-H-222-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Melvin', 'Alfred', 'Whitehead', NULL, '1948-03-29', '2006-12-04', NULL
FROM plots WHERE plot_number = 'NW-H-223-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mable', 'Lee', 'Short', NULL, '1925-09-04', '2008-10-22', NULL
FROM plots WHERE plot_number = 'NW-H-223-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'Franklin', 'Stevenson', NULL, '1944-01-19', NULL, 'Sr'
FROM plots WHERE plot_number = 'NW-H-228-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thi', 'Tam', 'Stevenson', 'Nguyen', '1934-07-25', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-228-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Brittany', 'Marie', 'Vidal', NULL, '1987-05-10', '2007-07-20', NULL
FROM plots WHERE plot_number = 'NW-H-230-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Keith', 'Anthony', 'Vidal', NULL, '1995-12-10', '2014-01-05', NULL
FROM plots WHERE plot_number = 'NW-H-231-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Richard', 'Evans', NULL, '1943-12-05', '2021-12-06', 'Jr'
FROM plots WHERE plot_number = 'NW-H-242-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cynthia', 'Lee', 'Evans', 'Sherril', '1946-08-21', '2022-07-26', NULL
FROM plots WHERE plot_number = 'NW-H-242-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Lee', 'West', NULL, '1938-04-27', '2006-05-17', NULL
FROM plots WHERE plot_number = 'NW-H-243-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vincent', NULL, 'LeClerc', NULL, '1945-10-06', '2005-02-23', NULL
FROM plots WHERE plot_number = 'NW-H-247-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', 'D.', 'Stewart', NULL, '1950-04-06', '1995-02-01', NULL
FROM plots WHERE plot_number = 'NW-H-248-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Allen', 'D.', 'Clemmons,', NULL, '1950-11-28', '2009-07-29', 'Jr'
FROM plots WHERE plot_number = 'NW-H-255-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Wellington (Bubba)', 'Smith', NULL, '1932-06-04', '2007-07-21', NULL
FROM plots WHERE plot_number = 'NW-H-257-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vernell', 'G', 'Salmon', NULL, '1939-12-19', '2021-04-03', NULL
FROM plots WHERE plot_number = 'NW-H-260-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Arthur', 'Salmon', NULL, '1928-05-20', '2014-11-03', NULL
FROM plots WHERE plot_number = 'NW-H-261-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Larry', 'Gregory', 'Horne', NULL, '1954-06-27', '2013-01-24', NULL
FROM plots WHERE plot_number = 'NW-H-262-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Martha', 'Elizabeth', 'Lee', 'Frink', '1937-11-29', '2012-12-27', NULL
FROM plots WHERE plot_number = 'NW-H-263-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Mildred', 'Furstenau', 'Peszlen', '1928-11-19', '2012-10-23', NULL
FROM plots WHERE plot_number = 'NW-H-264-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Mae', 'Vereen', NULL, '1918-05-03', '1996-05-22', NULL
FROM plots WHERE plot_number = 'NW-H-265-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benard', NULL, 'Small', NULL, '1935-07-06', '2011-11-21', NULL
FROM plots WHERE plot_number = 'NW-H-266-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Juanita', NULL, 'Ledbetter', 'Norris', '1937-11-12', '1997-02-03', NULL
FROM plots WHERE plot_number = 'NW-H-267-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Curtis', 'O''Dell', 'Ledbetter,', NULL, '1931-01-30', '2006-03-31', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-268-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rose', NULL, 'Minett', 'Orlando', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-271-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Edward', 'Minett', NULL, '1922-07-22', '2007-11-06', NULL
FROM plots WHERE plot_number = 'NW-H-271-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', NULL, 'Jorden', 'Gore', '1927-07-15', '2025-10-29', NULL
FROM plots WHERE plot_number = 'NW-H-272-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'Willard', 'Gore', NULL, '1916-12-28', '2013-03-11', NULL
FROM plots WHERE plot_number = 'NW-H-272-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', 'Prince', 'Hinson', NULL, '1937-04-12', '2004-07-27', NULL
FROM plots WHERE plot_number = 'NW-H-289-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'D.', 'Hinson,', NULL, '1933-04-14', '1994-10-18', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-289-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Debra', 'Kay', 'Teague', 'Howard', '1965-01-31', '2003-06-09', NULL
FROM plots WHERE plot_number = 'NW-H-290-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lois', 'G', 'Price', NULL, '1922-01-04', '2012-10-13', NULL
FROM plots WHERE plot_number = 'NW-H-291-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'J.', 'Price', NULL, '1931-06-22', '1997-09-30', NULL
FROM plots WHERE plot_number = 'NW-H-291-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Flora', NULL, 'Joyner', NULL, '1928-02-20', '1997-04-23', NULL
FROM plots WHERE plot_number = 'NW-H-292-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', NULL, 'Joyner', NULL, '1923-01-08', '2020-01-07', NULL
FROM plots WHERE plot_number = 'NW-H-292-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Dougle', 'Gore', NULL, '1920-03-30', '2005-03-22', NULL
FROM plots WHERE plot_number = 'NW-H-293-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sadie', 'Ruth', 'Gore', NULL, '1922-03-31', '1997-01-28', NULL
FROM plots WHERE plot_number = 'NW-H-293-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alexander', 'Bubba', 'Lee', NULL, '1933-05-03', '1995-08-05', NULL
FROM plots WHERE plot_number = 'NW-H-294-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mamie', NULL, 'McNeil', 'Odom', '1917-05-17', '1997-10-26', NULL
FROM plots WHERE plot_number = 'NW-H-295-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'Davis,', NULL, '1923-01-01', '1997-01-01', ' Jr'
FROM plots WHERE plot_number = 'NW-H-296-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', NULL, 'Davis,', NULL, NULL, NULL, 'Sr.'
FROM plots WHERE plot_number = 'NW-H-297-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert (Toby)', 'Barr', 'Thompson', NULL, '1912-01-29', '2003-07-29', NULL
FROM plots WHERE plot_number = 'NW-H-299-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', NULL, 'Williams', NULL, '1937-09-18', '2001-08-14', NULL
FROM plots WHERE plot_number = 'NW-H-300-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mae', 'Bell', 'Ray', NULL, '1946-12-19', '2007-10-19', NULL
FROM plots WHERE plot_number = 'NW-H-301-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', NULL, 'Ray,', NULL, NULL, NULL, ' Sr.'
FROM plots WHERE plot_number = 'NW-H-301-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Orabelle', NULL, 'Clemmons', 'W.', '1927-07-20', '2007-08-20', NULL
FROM plots WHERE plot_number = 'NW-H-302-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Allen', NULL, 'Clemmons,', NULL, '1928-01-01', '1999-01-01', ' Sr.'
FROM plots WHERE plot_number = 'NW-H-302-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joyce', NULL, 'Sykes', 'Robinson', '1944-02-08', '2012-09-26', NULL
FROM plots WHERE plot_number = 'NW-H-303-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', NULL, 'Sykes', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-303-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', 'Katherine', 'Fridley', 'Wiseman', '1925-03-26', '2001-08-07', NULL
FROM plots WHERE plot_number = 'NW-H-304-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Samuel', 'Vinyard', 'Fridley', NULL, '1925-09-28', '2010-05-06', NULL
FROM plots WHERE plot_number = 'NW-H-304-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Gene', 'Creech', NULL, '1928-12-14', '2003-05-18', NULL
FROM plots WHERE plot_number = 'NW-H-305-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lottie', 'Jane', 'Creech', 'Sellers', '1929-03-10', '2012-03-08', NULL
FROM plots WHERE plot_number = 'NW-H-305-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', 'Yvonne', 'Howard', 'Jolly', '1950-06-16', '2020-01-04', NULL
FROM plots WHERE plot_number = 'NW-H-308-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Patrick', 'Jolly', NULL, '1967-06-19', '2001-07-02', NULL
FROM plots WHERE plot_number = 'NW-H-308-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Harold', 'Davis', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-311-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mikdred', NULL, 'Best', 'Hewett', '1929-03-18', '2012-04-12', NULL
FROM plots WHERE plot_number = 'NW-H-313-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ernestine', 'C.', 'Johnson', NULL, '1930-11-28', '2007-07-06', NULL
FROM plots WHERE plot_number = 'NW-H-314-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Walter', NULL, 'Washington', NULL, NULL, '2004-05-12', NULL
FROM plots WHERE plot_number = 'NW-H-315-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillian', NULL, 'Clemmons', NULL, '1906-01-01', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-316-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dennis', 'Edward', 'Smith', NULL, '1960-07-01', '2006-12-10', NULL
FROM plots WHERE plot_number = 'NW-H-317-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'William', 'Dennis', NULL, '1926-10-12', '2012-12-01', NULL
FROM plots WHERE plot_number = 'NW-H-319-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roosevelt', NULL, 'Clarida', NULL, '1926-12-10', '2009-05-26', NULL
FROM plots WHERE plot_number = 'NW-H-320-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', 'C.', 'Bryant', NULL, '1926-01-01', '1962-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-321-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'L.', 'Bryant', NULL, '1953-01-01', '1971-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-321-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', NULL, 'Varnum', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-322-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', NULL, 'Loeffler', 'Schirmer', '1921-11-26', '2001-02-09', NULL
FROM plots WHERE plot_number = 'NW-H-323-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Steven', 'Loeffler', NULL, '1917-03-10', '2013-01-19', NULL
FROM plots WHERE plot_number = 'NW-H-323-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leander', NULL, 'Cowan', NULL, '1955-05-15', '2020-09-12', NULL
FROM plots WHERE plot_number = 'NW-H-325-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eva', 'Virginia', 'Holmes', NULL, '1952-03-08', '2025-04-25', NULL
FROM plots WHERE plot_number = 'NW-H-325-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'A', NULL, 'Cowan', NULL, '1953-07-12', NULL, 'Howard'
FROM plots WHERE plot_number = 'NW-H-326-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Rhyne', 'Bryant', '1923-01-29', '2008-04-20', NULL
FROM plots WHERE plot_number = 'NW-H-328-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Aldice', 'Richard', 'Rhyne', NULL, '1921-08-27', '2003-08-17', NULL
FROM plots WHERE plot_number = 'NW-H-328-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hilda', NULL, 'Baxter', 'Moura', '1916-03-19', '2006-01-11', NULL
FROM plots WHERE plot_number = 'NW-H-329-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Dwight', 'Brown,', NULL, '1954-12-29', '2004-08-30', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-330-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', 'Jo', 'Cowaan', 'Jackson', '1953-01-27', '2015-09-24', NULL
FROM plots WHERE plot_number = 'NW-H-331-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', 'Inez', 'Jackson', 'Brown', '1953-09-27', '2017-05-30', NULL
FROM plots WHERE plot_number = 'NW-H-332-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', NULL, 'Mcneil', NULL, '1923-11-22', '2004-07-09', NULL
FROM plots WHERE plot_number = 'NW-H-333-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Thomas', 'Mellor', NULL, '1922-12-16', '1998-12-18', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-334-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Fox', 'Howard', NULL, '1921-09-06', '2003-04-28', NULL
FROM plots WHERE plot_number = 'NW-H-339-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vera', 'Catherine', 'Howard', 'Jorgensen', '1919-05-30', '2004-01-30', NULL
FROM plots WHERE plot_number = 'NW-H-339-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James (Steve)', 'Harold', 'Stephens', NULL, '1967-06-01', '2020-07-11', NULL
FROM plots WHERE plot_number = 'NW-H-340-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Terry', 'Stephens', NULL, '1943-05-14', '2016-02-08', NULL
FROM plots WHERE plot_number = 'NW-H-343-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Doris', 'Stephens', 'Schultze', 'Hickman', '1924-11-16', '2004-03-22', NULL
FROM plots WHERE plot_number = 'NW-H-344-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'David', 'Lee', 'Winch,', NULL, '1936-07-06', '1999-07-24', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-345-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Muriel', 'J.', 'Winch', NULL, '1939-01-28', '2012-01-03', NULL
FROM plots WHERE plot_number = 'NW-H-345-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'Herbert', 'Simmons', NULL, '1925-09-19', '2012-08-30', NULL
FROM plots WHERE plot_number = 'NW-H-346-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Salema', 'Ivey', 'Simmons', NULL, '1932-06-30', '2021-12-22', NULL
FROM plots WHERE plot_number = 'NW-H-346-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillie', 'Ruth', 'Hall', 'Gore', '1943-04-27', '2007-02-26', NULL
FROM plots WHERE plot_number = 'NW-H-347-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Lee', 'Brown', NULL, '1949-05-22', '2019-08-16', NULL
FROM plots WHERE plot_number = 'NW-H-348-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ellis', 'Leaneor', 'Brown', NULL, '1950-09-03', '2019-12-05', NULL
FROM plots WHERE plot_number = 'NW-H-348-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susan', 'Marie', 'Johnson', 'Jackson', '1954-08-03', '1997-01-31', NULL
FROM plots WHERE plot_number = 'NW-H-349-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marjorie', NULL, 'Jackson', 'Smith', '1925-10-27', '2007-11-21', NULL
FROM plots WHERE plot_number = 'NW-H-349-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Stephen', 'Edwin', 'Mealt', NULL, '1947-05-25', '2021-09-26', NULL
FROM plots WHERE plot_number = 'NW-H-350-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Mealy', 'Butcher', '1921-08-16', '2008-03-03', NULL
FROM plots WHERE plot_number = 'NW-H-350-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Larrry', 'Walter', 'Joyner', NULL, '1951-04-07', '2006-05-04', NULL
FROM plots WHERE plot_number = 'NW-H-351-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Peter', 'Felber', NULL, '1936-07-29', '2019-07-30', NULL
FROM plots WHERE plot_number = 'NW-H-352-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', 'Jane', 'Felber', 'Snyder', '1939-08-16', '2006-07-10', NULL
FROM plots WHERE plot_number = 'NW-H-352-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Myron', 'Everette', 'Kesler,', NULL, '1926-10-14', '2006-09-13', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-353-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Iona', NULL, 'Kesler', 'Wade', '1929-03-14', '2014-05-15', NULL
FROM plots WHERE plot_number = 'NW-H-353-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carol', 'Eloise', 'Conn', 'Gudim', '1917-12-02', '2014-11-07', NULL
FROM plots WHERE plot_number = 'NW-H-355-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rev. Gerald', 'William', 'Conn', NULL, '1914-05-08', '2005-06-21', NULL
FROM plots WHERE plot_number = 'NW-H-355-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elaine', 'Catherine', 'Ward', 'Carpenter', '1951-10-30', '2006-08-25', NULL
FROM plots WHERE plot_number = 'NW-H-356-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Inez', 'Anderson', 'Moore', '1921-12-06', '2007-11-10', NULL
FROM plots WHERE plot_number = 'NW-H-358-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Amelia', 'Inez', 'Anderson', NULL, '1950-08-15', '2008-07-30', NULL
FROM plots WHERE plot_number = 'NW-H-358-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elias', 'Alfred', 'Gore', NULL, '1937-08-04', '2006-10-12', NULL
FROM plots WHERE plot_number = 'NW-H-360-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bobby', 'Graham', 'Clemmer', NULL, '1937-07-19', '2001-07-01', NULL
FROM plots WHERE plot_number = 'NW-H-363-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dale (Skip)', 'Francis', 'Edwards', NULL, '1944-11-24', '2003-09-05', NULL
FROM plots WHERE plot_number = 'NW-H-364-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rose', 'Evelyn', 'McAfee', 'Swain', '1934-04-07', '2009-12-08', NULL
FROM plots WHERE plot_number = 'NW-H-367-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'McAfee', NULL, '1932-01-01', '1998-01-01', NULL
FROM plots WHERE plot_number = 'NW-H-367-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'Henderson', 'Smith', NULL, '1922-04-02', '2011-11-27', NULL
FROM plots WHERE plot_number = 'NW-H-369-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mabel', NULL, 'Smith', NULL, '1930-02-14', '2017-04-08', NULL
FROM plots WHERE plot_number = 'NW-H-369-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Joseph', 'Thomas', NULL, '1941-08-11', '2005-02-10', NULL
FROM plots WHERE plot_number = 'NW-H-372-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', 'Lillarrd', 'Myrie', NULL, '1947-01-18', '2009-05-22', NULL
FROM plots WHERE plot_number = 'NW-H-377-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert Steven &', 'Edris Georgette', 'Jackowski', ' Miller 1938-2013', '1933-12-25', '2008-12-07', NULL
FROM plots WHERE plot_number = 'NW-H-379-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Gilbert', 'Haney', NULL, '1960-11-09', '2008-08-30', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-380-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lori', NULL, 'Dennis', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-382-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gene', 'Nelson', 'Cowan', NULL, '1938-07-07', '1999-08-29', NULL
FROM plots WHERE plot_number = 'NW-H-383-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Judith', 'Ann', 'Cowan', 'Bennett', '1939-11-16', '2003-12-30', NULL
FROM plots WHERE plot_number = 'NW-H-383-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Glenn', 'Disinterred Sept 2006', 'Gore', 'Reinterred Sept 2006', '1940-05-16', '2005-06-22', NULL
FROM plots WHERE plot_number = 'NW-H-385-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jimmy', 'Reginald', 'Champion', NULL, '1930-04-16', '2014-01-12', NULL
FROM plots WHERE plot_number = 'NW-H-386-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Champion', 'Browning', '1943-09-01', '2009-06-15', NULL
FROM plots WHERE plot_number = 'NW-H-386-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', 'Lincoln', 'Mathews', NULL, '1915-09-01', '2002-03-29', NULL
FROM plots WHERE plot_number = 'NW-H-387-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', NULL, 'Mathews', NULL, '1924-06-10', '2003-02-27', NULL
FROM plots WHERE plot_number = 'NW-H-387-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Michael', 'Gregson', NULL, '1940-12-05', '1999-10-26', NULL
FROM plots WHERE plot_number = 'NW-H-388-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Martha', 'Cary', 'Lennon', 'Eppes', '1915-08-02', '2004-06-07', NULL
FROM plots WHERE plot_number = 'NW-H-389-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Francis', 'Cromartie', 'Lennon', NULL, '1914-08-18', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-389-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'E.', 'Bruce', NULL, '1934-03-10', '2007-06-24', NULL
FROM plots WHERE plot_number = 'NW-H-390-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Judy', 'Faye', 'Bruce', 'Parker', '1939-03-23', '2013-10-07', NULL
FROM plots WHERE plot_number = 'NW-H-390-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Howard', NULL, 'Lee', NULL, '1944-11-06', '2016-10-12', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-391-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gloria', 'Irene', 'Hankins', NULL, '1939-06-12', '2020-10-19', NULL
FROM plots WHERE plot_number = 'NW-H-392-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joyce', 'Juanita', 'Bell', 'Myers', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-393-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Debra', NULL, 'Edwards', NULL, '1957-06-08', '2010-08-31', NULL
FROM plots WHERE plot_number = 'NW-H-395-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'Harold', 'Davis', NULL, '1938-08-05', '2007-08-16', NULL
FROM plots WHERE plot_number = 'NW-H-397-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cathy', NULL, 'Potter', 'Greene', '1949-05-30', '2001-07-11', NULL
FROM plots WHERE plot_number = 'NW-H-400-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elbert', NULL, 'Jackson', NULL, '1919-02-26', '2000-09-29', NULL
FROM plots WHERE plot_number = 'NW-H-409-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Morris', 'Jackson', '1908-05-29', '2005-10-03', NULL
FROM plots WHERE plot_number = 'NW-H-410-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Archie', 'Leroy', 'Potter', NULL, '1943-10-15', '2004-01-22', NULL
FROM plots WHERE plot_number = 'NW-H-412-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', NULL, 'Leonard', NULL, '1922-10-21', '2004-06-10', NULL
FROM plots WHERE plot_number = 'NW-H-414-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lillian', 'Cleo', 'Baker', NULL, '1931-09-19', '2009-08-06', NULL
FROM plots WHERE plot_number = 'NW-H-415-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Earl (Baybay)', 'White', NULL, '1956-03-31', '2010-09-04', NULL
FROM plots WHERE plot_number = 'NW-H-417-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', 'Annette', 'Lee', 'Hewett', '1943-10-19', '2009-10-06', NULL
FROM plots WHERE plot_number = 'NW-H-418-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', NULL, 'White,', NULL, '1932-01-01', '2001-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-419-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'Edward', 'Clemmons', NULL, '1952-03-26', '2025-09-28', NULL
FROM plots WHERE plot_number = 'NW-H-421-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Joseph', 'Sanders', NULL, '1956-01-18', '2002-06-20', NULL
FROM plots WHERE plot_number = 'NW-H-423-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Elkin', 'Baggett', NULL, '1934-04-30', '2005-02-15', NULL
FROM plots WHERE plot_number = 'NW-H-424-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Laura', 'Ann', 'Fullwood', 'Tyler', '1940-02-24', '2013-03-18', NULL
FROM plots WHERE plot_number = 'NW-H-424-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Howard', 'Jones', NULL, '1947-04-18', '2012-08-09', NULL
FROM plots WHERE plot_number = 'NW-H-427-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elnera', NULL, 'McNeil', NULL, '1925-08-29', '2014-02-10', NULL
FROM plots WHERE plot_number = 'NW-H-427-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', NULL, 'Jones', NULL, '1944-12-15', '2020-09-25', NULL
FROM plots WHERE plot_number = 'NW-H-427-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'DeConja', NULL, 'Alexander', NULL, '1947-12-29', '2017-04-22', NULL
FROM plots WHERE plot_number = 'NW-H-428-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lula', NULL, 'McKeithan', 'Brown', '1921-01-16', '2017-06-24', NULL
FROM plots WHERE plot_number = 'NW-H-429-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Homer', 'Gladstone', 'McKeithan', NULL, '1913-11-15', '2000-12-14', NULL
FROM plots WHERE plot_number = 'NW-H-429-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Myrtle', 'Brown', 'Watson', NULL, '1917-12-12', '2121-08-02', NULL
FROM plots WHERE plot_number = 'NW-H-430-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Duncan', 'Isham', 'Watson', NULL, '1917-06-01', '2005-09-28', NULL
FROM plots WHERE plot_number = 'NW-H-430-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Deborah', 'Ann', 'McNutt', 'Rollen', '1953-03-11', '2006-07-25', NULL
FROM plots WHERE plot_number = 'NW-H-433-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lloyd', 'Benton', 'Brown', NULL, '1929-07-26', '2019-08-11', NULL
FROM plots WHERE plot_number = 'NW-H-434-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Julia', 'A.', 'Brown', NULL, '1938-07-17', '2017-04-02', NULL
FROM plots WHERE plot_number = 'NW-H-434-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Leon', 'McKeithan', NULL, '1916-12-06', '2003-12-03', NULL
FROM plots WHERE plot_number = 'NW-H-438-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emily', NULL, 'McKeithan', NULL, '1925-03-08', '2022-08-11', NULL
FROM plots WHERE plot_number = 'NW-H-438-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jerry', 'Brady', 'Champion', NULL, '1958-12-06', '2007-02-06', NULL
FROM plots WHERE plot_number = 'NW-H-439-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donna', 'Marie', 'Champion', NULL, '1945-09-07', '2007-11-25', NULL
FROM plots WHERE plot_number = 'NW-H-439-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'Edward', 'Harvey', NULL, '1955-07-27', '2005-03-11', NULL
FROM plots WHERE plot_number = 'NW-H-442-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Shirley', 'Elizabeth', 'Barnes', NULL, '1939-06-28', '1996-09-28', NULL
FROM plots WHERE plot_number = 'NW-H-444-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harvey', 'Lee', 'Barnes,', NULL, '1948-02-06', '2005-04-17', 'III'
FROM plots WHERE plot_number = 'NW-H-444-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barry', 'Matthew', 'Greer', NULL, '1978-03-20', '2004-09-28', NULL
FROM plots WHERE plot_number = 'NW-H-446-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Steven', 'B', 'Greer', NULL, '1956-06-01', '2012-03-27', 'Sr.'
FROM plots WHERE plot_number = 'NW-H-447-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'Avery', 'Wallace,', NULL, '1948-08-20', '2008-09-20', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-449-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'Dwight', 'Scoggins', NULL, '1920-11-20', '1998-11-21', NULL
FROM plots WHERE plot_number = 'NW-H-453-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'McClellan', 'Renn,', '(Pate)', '1962-04-07', '2000-02-24', ' III'
FROM plots WHERE plot_number = 'NW-H-455-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Christopher', 'Dean', 'Renn,', NULL, '1986-04-16', '2011-07-13', ' II'
FROM plots WHERE plot_number = 'NW-H-457-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Deborah', 'Kaye', 'Clark', NULL, '1949-09-12', '2004-04-22', NULL
FROM plots WHERE plot_number = 'NW-H-459-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Terry', 'Annette', 'Graham', NULL, '1968-10-31', '2012-10-16', NULL
FROM plots WHERE plot_number = 'NW-H-467-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda / Rocky', 'Diane / Matthew', 'Hensley / Hensley', '07/03/1986 d 01/06/2017', '1954-03-27', '2008-09-13', NULL
FROM plots WHERE plot_number = 'NW-H-470-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Geneva', NULL, 'Hargrove', 'Smith', '1952-06-29', '2010-09-13', NULL
FROM plots WHERE plot_number = 'NW-H-473-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'Adrien', 'Cozzens', NULL, '1945-01-05', '2005-01-28', NULL
FROM plots WHERE plot_number = 'NW-H-475-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Ralph', 'Davis,', NULL, '1963-06-30', '2009-10-06', 'Jr.'
FROM plots WHERE plot_number = 'NW-H-476-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Marion', 'Connley', 'Wise', NULL, '1946-09-02', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-478-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alvina', 'Vina', 'Wise', 'Arehart', '1947-09-08', '2003-09-08', NULL
FROM plots WHERE plot_number = 'NW-H-478-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hoa', 'Thi', 'Honeycutt', 'Pham', '1948-05-16', '2000-04-03', NULL
FROM plots WHERE plot_number = 'NW-H-479-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Richard', 'Hill', 'Ricky', '1983-09-02', '2001-06-28', NULL
FROM plots WHERE plot_number = 'NW-H-480-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nicholas', 'Victer', 'McCowan', NULL, '1981-09-23', '2007-02-27', NULL
FROM plots WHERE plot_number = 'NW-H-484-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Amber', 'Marie', 'Lineberry', NULL, '2004-09-01', '2006-07-18', NULL
FROM plots WHERE plot_number = 'NW-H-490-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Geraldine', NULL, 'Criscoe', 'Teddet', '1958-08-10', '2008-06-23', NULL
FROM plots WHERE plot_number = 'NW-H-491-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clarence', 'Russell', 'Morrison', NULL, '1935-06-10', '2014-02-23', NULL
FROM plots WHERE plot_number = 'NW-H-492-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Virginia', 'Lee', 'Austin', NULL, '1952-09-10', '2001-04-23', NULL
FROM plots WHERE plot_number = 'NW-H-493-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lieselotte', NULL, 'Bayeradorfer', NULL, '1935-02-10', '2012-10-04', NULL
FROM plots WHERE plot_number = 'NW-H-498-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jack', 'Edward', 'Zinn', NULL, '1918-06-30', '2003-04-21', NULL
FROM plots WHERE plot_number = 'NW-H-501-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', NULL, 'Zinn', 'Dell', '1919-04-30', '2012-01-28', NULL
FROM plots WHERE plot_number = 'NW-H-501-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Randolph', 'Wilson', NULL, '1944-02-23', '2022-02-08', NULL
FROM plots WHERE plot_number = 'NW-H-502-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', 'Jane', 'Wilson', 'Kells', '1947-05-29', '2020-02-11', NULL
FROM plots WHERE plot_number = 'NW-H-502-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Theodore', 'Rosevelt', 'Hiatt', NULL, '2000-07-22', '2009-08-28', NULL
FROM plots WHERE plot_number = 'NW-H-504-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Agnes', 'Anne', 'Sjogren', NULL, '1914-10-30', '2007-11-13', NULL
FROM plots WHERE plot_number = 'NW-H-505-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', NULL, 'Barry', NULL, '1935-07-13', '2015-01-28', NULL
FROM plots WHERE plot_number = 'NW-H-505-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Antoine', 'LaShawn', 'Jackson', NULL, '1976-06-07', '2012-04-23', NULL
FROM plots WHERE plot_number = 'NW-H-508-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nancy', NULL, 'Nichols', 'Tuck', '1933-05-10', '1016-07-21', NULL
FROM plots WHERE plot_number = 'NW-H-512-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Larnice', NULL, 'Jackson', 'Davis', '1936-12-28', '2012-12-23', NULL
FROM plots WHERE plot_number = 'NW-H-513-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'Gray', 'Goins', NULL, '1941-05-03', '2004-04-30', NULL
FROM plots WHERE plot_number = 'NW-H-514-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Barbara', 'Renee', 'Rivenbark', 'Rossii', '1945-07-04', '2006-11-07', NULL
FROM plots WHERE plot_number = 'NW-H-515-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vivian', NULL, 'Smith', NULL, '1945-03-18', '2019-07-19', NULL
FROM plots WHERE plot_number = 'NW-H-523-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maynard', 'Eugene', 'Mabe', NULL, '1941-07-18', '2010-09-08', NULL
FROM plots WHERE plot_number = 'NW-H-527-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'Alonzo', 'Jones', NULL, '1943-10-10', '2017-03-29', NULL
FROM plots WHERE plot_number = 'NW-H-531-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Catherine', 'Ann', 'Holth', 'Elston', '1931-07-21', '2006-03-05', NULL
FROM plots WHERE plot_number = 'NW-H-535-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Theodore', 'Holth', NULL, '1923-07-08', '2006-02-08', NULL
FROM plots WHERE plot_number = 'NW-H-535-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elvra', NULL, 'Pringle', 'Washington', '1914-09-12', '2006-10-29', NULL
FROM plots WHERE plot_number = 'NW-H-539-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Pamela', 'Loraine', 'Bumgardner', NULL, '1957-01-19', '2014-02-01', NULL
FROM plots WHERE plot_number = 'NW-H-540-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eulene', NULL, 'Lee', 'Stidham', '1931-01-13', '2012-04-13', NULL
FROM plots WHERE plot_number = 'NW-H-543-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bobbie', 'Dean', 'Davis', NULL, '1949-11-09', '2008-09-28', NULL
FROM plots WHERE plot_number = 'NW-H-544-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Randall', 'Derrick', 'Price', NULL, '1985-05-22', '2011-01-27', NULL
FROM plots WHERE plot_number = 'NW-H-559-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nasinai', NULL, 'Zarella', 'Rossi', '1925-12-31', '2012-05-18', NULL
FROM plots WHERE plot_number = 'NW-H-562-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cynthia', 'Ann', 'Zarella', NULL, '1960-11-12', '2022-08-28', NULL
FROM plots WHERE plot_number = 'NW-H-562-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Giulio', 'Armondo', 'Zarella', NULL, '1921-11-04', '2011-08-13', NULL
FROM plots WHERE plot_number = 'NW-H-562-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Russell "Buster', 'Clemmons', NULL, '1937-01-09', '2015-12-03', NULL
FROM plots WHERE plot_number = 'NW-H-563-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'Mae', 'Lee', NULL, '1928-07-15', '2013-06-18', NULL
FROM plots WHERE plot_number = 'NW-H-565-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ray', 'Anthony', 'Smith', NULL, '1957-06-23', '2013-03-12', NULL
FROM plots WHERE plot_number = 'NW-H-566-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolynn', NULL, 'Price', 'Galloway', '1946-01-02', '2013-05-29', NULL
FROM plots WHERE plot_number = 'NW-H-567 B-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kenneth', NULL, 'Price', NULL, '1941-10-27', NULL, NULL
FROM plots WHERE plot_number = 'NW-H-567 B-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Patrick', 'Robert Franklin', 'Quinn', NULL, '1998-05-15', '2017-05-12', NULL
FROM plots WHERE plot_number = 'NW-H-568-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Pamel', NULL, 'Quinn', 'Kern', '1953-03-13', '2012-05-21', NULL
FROM plots WHERE plot_number = 'NW-H-568-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', NULL, 'Quinn', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-H-568-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roy', 'Clayton', 'Daniel', NULL, '1935-12-04', '2025-05-16', NULL
FROM plots WHERE plot_number = 'NW-H-573-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gerthel', NULL, 'Graham', 'Smith', '1940-11-26', '2019-06-10', NULL
FROM plots WHERE plot_number = 'NW-H-579-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Anna', 'Deloris', 'Davis', 'Smith', '1954-03-30', '2013-07-12', NULL
FROM plots WHERE plot_number = 'NW-H-580-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Colin HughesCourtenay', NULL, 'Coles', NULL, '1939-05-16', '2004-09-14', NULL
FROM plots WHERE plot_number = 'NW-H-581-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Richard', 'Alan', 'Gorton', NULL, '1932-11-25', '2004-09-19', NULL
FROM plots WHERE plot_number = 'NW-H-582-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Lacy', 'Graham', NULL, '1930-04-02', '2017-04-24', NULL
FROM plots WHERE plot_number = 'NW-H-466-1'
ON CONFLICT DO NOTHING;

