# Northwood Cemetery Data Migration

This directory contains SQL migration scripts and source CSV files for populating the Northwood Cemetery database.

## Data Summary

| Category | Count |
|----------|-------|
| Total Plots | 5,149 |
| Occupied Plots | 2,031 |
| Available Plots | 3,118 |
| Deceased Records | 2,031 |
| Owner Records | 1,388 |

### Plots by Section

| Section | Plot Count |
|---------|------------|
| Section A | 578 |
| Section B | 592 |
| Section C | 593 |
| Section D | 592 |
| Section E | 592 |
| Section F | 296 |
| Section G | 871 |
| Section H | 1,035 |

## Files

### Source Data (CSV)

- **cemetery-records.csv** - Original cemetery records with plot and deceased information
- **cemetery-owners.csv** - Plot ownership records with contact information

### SQL Migration Scripts

- **supabase-migration.sql** - Database schema creation (tables, indexes, triggers, RLS policies)
- **seed-all-data.sql** - Complete data migration (plots + deceased records)
- **seed-plots.sql** - Plots data only
- **seed-deceased.sql** - Deceased records only

## Migration Order

Run the SQL scripts in this order:

1. **supabase-migration.sql** - Creates the database schema
2. **seed-all-data.sql** - Populates all data (or run seed-plots.sql then seed-deceased.sql separately)

## Plot Number Format

Plot numbers follow the format: `NW-{Section}-{Lot}-{Position}`

- **NW** - Northwood Cemetery prefix
- **Section** - Cemetery section (A through H)
- **Lot** - Lot number within section (001, 002, etc.)
- **Position** - Position within lot (1-8, with some having a/b suffixes for cremation spots)

Example: `NW-A-001-3` = Northwood Cemetery, Section A, Lot 001, Position 3

## Data Fields

### Plots Table
- plot_number, section, row_number, plot_position
- plot_type (standard/cremation/hybrid)
- status (available/reserved/occupied)
- owner_name, owner_contact, purchase_date
- size_width, size_length, price

### Deceased Records Table
- first_name, middle_name, last_name, maiden_name
- birth_date, death_date
- Associated plot_id (foreign key)

## Notes

- Dates with unknown month/day (e.g., "1933") are stored as January 1st of that year
- Invalid dates (e.g., "00/00/1933") are normalized to valid dates
- Owner information is associated with the lot level, not individual plots
- "Not For Sale" lots have been excluded from owner records

## Generated

Migration scripts generated on: December 30, 2025
