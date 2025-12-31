-- ============================================
-- Northwood Cemetery - Section E Data Migration
-- ============================================
-- Total plots: 592
-- Deceased records: 214
-- Date: 2025-12-30 20:54:09

-- Insert plots for Section E
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, owner_name, owner_contact, purchase_date) VALUES
('NW-E-001-1', 'E', 1, 1, 'standard', 'occupied', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-2', 'E', 1, 2, 'standard', 'occupied', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-3', 'E', 1, 3, 'standard', 'occupied', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-4', 'E', 1, 4, 'standard', 'occupied', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-5', 'E', 1, 5, 'standard', 'available', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-6', 'E', 1, 6, 'standard', 'available', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-7', 'E', 1, 7, 'standard', 'available', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-001-8', 'E', 1, 8, 'standard', 'available', 4.0, 10.0, 'J. C. (Audrey) Miller', '607 N. Fodale Ave., Southport, NC, 28461', '1971-04-25'),
('NW-E-002-1', 'E', 2, 1, 'standard', 'occupied', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-2', 'E', 2, 2, 'standard', 'occupied', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-3', 'E', 2, 3, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-4', 'E', 2, 4, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-5', 'E', 2, 5, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-6', 'E', 2, 6, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-7', 'E', 2, 7, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-002-8', 'E', 2, 8, 'standard', 'available', 4.0, 10.0, 'Glenn & Eunice Hart', 'E. 8th Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-003-1', 'E', 3, 1, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-2', 'E', 3, 2, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-3', 'E', 3, 3, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-4', 'E', 3, 4, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-5', 'E', 3, 5, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-6', 'E', 3, 6, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-7', 'E', 3, 7, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-003-8', 'E', 3, 8, 'standard', 'available', 4.0, 10.0, 'David S. (Carol Ann Wolfe) Malyevac , Sr.', NULL, '1969-10-13'),
('NW-E-004-1', 'E', 4, 1, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-2', 'E', 4, 2, 'standard', 'occupied', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-3', 'E', 4, 3, 'standard', 'occupied', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-4', 'E', 4, 4, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-5', 'E', 4, 5, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-6', 'E', 4, 6, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-7', 'E', 4, 7, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-004-8', 'E', 4, 8, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-1', 'E', 5, 1, 'standard', 'occupied', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-2', 'E', 5, 2, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-3', 'E', 5, 3, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-4', 'E', 5, 4, 'standard', 'occupied', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-5', 'E', 5, 5, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-6', 'E', 5, 6, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-7', 'E', 5, 7, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-005-8', 'E', 5, 8, 'standard', 'available', 4.0, 10.0, 'James M. Wolfe', 'W. West Street, Southport, NC, 28461', '1969-09-03'),
('NW-E-006-1', 'E', 6, 1, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-2', 'E', 6, 2, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-3', 'E', 6, 3, 'standard', 'occupied', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-4', 'E', 6, 4, 'standard', 'occupied', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-5', 'E', 6, 5, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-6', 'E', 6, 6, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-7', 'E', 6, 7, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-006-8', 'E', 6, 8, 'standard', 'available', 4.0, 10.0, 'M. M. Hood', 'River Drive, Southport, NC, 28461', '1969-04-02'),
('NW-E-007-1', 'E', 7, 1, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-2', 'E', 7, 2, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-3', 'E', 7, 3, 'standard', 'occupied', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-4', 'E', 7, 4, 'standard', 'occupied', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-5', 'E', 7, 5, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-6', 'E', 7, 6, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-7', 'E', 7, 7, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-007-8', 'E', 7, 8, 'standard', 'available', 4.0, 10.0, 'James R. Hood, Sr.', 'N. Clarendon Ave., Southport, NC, 28461', '1969-02-24'),
('NW-E-008-1', 'E', 8, 1, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-2', 'E', 8, 2, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-3', 'E', 8, 3, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-4', 'E', 8, 4, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-5', 'E', 8, 5, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-6', 'E', 8, 6, 'standard', 'occupied', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-7', 'E', 8, 7, 'standard', 'occupied', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-008-8', 'E', 8, 8, 'standard', 'available', 4.0, 10.0, 'B. G. Torrence', NULL, '1970-07-20'),
('NW-E-009-1', 'E', 9, 1, 'standard', 'available', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-2', 'E', 9, 2, 'standard', 'occupied', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-3', 'E', 9, 3, 'standard', 'occupied', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-4', 'E', 9, 4, 'standard', 'available', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-5', 'E', 9, 5, 'standard', 'occupied', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-6', 'E', 9, 6, 'standard', 'occupied', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-7', 'E', 9, 7, 'standard', 'occupied', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-009-8', 'E', 9, 8, 'standard', 'available', 4.0, 10.0, 'Ernest (Gladys-Mother) Singletary', NULL, NULL),
('NW-E-010-1', 'E', 10, 1, 'standard', 'available', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-2', 'E', 10, 2, 'standard', 'available', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-3', 'E', 10, 3, 'standard', 'occupied', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-4', 'E', 10, 4, 'standard', 'available', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-5', 'E', 10, 5, 'standard', 'occupied', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-6', 'E', 10, 6, 'standard', 'available', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-7', 'E', 10, 7, 'standard', 'occupied', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-010-8', 'E', 10, 8, 'standard', 'occupied', 4.0, 10.0, 'Sandy Simmons', NULL, '1960-10-26'),
('NW-E-011-1', 'E', 11, 1, 'standard', 'available', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-2', 'E', 11, 2, 'standard', 'available', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-3', 'E', 11, 3, 'standard', 'available', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-4', 'E', 11, 4, 'standard', 'available', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-5', 'E', 11, 5, 'standard', 'occupied', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-6', 'E', 11, 6, 'standard', 'occupied', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-7', 'E', 11, 7, 'standard', 'available', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-011-8', 'E', 11, 8, 'standard', 'occupied', 4.0, 10.0, 'J. Parnell Stidham', 'N. Atlantic Ave Ext., Southport, NC, 28461', '1961-01-16'),
('NW-E-012-1', 'E', 12, 1, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-2', 'E', 12, 2, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-3', 'E', 12, 3, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-4', 'E', 12, 4, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-5', 'E', 12, 5, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-6', 'E', 12, 6, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-7', 'E', 12, 7, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-012-8', 'E', 12, 8, 'standard', 'available', 4.0, 10.0, 'Billy & Barbara Hayes', '4827 Ducheneau Dr., Jacksonville, FL, 32210', '1958-08-08'),
('NW-E-013-1', 'E', 13, 1, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-2', 'E', 13, 2, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-3', 'E', 13, 3, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-4', 'E', 13, 4, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-5', 'E', 13, 5, 'standard', 'occupied', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-6', 'E', 13, 6, 'standard', 'occupied', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-7', 'E', 13, 7, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-013-8', 'E', 13, 8, 'standard', 'available', 4.0, 10.0, 'Eugene B. Tomlinson, Jr.', '101 River Drive, Southport, NC, 28461', '1982-09-09'),
('NW-E-014-1', 'E', 14, 1, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-2', 'E', 14, 2, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-3', 'E', 14, 3, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-4', 'E', 14, 4, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-5', 'E', 14, 5, 'standard', 'occupied', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-6', 'E', 14, 6, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-7', 'E', 14, 7, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-014-8', 'E', 14, 8, 'standard', 'available', 4.0, 10.0, 'Jimmie (James S.& Maxine) Davis', '302 W. Brown Street, Southport, NC, 28461', '1988-06-06'),
('NW-E-015-1', 'E', 15, 1, 'standard', 'available', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-2', 'E', 15, 2, 'standard', 'available', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-3', 'E', 15, 3, 'standard', 'available', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-4', 'E', 15, 4, 'standard', 'available', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-5', 'E', 15, 5, 'standard', 'occupied', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-6', 'E', 15, 6, 'standard', 'occupied', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-7', 'E', 15, 7, 'standard', 'occupied', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-015-8', 'E', 15, 8, 'standard', 'available', 4.0, 10.0, 'A.B. & Bernice Troll', 'N. Lord Street, Southport, NC, 28461', '1958-09-02'),
('NW-E-016-1', 'E', 16, 1, 'standard', 'available', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-2', 'E', 16, 2, 'standard', 'available', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-3', 'E', 16, 3, 'standard', 'available', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-4', 'E', 16, 4, 'standard', 'available', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-5', 'E', 16, 5, 'standard', 'occupied', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-6', 'E', 16, 6, 'standard', 'occupied', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-7', 'E', 16, 7, 'standard', 'available', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-016-8', 'E', 16, 8, 'standard', 'occupied', 4.0, 10.0, 'Ralph Phelps', NULL, '1955-11-21'),
('NW-E-017-1', 'E', 17, 1, 'standard', 'available', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-2', 'E', 17, 2, 'standard', 'occupied', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-3', 'E', 17, 3, 'standard', 'occupied', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-4', 'E', 17, 4, 'standard', 'available', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-5', 'E', 17, 5, 'standard', 'occupied', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-6', 'E', 17, 6, 'standard', 'occupied', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-7', 'E', 17, 7, 'standard', 'available', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-017-8', 'E', 17, 8, 'standard', 'occupied', 4.0, 10.0, 'Dodothy Swain', NULL, NULL),
('NW-E-018-1', 'E', 18, 1, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-2', 'E', 18, 2, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-3', 'E', 18, 3, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-4', 'E', 18, 4, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-5', 'E', 18, 5, 'standard', 'occupied', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-6', 'E', 18, 6, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-7', 'E', 18, 7, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-018-8', 'E', 18, 8, 'standard', 'available', 4.0, 10.0, 'W. H. Bennett', NULL, '1953-07-06'),
('NW-E-019-1', 'E', 19, 1, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-2', 'E', 19, 2, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-3', 'E', 19, 3, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-4', 'E', 19, 4, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-5', 'E', 19, 5, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-6', 'E', 19, 6, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-7', 'E', 19, 7, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-019-8', 'E', 19, 8, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-1', 'E', 20, 1, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-2', 'E', 20, 2, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-3', 'E', 20, 3, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-4', 'E', 20, 4, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-5', 'E', 20, 5, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-6', 'E', 20, 6, 'standard', 'occupied', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-7', 'E', 20, 7, 'standard', 'occupied', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-020-8', 'E', 20, 8, 'standard', 'available', 4.0, 10.0, 'S. B. Frink', NULL, NULL),
('NW-E-021-1', 'E', 21, 1, 'standard', 'occupied', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-2', 'E', 21, 2, 'standard', 'occupied', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-3', 'E', 21, 3, 'standard', 'available', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-4', 'E', 21, 4, 'standard', 'available', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-5', 'E', 21, 5, 'standard', 'occupied', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-6', 'E', 21, 6, 'standard', 'occupied', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-7', 'E', 21, 7, 'standard', 'available', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-021-8', 'E', 21, 8, 'standard', 'available', 4.0, 10.0, 'C. Ray Hon', '205 E. Moore Street, Southport, NC, 28461', '1978-01-03'),
('NW-E-022-1', 'E', 22, 1, 'standard', 'available', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-2', 'E', 22, 2, 'standard', 'available', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-3', 'E', 22, 3, 'standard', 'available', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-4', 'E', 22, 4, 'standard', 'available', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-5', 'E', 22, 5, 'standard', 'occupied', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-6', 'E', 22, 6, 'standard', 'occupied', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-7', 'E', 22, 7, 'standard', 'occupied', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-022-8', 'E', 22, 8, 'standard', 'occupied', 4.0, 10.0, 'Eugene Joyce', '106 Sellers Street, Yaupon Beach, NC, 28465', NULL),
('NW-E-023-1', 'E', 23, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-2', 'E', 23, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-3', 'E', 23, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-4', 'E', 23, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-5', 'E', 23, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-6', 'E', 23, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-7', 'E', 23, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-023-8', 'E', 23, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-1', 'E', 24, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-2', 'E', 24, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-3', 'E', 24, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-4', 'E', 24, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-5', 'E', 24, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-6', 'E', 24, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-7', 'E', 24, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-024-8', 'E', 24, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Lucille Cannady', NULL, NULL),
('NW-E-025-1', 'E', 25, 1, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-2', 'E', 25, 2, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-3', 'E', 25, 3, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-4', 'E', 25, 4, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-5', 'E', 25, 5, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-6', 'E', 25, 6, 'standard', 'available', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-7', 'E', 25, 7, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-025-8', 'E', 25, 8, 'standard', 'occupied', 4.0, 10.0, 'G. C. Kilpatrick', NULL, NULL),
('NW-E-026-1', 'E', 26, 1, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-2', 'E', 26, 2, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-3', 'E', 26, 3, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-4', 'E', 26, 4, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-5', 'E', 26, 5, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-6', 'E', 26, 6, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-7', 'E', 26, 7, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-026-8', 'E', 26, 8, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-1', 'E', 27, 1, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-2', 'E', 27, 2, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-3', 'E', 27, 3, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-4', 'E', 27, 4, 'standard', 'occupied', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-5', 'E', 27, 5, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-6', 'E', 27, 6, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-7', 'E', 27, 7, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-027-8', 'E', 27, 8, 'standard', 'available', 4.0, 10.0, 'Harry Dosher', NULL, NULL),
('NW-E-028-1', 'E', 28, 1, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-2', 'E', 28, 2, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-3', 'E', 28, 3, 'standard', 'occupied', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-4', 'E', 28, 4, 'standard', 'occupied', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-5', 'E', 28, 5, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-6', 'E', 28, 6, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-7', 'E', 28, 7, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-028-8', 'E', 28, 8, 'standard', 'available', 4.0, 10.0, 'Edwin Dozier', NULL, NULL),
('NW-E-029-1', 'E', 29, 1, 'standard', 'available', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-2', 'E', 29, 2, 'standard', 'available', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-3', 'E', 29, 3, 'standard', 'available', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-4', 'E', 29, 4, 'standard', 'available', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-5', 'E', 29, 5, 'standard', 'available', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-6', 'E', 29, 6, 'standard', 'occupied', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-7', 'E', 29, 7, 'standard', 'occupied', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-029-8', 'E', 29, 8, 'standard', 'occupied', 4.0, 10.0, 'Margrett Dozier', NULL, '1956-04-17'),
('NW-E-030-1', 'E', 30, 1, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-2', 'E', 30, 2, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-3', 'E', 30, 3, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-4', 'E', 30, 4, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-5', 'E', 30, 5, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-6', 'E', 30, 6, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-7', 'E', 30, 7, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-030-8', 'E', 30, 8, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-1', 'E', 31, 1, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-2', 'E', 31, 2, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-3', 'E', 31, 3, 'standard', 'available', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-4', 'E', 31, 4, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-5', 'E', 31, 5, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-6', 'E', 31, 6, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-7', 'E', 31, 7, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-031-8', 'E', 31, 8, 'standard', 'occupied', 4.0, 10.0, 'John Ivey & T. G. Peadrick', NULL, NULL),
('NW-E-032-1', 'E', 32, 1, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-2', 'E', 32, 2, 'standard', 'occupied', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-3', 'E', 32, 3, 'standard', 'occupied', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-4', 'E', 32, 4, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-5', 'E', 32, 5, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-6', 'E', 32, 6, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-7', 'E', 32, 7, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-032-8', 'E', 32, 8, 'standard', 'available', 4.0, 10.0, 'W. H. Walker', '213 E. Brown Street, Southport, NC, 28461', NULL),
('NW-E-033-1', 'E', 33, 1, 'standard', 'available', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-2', 'E', 33, 2, 'standard', 'available', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-3', 'E', 33, 3, 'standard', 'available', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-4', 'E', 33, 4, 'standard', 'available', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-5', 'E', 33, 5, 'standard', 'available', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-6', 'E', 33, 6, 'standard', 'occupied', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-7', 'E', 33, 7, 'standard', 'occupied', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-033-8', 'E', 33, 8, 'standard', 'occupied', 4.0, 10.0, 'Leroy Swain', '1326 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-034-1', 'E', 34, 1, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-2', 'E', 34, 2, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-3', 'E', 34, 3, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-4', 'E', 34, 4, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-5', 'E', 34, 5, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-6', 'E', 34, 6, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-7', 'E', 34, 7, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-034-8', 'E', 34, 8, 'standard', 'available', 4.0, 10.0, 'C. C. Russ', NULL, '1941-09-18'),
('NW-E-035-1', 'E', 35, 1, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-2', 'E', 35, 2, 'standard', 'occupied', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-3', 'E', 35, 3, 'standard', 'occupied', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-4', 'E', 35, 4, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-5', 'E', 35, 5, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-6', 'E', 35, 6, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-7', 'E', 35, 7, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-035-8', 'E', 35, 8, 'standard', 'available', 4.0, 10.0, 'Harry Aldridge', NULL, NULL),
('NW-E-036-1', 'E', 36, 1, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-2', 'E', 36, 2, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-3', 'E', 36, 3, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-4', 'E', 36, 4, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-5', 'E', 36, 5, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-6', 'E', 36, 6, 'standard', 'occupied', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-7', 'E', 36, 7, 'standard', 'occupied', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-036-8', 'E', 36, 8, 'standard', 'available', 4.0, 10.0, 'W. M. McDowell', '901 N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-037-1', 'E', 37, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-2', 'E', 37, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-3', 'E', 37, 3, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-4', 'E', 37, 4, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-5', 'E', 37, 5, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-6', 'E', 37, 6, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-7', 'E', 37, 7, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-037-8', 'E', 37, 8, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-1', 'E', 38, 1, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-2', 'E', 38, 2, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-3', 'E', 38, 3, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-4', 'E', 38, 4, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-5', 'E', 38, 5, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-6', 'E', 38, 6, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-7', 'E', 38, 7, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-038-8', 'E', 38, 8, 'standard', 'occupied', 4.0, 10.0, NULL, NULL, NULL),
('NW-E-039-1', 'E', 39, 1, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-2', 'E', 39, 2, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-3', 'E', 39, 3, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-4', 'E', 39, 4, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-5', 'E', 39, 5, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-6', 'E', 39, 6, 'standard', 'occupied', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-7', 'E', 39, 7, 'standard', 'occupied', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-039-8', 'E', 39, 8, 'standard', 'available', 4.0, 10.0, 'W. L. Styron', 'W. West Street, Southport, NC, 28461', NULL),
('NW-E-040-1', 'E', 40, 1, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-2', 'E', 40, 2, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-3', 'E', 40, 3, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-4', 'E', 40, 4, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-5', 'E', 40, 5, 'standard', 'available', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-6', 'E', 40, 6, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-7', 'E', 40, 7, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-040-8', 'E', 40, 8, 'standard', 'occupied', 4.0, 10.0, 'H. T. Bowmer', 'N. Howe Street, Southport, NC, 28461', NULL),
('NW-E-041-1', 'E', 41, 1, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-2', 'E', 41, 2, 'standard', 'occupied', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-3', 'E', 41, 3, 'standard', 'occupied', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-4', 'E', 41, 4, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-5', 'E', 41, 5, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-6', 'E', 41, 6, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-7', 'E', 41, 7, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-041-8', 'E', 41, 8, 'standard', 'available', 4.0, 10.0, 'J. H. Russ', NULL, NULL),
('NW-E-042-1', 'E', 42, 1, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-2', 'E', 42, 2, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-3', 'E', 42, 3, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-4', 'E', 42, 4, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-5', 'E', 42, 5, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-6', 'E', 42, 6, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-7', 'E', 42, 7, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-042-8', 'E', 42, 8, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-1', 'E', 43, 1, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-2', 'E', 43, 2, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-3', 'E', 43, 3, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-4', 'E', 43, 4, 'standard', 'occupied', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-5', 'E', 43, 5, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-6', 'E', 43, 6, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-7', 'E', 43, 7, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-043-8', 'E', 43, 8, 'standard', 'available', 4.0, 10.0, 'W. E. Dosher', NULL, NULL),
('NW-E-044-1', 'E', 44, 1, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-2', 'E', 44, 2, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-3', 'E', 44, 3, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-4', 'E', 44, 4, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-5', 'E', 44, 5, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-6', 'E', 44, 6, 'standard', 'occupied', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-7', 'E', 44, 7, 'standard', 'available', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-044-8', 'E', 44, 8, 'standard', 'available', 4.0, 10.0, 'Dr. J. Arthur Dosher', NULL, NULL),
('NW-E-045-1', 'E', 45, 1, 'standard', 'available', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-2', 'E', 45, 2, 'standard', 'available', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-3', 'E', 45, 3, 'standard', 'occupied', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-4', 'E', 45, 4, 'standard', 'occupied', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-5', 'E', 45, 5, 'standard', 'occupied', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-6', 'E', 45, 6, 'standard', 'occupied', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-7', 'E', 45, 7, 'standard', 'available', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-045-8', 'E', 45, 8, 'standard', 'occupied', 4.0, 10.0, 'Hoyle Dosher', '203 W. Moore Street, Southport, NC, 28461', NULL),
('NW-E-046-1', 'E', 46, 1, 'standard', 'occupied', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-2', 'E', 46, 2, 'standard', 'occupied', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-3', 'E', 46, 3, 'standard', 'occupied', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-4', 'E', 46, 4, 'standard', 'occupied', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-5', 'E', 46, 5, 'standard', 'available', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-6', 'E', 46, 6, 'standard', 'occupied', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-7', 'E', 46, 7, 'standard', 'available', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-046-8', 'E', 46, 8, 'standard', 'available', 4.0, 10.0, 'I. B. Bussells', NULL, NULL),
('NW-E-047-1', 'E', 47, 1, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-2', 'E', 47, 2, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-3', 'E', 47, 3, 'standard', 'occupied', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-4', 'E', 47, 4, 'standard', 'occupied', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-5', 'E', 47, 5, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-6', 'E', 47, 6, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-7', 'E', 47, 7, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-047-8', 'E', 47, 8, 'standard', 'available', 4.0, 10.0, 'G. D. Robinson', NULL, NULL),
('NW-E-048-1', 'E', 48, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-2', 'E', 48, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-3', 'E', 48, 3, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-4', 'E', 48, 4, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-5', 'E', 48, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-6', 'E', 48, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-7', 'E', 48, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-048-8', 'E', 48, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. Maggie Arnold', NULL, NULL),
('NW-E-049-1', 'E', 49, 1, 'standard', 'available', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-2', 'E', 49, 2, 'standard', 'occupied', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-3', 'E', 49, 3, 'standard', 'occupied', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-4', 'E', 49, 4, 'standard', 'available', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-5', 'E', 49, 5, 'standard', 'occupied', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-6', 'E', 49, 6, 'standard', 'occupied', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-7', 'E', 49, 7, 'standard', 'occupied', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-049-8', 'E', 49, 8, 'standard', 'available', 4.0, 10.0, 'Roger Adams', NULL, NULL),
('NW-E-050-1', 'E', 50, 1, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-2', 'E', 50, 2, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-3', 'E', 50, 3, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-4', 'E', 50, 4, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-5', 'E', 50, 5, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-6', 'E', 50, 6, 'standard', 'occupied', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-7', 'E', 50, 7, 'standard', 'available', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-050-8', 'E', 50, 8, 'standard', 'occupied', 4.0, 10.0, 'J. J. Adams', NULL, NULL),
('NW-E-051-1', 'E', 51, 1, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-2', 'E', 51, 2, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-3', 'E', 51, 3, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-4', 'E', 51, 4, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-5', 'E', 51, 5, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-6', 'E', 51, 6, 'standard', 'occupied', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-7', 'E', 51, 7, 'standard', 'occupied', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-051-8', 'E', 51, 8, 'standard', 'available', 4.0, 10.0, 'Fred Fulford', NULL, NULL),
('NW-E-052-1', 'E', 52, 1, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-2', 'E', 52, 2, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-3', 'E', 52, 3, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-4', 'E', 52, 4, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-5', 'E', 52, 5, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-6', 'E', 52, 6, 'standard', 'occupied', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-7', 'E', 52, 7, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-052-8', 'E', 52, 8, 'standard', 'available', 4.0, 10.0, 'Wilbur & Bernice James & Odom', NULL, NULL),
('NW-E-053-1', 'E', 53, 1, 'standard', 'occupied', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-2', 'E', 53, 2, 'standard', 'occupied', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-3', 'E', 53, 3, 'standard', 'available', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-4', 'E', 53, 4, 'standard', 'available', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-5', 'E', 53, 5, 'standard', 'occupied', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-6', 'E', 53, 6, 'standard', 'available', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-7', 'E', 53, 7, 'standard', 'occupied', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-053-8', 'E', 53, 8, 'standard', 'occupied', 4.0, 10.0, 'Harry Weeks', NULL, NULL),
('NW-E-054-1', 'E', 54, 1, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-2', 'E', 54, 2, 'standard', 'occupied', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-3', 'E', 54, 3, 'standard', 'occupied', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-4', 'E', 54, 4, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-5', 'E', 54, 5, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-6', 'E', 54, 6, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-7', 'E', 54, 7, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-054-8', 'E', 54, 8, 'standard', 'available', 4.0, 10.0, 'E. R. Weeks', NULL, NULL),
('NW-E-055-1', 'E', 55, 1, 'standard', 'occupied', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-2', 'E', 55, 2, 'standard', 'occupied', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-3', 'E', 55, 3, 'standard', 'occupied', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-4', 'E', 55, 4, 'standard', 'available', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-5', 'E', 55, 5, 'standard', 'available', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-6', 'E', 55, 6, 'standard', 'occupied', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-7', 'E', 55, 7, 'standard', 'occupied', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-055-8', 'E', 55, 8, 'standard', 'available', 4.0, 10.0, 'Edna Bell', NULL, NULL),
('NW-E-056-1', 'E', 56, 1, 'standard', 'occupied', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-2', 'E', 56, 2, 'standard', 'occupied', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-3', 'E', 56, 3, 'standard', 'occupied', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-4', 'E', 56, 4, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-5', 'E', 56, 5, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-6', 'E', 56, 6, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-7', 'E', 56, 7, 'standard', 'occupied', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-056-8', 'E', 56, 8, 'standard', 'occupied', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-1', 'E', 57, 1, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-2', 'E', 57, 2, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-3', 'E', 57, 3, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-4', 'E', 57, 4, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-5', 'E', 57, 5, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-6', 'E', 57, 6, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-7', 'E', 57, 7, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-057-8', 'E', 57, 8, 'standard', 'available', 4.0, 10.0, 'A. C. Sell', NULL, NULL),
('NW-E-058-1', 'E', 58, 1, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-2', 'E', 58, 2, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-3', 'E', 58, 3, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-4', 'E', 58, 4, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-5', 'E', 58, 5, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-6', 'E', 58, 6, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-7', 'E', 58, 7, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-058-8', 'E', 58, 8, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-1', 'E', 59, 1, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-2', 'E', 59, 2, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-3', 'E', 59, 3, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-4', 'E', 59, 4, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-5', 'E', 59, 5, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-6', 'E', 59, 6, 'standard', 'occupied', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-7', 'E', 59, 7, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-059-8', 'E', 59, 8, 'standard', 'available', 4.0, 10.0, 'Worth Ward', '316 N. Atlantic Ave., Southport, NC, 28461', '1957-05-21'),
('NW-E-060-1', 'E', 60, 1, 'standard', 'available', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-2', 'E', 60, 2, 'standard', 'available', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-3', 'E', 60, 3, 'standard', 'available', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-4', 'E', 60, 4, 'standard', 'available', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-5', 'E', 60, 5, 'standard', 'occupied', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-6', 'E', 60, 6, 'standard', 'occupied', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-7', 'E', 60, 7, 'standard', 'occupied', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-060-8', 'E', 60, 8, 'standard', 'available', 4.0, 10.0, 'Thomas H. (Hoyle) Dosher Sr', '205 W. Moore Street, Southport, NC, 28461', '1971-06-11'),
('NW-E-061-1', 'E', 61, 1, 'standard', 'available', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-2', 'E', 61, 2, 'standard', 'available', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-3', 'E', 61, 3, 'standard', 'occupied', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-4', 'E', 61, 4, 'standard', 'available', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-5', 'E', 61, 5, 'standard', 'available', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-6', 'E', 61, 6, 'standard', 'occupied', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-7', 'E', 61, 7, 'standard', 'occupied', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-061-8', 'E', 61, 8, 'standard', 'available', 4.0, 10.0, 'L. M. Pendergraph', NULL, '1967-05-17'),
('NW-E-062-1', 'E', 62, 1, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-2', 'E', 62, 2, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-3', 'E', 62, 3, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-4', 'E', 62, 4, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-5', 'E', 62, 5, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-6', 'E', 62, 6, 'standard', 'occupied', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-7', 'E', 62, 7, 'standard', 'occupied', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-062-8', 'E', 62, 8, 'standard', 'available', 4.0, 10.0, 'Frank Potter', '106 W. West Street, Southport, NC, 28461', '1969-12-05'),
('NW-E-063-1', 'E', 63, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-2', 'E', 63, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-3', 'E', 63, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-4', 'E', 63, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-5', 'E', 63, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-6', 'E', 63, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-7', 'E', 63, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-063-8', 'E', 63, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-11-06'),
('NW-E-064-1', 'E', 64, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-2', 'E', 64, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-3', 'E', 64, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-4', 'E', 64, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-5', 'E', 64, 5, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-6', 'E', 64, 6, 'standard', 'available', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-7', 'E', 64, 7, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-064-8', 'E', 64, 8, 'standard', 'occupied', 4.0, 10.0, 'Mrs. Donald Maggard', NULL, '1968-10-30'),
('NW-E-065-1', 'E', 65, 1, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-2', 'E', 65, 2, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-3', 'E', 65, 3, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-4', 'E', 65, 4, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-5', 'E', 65, 5, 'standard', 'occupied', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-6', 'E', 65, 6, 'standard', 'occupied', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-7', 'E', 65, 7, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-065-8', 'E', 65, 8, 'standard', 'available', 4.0, 10.0, 'W. G. Collins', NULL, NULL),
('NW-E-066-1', 'E', 66, 1, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-2', 'E', 66, 2, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-3', 'E', 66, 3, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-4', 'E', 66, 4, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-5', 'E', 66, 5, 'standard', 'available', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-6', 'E', 66, 6, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-7', 'E', 66, 7, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-066-8', 'E', 66, 8, 'standard', 'occupied', 4.0, 10.0, 'Mr. & Mrs. W. R. Jenkins', '411 W. West Street, Southport, NC, 28461', '1969-04-28'),
('NW-E-067-1', 'E', 67, 1, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-2', 'E', 67, 2, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-3', 'E', 67, 3, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-4', 'E', 67, 4, 'standard', 'occupied', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-5', 'E', 67, 5, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-6', 'E', 67, 6, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-7', 'E', 67, 7, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-067-8', 'E', 67, 8, 'standard', 'available', 4.0, 10.0, 'Stacie Dunford', '512 N. Howe Street, Southport, NC, 28461', '1969-06-03'),
('NW-E-068-1', 'E', 68, 1, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-2', 'E', 68, 2, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-3', 'E', 68, 3, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-4', 'E', 68, 4, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-5', 'E', 68, 5, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-6', 'E', 68, 6, 'standard', 'occupied', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-7', 'E', 68, 7, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-068-8', 'E', 68, 8, 'standard', 'available', 4.0, 10.0, 'Mrs. C. L. Black', NULL, '1969-10-02'),
('NW-E-069-1', 'E', 69, 1, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-2', 'E', 69, 2, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-3', 'E', 69, 3, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-4', 'E', 69, 4, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-5', 'E', 69, 5, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-6', 'E', 69, 6, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-7', 'E', 69, 7, 'standard', 'available', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-069-8', 'E', 69, 8, 'standard', 'occupied', 4.0, 10.0, 'James Melton', '202 E. Brown Street, Southport, NC, 28461', '1969-10-02'),
('NW-E-070-1', 'E', 70, 1, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-2', 'E', 70, 2, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-3', 'E', 70, 3, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-4', 'E', 70, 4, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-5', 'E', 70, 5, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-6', 'E', 70, 6, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-7', 'E', 70, 7, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-070-8', 'E', 70, 8, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-1', 'E', 71, 1, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-2', 'E', 71, 2, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-3', 'E', 71, 3, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-4', 'E', 71, 4, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-5', 'E', 71, 5, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-6', 'E', 71, 6, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-7', 'E', 71, 7, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-071-8', 'E', 71, 8, 'standard', 'occupied', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-1', 'E', 72, 1, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-2', 'E', 72, 2, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-3', 'E', 72, 3, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-4', 'E', 72, 4, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-5', 'E', 72, 5, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-6', 'E', 72, 6, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-7', 'E', 72, 7, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-072-8', 'E', 72, 8, 'standard', 'available', 4.0, 10.0, 'John William & Robert Wayne Potter', NULL, '1969-11-26'),
('NW-E-073-1', 'E', 73, 1, 'standard', 'occupied', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-2', 'E', 73, 2, 'standard', 'available', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-3', 'E', 73, 3, 'standard', 'available', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-4', 'E', 73, 4, 'standard', 'available', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-5', 'E', 73, 5, 'standard', 'available', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-6', 'E', 73, 6, 'standard', 'occupied', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-7', 'E', 73, 7, 'standard', 'occupied', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-073-8', 'E', 73, 8, 'standard', 'occupied', 4.0, 10.0, 'Otho & Irene Hart', '320 E. Moore Street, Southport, NC, 28461', '1970-09-09'),
('NW-E-074-1', 'E', 74, 1, 'standard', 'occupied', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-2', 'E', 74, 2, 'standard', 'occupied', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-3', 'E', 74, 3, 'standard', 'available', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-4', 'E', 74, 4, 'standard', 'available', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-5', 'E', 74, 5, 'standard', 'available', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-6', 'E', 74, 6, 'standard', 'available', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-7', 'E', 74, 7, 'standard', 'available', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08'),
('NW-E-074-8', 'E', 74, 8, 'standard', 'occupied', 4.0, 10.0, 'Howard Davis', NULL, '1971-02-08')
ON CONFLICT (plot_number) DO UPDATE SET 
  status = EXCLUDED.status,
  owner_name = EXCLUDED.owner_name,
  owner_contact = EXCLUDED.owner_contact,
  purchase_date = EXCLUDED.purchase_date;


-- Insert deceased records for Section E
INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jeffery', 'Fredrick', 'Miller', NULL, '1957-02-18', '2010-05-14', NULL
FROM plots WHERE plot_number = 'NW-E-001-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Michael', 'Miller', NULL, '1950-10-16', NULL, NULL
FROM plots WHERE plot_number = 'NW-E-001-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Carl', 'Miller', NULL, '1927-12-14', '1971-03-19', NULL
FROM plots WHERE plot_number = 'NW-E-001-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Audry', NULL, 'Miller', 'Jousiffe', '1933-12-13', '2013-06-17', NULL
FROM plots WHERE plot_number = 'NW-E-001-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Joseph', 'Feke', NULL, '1938-09-08', '1989-02-06', NULL
FROM plots WHERE plot_number = 'NW-E-002-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eunice', 'C.', 'Hart', NULL, NULL, '1996-10-03', NULL
FROM plots WHERE plot_number = 'NW-E-002-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', NULL, 'Wolfe', 'Williams', '1917-05-08', '2000-03-23', NULL
FROM plots WHERE plot_number = 'NW-E-004-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Marshall', 'Wolfe', NULL, '1917-07-16', '1993-05-03', NULL
FROM plots WHERE plot_number = 'NW-E-004-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', NULL, 'Wolfe', 'Williams', '1917-05-08', NULL, NULL
FROM plots WHERE plot_number = 'NW-E-005-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'L.', 'Wolfe,', NULL, '1941-02-07', '1969-10-07', 'Sr.'
FROM plots WHERE plot_number = 'NW-E-005-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margarett', NULL, 'Hood', 'Swan', '1900-07-16', '1996-12-20', NULL
FROM plots WHERE plot_number = 'NW-E-006-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Murley', 'Maine', 'Hood', NULL, '1904-03-29', '1987-02-18', NULL
FROM plots WHERE plot_number = 'NW-E-006-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Hood', 'McKinley', '1899-03-02', '1969-03-18', NULL
FROM plots WHERE plot_number = 'NW-E-007-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'R.', 'Hood,', NULL, '1897-07-12', '1975-10-04', 'Sr.'
FROM plots WHERE plot_number = 'NW-E-007-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Benjamin', 'C.', 'Torrance', NULL, '1891-06-06', '1974-06-24', NULL
FROM plots WHERE plot_number = 'NW-E-008-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edith', 'V.', 'Torrance', NULL, '1895-07-22', '1970-06-22', NULL
FROM plots WHERE plot_number = 'NW-E-008-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Not Marked', 'Singletary', NULL, NULL, '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-009-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Iniss', 'Temp Marker', 'Singletary', 'Baker', '1935-01-14', '1999-06-18', NULL
FROM plots WHERE plot_number = 'NW-E-009-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Earnest', 'Not Marked', 'Singletary', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-009-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lester', 'Not Marked', 'Singletary', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-009-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gladys', NULL, 'Wethington', 'Floyd', '1901-01-01', '1964-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-009-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ana / David', 'Mae Randolph', 'Brown / Williamson', '03/09/1951-11/12/2005', '1930-05-01', '2010-10-16', NULL
FROM plots WHERE plot_number = 'NW-E-010-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Billy', 'C.', 'Williamson', NULL, '1952-09-10', '1960-10-17', NULL
FROM plots WHERE plot_number = 'NW-E-010-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cornelia', NULL, 'Simmons', 'Autry', '1896-09-29', '1961-11-10', NULL
FROM plots WHERE plot_number = 'NW-E-010-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alexander', 'L.', 'Simmons', 'Capt. Sandy', '1892-01-08', '1962-05-18', NULL
FROM plots WHERE plot_number = 'NW-E-010-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Capt.', 'Jake', 'Stidham', NULL, '1923-04-01', '1987-08-01', NULL
FROM plots WHERE plot_number = 'NW-E-011-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', 'L.', 'Stidham', NULL, '1926-02-14', '1970-02-02', NULL
FROM plots WHERE plot_number = 'NW-E-011-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Donald', 'A.', 'Stidham', NULL, '1951-07-08', '1960-10-17', NULL
FROM plots WHERE plot_number = 'NW-E-011-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'Bertram', 'Tomlinson', NULL, '1924-10-19', '2013-02-23', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-013-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Leigh', NULL, 'Tomlinson', 'Wallace', '1930-10-27', '2006-08-29', NULL
FROM plots WHERE plot_number = 'NW-E-013-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Michael', 'Davis', NULL, '1957-11-21', '1958-01-20', NULL
FROM plots WHERE plot_number = 'NW-E-014-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Andrew', 'Bernard', 'Troll', NULL, '1928-04-12', NULL, NULL
FROM plots WHERE plot_number = 'NW-E-015-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bernice', NULL, 'Troll', 'Phelps', '1933-10-13', '1984-06-22', NULL
FROM plots WHERE plot_number = 'NW-E-015-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frank', 'Lane', 'Troll', NULL, '1961-10-24', '1961-10-24', NULL
FROM plots WHERE plot_number = 'NW-E-015-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'L.', 'Phelps', NULL, '1901-07-11', '1966-05-06', NULL
FROM plots WHERE plot_number = 'NW-E-016-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ida', 'B.', 'Phelps', NULL, '1906-09-13', '1955-03-13', NULL
FROM plots WHERE plot_number = 'NW-E-016-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ralph', 'Elwin', 'Phelps', NULL, '1927-06-23', '1977-12-20', NULL
FROM plots WHERE plot_number = 'NW-E-016-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Vera', NULL, 'Willis', 'Swain', '1917-01-07', '1995-04-12', NULL
FROM plots WHERE plot_number = 'NW-E-017-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Orville', NULL, 'Willis', NULL, '1919-03-31', '1985-03-27', NULL
FROM plots WHERE plot_number = 'NW-E-017-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clyde', 'Fields', 'Swain', NULL, '1919-08-27', '1978-07-02', NULL
FROM plots WHERE plot_number = 'NW-E-017-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'P.', 'Swain', NULL, '1907-02-26', '1953-10-29', NULL
FROM plots WHERE plot_number = 'NW-E-017-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Swain', NULL, '1912-01-07', '1970-12-31', NULL
FROM plots WHERE plot_number = 'NW-E-017-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Argie', 'M.', 'Barnett', NULL, '1906-01-01', '1953-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-018-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jesse', 'D.', 'Frink', NULL, '1901-01-19', '1949-03-29', NULL
FROM plots WHERE plot_number = 'NW-E-020-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Malcolm', 'S.', 'Frink', NULL, '1979-05-21', '1979-02-11', NULL
FROM plots WHERE plot_number = 'NW-E-020-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Harris', 'Hon', NULL, '1928-09-02', '2008-03-01', NULL
FROM plots WHERE plot_number = 'NW-E-021-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Katherine', NULL, 'Hon', 'Pope', '1928-01-15', '1989-04-23', NULL
FROM plots WHERE plot_number = 'NW-E-021-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Cecil', 'Ray', 'Hon', NULL, '1904-11-20', '1988-05-07', NULL
FROM plots WHERE plot_number = 'NW-E-021-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Roberta', 'Sloan', 'Hon', 'Porter', '1906-12-19', '1998-03-05', NULL
FROM plots WHERE plot_number = 'NW-E-021-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Martha', 'L.', 'Joyce', NULL, NULL, '1988-12-15', NULL
FROM plots WHERE plot_number = 'NW-E-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'W.', 'Joyce', NULL, NULL, '1978-09-04', NULL
FROM plots WHERE plot_number = 'NW-E-022-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bernard', 'Lee', 'Thomas', NULL, '1913-09-08', '1994-02-07', NULL
FROM plots WHERE plot_number = 'NW-E-022-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nell', NULL, 'Thomas', 'Logan', '1912-08-17', '2010-01-27', NULL
FROM plots WHERE plot_number = 'NW-E-022-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'W.', 'McKeithan', NULL, '1904-10-21', '1945-01-25', NULL
FROM plots WHERE plot_number = 'NW-E-023-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Shirley', 'Anne', 'Clunk', 'McKeithan', '1935-10-30', '2017-05-22', NULL
FROM plots WHERE plot_number = 'NW-E-023-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Joseph', 'Richard', 'Clunk', NULL, '1955-09-29', '2013-10-11', NULL
FROM plots WHERE plot_number = 'NW-E-023-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'H.', 'Canady', 'J', NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-023-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Bertha', 'L.', 'McKeithan', NULL, '1900-10-25', '1973-09-30', NULL
FROM plots WHERE plot_number = 'NW-E-024-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carolyn', NULL, 'Cashwell', 'Kilpatrick', '1919-02-01', '1980-05-08', NULL
FROM plots WHERE plot_number = 'NW-E-025-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Austin', 'Lee', 'Cashwell', NULL, '1917-12-19', '2003-01-04', NULL
FROM plots WHERE plot_number = 'NW-E-025-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', 'B.', 'Adams', NULL, '1861-02-13', '1944-06-09', NULL
FROM plots WHERE plot_number = 'NW-E-025-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Carrie', 'O.', 'Kilpatrick', NULL, '1893-06-06', '1982-07-24', NULL
FROM plots WHERE plot_number = 'NW-E-025-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grady', 'C.', 'Kilpatrick', NULL, '1891-07-09', '1996-12-19', NULL
FROM plots WHERE plot_number = 'NW-E-025-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lewis', 'J.', 'Hardee', NULL, '1910-04-06', '1996-12-04', NULL
FROM plots WHERE plot_number = 'NW-E-026-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', NULL, 'Hardee', 'Dosher', '1915-11-18', '2008-12-28', NULL
FROM plots WHERE plot_number = 'NW-E-026-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'Lee', 'Dosher', NULL, '1886-06-16', '1943-11-26', NULL
FROM plots WHERE plot_number = 'NW-E-027-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Alta', 'L.', 'Dosher', 'Wescott', '1886-08-15', '1963-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-027-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Paul', 'Wescott', 'Dosher', NULL, '1922-09-21', '1957-06-08', NULL
FROM plots WHERE plot_number = 'NW-E-027-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Denise', 'Michelle', 'Dosher', NULL, '1956-04-23', '1956-04-24', NULL
FROM plots WHERE plot_number = 'NW-E-027-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'W.', 'Dozier', NULL, '1907-06-03', '1956-04-13', NULL
FROM plots WHERE plot_number = 'NW-E-028-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edwin', 'W.', 'Dozier,', NULL, '1936-01-01', '1948-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-028-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Frances', NULL, 'Dosher', 'Dewey', '1898-08-06', '1941-11-08', NULL
FROM plots WHERE plot_number = 'NW-E-029-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Captain Arthur', 'J.', 'Dosher', NULL, '1898-08-15', '1973-01-28', NULL
FROM plots WHERE plot_number = 'NW-E-029-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Florence', 'W.', 'Dosher', 'Farley', '1902-08-19', '1989-07-15', NULL
FROM plots WHERE plot_number = 'NW-E-029-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'G.', 'Peadrick', NULL, '1889-01-01', '1964-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-030-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'F.', 'Peadrick', NULL, '1890-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-030-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'Nathlee', 'Ivey', 'Peadrick', '1915-08-26', '2009-03-29', NULL
FROM plots WHERE plot_number = 'NW-E-031-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Robert', 'Ivey,', NULL, '1916-12-20', '1995-09-03', 'Sr.'
FROM plots WHERE plot_number = 'NW-E-031-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Robert', 'Bristol', NULL, '1957-12-26', '2015-03-26', NULL
FROM plots WHERE plot_number = 'NW-E-031-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Infant', 'Twins', 'Ivey', NULL, '1941-12-24', '1941-12-24', NULL
FROM plots WHERE plot_number = 'NW-E-031-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jacquelin', 'Dean', 'Ivey', NULL, '1938-01-18', '1941-09-29', NULL
FROM plots WHERE plot_number = 'NW-E-031-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Robert', 'Ivey,', NULL, '1916-12-20', '1995-09-03', 'Sr'
FROM plots WHERE plot_number = 'NW-E-031-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Margaret', 'P.', 'Ivey', NULL, '1915-08-26', NULL, NULL
FROM plots WHERE plot_number = 'NW-E-031-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ruth', 'E.', 'Walker', NULL, '1885-09-22', '1960-01-07', NULL
FROM plots WHERE plot_number = 'NW-E-032-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Henry', 'Walker', NULL, '1879-03-27', '1940-08-28', NULL
FROM plots WHERE plot_number = 'NW-E-032-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Estelle', 'Ella', 'Swain', 'Furr', '1911-07-10', '2009-08-25', NULL
FROM plots WHERE plot_number = 'NW-E-033-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'LeRoy', NULL, 'Swain', NULL, '1912-12-01', '2001-10-28', NULL
FROM plots WHERE plot_number = 'NW-E-033-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'LeRoy', NULL, 'Swain,', NULL, '1939-06-22', '1939-06-23', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-033-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'B.', 'Aldridge', NULL, '1887-01-01', '1946-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-035-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'E.', 'Aldridge', NULL, '1885-01-01', '1970-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-035-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', NULL, 'McDowell', NULL, '1906-03-08', '1987-01-14', NULL
FROM plots WHERE plot_number = 'NW-E-036-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Norma', NULL, 'McDowell', 'Jones', '1910-05-15', '1993-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-036-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-037-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Part of Street', 'Location ofShrubbery', 'Not For Sale', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-038-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Litchfield', 'Styron', NULL, '1909-03-09', '1973-08-06', NULL
FROM plots WHERE plot_number = 'NW-E-039-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hilda', 'Irma', 'Styron', 'Muller', '1914-06-16', '2003-03-11', NULL
FROM plots WHERE plot_number = 'NW-E-039-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jean', NULL, 'Bowmer', 'Dixon', '1932-01-01', '2003-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-040-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Smith', 'Bowmer', NULL, '1931-11-08', '2012-01-22', NULL
FROM plots WHERE plot_number = 'NW-E-040-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lettie', 'Amelia', 'Bowmer', NULL, '1895-08-07', '1941-07-25', NULL
FROM plots WHERE plot_number = 'NW-E-040-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rebekah', 'Elizabeth', 'Hatch', NULL, '1995-03-23', '1997-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-040-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Henry', 'T.', 'Bowmer', NULL, '1895-01-01', '1973-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-040-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lettie', 'Amelia', 'Bowmer', NULL, '1895-01-01', '1941-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-040-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Warren', 'Arthur', 'Hatch', NULL, '1958-02-06', '2016-03-10', NULL
FROM plots WHERE plot_number = 'NW-E-040-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lula', 'S.', 'Russ', NULL, '1879-11-12', '1955-03-29', NULL
FROM plots WHERE plot_number = 'NW-E-041-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'H.', 'Russ', NULL, '1873-03-20', '1940-01-09', NULL
FROM plots WHERE plot_number = 'NW-E-041-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nellie', 'G.', 'Dosher', NULL, '1874-12-01', '1962-10-10', NULL
FROM plots WHERE plot_number = 'NW-E-042-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Rufus', 'Dosher', NULL, '1910-05-16', '1947-07-08', NULL
FROM plots WHERE plot_number = 'NW-E-042-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sallie', NULL, 'Veazey', 'Dosher', '1900-03-12', '2001-11-29', NULL
FROM plots WHERE plot_number = 'NW-E-042-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sidney', 'H.', 'Veazey', NULL, '1895-12-17', '1947-10-06', NULL
FROM plots WHERE plot_number = 'NW-E-042-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harlow', 'G.', 'Hunt', NULL, '1912-02-25', '1960-05-26', NULL
FROM plots WHERE plot_number = 'NW-E-042-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Warren', 'Dosher', NULL, '1906-03-15', '1939-09-30', NULL
FROM plots WHERE plot_number = 'NW-E-043-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'E.', 'Dosher', NULL, '1871-05-08', '1950-12-23', NULL
FROM plots WHERE plot_number = 'NW-E-043-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Susan', NULL, 'Jones', 'LeClerc', '1932-06-14', '2005-08-13', NULL
FROM plots WHERE plot_number = 'NW-E-044-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Arthur', 'Jones', NULL, '1927-11-29', '2019-11-07', NULL
FROM plots WHERE plot_number = 'NW-E-044-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grace', NULL, 'Jones', 'Dosher', '1904-01-01', '1957-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-044-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Lewis', 'Jones', NULL, '1903-01-01', '1996-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-044-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dr. J.', 'Arthur', 'Dosher', NULL, '1878-01-01', '1939-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-044-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Grace', NULL, 'Dosher', 'Keyworth', '1881-01-01', '1948-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-044-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', 'Manning', 'Dosher', NULL, '1968-03-09', '1988-10-30', NULL
FROM plots WHERE plot_number = 'NW-E-045-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Albert', 'Arthur', 'Dosher', NULL, '2010-08-15', '2010-10-02', 'Sr.'
FROM plots WHERE plot_number = 'NW-E-045-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charles', NULL, 'Boera', NULL, '1904-08-09', '1971-07-24', NULL
FROM plots WHERE plot_number = 'NW-E-045-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hermine', 'Boera', 'Arnold', 'Dosher', '1891-12-27', '1993-09-07', NULL
FROM plots WHERE plot_number = 'NW-E-045-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Hoyle', 'Dosher', NULL, '1881-05-27', '1941-04-28', NULL
FROM plots WHERE plot_number = 'NW-E-045-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'I.', 'Bonner', 'Bussells', NULL, '1885-01-01', '1943-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-046-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', NULL, 'Bussells', 'Dosher', '1893-01-01', '1972-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-046-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lois', 'Jane', 'Herring', 'Bussells', '1919-07-12', '1991-12-16', NULL
FROM plots WHERE plot_number = 'NW-E-046-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Davis', 'Carroll', 'Herring', NULL, '1917-06-27', '1988-03-10', NULL
FROM plots WHERE plot_number = 'NW-E-046-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Allison', 'Watkins', 'Herring', '1968-04-17', '2001-03-31', NULL
FROM plots WHERE plot_number = 'NW-E-046-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lizzie', 'G.', 'Robinson', NULL, '1890-09-03', '1973-09-07', NULL
FROM plots WHERE plot_number = 'NW-E-047-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'D.', 'Robinson', NULL, '1885-03-08', '1952-06-09', NULL
FROM plots WHERE plot_number = 'NW-E-047-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Anderson', 'Arnold', NULL, '1874-01-25', '1959-01-24', NULL
FROM plots WHERE plot_number = 'NW-E-048-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maggie', NULL, 'Arnold', NULL, '1873-08-29', '1943-11-29', NULL
FROM plots WHERE plot_number = 'NW-E-048-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Inez', NULL, 'Brooks', 'Stutts', '1932-07-19', '2010-09-08', NULL
FROM plots WHERE plot_number = 'NW-E-049-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jefferson', 'Davis', 'Brooks,', NULL, '1926-08-28', '2007-02-12', 'III'
FROM plots WHERE plot_number = 'NW-E-049-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Maggie', 'Etta', 'Adams', 'Galloway', '1880-03-10', '1967-11-14', NULL
FROM plots WHERE plot_number = 'NW-E-049-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Warden', NULL, 'Lewis', NULL, '1896-06-01', '1955-10-08', NULL
FROM plots WHERE plot_number = 'NW-E-049-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Civella', 'Adams', 'Lewis', 'Brooks', '1903-02-23', '1987-10-29', NULL
FROM plots WHERE plot_number = 'NW-E-049-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Rev. Junius', 'J.', 'Adams', NULL, '1868-05-26', '1942-10-13', NULL
FROM plots WHERE plot_number = 'NW-E-050-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Junius', 'J.', 'Adams,', NULL, NULL, '1941-06-14', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-050-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Hancy', 'Sellers', 'Fulford', NULL, '1902-02-04', '1971-05-31', NULL
FROM plots WHERE plot_number = 'NW-E-051-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Fred', 'Lee', 'Fulford', NULL, '1903-11-27', '1979-09-09', NULL
FROM plots WHERE plot_number = 'NW-E-051-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Josie', NULL, 'James', NULL, '1914-11-08', '1941-12-23', NULL
FROM plots WHERE plot_number = 'NW-E-052-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Emile', 'Mae', 'Weeks', NULL, NULL, '1955-07-15', NULL
FROM plots WHERE plot_number = 'NW-E-053-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Ennis', 'E.', 'Weeks', NULL, '1908-01-16', '1980-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-053-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', 'F.', 'Weeks,', NULL, '1918-01-01', '1997-01-01', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-053-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Harry', NULL, 'Weeks', NULL, '1883-02-27', '1948-12-29', NULL
FROM plots WHERE plot_number = 'NW-E-053-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Blanche', NULL, 'Weeks', 'Fulchere', '1888-08-12', '1978-01-16', NULL
FROM plots WHERE plot_number = 'NW-E-053-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Annie', NULL, 'Weeks', 'Russ', '1903-12-24', '1984-05-09', NULL
FROM plots WHERE plot_number = 'NW-E-054-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edward', 'Rudolph', 'Weeks', NULL, '1897-08-07', '1952-04-19', NULL
FROM plots WHERE plot_number = 'NW-E-054-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Edna', 'D.', 'Bell', NULL, '1887-10-31', '1964-01-04', NULL
FROM plots WHERE plot_number = 'NW-E-055-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dorothy', 'B.', 'Kauffman', NULL, '1915-11-05', '1963-07-19', NULL
FROM plots WHERE plot_number = 'NW-E-055-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Clifford', 'Vernon', 'Davis', NULL, '1899-04-23', '1949-11-28', NULL
FROM plots WHERE plot_number = 'NW-E-055-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Wilson', 'Davis', NULL, '1861-08-13', '1951-03-26', NULL
FROM plots WHERE plot_number = 'NW-E-055-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Augusta', 'C.', 'Davis', 'Vernon', '1866-01-01', '1951-10-19', NULL
FROM plots WHERE plot_number = 'NW-E-055-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mercedes', NULL, 'Sell', NULL, NULL, NULL, NULL
FROM plots WHERE plot_number = 'NW-E-056-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Abdul', 'Harry', 'Sell', NULL, '1912-01-01', '1989-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-056-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Louise', NULL, 'Godfrey', 'Sell', '1916-01-01', '1995-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-056-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'A.', 'C.', 'Sell', NULL, '1887-01-01', '1951-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-056-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sarah', NULL, 'Sell', 'Clontz', '1888-01-01', '1969-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-056-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Warren', 'Fisher', NULL, '1932-09-17', '2002-10-27', NULL
FROM plots WHERE plot_number = 'NW-E-058-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sherrell', 'Dee', 'Fisher', NULL, '1959-01-10', '1959-01-11', NULL
FROM plots WHERE plot_number = 'NW-E-058-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'George', 'Warren', 'Fisher,', NULL, '1957-05-01', '1957-05-02', 'III'
FROM plots WHERE plot_number = 'NW-E-058-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Velma', 'F.', 'Ward', NULL, '1910-07-13', '1964-07-17', NULL
FROM plots WHERE plot_number = 'NW-E-059-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Worth', 'B.', 'Ward', NULL, '1906-05-12', '1985-05-23', NULL
FROM plots WHERE plot_number = 'NW-E-059-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Sally', NULL, 'Kirby', 'Ward', '1943-12-10', '2022-01-04', NULL
FROM plots WHERE plot_number = 'NW-E-059-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thomas', 'Hoyle', 'Dosher', NULL, '1926-11-16', '2015-02-04', NULL
FROM plots WHERE plot_number = 'NW-E-060-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Linda', 'Elois', 'Dosher', NULL, '1959-08-27', '2016-01-05', NULL
FROM plots WHERE plot_number = 'NW-E-060-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Betty', NULL, 'Dosher', 'Monroe', '1931-06-23', NULL, NULL
FROM plots WHERE plot_number = 'NW-E-060-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Jackson', 'David', 'Crisco', NULL, '1930-07-13', '1986-08-14', NULL
FROM plots WHERE plot_number = 'NW-E-061-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lee', 'Melvin', 'Pendergraph', NULL, '1909-02-19', '1980-12-17', NULL
FROM plots WHERE plot_number = 'NW-E-061-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nell', 'B.', 'Pendergraph', NULL, '1909-07-21', '1972-02-18', NULL
FROM plots WHERE plot_number = 'NW-E-061-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Franklin', 'L.', 'Potter', NULL, '1916-07-02', '1986-10-16', NULL
FROM plots WHERE plot_number = 'NW-E-062-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Faye', NULL, 'Potter', 'Payne', '1918-11-05', '2004-05-05', NULL
FROM plots WHERE plot_number = 'NW-E-062-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Iris', NULL, 'Patti', 'Nell', '1935-07-10', '1972-09-07', NULL
FROM plots WHERE plot_number = 'NW-E-063-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Thedore', 'Frank', 'Patti,', NULL, '1954-03-14', '1978-01-04', ' Jr.'
FROM plots WHERE plot_number = 'NW-E-063-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Donald', 'Maggard,', NULL, '1949-01-01', '1968-01-01', 'Sr.'
FROM plots WHERE plot_number = 'NW-E-064-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Donald', 'Maggard', NULL, '1963-05-25', '2020-11-07', 'Jr.'
FROM plots WHERE plot_number = 'NW-E-064-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Weston', 'Gibson', 'Collins', NULL, '1880-01-01', '1966-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-065-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Lenora', 'Elizabeth', 'Collins', NULL, '1876-02-22', '1939-12-05', NULL
FROM plots WHERE plot_number = 'NW-E-065-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'William', 'Roger', 'Jenkins', NULL, '1911-12-24', '1982-12-21', NULL
FROM plots WHERE plot_number = 'NW-E-066-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elsie', NULL, 'Jenkins', 'Woodside', '1908-10-04', '1986-06-17', NULL
FROM plots WHERE plot_number = 'NW-E-066-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Wendy', 'Jo', 'Lewis', NULL, '1974-10-03', '1974-10-04', NULL
FROM plots WHERE plot_number = 'NW-E-066-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Nathan', 'Masil', 'Dunford', NULL, '1921-10-13', '1969-04-29', NULL
FROM plots WHERE plot_number = 'NW-E-067-4'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Clark', 'Powell', NULL, '1905-01-01', '1975-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-068-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Elizabeth', 'B.', 'Black', NULL, '1899-11-03', '1983-01-14', NULL
FROM plots WHERE plot_number = 'NW-E-068-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'James', 'Dewey', 'Melton', NULL, '1917-01-01', '1977-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-069-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Tressa', NULL, 'Smith', 'Griffith', '1967-03-03', '2009-05-20', NULL
FROM plots WHERE plot_number = 'NW-E-070-3'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'John', 'Samuel', 'Vaught', NULL, '1940-10-13', '2013-09-25', 'III'
FROM plots WHERE plot_number = 'NW-E-070-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Kimberly', 'Louise', 'Smith', NULL, '1967-03-10', '2005-12-03', NULL
FROM plots WHERE plot_number = 'NW-E-070-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Evelyn', 'J.', 'Nance', NULL, '1964-09-08', '1971-06-28', NULL
FROM plots WHERE plot_number = 'NW-E-070-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Gary', 'E.', 'Hunter', NULL, '1960-08-29', '1969-12-26', NULL
FROM plots WHERE plot_number = 'NW-E-070-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Robert', 'Lee', 'Lewis', NULL, '1954-03-01', '2016-11-16', NULL
FROM plots WHERE plot_number = 'NW-E-071-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Una', 'Tootsie', 'Smith', 'Potter', '1936-01-02', '2015-01-07', NULL
FROM plots WHERE plot_number = 'NW-E-071-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Charlotte', 'Mickey', 'Hart', 'LeClerc', '1933-06-08', '2006-10-05', NULL
FROM plots WHERE plot_number = 'NW-E-073-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Irene', 'V.', 'Hart', NULL, '1911-07-03', '1995-12-10', NULL
FROM plots WHERE plot_number = 'NW-E-073-6'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Otho', 'B.', 'Hart', NULL, '1907-12-19', '1977-02-06', NULL
FROM plots WHERE plot_number = 'NW-E-073-7'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arthur B. &', 'Otho   B.04-25-35', 'Hart', 'D. 6-29-2011', '1966-07-08', '2008-10-11', ' Jr'
FROM plots WHERE plot_number = 'NW-E-073-8'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Dan', 'E.', 'Davis', NULL, '1921-01-01', '1973-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-074-1'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Arabella', NULL, 'Davis', 'Price', '1928-01-21', '2014-08-26', NULL
FROM plots WHERE plot_number = 'NW-E-074-2'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Terrence', 'Keith', 'Davis', NULL, '1970-01-01', '1971-01-01', NULL
FROM plots WHERE plot_number = 'NW-E-074-8'
ON CONFLICT DO NOTHING;

