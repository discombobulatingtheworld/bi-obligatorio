CREATE TABLE datawarehouse.DT_Constructor (
    Constructor_Id NUMERIC(32, 0),
    Constructor_Nombre VARCHAR(32),
    Constructor_Nacionalidad VARCHAR(32)
);

CREATE INDEX idx_DT_Constructor_lookup ON datawarehouse.DT_Constructor(
    Constructor_Id,
    Constructor_Nombre,
    Constructor_Nacionalidad
);