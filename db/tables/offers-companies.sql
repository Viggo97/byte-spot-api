CREATE TABLE offers_companies (
    offer_id INTEGER NOT NULL,
    company_id INTEGER NOT NULL,
    PRIMARY KEY (offer_id, company_id),
    FOREIGN KEY (offer_id) REFERENCES offers(id) ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE
);