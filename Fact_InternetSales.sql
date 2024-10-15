---Cleansed FACT_Internet_Sales_Table
SELECT 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  ---PromotionKey,
  ---CurrencyKey,
  ---SalesTerritoryKey,
  SalesOrderNumber, 
  ---SalesOrderLineNumber
  ---RevisionNumber,
  ---[OrderQuantity,
  ---UnitPrice,
  ---ExtendedAmount,
  ---UnitPriceDiscountPc,
  ---DiscountAmount,
  ---ProductStandardCost,
  ---TotalProductCost,
  SalesAmount
  ---TaxAmt,
  ---Freight,
  ---CarrierTrackingNumber,
  ---CustomerPONumber,
  ---OrderDate,
  ---DueDate,
  ---ShipDate,
FROM 
  FactInternetSales 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(    Getdate()) -2 -------Ensures we always only bring two years of date from extraction.
  ORDER BY 
  OrderDateKey ASC
