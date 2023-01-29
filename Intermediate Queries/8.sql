CREATE VIEW Order_Details AS 
SELECT o.OrderID, od.ProductID, p.ProductName, od.UnitPrice, od.Quantity, od.Discount, (od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalPrice
FROM [Northwind].[dbo].[Orders] AS o
JOIN [Northwind].[dbo].[Order Details] AS od ON [o].[OrderID] = [od].[OrderID]
JOIN [Northwind].[dbo].[Products] AS p ON [od].[ProductID] = [p].[ProductID]