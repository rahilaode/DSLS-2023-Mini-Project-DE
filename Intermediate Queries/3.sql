SELECT TOP(5) [ProductName], SUM([Quantity]) as "Total Quantity" 
FROM [Northwind].[dbo].[Products]
JOIN [Northwind].[dbo].[Order Details] ON [Products].[ProductID]= [Order Details].[ProductID]
JOIN [Northwind].[dbo].[Orders] ON [Order Details].[OrderID] = [Orders].[OrderID]
WHERE MONTH([Orders].[OrderDate]) = 1 AND YEAR([Orders].[OrderDate]) = 1997 
GROUP BY [ProductName]
ORDER BY SUM([Quantity]) DESC