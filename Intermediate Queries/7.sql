SELECT TOP(5) [ProductName], SUM([Quantity]) AS Total_Sales
FROM [Northwind].[dbo].[Products]
JOIN [Northwind].[dbo].[Order Details] ON [Products].[ProductID] = [Order Details].[ProductID]
JOIN [Northwind].[dbo].[Orders] ON [Order Details].[OrderID] = [Orders].[OrderID]
WHERE YEAR([OrderDate]) = 1997 
GROUP BY [ProductName], MONTH([OrderDate])
ORDER BY Total_Sales DESC