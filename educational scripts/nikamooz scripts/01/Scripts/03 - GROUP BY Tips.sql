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
SELECT
    < select_list >   
FROM <table_source>
[ WHERE <search_condition> ]   
[ <GROUP BY> { column-expression  
			    | ROLLUP ( <group_by_expression> [ ,...n ] )  
			    | CUBE ( <group_by_expression> [ ,...n ] )  
			    | GROUPING SETS ( <grouping_set> [ ,...n ] ) ]
[ HAVING < search_condition > ] 
*/

USE NikamoozDB;
GO

-- .شرکت داشته باشند GROUP BY استفاده می‌شوند می‌بایست حتما در SELECT  فیلدهایی که در بخش
SELECT
	EmployeeID, CustomerID
FROM Orders
GROUP BY EmployeeID;--, CustomerID
GO
--------------------------------------------------------------------

-- .ظاهر نشده‌اند، استفاده کرد SELECT می‌توان از فیلدهایی که در بخش GROUP BY  در بخش
SELECT
	EmployeeID
FROM Orders
GROUP BY EmployeeID, CustomerID;
GO
--------------------------------------------------------------------

-- .شرکت کنند ORDER BY شرکت نکرده‌اند نمی‌توانند در بخش GROUP BY  فیلدهایی که در
SELECT
	EmployeeID
FROM Orders
GROUP BY EmployeeID, CustomerID
ORDER BY OrderID;
GO
--------------------------------------------------------------------

-- ???
SELECT * FROM Sales.Customers
GROUP BY *;
GO

-- راه‌کار کوئری بالایی
SELECT DISTINCT * FROM Sales.Customers;
GO
--------------------------------------------------------------------

-- .نیامده باشد SELECT شرکت داده شود اما در بخش WHERE  یک فیلد می‌تواند در بخش
SELECT
	EmployeeID,
	COUNT(OrderID) AS Num
FROM Orders
	WHERE CustomerID < 50
GROUP BY EmployeeID;
GO
--------------------------------------------------------------------

-- .نیامده باشد SELECT شرکت داده شود اما در بخش HAVING  یک فیلد می‌تواند در بخش
SELECT
	EmployeeID,
	CustomerID
FROM Orders
GROUP BY EmployeeID, CustomerID
	HAVING COUNT(OrderID) > 5;
GO
--------------------------------------------------------------------

-- .غلط است
SELECT
	EmployeeID,
	CustomerID
FROM Orders
--GROUP BY EmployeeID, CustomerID
	HAVING COUNT(OrderID) > 5;
GO
--------------------------------------------------------------------

-- .استفاده از یک فیلد در دو نقش مجاز می‌باشد
SELECT
	City,
	COUNT(City) AS Num
FROM Customers
GROUP BY City;
GO
--------------------------------------------------------------------

-- Allowed
SELECT
	City + ' ' + STATE
FROM Employees
GROUP BY City, STATE;

SELECT
	City + ' ' + STATE
FROM Employees
GROUP BY City + ' ' + STATE; 

SELECT
	City + ' ' + STATE + ' * '
FROM Employees
GROUP BY City ,STATE;
GO
--------------------------------------------------------------------

-- Not Allowed
SELECT
	City ,STATE
FROM Employees
GROUP BY City + STATE;

SELECT
	City + ' * ' + STATE
FROM Employees
GROUP BY City + STATE;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی

تفاوت میان کوئری‌های زیر در چیست؟

*/

-- Query 1
SELECT 
	EmployeeID, COUNT(*) AS NumOrders
FROM Orders
	WHERE OrderDate < '20160506'
GROUP BY EmployeeID;
GO

-- Query 2
SELECT 
	EmployeeID, COUNT(*) AS NumOrders
FROM Orders
GROUP BY EmployeeID
	HAVING MAX(OrderDate) < '20160506';
GO
--------------------------------------------------------------------

/*
تمرین کلاسی

کوئری‌ای بنویسید که در خروجی، فهرست مشتریانی را نمایش دهد که
.حداقل در یکی از تاریخ‌ها بیش از یک بار درخواست سفارش داده باشند

CustomerID
-----------
   10
   32
   39
   40
   47
   71

(6 rows affected)

*/

SELECT
	 DISTINCT CustomerID
FROM Orders
GROUP BY CustomerID, OrderDate
	HAVING COUNT(OrderID) > 1;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی

.اطلاعات مربوط به مشتریان ثبت شده است Customers در جدول
.از طرفی می‌دانیم که از هر شهر چندین مشتری داریم
کوئری‌ای بنویسید که مشخص کند به‌ازای تمامی مشتریان هر شهر
.تعداد کل سفارشات، مقدار بیشنه و کمینه سفارشات چقدر بوده است

Sum_Order   Min_Order   Max_Order    City
---------  ----------  ----------  ---------
  29          8            12       اردبیل
  24          5            19       ارومیه
  57          3            18       اصفهان
  ...	      	  		           
  30          12           18       کرمانشاه
  11          11           11       یاسوج
  51          4            15       یزد

(29 rows affected)

*/

-- استراتژی غلط
SELECT
	COUNT(O.OrderID) AS Num,
	(SELECT C.City FROM Customers AS C
		WHERE C.CustomerID = O.CustomerID) AS Num
FROM Orders AS O;
GO

-- رفع مشکل کوئری بالا
SELECT
	COUNT(O.OrderID) AS Num,
	(SELECT C.City FROM Customers AS C
		WHERE C.CustomerID = O.CustomerID) AS Num
FROM Orders AS O
GROUP BY O.CustomerID;
GO

-- استراتژی درست
SELECT
	C.City,
	(SELECT COUNT(O.OrderID) FROM Orders AS O
		WHERE O.CustomerID = C.CustomerID) AS Num
FROM Customers AS C;
GO

SELECT Tmp.*
FROM (	SELECT
			C.City,
			(SELECT COUNT(O.OrderID) FROM Orders AS O
				WHERE O.CustomerID = C.CustomerID) AS Num
		FROM Customers AS C ) AS Tmp;
GO

SELECT
	SUM(TMP.Num ) AS Sum_Val,
	MIN(TMP.Num ) AS Min_Val,
	MAX(TMP.Num ) AS Max_Val,
	Tmp.City
FROM (	SELECT
			C.City,
			(SELECT COUNT(O.OrderID) FROM Orders AS O
				WHERE O.CustomerID = C.CustomerID) AS Num
		FROM Customers AS C ) AS Tmp
GROUP BY Tmp.City;
GO
--------------------------------------------------------------------

/*
تمرین کلاسی

کوئری‌ای بنویسید Salesman با توجه به رکوردهای موجود در جدول
.که مشخص کند کدامیک از فروشندگان فقط از یک نوع کالا فروخته است

Salesman   single_Sale
---------  -----------
 کالای 2       رضایی 

(1 row affected)

*/

SELECT * FROM Salesman;
GO

SELECT
	Salesman
FROM Salesman
GROUP BY Salesman
	HAVING COUNT(DISTINCT Product_Name) = 1;
GO

-- !!!اضافه کردن نام کالا و شروع دردسر
SELECT
	Salesman, Product_Name
FROM Salesman
GROUP BY Salesman, Product_Name
	HAVING COUNT(DISTINCT Product_Name) = 1;
GO

-- Table Expression
WITH CTE
AS
(
	SELECT
		Salesman
	FROM Salesman
	GROUP BY Salesman
		HAVING COUNT(DISTINCT Product_Name) = 1
)
SELECT
	CTE.Salesman,
	(SELECT DISTINCT S.Product_Name FROM Salesman AS S
		WHERE S.Salesman = CTE.Salesman)
FROM CTE;
GO

-- Table Expression
WITH CTE
AS
(
	SELECT
		Salesman
	FROM Salesman
	GROUP BY Salesman
		HAVING COUNT(DISTINCT Product_Name) = 1
)
SELECT
	DISTINCT Salesman, Product_Name
FROM Salesman AS S
	WHERE Salesman IN (SELECT Salesman FROM CTE);
GO

-- !!!یک راه ساده‌تر
SELECT
	Salesman, MAX(product_name) AS single_Sale
FROM Salesman 
GROUP BY Salesman
	HAVING MIN(product_name) = MAX(product_name);
GO

-- !!!یک راه ساده‌تر
SELECT
	Salesman, MAX(product_name) AS single_product_name
FROM Salesman 
GROUP BY Salesman
	HAVING COUNT (DISTINCT product_name) = 1;
GO
--------------------------------------------------------------------

/*
GROUP BY ALL
.فیلتر شده‌اند WHERE نمایش نتایجی که در شرط
*/ 
SELECT
	City,
	COUNT(City) AS Num
FROM Employees
	WHERE Birthdate >= '1962-01-01'
GROUP BY ALL City;
GO

/*
تمرین کلاسی

.شبیه‌سازی کنید GROUP BY ALL کوئری بالا را بدون استفاده از
*/
SELECT
	City,
	COUNT(CASE WHEN Birthdate >= '1962-01-01' THEN 1 END) AS Num
FROM Employees
GROUP BY City;
GO

-- GROUP BY ALL روشی دیگر برای شبیه‌سازی
SELECT
	City,
	COUNT(City) AS Num
FROM Employees
	WHERE Birthdate >= '1962-01-01'
GROUP BY City
UNION ALL
SELECT
	City,
	0 AS Num
FROM Employees AS E1
	WHERE City NOT IN (SELECT City FROM Employees AS E2
						WHERE Birthdate >= '1962-01-01');
GO

-- GROUP BY ALL بر روی HAVING تاثیر
SELECT 
	City,
	COUNT(City) AS Num
FROM Employees
	WHERE Birthdate > '1962-01-01'
GROUP BY ALL City
HAVING COUNT(*) > 2;
GO

