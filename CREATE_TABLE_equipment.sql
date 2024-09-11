CREATE TABLE equipment ( id SERIAL PRIMARY KEY, name VARCHAR(255) NOT NULL, description JSON, department_id INTEGER, FOREIGN KEY (department_id) REFERENCES departments(department_id) );

-- Equipamentos com a marca "Dell"
INSERT INTO equipment (name, description, department_id)
VALUES
    ('Laptop', '{"brand": "Dell", "model": "XPS 17", "specs": {"ram": "32GB", "cpu": "i9"}}', 10),
    ('Desktop', '{"brand": "Dell", "model": "Optiplex 7080", "specs": {"ram": "16GB", "cpu": "i5"}}', 10);

-- Equipamentos com a marca "HP"
INSERT INTO equipment (name, description, department_id)
VALUES
    ('All-in-One Printer', '{"brand": "HP", "model": "OfficeJet Pro", "features": {"color": true, "duplex": true}}', 20),
    ('Fax Machine', '{"brand": "HP", "model": "LaserJet 5000", "features": {"color": false, "duplex": false}}', 20);

-- Equipamentos com a marca "Samsung"
INSERT INTO equipment (name, description, department_id)
VALUES
    ('Monitor', '{"brand": "Samsung", "model": "Curved 32 inch", "resolution": "2560x1440"}', 10),
    ('Monitor', '{"brand": "Samsung", "model": "Odyssey G7", "resolution": "2560x1440", "features": {"curved": true}}', 10);

-- Equipamentos com a marca "Logitech"
INSERT INTO equipment (name, description, department_id)
VALUES
    ('Mouse', '{"brand": "Logitech", "model": "MX Master 3", "type": "Wireless"}', 30),
    ('Keyboard', '{"brand": "Logitech", "model": "G915", "type": "Mechanical"}', 30);

-- Equipamentos com a marca "Herman Miller"
INSERT INTO equipment (name, description, department_id)
VALUES
    ('Office Chair', '{"brand": "Herman Miller", "model": "Sayl", "adjustable": true}', 20),
    ('Office Chair', '{"brand": "Herman Miller", "model": "Embody", "features": {"ergonomic": true, "adjustable": true}}', 20);

