-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.circuits (
    circuitId NUMERIC(32, 0),
    circuitRef VARCHAR(64),
    "name" VARCHAR(64),
    "location" VARCHAR(64),
    country VARCHAR(32),
    lat NUMERIC(24, 0),
    lng NUMERIC(24, 0),
    alt NUMERIC(24, 0),
    url VARCHAR(128)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.constructor_results (
    constructorResultsId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    constructorId NUMERIC(32, 0),
    points NUMERIC(32, 0),
    status VARCHAR(4)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.constructor_standings (
    constructorStandingsId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    constructorId NUMERIC(32, 0),
    points NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    positionText VARCHAR(16),
    wins NUMERIC(32, 0)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.driver_standings (
    driverStandingsId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    points NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    positionText VARCHAR(8),
    wins NUMERIC(32, 0)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.drivers (
    driverId NUMERIC(32, 0),
    driverRef VARCHAR(32),
    "number" VARCHAR(8),
    code VARCHAR(8),
    forename VARCHAR(32),
    surname VARCHAR(32),
    dob VARCHAR(32),
    nationality VARCHAR(32),
    url VARCHAR(128)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.constructors (
    constructorId NUMERIC(32, 0),
    constructorRef VARCHAR(32),
    "name" VARCHAR(32),
    nationality VARCHAR(32),
    url VARCHAR(128)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.lap_times (
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    lap NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    "time" VARCHAR(32),
    milliseconds NUMERIC(32, 0)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.pit_stops (
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    stop NUMERIC(32, 0),
    lap NUMERIC(32, 0),
    "time" VARCHAR(16),
    duration VARCHAR(16),
    milliseconds NUMERIC(32, 0)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.qualifying (
    qualifyId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    constructorId NUMERIC(32, 0),
    "number" NUMERIC(32, 0),
    "position" NUMERIC(32, 0),
    q1 VARCHAR(16),
    q2 VARCHAR(16),
    q3 VARCHAR(16)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.results (
    resultId NUMERIC(32, 0),
    raceId NUMERIC(32, 0),
    driverId NUMERIC(32, 0),
    constructorId NUMERIC(32, 0),
    "number" VARCHAR(8),
    grid NUMERIC(32, 0),
    "position" VARCHAR(8),
    positionText VARCHAR(8),
    positionOrder NUMERIC(32, 0),
    points NUMERIC(32, 0),
    laps NUMERIC(32, 0),
    "time" VARCHAR(32),
    milliseconds VARCHAR(16),
    fastestLap VARCHAR(8),
    "rank" VARCHAR(8),
    fastestLapTime VARCHAR(16),
    fastestLapSpeed VARCHAR(16),
    statusId NUMERIC(32, 0)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.seasons (
    "year" NUMERIC(32, 0),
    url VARCHAR(128)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.races (
    raceId BIGINT,
    "year" BIGINT,
    round BIGINT,
    circuitId BIGINT,
    "name" VARCHAR(29),
    "date" VARCHAR(30),
    "time" VARCHAR(8),
    url VARCHAR(63),
    fp1_date VARCHAR(10),
    fp1_time VARCHAR(8),
    fp2_date VARCHAR(10),
    fp2_time VARCHAR(8),
    fp3_date VARCHAR(10),
    fp3_time VARCHAR(8),
    quali_date VARCHAR(10),
    quali_time VARCHAR(8),
    sprint_date VARCHAR(10),
    sprint_time VARCHAR(8)
);

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.sprint_results (
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

-------------------------------------------------------------------------------------------
-- Step                : Salida Tabla
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE staging.status (
    statusId NUMERIC(32, 0),
    status VARCHAR(32)
);

-------------------------------------------------------------------------------------------
-- Step                : Insertar / Actualizar
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.DT_Circuito (
    Circuito_Id NUMERIC(32, 0),
    Circuito_Nombre VARCHAR(64),
    Circuito_Pais VARCHAR(32)
);

CREATE INDEX idx_DT_Circuito_lookup ON datawarehouse.DT_Circuito(Circuito_Id, Circuito_Nombre, Circuito_Pais);

-------------------------------------------------------------------------------------------
-- Step                : Insertar / Actualizar
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.DT_Conductor (
    Conductor_Id NUMERIC(32, 0),
    Conductor_Nombre VARCHAR(32),
    Conductor_Apellido VARCHAR(32),
    Conductor_Nacionalidad VARCHAR(32)
);

CREATE INDEX idx_DT_Conductor_lookup ON datawarehouse.DT_Conductor(
    Conductor_Id,
    Conductor_Nombre,
    Conductor_Apellido,
    Conductor_Nacionalidad
);

-------------------------------------------------------------------------------------------
-- Step                : Insert / update
-- Database Connection : obligatorio
-- SQL                  : 
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

-------------------------------------------------------------------------------------------
-- Step                : Insertar / Actualizar
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.DT_Fecha (
    DateKey NUMERIC(32, 0),
    FullDate VARCHAR(32),
    DateName VARCHAR(32),
    DayOfWeek BIGINT,
    DayNameOfWeek VARCHAR(10),
    DayOfMonth BIGINT,
    DayOfYear BIGINT,
    WeekdayWeekend VARCHAR(7),
    WeekOfYear BIGINT,
    MonthName VARCHAR(9),
    MonthOfYear BIGINT,
    IsLastDayOfMonth CHAR(1),
    CalendarQuarter BIGINT,
    CalendarYear BIGINT,
    CalendarYearMonth VARCHAR(7),
    CalendarYearQtr VARCHAR(6),
    FiscalMonthOfYear BIGINT,
    FiscalQuarter BIGINT,
    FiscalYear BIGINT,
    FiscalYearMonth VARCHAR(9),
    FiscalYearQtr VARCHAR(8)
);

CREATE INDEX idx_DT_Fecha_lookup ON datawarehouse.DT_Fecha(
    DateKey,
    FullDate,
    DateName,
    DayOfWeek,
    DayNameOfWeek,
    DayOfMonth,
    DayOfYear,
    WeekdayWeekend,
    WeekOfYear,
    MonthName,
    MonthOfYear,
    IsLastDayOfMonth,
    CalendarQuarter,
    CalendarYear,
    CalendarYearMonth,
    CalendarYearQtr,
    FiscalMonthOfYear,
    FiscalQuarter,
    FiscalYear,
    FiscalYearMonth,
    FiscalYearQtr
);

-------------------------------------------------------------------------------------------
-- Step                : Insertar / Actualizar
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.DT_Carrera (
    Carrera_Id INTEGER,
    Carrera_Temporada INTEGER,
    Carrera_CircuitoId INTEGER,
    Carrera_Nombre VARCHAR(29),
    Carrera_Fecha VARCHAR(30),
    Carrera_FechaSK NUMERIC(32, 0)
);

CREATE INDEX idx_DT_Carrera_lookup ON datawarehouse.DT_Carrera(
    Carrera_Id,
    Carrera_Temporada,
    Carrera_CircuitoId,
    Carrera_Nombre,
    Carrera_Fecha,
    Carrera_FechaSK
);

-------------------------------------------------------------------------------------------
-- Step                : Insert / update
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.FT_Parada (
    Parada_CarreraId NUMERIC(32, 0),
    Parada_ConductorId NUMERIC(32, 0),
    Parada_Numero NUMERIC(32, 0),
    Parada_Vuelta NUMERIC(32, 0),
    Parada_Tiempo VARCHAR(16),
    Parada_Milisegundos NUMERIC(32, 0)
);

CREATE INDEX idx_FT_Parada_lookup ON datawarehouse.FT_Parada(
    Parada_CarreraId,
    Parada_ConductorId,
    Parada_Numero,
    Parada_Vuelta,
    Parada_Tiempo,
    Parada_Milisegundos
);

-------------------------------------------------------------------------------------------
-- Step                : Insert / update
-- Database Connection : obligatorio
-- SQL                  : 
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

-------------------------------------------------------------------------------------------
-- Step                : Insert / update
-- Database Connection : obligatorio
-- SQL                  : 
CREATE TABLE datawarehouse.FT_ResultadoConstructor (
    ResultadoConstructor_Id NUMERIC(32, 0),
    ResultadoConstructor_CarreraId NUMERIC(32, 0),
    ResultadoConstructor_ConstructorId NUMERIC(32, 0),
    ResultadoConstructor_Puntos NUMERIC(32, 0)
);

CREATE INDEX idx_FT_ResultadoConstructor_lookup ON datawarehouse.FT_ResultadoConstructor(
    ResultadoConstructor_Id,
    ResultadoConstructor_CarreraId,
    ResultadoConstructor_ConstructorId,
    ResultadoConstructor_Puntos
);

-------------------------------------------------------------------------------------------
-- Step                : Insert / update
-- Database Connection : obligatorio
-- SQL                  : 
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