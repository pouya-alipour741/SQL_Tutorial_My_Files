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

/* View(Sales.OrderValues): Sales.Orders JOIN Sales.OrderDetails Sum qty & val */

SELECT * FROM Sales.OrderValues;
GO

-- GROUP BY & Field
SELECT
	custid,
	SUM(val) AS Sum_Val,
	AVG(val) AS Avg_Val
FROM Sales.OrderValues
GROUP BY custid;
GO

-- GROUP BY & Fields
SELECT
	custid, orderid,
	SUM(val) AS SumVal,
	AVG(val) AS AvgVal
FROM Sales.OrderValues
GROUP BY custid, orderid;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی

بررسی یک سناریو
:می‌خواهیم به‌ازای هر سفارش مشتری 33 موارد زیر را مشخص کنیم
1) .مبلغ هر سفارش مشتری 33 چه درصدی از مبلغ کل سفارشات خودش است
2) .اختلاف مقدار مبلغ هر سفارش با میانگین مبلغ کل سفارشات خودش چقدر است
*/

SELECT * FROM Sales.OrderValues
	WHERE custid = 33;
GO

/*
orderid   custid     val
-------   ------   --------
 10268     33       1101.20
 10785     33       387.50
                   --------
				   Sum: 1488.7
				   AVG: 744.35


orderid custid    val    Prcnt     Diff
------- ------ -------- ------ -----------
 10268   33     1101.20  73.97  356.850000
 10785   33     387.50   26.03  -356.850000

(2 rows affected)
*/

-- Table Expression حل مساله با دیدگاه
WITH Aggregates
AS
(
	SELECT
		custid,
		SUM(val) AS Sum_Cust,
		AVG(val) AS Avg_Cust
	FROM Sales.OrderValues
		WHERE custid = 33
	GROUP BY custid
)
SELECT
	O.orderid, O.custid, O.val,
	CAST(100 * O.val / A.Sum_Cust AS NUMERIC(5, 2)) AS Prcnt,
	O.val - A.Avg_Cust AS Diff
FROM Sales.OrderValues AS O
JOIN Aggregates AS A
	ON O.custid = A.custid;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی
تغییر سناریو تمرین قبلی
.تمامی موارد قبل برای هر مشتری و به‌ازای سفارشات خودش و سفارشات کل محاسبه شود
*/

SELECT * FROM Sales.OrderValues
	WHERE custid = 33;
GO

/*
orderid   custid     val
-------   ------   --------
 10268     33       1101.20
 10785     33       387.50
                   --------
				   Sum: 1488.7
				   AVG: 744.35

				   Sum Total: 1265793.22
				   AVG Total: 1525.052072


orderid  custid    val    Prcnt_Cust    Diff_Cust    Prcnt_All    Diff_All
-------  ------ --------  -----------  ------------  ----------  ------------
 ...	 	    					   				
 10268    33     1101.20   73.97       356.850000      0.09       -423.852072
 10785    33     387.50    26.03       -356.850000     0.03       -1137.552072
 ...

(830 rows affected)
*/
WITH
CustAggregates
AS
(
	-- محاسبه مجموع و میانگین برای هر مشتری
	SELECT
		custid,
		SUM(val) AS Sum_Cust,
		AVG(val) AS Avg_Cust
	FROM Sales.OrderValues
	GROUP BY custid
),
GrandAggregates
AS
(
	-- محاسبه مجموع و میانگین به‌ازای تمامی مشتریان
	SELECT
		SUM(val) AS Sum_All,
		AVG(val) AS Avg_All
	FROM Sales.OrderValues
)
SELECT
	O.orderid, O.custid, O.val,
	CAST(100 * O.val / CA.Sum_Cust AS NUMERIC(5, 2)) AS Prcnt_Cust,
	O.val - CA.Avg_Cust AS Diff_Cust,
	CAST(100 * O.val / GA.Sum_All AS NUMERIC(5, 2)) AS Prcnt_All,
	O.val - GA.Avg_All AS Diff_All
FROM Sales.OrderValues AS O
JOIN CustAggregates AS CA
	ON O.custid = CA.custid
CROSS JOIN GrandAggregates AS GA;
GO

-- Subquery حل مساله با دیدگاه
SELECT
	orderid, custid, val,
	CAST(100 * val / (SELECT SUM(O2.val) FROM Sales.OrderValues AS O2
						WHERE O2.custid = O1.custid) AS NUMERIC(5, 2)) AS Prcnt_Cust,
	val - (SELECT AVG(O2.val) FROM Sales.OrderValues AS O2
			WHERE O2.custid = O1.custid) AS Diff_Cust,
	CAST(100 * val / (SELECT SUM(O2.val) FROM Sales.OrderValues AS O2) AS NUMERIC(5, 2)) AS Prcnt_All,
	val - (SELECT AVG(O2.val) FROM Sales.OrderValues AS O2) AS Diff_All
FROM Sales.OrderValues AS O1;
GO

-- WF حل مساله با دیدگاه
SELECT
	orderid, custid, val,
	CAST(100 * val / SUM(val) OVER(PARTITION BY custid) AS NUMERIC(5, 2)) AS Pct_Cust,
	val - AVG(val) OVER(PARTITION BY custid) AS Diff_Cust,
	CAST(100 * val / SUM(val) OVER() AS NUMERIC(5, 2)) AS Pct_All,
	val - AVG(val) OVER() AS Diff_All
FROM Sales.OrderValues AS O;
GO