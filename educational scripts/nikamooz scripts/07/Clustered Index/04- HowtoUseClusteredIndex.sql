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

USE Index_DB;
GO

DROP TABLE IF EXISTS Employees;
GO

CREATE TABLE Employees
(
	ID CHAR(600) ,
	FirstName NCHAR(1800),
	LastName NCHAR(1800)
);
GO

-- Employees بر روی جدول UNIQUE CLUSTERED INDEX ایجاد
CREATE UNIQUE CLUSTERED INDEX IX_Clustered ON Employees(ID);
GO

-- درج تعدادی رکورد تستی
INSERT INTO Employees
VALUES
	(1, N'حمید', N'سعادت‌نژاد'),
	(5, N'پریسا', N'یزدانیان'),
	(3, N'علی', N'تقوی'),
	(4, N'مجید', N'پاکروان'),
	(2, N'فرهاد', N'رضایی'),
	(10, N'زهرا', N'غفاری'),
	(8, N'مهدی', N'پوینده'),
	(9, N'سمانه', N'اکبری'),
	(7, N'بیژن', N'تولایی'),
	(6, N'فاطمه', N'شریفی');
GO

-- مشاهده رکوردهای موجود در جدول
SELECT * FROM Employees;
GO

-- آنالیز ایندکس
SELECT 
	index_type_desc,index_depth,index_level,
	page_count,record_count
FROM sys.dm_db_index_physical_stats
(
	DB_ID('Index_DB'),
	OBJECT_ID('Employees'),
	1,
	NULL,
	'DETAILED'
);
GO

-- IO , Execution Plan بررسی 
SET STATISTICS IO ON;
GO

SELECT * FROM Employees
	WHERE ID = '5';
GO

SELECT * FROM Employees
	WHERE ID = 5;
GO
--------------------------------------------------------------------

-- بررسی مثالی دیگر 
USE AdventureWorks2017;
GO

DROP TABLE IF EXISTS SalesOrderHeader2;
GO

SELECT * INTO SalesOrderHeader2 FROM Sales.SalesOrderHeader;
GO

-- SalesOrderHeader2 بر روی جدول UNIQUE CLUSTERED INDEX ایجاد
CREATE UNIQUE CLUSTERED INDEX IX_Clustered ON SalesOrderHeader2(SalesOrderID);
GO

-- بررسی حجم
SP_SPACEUSED SalesOrderHeader2;
GO

-- آنالیز ایندکس
SELECT 
	index_type_desc,index_depth,index_level,
	page_count,record_count
FROM sys.dm_db_index_physical_stats
(
	DB_ID('AdventureWorks2017'),
	OBJECT_ID('SalesOrderHeader2'),
	1,
	NULL,
	'DETAILED'
);
GO

-- IO , Execution Plan بررسی 
SET STATISTICS IO ON;
GO

-- Singleton Lookup
SELECT * FROM SalesOrderHeader2
	WHERE SalesOrderID = 52000;
GO

-- Index Seek
SELECT * FROM SalesOrderHeader2
	WHERE SalesOrderID BETWEEN 52000 AND  52002;
GO

SELECT * FROM SalesOrderHeader2
	WHERE SalesOrderID = 52000 OR SalesOrderID = 52001 OR  SalesOrderID = 52002;
GO

SELECT * FROM SalesOrderHeader2
	WHERE SalesOrderID IN(52000,52001,52002);
GO

-- Clustered Index Scan
SELECT * FROM SalesOrderHeader2	
	WHERE SalesPersonID = 282;
GO