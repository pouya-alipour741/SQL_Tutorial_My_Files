USE master
GO
IF DB_ID('BulkDemo')>0
BEGIN
	ALTER DATABASE BulkDemo SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE BulkDemo
END
GO
--Create db for BulkInsert demo:
CREATE DATABASE BulkDemo
GO
USE BulkDemo
GO
IF OBJECT_ID('Students')>0	
	DROP TABLE Students
GO
CREATE TABLE Students
(
	StudentID VARCHAR(50)  PRIMARY KEY,
	FirstName NVARCHAR(100),
	LastName NVARCHAR(100),
	City NVARCHAR(100)
)
GO
--Use wizard:
--Import wizard
--Export wizard
GO
USE BulkDemo
GO
TRUNCATE TABLE Students
GO
--See volume of Table:
SP_SPACEUSED Students
GO
SELECT * FROM Students
GO
--use T-SQL:
--use Bulk Inser statement
GO
USE BulkDemo
GO
TRUNCATE TABLE Students
GO
--BULK INSERT dbo.#Students
BULK INSERT dbo.Students
	FROM 'D:\Infrastructure\Students.txt'
WITH
(
	KEEPIDENTITY,
	FIRSTROW=1,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n'
)
GO 
SP_SPACEUSED Students
GO
SELECT * FROM Students
GO
/*
By default, the BULK INSERT statement ignores constraints and disables triggers.

BULK INSERT dbo.Students
	FROM 'C:\Dump\Students.txt'
WITH
  (
    TABLOCK,
    CHECK_CONSTRAINTS,
    FIRE_TRIGGERS
  )
*/
GO
--use OpenRowSet:
GO
USE BulkDemo
GO
TRUNCATE TABLE Students
GO
SELECT 
	Test.* 
FROM OPENROWSET( BULK  'C:\Infrastructure\Students.txt',SINGLE_CLOB) AS Test
GO
SP_HELP Students
GO
INSERT INTO Students WITH (KEEPIDENTITY)(StudentID,FirstName,LastName,City)
    SELECT *
      FROM  OPENROWSET(BULK   'C:\Infrastructure\Students.txt',
						FORMATFILE= 'C:\Infrastructure\Students.Xml'     
						) as Test ;
GO
SELECT * FROM Students
GO
--use Select ... Into statement:
GO
USE BulkDemo
GO
IF OBJECT_ID('Products')>0
	DROP TABLE Products
GO
--Select ... Into:
SELECT 
	* INTO Products
FROM AdventureWorks2014.Production.Product
GO
SELECT * FROM Products
GO
IF OBJECT_ID('Products')>0
	DROP TABLE Products
GO
SELECT 
	* INTO Products
FROM AdventureWorks2014.Production.Product
WHERE 1=2
GO
SELECT * FROM Products
GO



