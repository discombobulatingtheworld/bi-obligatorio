CREATE TABLE staging.drivers (
    driverId NUMERIC(32, 0),
    driverRef VARCHAR(32),
    "number" VARCHAR(8),
    code VARCHAR(8),
    forename VARCHAR(32),
    surname VARCHAR(32),
    dob TIMESTAMP,
    nationality VARCHAR(32),
    url VARCHAR(128)
);