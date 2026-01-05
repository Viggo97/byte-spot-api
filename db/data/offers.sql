INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (1,
    'Python Developer',
    ARRAY['employmentContract', 'b2b', 'mandateContract']::offer_employment_type[],
    ARRAY['remote']::offer_work_mode_type[],
    ARRAY['mid']::offer_seniority_type[],
    12000,
    16000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (1, 5);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (1, 9),
    (1, 17),
    (1, 18);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (1, 11),
    (1, 12);

-------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (2,
    'Junior Python Developer',
    ARRAY['employmentContract', 'b2b']::offer_employment_type[],
    ARRAY['remote', 'hybrid']::offer_work_mode_type[],
    ARRAY['senior', 'expert']::offer_seniority_type[],
    17000,
    20000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (2, 3);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (2, 3);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (2, 11);
    
-------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (3,
    'Senior JavaScript Developer',
    ARRAY['employmentContract']::offer_employment_type[],
    ARRAY['onsite']::offer_work_mode_type[],
    ARRAY['intern', 'junior']::offer_seniority_type[],
    7000,
    9000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (3, 2);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (3, 6),
    (3, 8),
    (3, 12),
    (3, 17);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (3, 1),
    (3, 8),
    (3, 12),
    (3, 14);

-------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (4,
    'JavaScript Developer',
    ARRAY['employmentContract', 'b2b', 'mandateContract', 'specificTaskContract']::offer_employment_type[],
    ARRAY['remote', 'hybrid']::offer_work_mode_type[],
    ARRAY['mid', 'senior', 'expert']::offer_seniority_type[],
    NULL,
    NULL,
    15000
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (4, 6);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (4, 3),
    (4, 6);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (4, 2),
    (4, 8),
    (4, 10),
    (4, 12),
    (4, 14);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (5,
    'Senior .Net Developer',
    ARRAY['employmentContract', 'b2b']::offer_employment_type[],
    ARRAY['remote']::offer_work_mode_type[],
    ARRAY['senior', 'expert']::offer_seniority_type[],
    15500,
    19000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (5, 5);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5),
    (5, 6),
    (5, 7),
    (5, 8);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (6,
    'Java Developer',
    ARRAY['specificTaskContract', 'mandateContract']::offer_employment_type[],
    ARRAY['onsite', 'hybrid']::offer_work_mode_type[],
    ARRAY['mid']::offer_seniority_type[],
    NULL,
    NULL,
    14500
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (6, 7);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (6, 11),
    (6, 15);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (6, 7),
    (6, 12),
    (6, 13);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (7,
    'Senior Java Developer',
    ARRAY['specificTaskContract', 'b2b']::offer_employment_type[],
    ARRAY['remote']::offer_work_mode_type[],
    ARRAY['expert']::offer_seniority_type[],
    16500,
    18000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (7, 7);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (7, 12),
    (7, 13);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (7, 7),
    (7, 9);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (8,
    'Junior .Net Developer',
    ARRAY['specificTaskContract']::offer_employment_type[],
    ARRAY['onsite']::offer_work_mode_type[],
    ARRAY['intern']::offer_seniority_type[],
    6500,
    8000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (8, 1);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (8, 1),
    (8, 8);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (8, 5),
    (8, 12);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (9,
    'Junior JavaScirpt Developer',
    ARRAY['specificTaskContract', 'employmentContract']::offer_employment_type[],
    ARRAY['hybrid']::offer_work_mode_type[],
    ARRAY['junior', 'mid']::offer_seniority_type[],
    9000,
    12000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (9, 2);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (9, 5),
    (9, 6),
    (9, 8),
    (9, 12); 

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (9, 8);

 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (10,
    'Senior Rust Developer',
    ARRAY['b2b']::offer_employment_type[],
    ARRAY['remote']::offer_work_mode_type[],
    ARRAY['expert']::offer_seniority_type[],
    19000,
    22000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (10, 3);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (10, 17);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (10, 6), 
    (10, 13);    
 -------------------------------------------------

INSERT INTO offers (id, title, employment_type, work_mode, seniority, salary_min, salary_max, salary_fixed) VALUES 
    (11,
    'Rust Developer',
    ARRAY['employmentContract', 'b2b']::offer_employment_type[],
    ARRAY['hybrid']::offer_work_mode_type[],
    ARRAY['mid']::offer_seniority_type[],
    17000,
    19000,
    NULL
    );

INSERT INTO offers_companies (offer_id, company_id) VALUES 
    (11, 3);

INSERT INTO offers_locations (offer_id, location_id) VALUES 
    (11, 17);

INSERT INTO offers_technologies (offer_id, technology_id) VALUES 
    (11, 6), 
    (11, 13); 