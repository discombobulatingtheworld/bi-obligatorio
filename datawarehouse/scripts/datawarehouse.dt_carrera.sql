CREATE TABLE datawarehouse.DT_Carrera (
    Carrera_Id NUMERIC(32, 0),
    Carrera_Temporada NUMERIC(32, 0),
    Carrera_CircuitoId INTEGER,
    Carrera_Nombre VARCHAR(64),
    Carrera_FechaSK DOUBLE PRECISION
);

CREATE INDEX idx_DT_Carrera_lookup ON datawarehouse.DT_Carrera(
    Carrera_Id,
    Carrera_Temporada,
    Carrera_CircuitoId,
    Carrera_Nombre,
    Carrera_FechaSK
);