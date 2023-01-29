WITH customer_rfm AS (
	SELECT O.[CustomerID], MAX(O.[OrderDate]) as recency, 
	COUNT(DISTINCT O.[OrderID]) as frequency, 
	SUM(OD.[UnitPrice] * OD.[Quantity] * (1 - OD.[Discount])) as monetary 
	FROM [Northwind].[dbo].[Orders] AS O
	JOIN [Northwind].[dbo].[Order Details] AS OD ON O.[OrderID] = OD.[OrderID]
	GROUP BY O.[CustomerID]) 

SELECT CS.[CompanyName], [customer_rfm].*
FROM customer_rfm
JOIN [Northwind].[dbo].[Customers] AS CS ON [customer_rfm].[CustomerID] = CS.[CustomerID]
WHERE YEAR([recency]) = 1997
ORDER BY [monetary] DESC