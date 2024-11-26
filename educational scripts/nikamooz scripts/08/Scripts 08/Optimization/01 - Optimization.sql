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

-- در پلن اجرایی کوئری Sequence Project و Segment اپراتورهای
SELECT
	CustomerID,
	ROW_NUMBER() OVER(ORDER BY SalesOrderID) AS Row_Num
FROM Sales.SalesOrderHeader;
GO

/*
Sequence Project عدم مشاهده اپراتور
.که باید مورد توجه قرار گیرند Table Spool و Sort اپراتورهای
*/
SELECT
	CustomerID, SalesOrderID,
	SUM(TotalDue) OVER(PARTITION BY CustomerID) AS SubTotal
FROM Sales.SalesOrderHeader;
GO
--------------------------------------------------------------------

SET STATISTICS IO ON;

SELECT
	CustomerID, SalesOrderID,
	SUM(TotalDue) OVER(PARTITION BY CustomerID) AS SubTotal
FROM Sales.SalesOrderHeader;
GO
--------------------------------------------------------------------

/*
Query\ Query Options\ Discard result after execution
*/
SET STATISTICS TIME ON;

PRINT '----- Query1 -----';
SELECT
	CustomerID,
	ROW_NUMBER() OVER(ORDER BY SalesOrderID) AS Row_Num
FROM Sales.SalesOrderHeader;
GO

PRINT '----- Query2 -----';
SELECT
	CustomerID,
	ROW_NUMBER() OVER(ORDER BY CustomerID) AS Row_Num
FROM Sales.SalesOrderHeader;
GO