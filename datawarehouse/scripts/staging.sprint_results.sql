CREATE TABLE IF NOT EXISTS staging.sprint_results (
  resultId NUMERIC(32, 0),
  raceId NUMERIC(32, 0),
  driverId NUMERIC(32, 0),
  constructorId NUMERIC(32, 0),
  "number" NUMERIC(32, 0),
  grid NUMERIC(32, 0),
  "position" VARCHAR(8),
  positionText VARCHAR(8),
  positionOrder NUMERIC(32, 0),
  points NUMERIC(32, 0),
  laps NUMERIC(32, 0),
  "time" VARCHAR(16),
  milliseconds VARCHAR(16),
  fastestLap VARCHAR(8),
  fastestLapTime VARCHAR(16),
  statusId NUMERIC(32, 0)
);