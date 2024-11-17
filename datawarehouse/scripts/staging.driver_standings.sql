CREATE TABLE IF NOT EXISTS staging.driver_standings (
    driverStandingsId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    points NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    positionText VARCHAR(8),
    wins NUMERIC(32, 0)
);