-- Northwood Cemetery Deceased Records Data Migration
-- Generated from cemetery records CSV

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
SELECT id, 'James', 'Michael', 'Davis', NULL, '1957-11-21', '1958-21-20', NULL
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
SELECT id, 'Martha', 'L.', 'Joyce', NULL, '0000-01-01', '1988-12-15', NULL
FROM plots WHERE plot_number = 'NW-E-022-5'
ON CONFLICT DO NOTHING;

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Eugene', 'W.', 'Joyce', NULL, '0000-01-01', '1978-09-04', NULL
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

INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, maiden_name, birth_date, death_date, notes)
SELECT id, 'Mary', 'Betty', 'Cochran', 'McGlammery', '1938-04-04', '2020-02-22', NULL
FROM plots WHERE plot_number = 'NW-C-060-8b'
ON CONFLICT DO NOTHING;

