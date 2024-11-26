USE AdventureWorks2014
GO
--All Records order by Clustred Index by Default:
--See All Index of Table:
SP_HELPINDEX 'Production.Product'
GO
--All Records order by Clustred Index by Default:
SELECT 
	ProductID,Name,ProductNumber,Color
FROM Production.Product
GO 
SELECT 
	ProductID,Name,ProductNumber,Color
FROM Production.Product
ORDER BY Color ASC
GO
SELECT 
	ProductID,Name,ProductNumber,Color
FROM Production.Product
ORDER BY Color DESC
GO
SELECT 
	SalesOrderID,
	CustomerID,
	OrderDate
FROM Sales.SalesOrderHeader
ORDER BY CustomerID ASC ,OrderDate DESC
GO

SELECT TOP 3
	SalesOrderID,
	CustomerID,
	OrderDate
FROM Sales.SalesOrderHeader
GO
--Select Last 3 Orders:
SELECT TOP 3
	SalesOrderID,
	CustomerID,
	OrderDate
FROM Sales.SalesOrderHeader 
ORDER BY SalesOrderID DESC
GO
--Select 3 Record Random
SELECT NEWID()
GO
SELECT NEWID(),* 
FROM Sales.SalesOrderHeader
GO
SELECT TOP 3 NEWID(),* 
FROM Sales.SalesOrderHeader
GO
--Select 3 Record Random
SELECT TOP 3 NEWID(),* 
FROM Sales.SalesOrderHeader 
ORDER BY NEWID()
GO
