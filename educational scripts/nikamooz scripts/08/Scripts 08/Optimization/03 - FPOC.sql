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

DROP INDEX IF EXISTS
	Sales.Orders.idx_ce,
	Sales.Orders.idx_ce_o;
GO

-- ایندکس مناسب برای کوئری زیر چیست؟
SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid)
FROM Sales.Orders;
GO

/*
POC ایجاد ایندکس مطابق با روال
از کوئری Sort و حذف اپراتور
Performance و افزایش چشمگیر
*/
DROP INDEX IF EXISTS Sales.Orders.idx_ce;
GO
CREATE INDEX idx_ce ON Sales.Orders(custid, empid);
GO

SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid) AS Row_Num
FROM Sales.Orders;
GO

SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid) AS Row_Num
FROM Sales.Orders WITH(INDEX(PK_Orders));
GO

-- WHERE به‌دلیل وجود بخش idx_ce عدم استفاده از ایندکس
SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid) AS Row_Num
FROM Sales.Orders
	WHERE orderdate BETWEEN '20170101' AND '20171231';
GO

/*
idx_ce اجبار به‌استفاده از ایندکس
!مناسب نیست idx_ce از کوئری حذف شده است اما ایندکس Sort اپراتور
*/
SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid) AS Row_Num
FROM Sales.Orders WITH(INDEX(idx_ce))
	WHERE orderdate BETWEEN '20170101' AND '20171231';
GO

/*
FPOC ایجاد ایندکس مطابق با روال
از کوئری Sort و حذف اپراتور
Performance و افزایش چشمگیر
*/
DROP INDEX IF EXISTS Sales.Orders.idx_ce_o;
GO
CREATE INDEX idx_ce_o ON Sales.Orders(custid,empid) INCLUDE(orderdate);
GO

SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid) AS Row_Num
FROM Sales.Orders
	WHERE orderdate BETWEEN '20170101' AND '20171231';
GO

SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ce))
	WHERE orderdate BETWEEN '20170101' AND '20171231';
GO

SELECT
	custid, empid,
	ROW_NUMBER() OVER(PARTITION BY custid ORDER BY empid)
FROM Sales.Orders WITH(INDEX(PK_Orders))
	WHERE orderdate BETWEEN '20170101' AND '20171231';
GO
--------------------------------------------------------------------

/*
?ایندکس مناسب برای کوئری زیر چیست
*/

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE orderid > 10249;
GO

SP_HELPINDEX 'Sales.Orders';
GO

-- Primary Key استفاده از ایندکس موجود بر روی
SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE orderid > 10249;
GO

DROP INDEX IF EXISTS Sales.Orders.idx_ce_Of;
GO
CREATE INDEX idx_ce_Of ON Sales.Orders(custid, empid) INCLUDE(orderid,freight);
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE orderid > 10249;
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(PK_Orders))
	WHERE orderid > 10249;
GO

DROP INDEX IF EXISTS Sales.Orders.idx_ce_f;
GO
CREATE INDEX idx_ce_f ON Sales.Orders(custid, empid) INCLUDE(freight);
GO

DROP INDEX IF EXISTS Sales.Orders.idx_oce_f;
GO
CREATE INDEX idx_oce_f ON Sales.Orders(orderid,custid, empid) INCLUDE(freight);
GO

SET STATISTICS IO ON;

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_oce_f))
	WHERE orderid > 10249;
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ce_f))
	WHERE orderid > 10249;
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ce_Of))
	WHERE orderid > 10249;
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(PK_Orders))
	WHERE orderid > 10249;
GO
--------------------------------------------------------------------

/*
?ایندکس مناسب برای کوئری زیر چیست
*/
SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE shipcity ='Lyon';
GO

-- Primary Key استفاده از ایندکس موجود بر روی
SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE shipcity ='Lyon';
GO

DROP INDEX IF EXISTS Sales.Orders.idx_ces_f;
GO
CREATE INDEX idx_ces_f ON Sales.Orders(custid,empid,shipcity) INCLUDE(freight);
GO

DROP INDEX IF EXISTS Sales.Orders.idx_ce_sf;
GO
CREATE INDEX idx_ce_sf ON Sales.Orders(custid, empid) INCLUDE(shipcity,freight);
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE shipcity ='Lyon';
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ces_f))
	WHERE shipcity ='Lyon';
GO

DROP INDEX IF EXISTS Sales.Orders.idx_sce_f;
GO
CREATE INDEX idx_sce_f ON Sales.Orders(shipcity,custid,empid) INCLUDE(freight);
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders
	WHERE shipcity ='Lyon';
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ces_f))
	WHERE shipcity ='Lyon';
GO

SELECT
	custid, freight,
	ROW_NUMBER() OVER(PARTITION BY custid	ORDER BY empid)
FROM Sales.Orders WITH(INDEX(idx_ce_sf))
	WHERE shipcity ='Lyon';
GO