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

SET NOCOUNT ON;

USE WF;
GO

/*
ایجاد دو جدول فرضی جهت بررسی موارد بهینه‌سازی
*/
DROP TABLE IF EXISTS dbo.Transactions, dbo.Accounts;
GO

CREATE TABLE dbo.Accounts
(
  actid   INT         NOT NULL,
  actname VARCHAR(50) NOT NULL,
  CONSTRAINT PK_Accounts PRIMARY KEY(actid)
);
GO

CREATE TABLE dbo.Transactions
(
  actid  INT   NOT NULL,
  tranid INT   NOT NULL,
  val    MONEY NOT NULL,
  CONSTRAINT PK_Transactions PRIMARY KEY(actid, tranid),
  CONSTRAINT FK_Transactions_Accounts
    FOREIGN KEY(actid)
    REFERENCES dbo.Accounts(actid)
);
GO

DROP FUNCTION IF EXISTS dbo.GetNums;
GO

CREATE FUNCTION dbo.GetNums(@Low AS BIGINT, @High AS BIGINT) RETURNS TABLE
AS
RETURN
  WITH
    L0   AS (SELECT C FROM (VALUES(1),(1)) AS D(C)),
    L1   AS (SELECT 1 AS c FROM L0 AS A CROSS JOIN L0 AS B),
    L2   AS (SELECT 1 AS c FROM L1 AS A CROSS JOIN L1 AS B),
    L3   AS (SELECT 1 AS c FROM L2 AS A CROSS JOIN L2 AS B),
    L4   AS (SELECT 1 AS c FROM L3 AS A CROSS JOIN L3 AS B),
    L5   AS (SELECT 1 AS c FROM L4 AS A CROSS JOIN L4 AS B),
    Nums AS (SELECT ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) AS Row_Num FROM L5)
  SELECT
	@Low + Row_Num - 1 AS n
  FROM Nums
  ORDER BY Row_Num
  OFFSET 0 ROWS FETCH FIRST @High - @Low + 1 ROWS ONLY;
GO

DECLARE
  @Num_Partitions     AS INT = 100,
  @Rows_per_Partition AS INT = 20000;
INSERT INTO dbo.Accounts(actid, actname)
	SELECT n AS actid, 'account ' + CAST(n AS VARCHAR(10)) AS actname
	FROM dbo.GetNums(1, 100);
INSERT INTO dbo.Transactions(actid, tranid, val)
	SELECT
		NP.n, RPP.n,
		(ABS(CHECKSUM(NEWID())%2)*2-1) * (1 + ABS(CHECKSUM(NEWID())%5))
	FROM dbo.GetNums(1, @Num_Partitions) AS NP
	CROSS JOIN dbo.GetNums(1, @Rows_per_Partition) AS RPP;
GO

-- مشاهده ایندکس‌های موجود بر روی یک جدول
sp_helpindex Transactions;
GO

/*
در پلن اجرایی Sort مشاهده اپراتور
Ordered Property: False
*/
SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions;
GO

/*
POC ایجاد ایندکس برخلاف روال
!از کوئری Sort و عدم حذف اپراتور
*/
DROP INDEX IF EXISTS dbo.Transactions.idx_va_t;
GO
CREATE INDEX idx_va_t ON dbo.Transactions (val,actid) INCLUDE(tranid);
GO

SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions;
GO

/*
POC ایجاد ایندکس برخلاف روال
!از کوئری Sort و عدم حذف اپراتور
*/
DROP INDEX IF EXISTS dbo.Transactions.idx_at_v;
GO
CREATE INDEX idx_at_v ON dbo.Transactions (actid,tranid) INCLUDE(val);
GO

SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions;-- به عدم استفاده از ایندکس اشاره شود
GO

/*
POC ایجاد ایندکس مطابق با روال
از کوئری Sort و حذف اپراتور
Performance و افزایش چشمگیر
*/
DROP INDEX IF EXISTS dbo.Transactions.idx_av_t;
GO
CREATE INDEX idx_av_t ON dbo.Transactions (actid,val) INCLUDE(tranid);
GO

SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions;
GO

SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions WITH(INDEX(PK_Transactions));
GO

-- آیا ایندکس زیر مناسب است؟
DROP INDEX IF EXISTS dbo.Transactions.idx_av;
GO
CREATE INDEX idx_av ON dbo.Transactions (actid,val);
GO

-- !عملکرد دو ایندکس اخیر یکسان است
SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions WITH(INDEX(idx_av));
GO
SELECT
	actid, tranid, val,
	ROW_NUMBER() OVER(PARTITION BY actid ORDER BY val) AS Row_Num
FROM dbo.Transactions WITH(INDEX(idx_av_t));
GO