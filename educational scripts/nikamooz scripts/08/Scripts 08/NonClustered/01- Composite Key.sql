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

-- بررسی وجود جدول و حذف آن
DROP TABLE IF EXISTS ClusteredTable;
GO

-- Heap ایجاد یک جدول از نوع
CREATE TABLE ClusteredTable
(
	ID CHAR(700),
	FirstName NCHAR(400),
	LastName NCHAR(400),
	BirthDay  NCHAR(200)
);
GO

-- بر روی جدول Clustered ایجاد ایندکس
CREATE CLUSTERED INDEX IX_Clustered ON ClusteredTable(ID);
GO

-- بر روی جدول NonClustered ایجاد ایندکس
CREATE NONCLUSTERED INDEX IX_NonClustered ON ClusteredTable(BirthDay);
GO

--بررسی ایندکس های جدول
SP_HELPINDEX ClusteredTable;
GO

-- بررسی تعداد صفحات تخصیص داده‌شده به جدول و ایندکس
SELECT 
	index_id,index_type_desc,
	index_depth,index_level,
	page_count ,record_count
FROM 
	sys.dm_db_index_physical_stats
		(DB_ID('Index_DB'),OBJECT_ID('ClusteredTable'),
		NULL,NULL,'DETAILED');
GO

--درج تعدادی رکورد تستی
INSERT INTO ClusteredTable
VALUES
	(1, N'حمید', N'سعادت‌نژاد','1359'),
	(5, N'پریسا', N'یزدانیان','1347'),
	(3, N'علی', N'تقوی','1371'),
	(4, N'مجید', N'پاکروان','1368'),
	(2, N'فرهاد', N'رضایی','1358'),
	(10, N'زهرا', N'غفاری','1362'),
	(8, N'مهدی', N'پوینده','1367'),
	(9, N'سمانه', N'اکبری','1370'),
	(7, N'بیژن', N'تولایی','1358'),
	(6, N'فاطمه', N'شریفی','1369');
GO

-- بررسی حجم جدول
SP_SPACEUSED ClusteredTable;
GO

/*
بررسی تعداد صفحات تخصیص داده شده به جدول و ایندکس
در یک فضای دیگر ایجاد شده است NonClustered ایندکس
*/
SELECT 
	index_id,index_type_desc,
	index_depth,index_level,
	page_count ,record_count
FROM 
	sys.dm_db_index_physical_stats
		(DB_ID('Index_DB'),OBJECT_ID('ClusteredTable')
		,NULL,NULL,'DETAILED');
GO

SELECT
	ID, FirstName, BirthDay
FROM ClusteredTable
	WHERE BirthDay = '1368';
GO

-- از جدول NonClustered حذف ایندکس
DROP INDEX IF EXISTS ClusteredTable.IX_NonClustered;
GO
/*
معادل دستور بالا
DROP INDEX IX_NonClustered ON ClusteredTable;
GO
*/

-- بر روی جدول NonClustered ایجاد ایندکس جدید
CREATE NONCLUSTERED INDEX IX_NonClustered ON ClusteredTable(BirthDay,FirstName);
GO

SELECT
	ID, FirstName, BirthDay
FROM ClusteredTable
	WHERE BirthDay = '1368';
GO

SELECT
	ID, FirstName, BirthDay
FROM ClusteredTable WITH(INDEX(0))
	WHERE BirthDay = '1368';
GO