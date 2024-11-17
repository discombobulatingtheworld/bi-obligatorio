CREATE TABLE staging.constructor_standings (
    constructorStandingsId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    constructorId NUMERIC(32, 0),
    points NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    positionText VARCHAR(16),
    wins NUMERIC(32, 0)
);