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

SELECT * FROM Test_Framing;
GO

/*
OVER در بخش ORDER BY در کوئری زیر به‌دلیل استفاده از عبارت
به‌صورت اتوماتیک ،Aggregate Function و در کنار آن استفاده از
:نیز پوشش داده می‌شود که مقدار پیش‌فرض آن عبارت است از Framing

RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROWS

*/
SELECT
	*,
	SUM(Val) OVER( PARTITION BY Val
				   ORDER BY Cust_ID ) AS Total
FROM Test_Framing;
GO

--Query1
SELECT
	*,
	SUM(Val) OVER( PARTITION BY Cust_ID
				   ORDER BY Cust_ID ) AS Total
FROM Test_Framing;
GO
