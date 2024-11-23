CREATE TABLE datawarehouse.DT_Conductor (
    Conductor_Id NUMERIC(32, 0),
    Conductor_Nombre VARCHAR(32),
    Conductor_Apellido VARCHAR(32),
    Conductor_Nacionalidad VARCHAR(32),
    driverid NUMERIC(32, 0),
    forename VARCHAR(32),
    surname VARCHAR(32),
    nationality VARCHAR(32)
);

CREATE INDEX idx_DT_Conductor_lookup ON datawarehouse.DT_Conductor(
    Conductor_Id,
    Conductor_Nombre,
    Conductor_Apellido,
    Conductor_Nacionalidad
);