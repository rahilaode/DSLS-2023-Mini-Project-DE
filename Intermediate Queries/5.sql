SELECT
SUM(CASE WHEN [UnitPrice] * [Quantity] <= 100 THEN 1 ELSE 0 END) as '<=100',
SUM(CASE WHEN [UnitPrice] * [Quantity] BETWEEN 101 AND 250 THEN 1 ELSE 0 END) as '100<x<=250',
SUM(CASE WHEN [UnitPrice] * [Quantity] BETWEEN 251 AND 500 THEN 1 ELSE 0 END) as '250<x<=500',
SUM(CASE WHEN [UnitPrice] * [Quantity] > 500 THEN 1 ELSE 0 END) as '>500'
FROM [Northwind].[dbo].[Order Details]