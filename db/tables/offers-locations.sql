CREATE TABLE offers_locations (
    offer_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    PRIMARY KEY (offer_id, location_id),
    FOREIGN KEY (offer_id) REFERENCES offers(id) ON DELETE CASCADE,
    FOREIGN KEY (location_id) REFERENCES locations(id) ON DELETE CASCADE
);