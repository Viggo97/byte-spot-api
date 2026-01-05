CREATE TABLE offers_technologies (
    offer_id INTEGER NOT NULL,
    technology_id INTEGER NOT NULL,
    PRIMARY KEY (offer_id, technology_id),
    FOREIGN KEY (offer_id) REFERENCES offers(id) ON DELETE CASCADE,
    FOREIGN KEY (technology_id) REFERENCES technologies(id) ON DELETE CASCADE
);