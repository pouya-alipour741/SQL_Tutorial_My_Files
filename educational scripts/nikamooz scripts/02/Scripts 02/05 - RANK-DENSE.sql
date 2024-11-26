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
ROW_NUMBER, RANK, DENSE_RANK
!نیست Unique به‌صورت orderdate توجه داشته باشید که در کوئری زیر مقادیر فیلد
*/
SELECT
	orderid, orderdate, val,
	ROW_NUMBER() OVER(ORDER BY orderdate DESC) AS Row_Num,
	RANK()       OVER(ORDER BY orderdate DESC) AS Rnk,
	DENSE_RANK() OVER(ORDER BY orderdate DESC) AS D_Rnk
FROM Sales.OrderValues;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی
را DENSE_RANK و RANK عملیات مربوط به توابع
.شبیه‌سازی کنید WF بدون استفاده از

orderid          orderdate           val       Rnk   D_Rnk
--------  -----------------------  --------  ------ -------
11077     2018-05-06 00:00:00.000  1255.72     1      1
11076     2018-05-06 00:00:00.000  792.75      1      1
11075     2018-05-06 00:00:00.000  498.10      1      1
...		 						   		       
10250     2016-07-08 00:00:00.000  1552.60     827    478
10249     2016-07-05 00:00:00.000  1863.40     829    479
10248     2016-07-04 00:00:00.000  440.00      830    480

(830 rows affected)
*/

SELECT
	orderid, orderdate, val,
	(SELECT COUNT(orderdate) FROM Sales.OrderValues AS O2
		WHERE O2.orderdate > O1.orderdate) + 1 AS Rnk, -- ??? >=
	(SELECT COUNT(DISTINCT orderdate) FROM Sales.OrderValues AS O2
		WHERE O2.orderdate > O1.orderdate) + 1 AS D_Rnk
FROM Sales.OrderValues AS O1
ORDER BY orderid DESC;
GO
--------------------------------------------------------------------

-- RANK, DENSE_RANK (Ordering & Partitioning)
SELECT
	custid, orderid, orderdate, val,
	RANK()       OVER(PARTITION BY custid ORDER BY orderdate DESC) AS Rnk,
	DENSE_RANK() OVER(PARTITION BY custid ORDER BY orderdate DESC) AS D_Rnk
FROM Sales.OrderValues;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی
DENSE_RANK کوئری‌ای بنویسید که با استفاده از تابع
.رتبه‌بندی هر مشتری را براساس تعداد سفارشاتی که داشته است، انجام دهد

custid  Num_Orders   D_Rnk
------  ----------- -------
 71         31         1
 20         30         2
 63         28         3
 ...	       			 
 33         2          20
 43         2          20
 13         1          21

(89 rows affected)
*/

SELECT
	custid,
	COUNT(orderid) AS Num_Orders
FROM Sales.OrderValues
GROUP BY custid;
GO

SELECT
	custid,
	COUNT(orderid) AS Sum_Orders,
	DENSE_RANK() OVER(ORDER BY COUNT(orderid) DESC) AS D_Rnk
FROM Sales.OrderValues;
GO

SELECT
	custid,
	COUNT(orderid) AS Sum_Orders,
	DENSE_RANK() OVER(ORDER BY COUNT(orderid) DESC) AS D_Rnk
FROM Sales.OrderValues
GROUP BY custid;
GO

WITH CTE
AS
(
	SELECT
		custid,
		COUNT(orderid) AS Sum_Orders
	FROM Sales.OrderValues
	GROUP BY custid
)
SELECT
	custid,Sum_Orders
	,DENSE_RANK() OVER(ORDER BY Sum_Orders DESC) AS D_Rnk
FROM CTE;
GO