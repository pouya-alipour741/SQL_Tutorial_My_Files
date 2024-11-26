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

DROP TABLE IF EXISTS SalesOrderDetail2;
GO

-- Sales.SalesOrderDetail ساخت یک نمونه کپی از جدول
SELECT * INTO SalesOrderDetail2 FROM Sales.SalesOrderDetail;
GO

SP_HELPINDEX SalesOrderDetail2;
GO

SP_SPACEUSED SalesOrderDetail2;
GO
--------------------------------------------------------------------

/*
Seek و Scan بررسی مفهوم
*/

-- Scan بررسی عملیات 
SELECT * FROM SalesOrderDetail2
	WHERE SalesOrderID = 75000;
GO

SP_HELPINDEX 'Sales.SalesOrderDetail';
GO

-- Seek بررسی عملیات 
SELECT * FROM Sales.SalesOrderDetail
	WHERE SalesOrderID = 75000;
GO

--Clustered Index Scan بررسی عملیات 
SELECT * FROM Sales.SalesOrderDetail
	WHERE OrderQty = 1;
GO
--------------------------------------------------------------------

/*
و زمان اجرای کوئری‌ها IO بررسی اطلاعات مربوط به
*/

SET STATISTICS IO ON;
SET STATISTICS TIME ON;
GO

/*
معادل دستورات بالا
SET STATISTICS IO,TIME ON;
GO
*/

DBCC FREEPROCCACHE;
DBCC DROPCLEANBUFFERS;
GO

-- Scan بررسی عملیات
SELECT * FROM SalesOrderDetail2
	WHERE SalesOrderID = 75000;
GO

-- Seek بررسی عملیات 
SELECT * FROM Sales.SalesOrderDetail
	WHERE SalesOrderID = 75000;
GO

/*
IO و Time استفاده از لینک زیر برای مشاهده اطلاعات
http://statisticsparser.com/index.html
*/

