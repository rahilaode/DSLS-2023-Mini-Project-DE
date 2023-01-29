SELECT O.[OrderDate], P.[ProductName], C.[CategoryName], OD.[Quantity]
FROM [Northwind].[dbo].[Products] AS P
JOIN [Northwind].[dbo].[Order Details] AS OD ON P.[ProductID] = OD.[ProductID]
JOIN [Northwind].[dbo].[Orders] AS O ON OD.[OrderID] = O.[OrderID]
JOIN [Northwind].[dbo].[Categories] AS C ON P.[CategoryID] = C.[CategoryID]
WHERE YEAR(O.[OrderDate]) = 1997


