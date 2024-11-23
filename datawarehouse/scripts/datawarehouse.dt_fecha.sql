CREATE TABLE datawarehouse.DT_Fecha (
    DateKey DOUBLE PRECISION,
    FullDate VARCHAR(10),
    DateName VARCHAR(10),
    DayOfWeek BIGINT,
    DayNameOfWeek VARCHAR(9),
    DayOfMonth BIGINT,
    DayOfYear BIGINT,
    WeekdayWeekend VARCHAR(7),
    WeekOfYear BIGINT,
    MonthName VARCHAR(9),
    MonthOfYear BIGINT,
    IsLastDayOfMonth BOOLEAN,
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

F