CREATE TABLE datawarehouse.FT_ResultadoConductor (
    ResultadoConductor_Id NUMERIC(32, 0),
    ResultadoConductor_CarreraId NUMERIC(32, 0),
    ResultadoConductor_ConductorId NUMERIC(32, 0),
    ResultadoConductor_Posicion VARCHAR(8),
    ResultadoConductor_Puntos NUMERIC(32, 0),
    ResultadoConductor_Vueltas NUMERIC(32, 0),
    ResultadoConductor_Milisegundos VARCHAR(16),
    ResultadoConductor_VueltaMasRapida VARCHAR(8)
);

CREATE INDEX idx_FT_ResultadoConductor_lookup ON datawarehouse.FT_ResultadoConductor(
    ResultadoConductor_Id,
    ResultadoConductor_CarreraId,
    ResultadoConductor_ConductorId,
    ResultadoConductor_Posicion,
    ResultadoConductor_Puntos,
    ResultadoConductor_Vueltas,
    ResultadoConductor_Milisegundos,
    ResultadoConductor_VueltaMasRapida
);