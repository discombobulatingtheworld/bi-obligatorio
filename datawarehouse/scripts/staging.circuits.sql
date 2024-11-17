CREATE TABLE IF NOT EXISTS staging.circuits (
    circuitId NUMERIC(32, 0),
    circuitRef VARCHAR(64),
    "name" VARCHAR(64),
    "location" VARCHAR(64),
    country VARCHAR(32),
    lat NUMERIC(24, 0),
    lng NUMERIC(24, 0),
    alt NUMERIC(24, 0),
    url VARCHAR(128)
);