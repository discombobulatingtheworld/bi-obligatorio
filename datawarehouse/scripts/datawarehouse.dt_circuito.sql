CREATE TABLE datawarehouse.DT_Circuito (
    Circuito_Id NUMERIC(32, 0),
    Circuito_Nombre VARCHAR(64),
    Circuito_Pais VARCHAR(32),
    circuitid NUMERIC(32, 0),
    "name" VARCHAR(64),
    country VARCHAR(32)
);

CREATE INDEX idx_DT_Circuito_lookup ON datawarehouse.DT_Circuito(Circuito_Id, Circuito_Nombre, Circuito_Pais);