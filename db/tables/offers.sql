CREATE TYPE offer_employment_type AS ENUM ('employmentContract', 'b2b', 'mandateContract', 'specificTaskContract');
CREATE TYPE offer_work_mode_type  AS ENUM ('remote', 'hybrid', 'onsite');
CREATE TYPE offer_seniority_type  AS ENUM ('intern', 'junior', 'mid', 'senior', 'expert');


CREATE TABLE offers (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    employment_type offer_employment_type[] NOT NULL,
    work_mode offer_work_mode_type[] NOT NULL,
    seniority offer_seniority_type[] NOT NULL,
    salary_min INTEGER CHECK (salary_min >= 0),
    salary_max INTEGER CHECK (salary_max >= 0),
    salary_fixed INTEGER CHECK (salary_fixed >= 0)
);
