CREATE TABLE companies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE companies ADD CONSTRAINT unique_company_name UNIQUE (name);
CREATE INDEX idx_companies_name ON companies(name);
