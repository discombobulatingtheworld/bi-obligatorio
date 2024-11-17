CREATE TABLE staging.pit_stops (
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    stop NUMERIC(32, 0),
    lap NUMERIC(32, 0),
    "time" VARCHAR(16),
    duration VARCHAR(16),
    milliseconds NUMERIC(32, 0)
);