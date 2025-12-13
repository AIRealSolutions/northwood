-- Northwood Cemetery Database Migration
-- Run this in your Supabase SQL Editor

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================
-- TABLE: plots
-- ============================================
CREATE TABLE plots (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    plot_number VARCHAR(50) NOT NULL UNIQUE,
    section VARCHAR(10) NOT NULL,
    row_number INTEGER NOT NULL,
    plot_position INTEGER NOT NULL,
    plot_type VARCHAR(20) NOT NULL CHECK (plot_type IN ('standard', 'cremation', 'hybrid')),
    status VARCHAR(20) NOT NULL DEFAULT 'available' CHECK (status IN ('available', 'reserved', 'occupied')),
    size_width DECIMAL(5,2),
    size_length DECIMAL(5,2),
    price DECIMAL(10,2),
    owner_name VARCHAR(255),
    owner_contact VARCHAR(255),
    purchase_date DATE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Indexes for plots
CREATE INDEX idx_plots_section ON plots(section);
CREATE INDEX idx_plots_status ON plots(status);
CREATE INDEX idx_plots_plot_number ON plots(plot_number);

-- ============================================
-- TABLE: deceased_records
-- ============================================
CREATE TABLE deceased_records (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    plot_id UUID REFERENCES plots(id) ON DELETE SET NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    maiden_name VARCHAR(100),
    birth_date DATE,
    death_date DATE,
    burial_date DATE,
    age_at_death INTEGER,
    gender VARCHAR(20),
    veteran_status BOOLEAN DEFAULT FALSE,
    military_branch VARCHAR(50),
    obituary TEXT,
    epitaph TEXT,
    next_of_kin VARCHAR(255),
    funeral_home VARCHAR(255),
    burial_permit_number VARCHAR(100),
    death_certificate_number VARCHAR(100),
    notes TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Indexes for deceased_records
CREATE INDEX idx_deceased_last_name ON deceased_records(last_name);
CREATE INDEX idx_deceased_death_date ON deceased_records(death_date);
CREATE INDEX idx_deceased_plot_id ON deceased_records(plot_id);

-- ============================================
-- TABLE: burial_services
-- ============================================
CREATE TABLE burial_services (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    plot_id UUID REFERENCES plots(id) ON DELETE SET NULL,
    deceased_id UUID REFERENCES deceased_records(id) ON DELETE CASCADE,
    service_date DATE NOT NULL,
    service_type VARCHAR(50) NOT NULL CHECK (service_type IN ('burial', 'cremation', 'memorial')),
    officiant_name VARCHAR(255),
    funeral_home VARCHAR(255),
    grave_opening_cost DECIMAL(10,2),
    grave_closing_cost DECIMAL(10,2),
    total_cost DECIMAL(10,2),
    payment_status VARCHAR(20) DEFAULT 'pending' CHECK (payment_status IN ('pending', 'paid', 'partial')),
    notes TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Indexes for burial_services
CREATE INDEX idx_services_date ON burial_services(service_date);
CREATE INDEX idx_services_plot_id ON burial_services(plot_id);

-- ============================================
-- TABLE: plot_reservations
-- ============================================
CREATE TABLE plot_reservations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    plot_id UUID REFERENCES plots(id) ON DELETE CASCADE,
    reserver_name VARCHAR(255) NOT NULL,
    reserver_email VARCHAR(255),
    reserver_phone VARCHAR(50),
    reservation_date DATE NOT NULL DEFAULT CURRENT_DATE,
    expiration_date DATE NOT NULL,
    deposit_amount DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active', 'expired', 'converted')),
    notes TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Indexes for plot_reservations
CREATE INDEX idx_reservations_plot_id ON plot_reservations(plot_id);
CREATE INDEX idx_reservations_status ON plot_reservations(status);

-- ============================================
-- TABLE: map_coordinates
-- ============================================
CREATE TABLE map_coordinates (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    plot_id UUID REFERENCES plots(id) ON DELETE CASCADE UNIQUE,
    x_coordinate DECIMAL(10,4) NOT NULL,
    y_coordinate DECIMAL(10,4) NOT NULL,
    width DECIMAL(10,4) NOT NULL,
    height DECIMAL(10,4) NOT NULL,
    rotation DECIMAL(5,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Index for map_coordinates
CREATE INDEX idx_coordinates_plot_id ON map_coordinates(plot_id);

-- ============================================
-- FUNCTIONS
-- ============================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Function to calculate age at death
CREATE OR REPLACE FUNCTION calculate_age_at_death(birth_date DATE, death_date DATE)
RETURNS INTEGER AS $$
BEGIN
    IF birth_date IS NULL OR death_date IS NULL THEN
        RETURN NULL;
    END IF;
    RETURN EXTRACT(YEAR FROM AGE(death_date, birth_date));
END;
$$ LANGUAGE plpgsql;

-- Function to update plot status when deceased record is added
CREATE OR REPLACE FUNCTION update_plot_status_on_burial()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.plot_id IS NOT NULL THEN
        UPDATE plots 
        SET status = 'occupied', updated_at = NOW()
        WHERE id = NEW.plot_id AND status != 'occupied';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ============================================
-- TRIGGERS
-- ============================================

-- Triggers for updated_at
CREATE TRIGGER update_plots_updated_at BEFORE UPDATE ON plots
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_deceased_records_updated_at BEFORE UPDATE ON deceased_records
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_burial_services_updated_at BEFORE UPDATE ON burial_services
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_plot_reservations_updated_at BEFORE UPDATE ON plot_reservations
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_map_coordinates_updated_at BEFORE UPDATE ON map_coordinates
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- Trigger to auto-update plot status
CREATE TRIGGER auto_update_plot_status AFTER INSERT ON deceased_records
    FOR EACH ROW EXECUTE FUNCTION update_plot_status_on_burial();

-- Trigger to auto-calculate age at death
CREATE OR REPLACE FUNCTION auto_calculate_age()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.birth_date IS NOT NULL AND NEW.death_date IS NOT NULL AND NEW.age_at_death IS NULL THEN
        NEW.age_at_death := calculate_age_at_death(NEW.birth_date, NEW.death_date);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER calculate_age_trigger BEFORE INSERT OR UPDATE ON deceased_records
    FOR EACH ROW EXECUTE FUNCTION auto_calculate_age();

-- ============================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================

-- Enable RLS on all tables
ALTER TABLE plots ENABLE ROW LEVEL SECURITY;
ALTER TABLE deceased_records ENABLE ROW LEVEL SECURITY;
ALTER TABLE burial_services ENABLE ROW LEVEL SECURITY;
ALTER TABLE plot_reservations ENABLE ROW LEVEL SECURITY;
ALTER TABLE map_coordinates ENABLE ROW LEVEL SECURITY;

-- Public read access policies
CREATE POLICY "Public can view plots" ON plots FOR SELECT USING (true);
CREATE POLICY "Public can view deceased records" ON deceased_records FOR SELECT USING (true);
CREATE POLICY "Public can view burial services" ON burial_services FOR SELECT USING (true);
CREATE POLICY "Public can view map coordinates" ON map_coordinates FOR SELECT USING (true);

-- Authenticated users can insert/update/delete (for admin access)
CREATE POLICY "Authenticated users can manage plots" ON plots 
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can manage deceased records" ON deceased_records 
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can manage burial services" ON burial_services 
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can manage reservations" ON plot_reservations 
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated users can manage coordinates" ON map_coordinates 
    FOR ALL USING (auth.role() = 'authenticated');

-- ============================================
-- SEED DATA
-- ============================================

-- Insert sample plots for Section G
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, price, owner_name, purchase_date) VALUES
('G-A-001', 'G', 1, 1, 'standard', 'occupied', 4.0, 10.0, 1500.00, 'Marlowe Family', '1936-09-01'),
('G-A-002', 'G', 1, 2, 'standard', 'occupied', 4.0, 10.0, 1500.00, 'Marlowe Family', '1936-09-01');

-- Insert sample plot for Section H
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, price, owner_name, purchase_date) VALUES
('H-C-015', 'H', 3, 15, 'standard', 'occupied', 4.0, 10.0, 1800.00, 'Smith Family', '1994-11-20');

-- Get plot IDs for deceased records
DO $$
DECLARE
    plot_g_001 UUID;
    plot_g_002 UUID;
    plot_h_015 UUID;
BEGIN
    SELECT id INTO plot_g_001 FROM plots WHERE plot_number = 'G-A-001';
    SELECT id INTO plot_g_002 FROM plots WHERE plot_number = 'G-A-002';
    SELECT id INTO plot_h_015 FROM plots WHERE plot_number = 'H-C-015';

    -- Insert sample deceased records
    INSERT INTO deceased_records (plot_id, first_name, middle_name, last_name, birth_date, death_date, burial_date, gender) VALUES
    (plot_g_001, 'James', 'Richard', 'Marlowe', '1878-03-05', '1936-09-03', '1936-09-05', 'Male'),
    (plot_g_002, 'Mattie', NULL, 'Marlowe', '1887-04-23', '1982-01-09', '1982-01-12', 'Female'),
    (plot_h_015, 'Eleanor', 'Jane', 'Smith', '1902-06-12', '1994-11-28', '1994-12-01', 'Female');
END $$;

-- Insert some available plots for demonstration
INSERT INTO plots (plot_number, section, row_number, plot_position, plot_type, status, size_width, size_length, price) VALUES
('A-A-001', 'A', 1, 1, 'standard', 'available', 4.0, 10.0, 2000.00),
('A-A-002', 'A', 1, 2, 'standard', 'available', 4.0, 10.0, 2000.00),
('A-A-003', 'A', 1, 3, 'standard', 'available', 4.0, 10.0, 2000.00),
('B-B-001', 'B', 2, 1, 'cremation', 'available', 2.0, 2.0, 800.00),
('B-B-002', 'B', 2, 2, 'cremation', 'available', 2.0, 2.0, 800.00),
('C-A-001', 'C', 1, 1, 'hybrid', 'available', 4.0, 10.0, 2200.00);

-- Insert sample map coordinates (you'll need to adjust these based on your actual map)
DO $$
DECLARE
    plot_rec RECORD;
    base_x DECIMAL := 50;
    base_y DECIMAL := 50;
    spacing_x DECIMAL := 60;
    spacing_y DECIMAL := 120;
BEGIN
    FOR plot_rec IN SELECT id, section, row_number, plot_position, plot_type FROM plots LOOP
        INSERT INTO map_coordinates (plot_id, x_coordinate, y_coordinate, width, height) VALUES
        (
            plot_rec.id,
            base_x + (plot_rec.plot_position - 1) * spacing_x + (ASCII(plot_rec.section) - ASCII('A')) * 400,
            base_y + (plot_rec.row_number - 1) * spacing_y,
            CASE plot_rec.plot_type 
                WHEN 'cremation' THEN 30
                ELSE 50
            END,
            CASE plot_rec.plot_type 
                WHEN 'cremation' THEN 30
                ELSE 100
            END
        );
    END LOOP;
END $$;

-- ============================================
-- VIEWS FOR COMMON QUERIES
-- ============================================

-- View: Complete plot information with deceased records
CREATE OR REPLACE VIEW plot_details AS
SELECT 
    p.id,
    p.plot_number,
    p.section,
    p.row_number,
    p.plot_position,
    p.plot_type,
    p.status,
    p.owner_name,
    d.first_name,
    d.middle_name,
    d.last_name,
    d.birth_date,
    d.death_date,
    d.burial_date,
    mc.x_coordinate,
    mc.y_coordinate,
    mc.width,
    mc.height
FROM plots p
LEFT JOIN deceased_records d ON p.id = d.plot_id
LEFT JOIN map_coordinates mc ON p.id = mc.plot_id;

-- View: Available plots summary
CREATE OR REPLACE VIEW available_plots_summary AS
SELECT 
    section,
    plot_type,
    COUNT(*) as available_count,
    AVG(price) as avg_price,
    MIN(price) as min_price,
    MAX(price) as max_price
FROM plots
WHERE status = 'available'
GROUP BY section, plot_type
ORDER BY section, plot_type;

COMMENT ON TABLE plots IS 'Cemetery plot/burial space information';
COMMENT ON TABLE deceased_records IS 'Records of deceased individuals buried in cemetery';
COMMENT ON TABLE burial_services IS 'Burial service arrangements and history';
COMMENT ON TABLE plot_reservations IS 'Plot reservation management';
COMMENT ON TABLE map_coordinates IS 'Visual coordinates for interactive map display';
