--CLeansed Dim_DateTable
SELECT 
  DateKey, 
  FullDateAlternateKey AS Date, 
  --DayNumberOfWeek,
  EnglishDayNameOfWeek AS Day, 
  --SpanishDayNameOfWeek,
  --FrenchDayNameOfWeek,
  --DayNumberOfMonth,
  --DayNumberOfYear,
  WeekNumberOfYear AS Week_Number, 
  EnglishMonthName AS Month, 
  LEFT(EnglishMonthName, 3) AS Month_Short, 
  --SpanishMonthName,
  -- FrenchMonthName,
  MonthNumberOfYear AS Month_Number, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year
  --CalendarSemester
  --FiscalQuarter
  --FiscalYear
  --FiscalSemester
FROM 
  DimDate
Where 
  CalendarYear > = 2019