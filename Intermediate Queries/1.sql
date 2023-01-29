SELECT 
	COUNT(DISTINCT [CustomerID]) as "Jumlah Customer", 
	MONTH([OrderDate]) as "Bulan", 
	YEAR([OrderDate]) as "Tahun" 
FROM [Northwind].[dbo].[Orders]
WHERE YEAR([OrderDate]) = 1997 
GROUP BY MONTH([OrderDate]), YEAR([OrderDate])