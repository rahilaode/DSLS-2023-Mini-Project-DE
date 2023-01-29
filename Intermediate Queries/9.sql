CREATE PROCEDURE Invoice (@CustomerID INT)
AS
BEGIN
SELECT c.CustomerID, c.CompanyName, o.OrderID, o.OrderDate, o.RequiredDate, o.ShippedDate
FROM [Northwind].[dbo].[Customers] AS c
JOIN [Northwind].[dbo].[Orders] AS o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID = @CustomerID
END