CREATE TABLE datawarehouse.FT_Clasificatoria (
    Clasificatoria_Id NUMERIC(32, 0),
    Clasificatoria_CarreraId NUMERIC(32, 0),
    Clasificatoria_ConductorId NUMERIC(32, 0),
    Clasificatoria_Posicion NUMERIC(32, 0)
);

CREATE INDEX idx_FT_Clasificatoria_lookup ON datawarehouse.FT_Clasificatoria(
    Clasificatoria_Id,
    Clasificatoria_CarreraId,
    Clasificatoria_ConductorId,
    Clasificatoria_Posicion
);