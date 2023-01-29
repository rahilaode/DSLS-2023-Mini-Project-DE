SELECT DISTINCT [CompanyName], [Products].[ProductName], [OrderDate]
FROM [Northwind].[dbo].[Customers]
JOIN [Northwind].[dbo].[Orders] ON [Customers].[CustomerID] = [Orders].[CustomerID]
JOIN [Northwind].[dbo].[Order Details] ON [Orders].[OrderID] = [Order Details].[OrderID]
JOIN [Northwind].[dbo].[Products] ON [Order Details].[ProductID] = [Products].[ProductID]
WHERE [Products].[ProductName] = 'Chai' AND MONTH([Orders].[OrderDate]) = 6 AND YEAR([Orders].[OrderDate]) = 1997