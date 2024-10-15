-----Cleased Dim_Customer Table
SELECT 
  c.CustomerKey AS Customer_Key, 
  ---[GeographyKey],
  ---[CustomerAlternateKey],
  ---[Title],
  c.FirstName AS First_Name, 
  ---MiddleName,
  c.LastName AS Last_Name, 
  ---[NameStyle],
  ---[BirthDate],
  ---[MaritalStatus],
  ---[Suffix],
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  ---EmailAddress,
  ---YearlyIncome,
  --- TotalChildren,
  ---NumberChildrenAtHome,
  ---EnglishEducation,
  ---SpanishEducation,
  ---FrenchEducation,
  ---EnglishOccupation,
  ---SpanishOccupation,
  ---FrenchOccupation,
  ---HouseOwnerFlag,
  ---NumberCarsOwned,
  ---AddressLine1,
  ---AddressLine2,
  ---Phone,
  c.DateFirstPurchase AS Date_FirstPurchase, 
  ---CommuteDistance,
  g.city AS Customer_City ------ joined in customer city from Geography Table
FROM 
  DimCustomer AS c 
  LEFT JOIN DimGeography as g 
 ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  Customer_Key ASC -----Ordered List by Customerkey
