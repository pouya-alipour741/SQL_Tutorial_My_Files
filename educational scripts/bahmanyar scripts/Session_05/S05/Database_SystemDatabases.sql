USE master
GO
SP_HELPFILE
GO
--Some Tables in Master:
SELECT * FROM sysdatabases
SELECT * FROM syscacheobjects
SELECT * FROM sysconfigures
SELECT * FROM syslanguages
SELECT * FROM syslogins
SELECT * FROM sysmessages
GO
--------------------------------------------------------------------
USE msdb
GO
SP_HELPFILE
GO
--Some Tables in MSDB:
SELECT * FROM sysjobs
SELECT * FROM sysjobhistory
SELECT * FROM backupset
SELECT * FROM backupfile
SELECT * FROM restorehistory
GO
--------------------------------------------------------------------
USE tempdb
GO
SP_HELPFILE
GO
IF OBJECT_ID('Person')>0
	DROP TABLE Person
GO	
CREATE TABLE Person
(
	Id int primary key not null identity(1,1),
    FirstName varchar(20),
    LastName  varchar(20),
    Email     varchar(50)  
)
GO
insert into Person (FirstName,LastName,Email) VALUES
	('Ali Mohammad','Bahmanyar','Bahmanyar.a.m@gmail.com')
Go 1000
SELECT * FROM Person
GO
--After Restarting SQLSerevr , Tempdb is Refreshed and clear all data
GO
--another use of tempdb : TempTables in other db

USE Northwind
GO
CREATE TABLE #T1
(
	F1 INT PRIMARY KEY,
	F2 NVARCHAR(10)
)
GO

--Local Temp Table : #
--Local Temp Table : ##
INSERT INTO #T1 VALUES 
	(1,'A'),
	(2,'B'),
	(3,'C'),
	(4,'D'),
	(5,'E'),
	(6,'F')
GO
SELECT * FROM #T1
GO
--After Restarting SQLSerevr , Tempdb is Refreshed and clear all data 
--------------------------------------------------------------------
USE model
GO
SP_HELPFILE
GO
IF OBJECT_ID('Person')>0
	DROP TABLE Person
GO	
CREATE TABLE Person
(
	Id int primary key not null identity(1,1),
    FirstName varchar(20),
    LastName  varchar(20),
    Email     varchar(50)  
)
GO
insert into Person (FirstName,LastName,Email) VALUES
	('Ali Mohammad','Bahmanyar','Bahmanyar.a.m@gmail.com')
Go 1000
--Every new db has table Person:
USE master
GO
CREATE DATABASE TestDB
GO
USE TESTDB
GO
SP_HELPFILE
GO
SELECT * FROM Person
--------------------------------------------------------------------
--Resource Database:
USE master
GO
--To determine the version number of the Resource database, use:
SELECT SERVERPROPERTY('ResourceVersion');
--To determine when the Resource database was last updated, use:
SELECT SERVERPROPERTY('ResourceLastUpdateDateTime');
GO
-- Source Code of SD Views are in this Procedure
SELECT OBJECT_DEFINITION(OBJECT_ID('sys.objects')) AS [SQL Definitions];
GO
--D:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER2014\MSSQL\Binn\mssqlsystemresource.mdf