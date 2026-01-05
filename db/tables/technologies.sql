CREATE TABLE technologies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    svg_icon TEXT NOT NULL
);

ALTER TABLE technologies ADD CONSTRAINT unique_technology_name UNIQUE (name);
CREATE INDEX idx_technologies_name ON technologies(name);
