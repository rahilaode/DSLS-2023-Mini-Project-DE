SELECT DISTINCT([CompanyName])
FROM [Northwind].[dbo].[Customers]
JOIN [Northwind].[dbo].[Orders] ON [Customers].[CustomerID] = [Orders].[CustomerID]
JOIN [Northwind].[dbo].[Order Details] ON [Orders].[OrderID] = [Order Details].[OrderID]
WHERE ([UnitPrice]*[Quantity])-([UnitPrice]*[Quantity]*[Discount]) > 500 AND YEAR([OrderDate]) = 1997