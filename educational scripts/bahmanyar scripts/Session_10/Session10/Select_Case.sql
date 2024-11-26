
USE tempdb
GO
--Simple Case Expression :
--CASE Expression
--	WHEN Expression1 THEN Result1
--	WHEN Expression2 THEN Result2
--	ELSE ResultN
--END

DECLARE @EmpCode INT=101
SELECT
	CASE @EmpCode
		WHEN 100 THEN N'علی محمد بهمن یار'
		WHEN 101 THEN 'Ali Mohammad Bahmanyar'
		ELSE 'Not Valid Code'
	END
GO
--------------------------------------------------------------------
--Searched Case Expression :
--CASE
--	WHEN Boolean_Expression1 THEN Result1
--	WHEN Boolean_Expression2 THEN Result2
--	ELSE ResultN
--END

DECLARE @V1 INT=12
SELECT
	CASE
		WHEN @V1 <=10 THEN 'Weak'
		WHEN @V1 BETWEEN 11 AND 15 THEN 'Medium'
		WHEN @V1 BETWEEN 16 AND 20 THEN 'Good'
		ELSE '---'
	END
GO
--Using CASE in a SET statement
DECLARE @V1 NVARCHAR(10)=N'تیر'
DECLARE @V2 NVARCHAR(10)
SET @V2 = 
CASE @V1
    WHEN N'فروردین'	THEN N'بهار'
    WHEN N'اردیبهشت'	THEN N'بهار'
    WHEN N'خرداد'		THEN N'بهار'
    WHEN N'تیر'			THEN N'تابستان'
	WHEN N'مرداد'		THEN N'تابستان'
	WHEN N'شهریور'		THEN N'تابستان'
	WHEN N'مهر'			THEN N'پاییز'
	WHEN N'آبان'		THEN N'پاییز'
	WHEN N'آذر'			THEN N'پاییز'
	WHEN N'دی'			THEN N'زمستان'
	WHEN N'بهمن'		THEN N'زمستان'
	WHEN N'اسفند'		THEN N'زمستان'
    ELSE NULL
END
SELECT @V1 AS V1,@V2 AS V2
GO
--Use Case expression in T-SQL:
USE AdventureWorks2014
GO
--Simple CASE expression:
SELECT 
	ProductID,ProductNumber,Name,
										CASE Color
											WHEN 'Black' THEN N'مشکی'
											WHEN 'Silver' THEN N'نقره ای'
											WHEN 'Yellow' THEN N'زرد'
											ELSE N'**بدون رنگ**'
										END AS [رنگ]
FROM Production.Product
GO
--Another Way:
SELECT 
	ProductID,ProductNumber,Name,Color,
										 [رنگ]=CASE Color
											WHEN 'Black' THEN N'مشکی'
											WHEN 'Silver' THEN N'نقره ای'
											WHEN 'Yellow' THEN N'زرد'
											ELSE N'**بدون رنگ**'
										END 
FROM Production.Product
GO
--Searched CASE expression:
SELECT 
	SalesOrderID,SalesOrderDetailID,ProductID,UnitPrice,
	CASE 
		WHEN UnitPrice <=100 THEN N'کم'
		WHEN UnitPrice >100 AND UnitPrice<=500  THEN N'متوسط'
		WHEN UnitPrice BETWEEN 500 AND 1200 THEN N'خوب'
		WHEN UnitPrice >1200 THEN N'بالا'
	END AS UnitPriceDesc
FROM Sales.SalesOrderDetail
Go
--Use CASE expressions to create Custom Order by:
SELECT 
	SalesOrderID,SalesOrderDetailID,ProductID,UnitPrice,
														CASE 
															WHEN UnitPrice <=100 THEN N'کم'
															WHEN UnitPrice >100 AND UnitPrice<=500  THEN N'متوسط'
															WHEN UnitPrice BETWEEN 500 AND 1200 THEN N'خوب'
															WHEN UnitPrice >1200 THEN N'بالا'
														END AS UnitPriceDesc
FROM Sales.SalesOrderDetail
GO
--Custom Order by:
SELECT 
	SalesOrderID,SalesOrderDetailID,ProductID,UnitPrice,
														CASE 
															WHEN UnitPrice <=100 THEN N'کم'
															WHEN UnitPrice >100 AND UnitPrice<=500  THEN N'متوسط'
															WHEN UnitPrice BETWEEN 500 AND 1200 THEN N'خوب'
															WHEN UnitPrice >1200 THEN N'بالا'
														END AS UnitPriceDesc
FROM Sales.SalesOrderDetail
ORDER BY
	CASE 
		WHEN UnitPrice <=100 THEN 4 --کم
		WHEN UnitPrice >100 AND UnitPrice<=500  THEN 1 --متوسط
		WHEN UnitPrice BETWEEN 500 AND 1200 THEN 2 --خوب
		WHEN UnitPrice >1200 THEN 3 --بالا
	END
GO