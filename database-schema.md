# Northwood Cemetery Database Schema

## Overview
This document outlines the database schema for the Northwood Cemetery Management System using Supabase (PostgreSQL).

## Tables

### 1. plots
Stores information about cemetery plots/burial spaces.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | UUID | PRIMARY KEY, DEFAULT uuid_generate_v4() | Unique plot identifier |
| plot_number | VARCHAR(50) | NOT NULL, UNIQUE | Plot identification number (e.g., "A-001") |
| section | VARCHAR(10) | NOT NULL | Cemetery section (A-H) |
| row_number | INTEGER | NOT NULL | Row number within section |
| plot_position | INTEGER | NOT NULL | Position within row |
| plot_type | VARCHAR(20) | NOT NULL | Type: 'standard', 'cremation', 'hybrid' |
| status | VARCHAR(20) | NOT NULL, DEFAULT 'available' | Status: 'available', 'reserved', 'occupied' |
| size_width | DECIMAL(5,2) | | Plot width in feet |
| size_length | DECIMAL(5,2) | | Plot length in feet |
| price | DECIMAL(10,2) | | Current price for plot |
| owner_name | VARCHAR(255) | | Name of plot owner |
| owner_contact | VARCHAR(255) | | Contact information |
| purchase_date | DATE | | Date plot was purchased |
| notes | TEXT | | Additional notes |
| created_at | TIMESTAMP | DEFAULT NOW() | Record creation timestamp |
| updated_at | TIMESTAMP | DEFAULT NOW() | Last update timestamp |

**Indexes:**
- `idx_plots_section` on `section`
- `idx_plots_status` on `status`
- `idx_plots_plot_number` on `plot_number`

---

### 2. deceased_records
Stores information about deceased individuals buried in the cemetery.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | UUID | PRIMARY KEY, DEFAULT uuid_generate_v4() | Unique record identifier |
| plot_id | UUID | FOREIGN KEY REFERENCES plots(id) | Associated plot |
| first_name | VARCHAR(100) | NOT NULL | First name |
| middle_name | VARCHAR(100) | | Middle name |
| last_name | VARCHAR(100) | NOT NULL | Last name |
| maiden_name | VARCHAR(100) | | Maiden name if applicable |
| birth_date | DATE | | Date of birth |
| death_date | DATE | | Date of death |
| burial_date | DATE | | Date of burial |
| age_at_death | INTEGER | | Age at time of death |
| gender | VARCHAR(20) | | Gender |
| veteran_status | BOOLEAN | DEFAULT FALSE | Military veteran status |
| military_branch | VARCHAR(50) | | Branch of military service |
| obituary | TEXT | | Obituary text |
| epitaph | TEXT | | Epitaph inscription |
| next_of_kin | VARCHAR(255) | | Next of kin contact |
| funeral_home | VARCHAR(255) | | Funeral home name |
| burial_permit_number | VARCHAR(100) | | Official burial permit number |
| death_certificate_number | VARCHAR(100) | | Death certificate number |
| notes | TEXT | | Additional notes |
| created_at | TIMESTAMP | DEFAULT NOW() | Record creation timestamp |
| updated_at | TIMESTAMP | DEFAULT NOW() | Last update timestamp |

**Indexes:**
- `idx_deceased_last_name` on `last_name`
- `idx_deceased_death_date` on `death_date`
- `idx_deceased_plot_id` on `plot_id`

---

### 3. burial_services
Tracks burial service arrangements and history.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | UUID | PRIMARY KEY, DEFAULT uuid_generate_v4() | Unique service identifier |
| plot_id | UUID | FOREIGN KEY REFERENCES plots(id) | Associated plot |
| deceased_id | UUID | FOREIGN KEY REFERENCES deceased_records(id) | Associated deceased record |
| service_date | DATE | NOT NULL | Date of service |
| service_type | VARCHAR(50) | NOT NULL | Type: 'burial', 'cremation', 'memorial' |
| officiant_name | VARCHAR(255) | | Name of officiant |
| funeral_home | VARCHAR(255) | | Funeral home conducting service |
| grave_opening_cost | DECIMAL(10,2) | | Cost of grave opening |
| grave_closing_cost | DECIMAL(10,2) | | Cost of grave closing |
| total_cost | DECIMAL(10,2) | | Total service cost |
| payment_status | VARCHAR(20) | DEFAULT 'pending' | Status: 'pending', 'paid', 'partial' |
| notes | TEXT | | Service notes |
| created_at | TIMESTAMP | DEFAULT NOW() | Record creation timestamp |
| updated_at | TIMESTAMP | DEFAULT NOW() | Last update timestamp |

**Indexes:**
- `idx_services_date` on `service_date`
- `idx_services_plot_id` on `plot_id`

---

### 4. plot_reservations
Manages plot reservations before purchase.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | UUID | PRIMARY KEY, DEFAULT uuid_generate_v4() | Unique reservation identifier |
| plot_id | UUID | FOREIGN KEY REFERENCES plots(id) | Reserved plot |
| reserver_name | VARCHAR(255) | NOT NULL | Name of person reserving |
| reserver_email | VARCHAR(255) | | Email contact |
| reserver_phone | VARCHAR(50) | | Phone contact |
| reservation_date | DATE | NOT NULL, DEFAULT CURRENT_DATE | Date of reservation |
| expiration_date | DATE | NOT NULL | Reservation expiration date |
| deposit_amount | DECIMAL(10,2) | | Deposit paid |
| status | VARCHAR(20) | DEFAULT 'active' | Status: 'active', 'expired', 'converted' |
| notes | TEXT | | Reservation notes |
| created_at | TIMESTAMP | DEFAULT NOW() | Record creation timestamp |
| updated_at | TIMESTAMP | DEFAULT NOW() | Last update timestamp |

**Indexes:**
- `idx_reservations_plot_id` on `plot_id`
- `idx_reservations_status` on `status`

---

### 5. map_coordinates
Stores visual coordinates for interactive map display.

| Column | Type | Constraints | Description |
|--------|------|-------------|-------------|
| id | UUID | PRIMARY KEY, DEFAULT uuid_generate_v4() | Unique coordinate identifier |
| plot_id | UUID | FOREIGN KEY REFERENCES plots(id), UNIQUE | Associated plot |
| x_coordinate | DECIMAL(10,4) | NOT NULL | X position on map (pixels or percentage) |
| y_coordinate | DECIMAL(10,4) | NOT NULL | Y position on map (pixels or percentage) |
| width | DECIMAL(10,4) | NOT NULL | Width on map |
| height | DECIMAL(10,4) | NOT NULL | Height on map |
| rotation | DECIMAL(5,2) | DEFAULT 0 | Rotation angle in degrees |
| created_at | TIMESTAMP | DEFAULT NOW() | Record creation timestamp |
| updated_at | TIMESTAMP | DEFAULT NOW() | Last update timestamp |

**Indexes:**
- `idx_coordinates_plot_id` on `plot_id`

---

## Row Level Security (RLS) Policies

### Public Read Access
- All tables should allow public READ access for viewing cemetery information
- This enables the public website to display plot availability and records

### Authenticated Write Access
- Only authenticated users (cemetery administrators) can INSERT, UPDATE, DELETE
- Implement role-based access control for different admin levels

## SQL Functions

### update_plot_status()
Trigger function to automatically update plot status when a deceased record is added.

### calculate_age_at_death()
Function to calculate age at death from birth and death dates.

### check_plot_availability()
Function to verify plot is available before reservation or purchase.

## Initial Data Requirements

1. **Sections**: A through H
2. **Plot Types**: Standard, Cremation, Hybrid
3. **Initial Status**: Most plots set to 'available'
4. **Sample Data**: Include the 3 existing records from the current UI

## Next Steps

1. Create Supabase project
2. Run SQL migrations to create tables
3. Set up RLS policies
4. Create database functions and triggers
5. Seed initial data
6. Generate TypeScript types for Next.js integration
