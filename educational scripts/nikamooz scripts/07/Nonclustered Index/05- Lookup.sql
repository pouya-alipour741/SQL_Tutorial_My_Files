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

/*
RID Lookup بررسی مفهوم 
*/

USE AdventureWorks2017;
GO

-- بررسی وجود جدول و حذف آن
DROP TABLE IF EXISTS  HeapTable;
GO

-- Heap ایجاد یک جدول از نوع
SELECT * INTO HeapTable FROM Sales.SalesOrderDetail;
GO

--ایجاد ایندکس روی جدول
CREATE NONCLUSTERED INDEX IX_NonClustered ON HeapTable(ProductID,OrderQty,SpecialOfferID);
GO

--بررسی ایندکس های جدول
SP_HELPINDEX HeapTable;
GO

-- بررسی تعداد صفحات تخصیص داده شده به جدول و ایندکس
SELECT 
	index_id,index_type_desc,
	index_depth,index_level,
	page_count ,record_count
FROM 
	sys.dm_db_index_physical_stats
		(DB_ID('AdventureWorks2017'),OBJECT_ID('HeapTable'),NULL,NULL,'DETAILED');
GO

--بررسی حجم جدول
SP_SPACEUSED HeapTable;
GO

--و تعداد رکوردهای بازگشتی Estimate Number Of Execution بررسی 
SET STATISTICS IO ON;
GO

SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty,SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO

SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty,SpecialOfferID
FROM HeapTable
	WHERE OrderQty = 1;
GO

SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty,SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789 AND OrderQty = 1;
GO
--------------------------------------------------------------------

/*
Key Lookup بررسی مفهوم 
*/

-- بررسی وجود جدول و حذف آن
DROP TABLE IF EXISTS ClusteredTable;
GO

-- Heap ایجاد یک جدول از نوع
SELECT * INTO ClusteredTable FROM Sales.SalesOrderDetail;
GO

-- ایجاد ایندکس روی جدول
CREATE CLUSTERED INDEX IX_Clustered ON ClusteredTable(SalesOrderID);
CREATE NONCLUSTERED INDEX IX_NonClustered ON ClusteredTable(ProductID,OrderQty,SpecialOfferID);
GO

-- بررسی ایندکس های جدول
SP_HELPINDEX ClusteredTable;
GO

-- بررسی تعداد صفحات تخصیص داده شده به جدول و ایندکس
SELECT
	index_id,index_type_desc,
	index_depth,index_level,
	page_count,record_count
FROM 
	sys.dm_db_index_physical_stats
		(DB_ID('AdventureWorks2017'),OBJECT_ID('ClusteredTable'),NULL,NULL,'DETAILED');
GO

-- بررسی حجم جدول
SP_SPACEUSED ClusteredTable;
GO

-- و تعداد رکوردهای بازگشتی Estimate Number Of Execution بررسی 
SELECT
	SalesOrderID,
	SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO
--------------------------------------------------------------------

-- RID Lookup نسبت به Key Lookup مربوط به IO مقایسه
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO

SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO
--------------------------------------------------------------------

-- Non Clustered Index مقایسه استفاده و یا عدم استفاده از 

-- Heap Table
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable WITH (INDEX(0))
	WHERE ProductID = 789;
GO

-- Clustered Table
SELECT
	SalesOrderID,
	SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID,
	SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable WITH(INDEX(0))
	WHERE ProductID = 789;
GO