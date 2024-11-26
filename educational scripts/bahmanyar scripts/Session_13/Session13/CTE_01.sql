--Structure of CTE:
/*
WITH yourName [(Column1, Column2, ...)]
AS
(
   your query
)
CRUD Command 
*/
USE AdventureWorks2014
GO
-- برای واکشی رکوردها CTE ایجاد یک
--Sample01: 
WITH CTE_Name
 AS 
(
	SELECT SalesOrderID,CustomerID,OrderDate,SubTotal
	FROM AdventureWorks2014.Sales.SalesOrderHeader
)
SELECT * FROM CTE_Name
GO
--Sample02:
;WITH CTE_Name (OrderID,CustomerID,OrderDate_English,SubTotal)
 AS 
(
	SELECT SalesOrderID,CustomerID,OrderDate,SubTotal
	FROM Sales.SalesOrderHeader
)
SELECT * FROM CTE_Name
GO
--CTE in Update
USE tempdb
GO
IF OBJECT_ID('SalesOrderHeader')>0
	DROP TABLE SalesOrderHeader
GO
--Create a copy of SalesOrderHeader
SELECT SalesOrderID,CustomerID,OrderDate,SubTotal 
INTO SalesOrderHeader
FROM AdventureWorks2014.Sales.SalesOrderHeader
GO
SELECT * FROM SalesOrderHeader
GO
--Last order of Every Customer:
;WITH CTE_LastOrder AS
(
	SELECT 
		ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate DESC) AS Row_No,
		SalesOrderID,CustomerID,  
		OrderDate,SubTotal
	FROM SalesOrderHeader
)
SELECT * FROM CTE_LastOrder
	--WHERE Row_No=1
GO
--Use CTE in Update
;WITH CTE_LastOrder AS
(
	SELECT 
		ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate DESC) AS Row_No,
		SalesOrderID,CustomerID,  
		OrderDate,SubTotal
	FROM SalesOrderHeader
)
UPDATE CTE_lastOrder
 SET SubTotal+=100	
 --WHERE Row_No=1
GO
--CTE in Delete:
USE tempdb
GO
;WITH CTE_LastOrder AS
(
	SELECT 
		ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate DESC) AS Row_No,
		SalesOrderID,CustomerID,  
		OrderDate,SubTotal
	FROM SalesOrderHeader
)
SELECT * FROM CTE_LastOrder
	--WHERE Row_No=1
GO
--Delete the last order of every customer:
;WITH CTE_LastOrder AS
(
	SELECT 
		ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate DESC) AS Row_No,
		SalesOrderID,CustomerID,  
		OrderDate,SubTotal
	FROM SalesOrderHeader
)
DELETE CTE_LastOrder 
	--WHERE Row_No=1
GO
--Use some CTEs in concurrently
GO
USE AdventureWorks2014
GO
;WITH CTE_Customer_Europe AS
(
	SELECT CustomerID
	FROM Sales.Customer INNER JOIN Sales.SalesTerritory
	ON Customer.TerritoryID=SalesTerritory.TerritoryID
	WHERE SalesTerritory.[GROUP] ='Europe'
),
CTE_Orders AS
(
	SELECT SalesOrderID,CustomerID,OrderDate,SubTotal
	FROM Sales.SalesOrderHeader
)
SELECT *
FROM CTE_Orders INNER JOIN CTE_Customer_Europe 
ON CTE_Orders.CustomerID=CTE_Customer_Europe.CustomerID
ORDER BY CTE_Orders.CustomerID
GO
