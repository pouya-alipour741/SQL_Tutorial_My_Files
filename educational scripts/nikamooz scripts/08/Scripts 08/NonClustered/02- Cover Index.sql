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
Heap بر روی Cover Index ایجاد
*/

-- بررسی وجود جدول و حذف آن
DROP TABLE IF EXISTS HeapTable;
GO

-- Heap ایجاد یک جدول از نوع
SELECT * INTO HeapTable FROM Sales.SalesOrderDetail;
GO

-- Composit ایجاد
CREATE NONCLUSTERED INDEX IX_NonClustered01 ON HeapTable(ProductID,OrderQty,SpecialOfferID);
GO

SET STATISTICS IO ON;
GO

-- SQL Query Stress و شبیه‌سازی با برنامه Execution Plan بررسی
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO

-- CoverIndex ایجاد
CREATE NONCLUSTERED INDEX IX_NonClustered02 ON HeapTable(ProductID,OrderQty,SpecialOfferID)
INCLUDE(SalesOrderID,SalesOrderDetailID);
GO

-- Execution Plan بررسی
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable WITH(INDEX(IX_NonClustered01))
	WHERE ProductID = 789;
GO

SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO

-- .با توجه به کوئری می‌توانستیم ایندکس را به‌صورت زیر هم ایجاد کنیم
CREATE NONCLUSTERED INDEX IX_NonClustered03
ON HeapTable (ProductID)
INCLUDE (SalesOrderID,SalesOrderDetailID,OrderQty,SpecialOfferID);
GO

--Execution Plan مقایسه
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable WITH(INDEX(IX_NonClustered01))
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable WITH(INDEX(IX_NonClustered02))
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM HeapTable
	WHERE ProductID = 789;
GO
--------------------------------------------------------------------

/*
Clustered Table بر روی Cover Index ایجاد
*/

-- بررسی وجود جدول و حذف آن
DROP TABLE IF EXISTS ClusteredTable;
GO

-- Heap ایجاد یک جدول از نوع
SELECT * INTO ClusteredTable FROM Sales.SalesOrderDetail;
GO

-- ایجاد ایندکس روی جدول
CREATE CLUSTERED INDEX IX_Clustered ON ClusteredTable(SalesOrderID);
CREATE NONCLUSTERED INDEX IX_NonClustered01 ON ClusteredTable(ProductID,OrderQty,SpecialOfferID);
GO

-- Execution Plan بررسی
SELECT
	SalesOrderID,
	SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO

-- CoverIndex ایجاد
CREATE NONCLUSTERED INDEX IX_NonClustered02 
ON ClusteredTable(ProductID,OrderQty,SpecialOfferID)
INCLUDE(SalesOrderDetailID);--with (drop_existing=on)
GO

-- Execution Plan بررسی
SELECT
	SalesOrderID,
	SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO

-- .با توجه به کوئری می‌توانستیم ایندکس را به‌صورت زیر هم ایجاد کنیم
CREATE NONCLUSTERED INDEX IX_NonClustered03
ON ClusteredTable (ProductID)
INCLUDE (SalesOrderID,SalesOrderDetailID,OrderQty,SpecialOfferID);
GO

-- Execution Plan بررسی
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable WITH(INDEX(IX_NonClustered01))
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable WITH(INDEX(IX_NonClustered02))
	WHERE ProductID = 789;
GO
SELECT
	SalesOrderID, SalesOrderDetailID,
	ProductID, OrderQty, SpecialOfferID
FROM ClusteredTable
	WHERE ProductID = 789;
GO
--------------------------------------------------------------------

-- Disable Index
ALTER INDEX [Index_Name] ON [Table_Name] DISABLE;
GO

-- Enable Index
ALTER INDEX [Index_Name] ON [Table_Name] REBUILD;
GO