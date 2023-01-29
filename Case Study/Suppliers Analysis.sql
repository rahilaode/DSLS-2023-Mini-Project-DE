SELECT S.[SupplierID], S.[CompanyName], P.[ProductName], P.[UnitsInStock] AS Stock 
FROM [Northwind].[dbo].[Products] AS P
JOIN [Northwind].[dbo].[Suppliers] AS S ON P.[SupplierID] = S.[SupplierID]
WHERE P.[UnitsInStock] < 10
ORDER BY P.[UnitsInStock] ASC