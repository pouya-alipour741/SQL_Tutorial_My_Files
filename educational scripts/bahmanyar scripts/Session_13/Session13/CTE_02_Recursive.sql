--Recursive CTE:
-- ساختار سلسله مراتبی
USE Northwind
GO
--Employees:
SELECT EmployeeID,FirstName,LastName,ReportsTo
FROM Employees
GO
--Employees & BossName
SELECT EmployeeID,FirstName,LastName,ReportsTo,
												(
													SELECT E2.FirstName + ' ' + E2.LastName 
													FROM Employees E2 
													WHERE E2.EmployeeID=E1.ReportsTo
												) as Manager
FROM Employees E1
GO
--Recursive CTE:
/*
WITH CTE_Name AS
(
   Query1 (Anchor Member : تولید نتیجه نهایی)
   UNION ALL
   Query2 (Recursive Member : تولید سطوح بعدی درخت)
)
--دو کوئری وجود دارد که باید با یکی از دستورات زیر به هم متصل شوندCTE در بدنه
UNION
UNION ALL
INTERSECT
EXCEPT
--Recursive Member: 
اشاره کند تا بتواند رکوردهای بعدی را تشخیص دهدCTE باید به 
شرایط کافی برای پایان حلقه پیمایش را داشته باشد
*/
--Employees & Manger & EmployeeLevel
USE Northwind
GO
;WITH CTE_Recursive AS
(
	--استخراج ریشه
	SELECT EmployeeID,FirstName,LastName,ReportsTo,1 AS EmployeeLevel
	FROM Employees
	WHERE ReportsTo IS NULL

	UNION ALL
	--استخراج کارمندان زیر دست هر کارمند قبلی
	SELECT 
		E.EmployeeID,E.FirstName,
		E.LastName,E.ReportsTo,
		CTE_Recursive.EmployeeLevel + 1 
	FROM Employees E INNER JOIN CTE_Recursive
	ON E.ReportsTo =CTE_Recursive.EmployeeID
)
SELECT * 
FROM CTE_Recursive
ORDER BY EmployeeLevel,ReportsTo
GO
--------------------------------
--کارمندانی که در پایین ترین سطح قرار گرفته اند
;WITH CTE_Recursive AS
(
	--استخراج ریشه
	SELECT 
		EmployeeID,FirstName,
		LastName,ReportsTo,1 AS EmployeeLevel
	FROM Employees
	WHERE ReportsTo IS NULL

	UNION ALL
	--استخراج کارمندان زیر دست هر کارمند قبلی
	SELECT 
		E.EmployeeID,E.FirstName,
		E.LastName,E.ReportsTo,
		CTE_Recursive.EmployeeLevel + 1 
	FROM Employees E
	INNER JOIN CTE_Recursive
	ON E.ReportsTo =CTE_Recursive.EmployeeID
)
,CTE2 AS(
	SELECT 
		* ,
		DENSE_RANK() OVER(ORDER BY EmployeeLevel DESC) AS Rk
	FROM CTE_Recursive
)
SELECT * FROM CTE2
	WHERE RK=1
GO
--شرط اعمال شود
--WHERE Rk=1
--------------------------------
--کارمندانی که دارای زیر مجموعه نیستند
;WITH CTE_Recursive AS
(
	--استخراج ریشه
	SELECT 
		EmployeeID,FirstName,
		LastName,ReportsTo,1 AS EmployeeLevel
	FROM Employees
	WHERE ReportsTo IS NULL

	UNION ALL
	--استخراج کارمندان زیر دست هر کارمند قبلی
	SELECT 
		E.EmployeeID,E.FirstName,
		E.LastName,E.ReportsTo,
		CTE_Recursive.EmployeeLevel + 1 
	FROM Employees E
	INNER JOIN CTE_Recursive
	ON E.ReportsTo =CTE_Recursive.EmployeeID
)
SELECT 
	* 
FROM CTE_Recursive
WHERE NOT EXISTS(SELECT * FROM Employees WHERE ReportsTo=CTE_Recursive.EmployeeID)
GO
--------------------------------
--استخراج زیر دستان کارمند شماره 5
;WITH CTE_Recursive AS
(
	--استخراج ریشه
	SELECT 
		EmployeeID,FirstName,
		LastName,ReportsTo,1 AS EmployeeLevel
	FROM Employees
	WHERE ReportsTo =5

	UNION ALL
	--استخراج کارمندان زیر دست هر کارمند قبلی
	SELECT 
		E.EmployeeID,E.FirstName,
		E.LastName,E.ReportsTo,
		CTE_Recursive.EmployeeLevel + 1 
	FROM Employees E
	INNER JOIN CTE_Recursive
	ON E.ReportsTo =CTE_Recursive.EmployeeID
)
SELECT 
	* 
FROM CTE_Recursive
ORDER BY EmployeeLevel,ReportsTo
GO