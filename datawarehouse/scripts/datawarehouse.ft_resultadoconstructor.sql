CREATE TABLE "lookup table" (
    ResultadoConstructor_Id NUMERIC(32, 0),
    ResultadoConstructor_CarreraId NUMERIC(32, 0),
    ResultadoConstructor_ConstructorId NUMERIC(32, 0),
    ResultadoConstructor_Puntos NUMERIC(32, 0)
);

CREATE INDEX "idx_lookup table_lookup" ON "lookup table"(
    ResultadoConstructor_Id,
    ResultadoConstructor_CarreraId,
    ResultadoConstructor_ConstructorId,
    ResultadoConstructor_Puntos
);