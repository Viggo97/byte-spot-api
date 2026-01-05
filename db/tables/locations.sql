CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE locations ADD CONSTRAINT unique_location_name UNIQUE (name);
CREATE INDEX idx_locations_name ON locations(name);
