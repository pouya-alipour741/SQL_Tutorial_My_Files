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

DROP DATABASE IF EXISTS Index_DB;
GO

CREATE DATABASE Index_DB;
GO

USE Index_DB;
GO

DROP TABLE IF EXISTS ClusteredTable;
GO

-- Heap ایجاد یک جدول از نوع
CREATE TABLE ClusteredTable
(
	ID INT,
	FirstName NCHAR(2000),
	LastName NCHAR(2000)
);
GO

--بررسی ایندکس های جدول
SP_HELPINDEX ClusteredTable;
GO

-- درج تعدادی رکورد تستی
INSERT INTO ClusteredTable
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

-- .فاقد هرگونه نظم و ترتیبی هستند ClusteredTable رکوردهای موجود در جدول 
SELECT * FROM ClusteredTable;
GO

SP_SPACEUSED ClusteredTable;
GO
--------------------------------------------------------------------

-- ClusteredTable بر روی جدول CLUSTERED ساخت ایندکس
CREATE CLUSTERED INDEX Clustered_IX ON ClusteredTable(ID);
GO

SELECT * FROM ClusteredTable;
GO

SP_SPACEUSED ClusteredTable;
GO
--------------------------------------------------------------------

/*
بررسی صفحات تخصیص داده شده به ایندکس
ها Index Page بررسی 
*/

--صحفات وابسته به جدول
SELECT 
	page_type_desc,allocated_page_page_id,
	next_page_page_id,previous_page_page_id
FROM sys.dm_db_database_page_allocations -- SQL Server 2012
	(
		DB_ID('Index_DB'),OBJECT_ID('ClusteredTable'),
		NULL, NULL,'DETAILED'
	);
GO
--------------------------------------------------------------------

DROP TABLE IF EXISTS ClusteredTable;
GO

-- Heap ایجاد یک جدول از نوع
CREATE TABLE ClusteredTable
(
	ID CHAR(1000),
	FirstName NCHAR(1500),
	LastName NCHAR(1500)
);
GO

--بررسی ایندکس های جدول
SP_HELPINDEX ClusteredTable;
GO

-- درج تعدادی رکورد تستی
INSERT INTO ClusteredTable
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

-- ClusteredTable مشاهده رکوردهای موجود در جدول 
SELECT * FROM ClusteredTable;
GO

CREATE CLUSTERED INDEX IX_Clustered ON ClusteredTable(ID);
GO

/*
DMF آنالیز ایندکس با استفاده از 
مشاهده وضعیت فیزیکی ایندکس 

sys.dm_db_index_physical_stats
 (
	  { database_id| NULL | 0 | DEFAULT }
	, { object_id| NULL | 0 | DEFAULT }
	, { index_id| NULL | 0 | -1 | DEFAULT }
	, { partition_number| NULL | 0 | DEFAULT }
	, { mode| NULL | DEFAULT } = (DEFAULT,LIMITED,SAMPLED,DETAILED ** DEFAULT=LIMITED)
)

1: LIMITED : Leaf Level

2: SAMPLED :Leaf Level & نمونه برداری از تعدادی از صفحات
--با توجه به اینکه نمونه برداری انجام می شود احتمال تقریبی بودن نتایج وجود دارد
If the number of leaf level pages is < 10000, read all the pages,
 otherwise read every 100th pages (i.e. a 1% sample)

3: DETAILED: نمایش تمامی سطوح برگ و غیر برگ
*/

SELECT 
	*
FROM sys.dm_db_index_physical_stats
(
	DB_ID('Index_DB'),
	OBJECT_ID('ClusteredTable'),
	NULL,
	NULL,
	'DETAILED'
);
GO

SELECT 
	index_type_desc,index_depth,
	page_count,record_count
FROM sys.dm_db_index_physical_stats
(
	DB_ID('Index_DB'),
	OBJECT_ID('ClusteredTable'),
	1,
	NULL,
	'LIMITED'
);
GO
--------------------------------------------------------------------

USE AdventureWorks2017;
GO

SP_HELPINDEX 'Sales.SalesOrderDetail';
GO

SELECT 
	*
FROM sys.dm_db_index_physical_stats
(
	DB_ID('AdventureWorks2017'),
	OBJECT_ID('Sales.SalesOrderDetail'),
	NULL,
	NULL,
	'DETAILED'
);
GO

-- Sales.SalesOrderDetail مشاهده یک ایندکس خاص از جدول
SELECT 
	*
FROM sys.dm_db_index_physical_stats
(
	DB_ID('AdventureWorks2017'),
	OBJECT_ID('Sales.SalesOrderDetail'),
	2,
	NULL,
	'DETAILED'
);
GO

-- Sales.SalesOrderDetail مشاهده یک ایندکس خاص از جدول
SELECT 
	index_type_desc,index_depth,index_level,
	page_count,record_count
FROM sys.dm_db_index_physical_stats
(
	DB_ID('AdventureWorks2017'),
	OBJECT_ID('Sales.SalesOrderDetail'),
	1,
	NULL,
	'DETAILED'
);
GO