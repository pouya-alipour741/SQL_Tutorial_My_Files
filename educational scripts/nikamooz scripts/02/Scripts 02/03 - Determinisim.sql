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

USE WF;
GO

/*
Determinism
نمایش یکسان نتایج در هر بار اجرای کوئری و به شرط عدم تغییر مقادیر ورودی
*/

-- !توجه شود Custid به رتبه‌بندی مقادیر مشابه هر
SELECT
	custid, orderid, orderdate,
	ROW_NUMBER() OVER(ORDER BY custid) AS Row_Num
FROM Sales.OrderValues;
GO

/*
را همزمان اجرا کنیم Query2 و Query1 اگر کوئری‌های
.های مشابه روبرو می‌شویم orderid با رتبه‌بندی متفاوت به‌ازای
*/
-- Query1
SELECT
	custid, orderid, orderdate,
	ROW_NUMBER() OVER(ORDER BY custid) AS Row_Num
FROM Sales.OrderValues
ORDER BY custid, orderid;
GO

-- Query2
SELECT
	custid, orderid, orderdate,
	ROW_NUMBER() OVER(ORDER BY custid) AS Row_Num
FROM Sales.OrderValues
ORDER BY custid, orderid DESC;
GO

/*
باشند Unique به‌صورت OVER از بخش ORDER BY اگر مقادیر ستون‌های جلو
.روبرو نخواهیم شد Nondeterministic آن‌گاه دیگر با مشکل
*/
-- Query3
SELECT
	custid, orderid, orderdate,
	ROW_NUMBER() OVER(ORDER BY custid, orderid) AS Row_Num
FROM Sales.OrderValues
ORDER BY custid, orderid;
GO

-- Query4
SELECT
	custid, orderid, orderdate,
	ROW_NUMBER() OVER(ORDER BY custid, orderid) AS Row_Num
FROM Sales.OrderValues
ORDER BY custid, orderid DESC;
GO
--------------------------------------------------------------------

USE AdventureWorks2017;
GO

-- Query5
SELECT
	CustomerID, SalesOrderID,
	ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS Row_Num
FROM Sales.SalesOrderHeader;
GO

-- Query6
SELECT
	CustomerID, SalesOrderID,
	ROW_NUMBER() OVER(ORDER BY (SELECT 1)) AS Row_Num
FROM Sales.SalesOrderHeader
ORDER BY SalesOrderID;
GO