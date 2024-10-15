----Cleansed Dim_Product
SELECT 
 p.ProductKey AS Product_Key,
  p.ProductAlternateKey AS Product_ItemCode,
   --ProductSubcategoryKey,
   --WeightUnitMeasureCode,
   -- SizeUnitMeasureCode,
   p.EnglishProductName AS Product_Name,
   ps.EnglishProductSubcategoryName as Sub_Category, -----Joined in from Sub Category Table
   pc.EnglishProductCategoryName as Category, -----Joined in from Category Table
   ---SpanishProductName,
   ---FrenchProductName,
   --StandardCost,
    --- FinishedGoodsFlag,
    p.Color AS Product_Color,
    ---SafetyStockLevel
    ----ReorderPoint,
    ----ListPrice,
   p.Size AS Product_Size,
   ----SizeRange,
  ---Weight,
  ---DaysToManufacture,
    p.ProductLine as Product_Line,
    ---DealerPrice],
 ---Class,
 ---Style,
 p.ModelName AS Product_Model_Name,
    ---LargePhoto,
  p.EnglishDescription AS Product_Description,
   ---FrenchDescription,
  ---ChineseDescription,
   ---ArabicDescription,
  ---HebrewDescription,
  ---ThaiDescription,
  ---GermanDescription,
  ---JapaneseDescription,
  ---TurkishDescription,
   ---StartDate,
    ---EndDate,
     ---Status,
	 ISNULL (p.status, 'outdated') AS Product_Status
  FROM 
  DimProduct AS p
  LEFT JOIN DimProductSubcategory AS ps
  ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pc
  ON ps. ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
  p.ProductKey ASC
