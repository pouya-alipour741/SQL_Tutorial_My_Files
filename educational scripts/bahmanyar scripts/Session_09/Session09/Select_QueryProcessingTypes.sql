
USE [AdventureWorks2014]
GO
--Logical Query Processing
	--1-FROM
	--2-WHERE
	--3-GROUP BY
	--4-HAVING
	--5-SELECT
	--6-ORDER BY 
Go
SELECT * 
FROM Sales.SalesOrderHeader
WHERE SalesPersonID=283
ORDER BY SalesOrderID
GO
--Logical Query Processing
SELECT 
	SalesPersonID, YEAR(orderdate) AS OrderYear,
	COUNT(*) AS NumOrders 
FROM Sales.SalesOrderHeader 
WHERE CustomerID = 392 
GROUP BY SalesPersonID, YEAR(orderdate) 
HAVING COUNT(*) > 1 
ORDER BY OrderYear DESC 
GO

--Physical Query Processing
Go
--Show Execution Plan
Go
--See Statistics of Queries:
SET STATISTICS IO ON
SET STATISTICS TIME ON
GO
SELECT * FROM Person.PersonPhone
GO
--See LOB Stastics:
SELECT * FROM Northwind..Employees
GO
------------------------------
--Show Live Query Execution Plans (SQL Server 2016)
GO
