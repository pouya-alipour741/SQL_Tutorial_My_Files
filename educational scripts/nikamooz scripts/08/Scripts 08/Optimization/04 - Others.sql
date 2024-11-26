--------------------------------------------------------------------
/*
(Window Function) دوره آموزشی کوئری‌نویسی پیشرفته 
Site:        http://www.NikAmooz.com
Email:       Info@NikAmooz.com
Instagram:   https://instagram.com/nikamooz/
Telegram:	 https://telegram.me/nikamooz
Created By:  Mehdi Shishebory 
*/
--------------------------------------------------------------------

USE AdventureWorks2017;
GO

/*
Work Table و RANGE و ROWS
*/

SET STATISTICS IO ON;
GO

PRINT '----- Query1 -----';
SELECT
	CustomerID, SalesOrderID, TotalDue,
	SUM(TotalDue) OVER( PARTITION BY CustomerID
						ORDER BY SalesOrderID ) AS Sum_TotalDue
FROM Sales.SalesOrderHeader;
GO

PRINT '----- Query2 -----';
SELECT
	CustomerID, SalesOrderID, TotalDue,
	SUM(TotalDue) OVER( PARTITION BY CustomerID
						ORDER BY SalesOrderID
						ROWS UNBOUNDED PRECEDING ) AS Sum_TotalDue
FROM Sales.SalesOrderHeader;
GO

SET STATISTICS TIME ON;
GO
--------------------------------------------------------------------

-- !لطفا هیچ‌گاه چنین هنرنمایی‌هایی را انجام ندهید
PRINT '----- Query1 -----';
DECLARE @Offset INT = 2;
SELECT
	CustomerID, OrderDate,
	LAG(OrderDate,@Offset) OVER( PARTITION BY CustomerID
								 ORDER BY SalesOrderID ) AS Prv_OrderDate
FROM Sales.SalesOrderHeader;

PRINT '----- Query2 -----';
SELECT
	CustomerID, OrderDate,
	LAG(OrderDate,2) OVER( PARTITION BY CustomerID
						   ORDER BY SalesOrderID ) AS Prv_OrderDate
FROM Sales.SalesOrderHeader;
GO
--------------------------------------------------------------------


SELECT
	SOH.CustomerID,
	SOH.SalesOrderID,
	SOH.OrderDate,
	C.TerritoryID,
	ROW_NUMBER() OVER ( PARTITION BY SOH.CustomerID
						ORDER BY SOH.OrderDate ) AS Row_Num
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS C
	ON SOH.CustomerID = C.CustomerID;
GO


WITH Sales
AS
(
	SELECT
		CustomerID,
		OrderDate,
		SalesOrderID,
		ROW_NUMBER() OVER ( PARTITION BY CustomerID
							ORDER BY OrderDate ) AS Row_Num
	FROM Sales.SalesOrderHeader
)
SELECT
	Sales.CustomerID,
	Sales.SalesOrderID,
	Sales.OrderDate,
	C.TerritoryID,
	Sales.Row_Num
FROM Sales
JOIN Sales.Customer AS C
	ON C.CustomerID = Sales.CustomerID;
GO

DROP INDEX IF EXISTS Sales.SalesOrderHeader.idx_co;
GO
CREATE INDEX idx_co ON Sales.SalesOrderHeader (CustomerID,OrderDate);
GO