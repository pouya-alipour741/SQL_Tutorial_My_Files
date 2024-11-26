USE AdventureWorks2014
GO
SET STATISTICS IO ON 
Go
SELECT * FROM Sales.SalesOrderDetail
GO
SELECT TOP 3 * FROM Sales.SalesOrderDetail
GO
DECLARE @T INT=50
SELECT TOP (@T) * FROM HumanResources.Employee
GO
--See IO & Execution Plan :
SET STATISTICS IO ON
GO
SELECT TOP 3 * FROM Sales.SalesOrderDetail
	WHERE OrderQty=33
GO
SELECT TOP 50 * FROM Sales.SalesOrderDetail
	WHERE OrderQty=33
GO
--Show Last 10 Records:
SELECT TOP 10 * FROM Sales.SalesOrderDetail
	ORDER BY SalesOrderID DESC
GO
--Show All Records:
SP_SPACEUSED 'Sales.SalesOrderHeader'
GO
--Use percent in Top:
SELECT TOP 10 PERCENT
	SalesOrderID,SalesOrderNumber,SalesPersonID,OrderDate
FROM Sales.SalesOrderHeader
GO
SELECT TOP 50 PERCENT
	SalesOrderID,SalesOrderNumber,SalesPersonID,OrderDate
FROM Sales.SalesOrderHeader
GO
--select some records in random(by accident)
SELECT TOP 5
	SalesOrderID,SalesOrderNumber,SalesPersonID,OrderDate
FROM Sales.SalesOrderHeader
ORDER BY NEWID()
GO
-- NewID() Function & DataType:
SELECT NEWID() AS Result
SELECT NEWID() AS Result
SELECT NEWID() AS Result
GO
SELECT TOP 5
	SalesOrderID,SalesOrderNumber,SalesPersonID,OrderDate,NEWID() AS [NewID]
FROM Sales.SalesOrderHeader
ORDER BY NEWID()
Go
--Use Ties in Top:
--Return Additional Records & Select repetitive Records
USE [SofiaCarRental_v2.2]
GO
IF OBJECT_ID('ClientRequests')>0
	DROP TABLE ClientRequests
GO
CREATE TABLE ClientRequests
(
    Id INT PRIMARY KEY not null IDENTITY(1,1),
    ClientIp VARCHAR(15) NOT NULL,
    NumberOfRequests INT NOT NULL
)
GO
INSERT INTO ClientRequests (ClientIp, NumberOfRequests)
 VALUES
    ('1.1.1.1', 5100),
    ('2.2.2.2', 10000),
    ('3.3.3.3', 200),
    ('3.3.3.3', 44000),
    ('4.4.4.4', 2200),
    ('5.5.5.5', 10000),
    ('6.6.6.6', 31000),
    ('7.7.7.7', 100),
    ('8.8.8.8', 300),
    ('9.9.9.9', 10000)
GO
SELECT * 
FROM ClientRequests
ORDER BY NumberOfRequests DESC
GO
SELECT TOP 3 * 
FROM ClientRequests
ORDER BY NumberOfRequests DESC
GO
-- Ties increase number of records of Top:
SELECT TOP (3) WITH TIES * 
FROM ClientRequests
ORDER BY NumberOfRequests DESC
GO
--Another way : 
--instead of Top:
USE AdventureWorks2014
GO
SET ROWCOUNT 3
GO
SELECT * FROM Sales.SalesOrderDetail
	WHERE OrderQty=33
GO
SELECT * FROM HumanResources.Employee
GO