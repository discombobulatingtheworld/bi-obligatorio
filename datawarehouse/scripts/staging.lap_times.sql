CREATE TABLE staging.lap_times (
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    lap NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    "time" VARCHAR(32),
    milliseconds NUMERIC(32, 0)
);