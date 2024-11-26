
--DDL Triggers

USE master
GO
IF DB_ID('DDL_Trigger')>0
BEGIN
	ALTER DATABASE DDL_Trigger SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DDL_Trigger
END
GO
CREATE DATABASE DDL_Trigger
GO
USE DDL_Trigger
GO
--Create DDL Trigger:
--Make Readonly Database Structure:
CREATE TRIGGER DDL_Trigger01 
ON DATABASE 
FOR DROP_TABLE, ALTER_TABLE 
AS 
   PRINT N'You can not drop or delete any object of this database!' 
   ROLLBACK
GO

GO
--See some info about Triggers:
SELECT * FROM sys.trigger_event_types
SELECT * FROM sys.triggers
SELECT * FROM sys.trigger_events
GO
CREATE TABLE T1
(
	F1 INT PRIMARY KEY,
	F2 NVARCHAR(50)
)
GO
SELECT * FROM T1
GO
DROP TABLE T1
GO
ALTER TABLE T1 ADD F3 DATETIME NULL
GO
--------------------------------------------------------------------
--DISABLE TRIGGER
DISABLE TRIGGER DDL_Trigger01 ON DATABASE 
GO
ALTER TABLE T1 ADD F3 DATETIME NULL
GO
SELECT * FROM T1
GO
--Activate DDL Trigger
ENABLE TRIGGER DDL_Trigger01 ON DATABASE 
GO
ALTER TABLE T1 ADD F4 REAL
GO
SELECT * FROM T1
GO
--Drop DDL Trigger:
DROP TRIGGER DDL_Trigger01 ON DATABASE 
GO
---------------------------
CREATE PROC USP_TEST
AS
BEGIN
	SELECT * FROM T1 
END 
GO
DROP TRIGGER DDL_Trigger02 ON DATABASE 
GO
--Create Table for logging DDL Statements:
CREATE TABLE DDL_Log 
(
	PostTime datetime, 
	DB_User nvarchar(100), 
	[Event] nvarchar(100), 
	[TSQL] nvarchar(2000)
)
GO
CREATE TRIGGER [DDL_Log] ON DATABASE 
FOR DDL_DATABASE_LEVEL_EVENTS 
AS
	DECLARE @data XML
	SET @data = EVENTDATA() 
	INSERT ddl_log (PostTime, DB_User, [Event], [TSQL]) 
		VALUES 
			(
				GETDATE(), 
				CONVERT(nvarchar(100), CURRENT_USER), 
				@data.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(100)'), 
				@data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(2000)') 
			) 
GO
--Test the trigger
CREATE TABLE TestTable 
(
	F1 INT,
	F2 SMALLDATETIME
)

DROP TABLE TestTable ;
GO
SELECT * FROM ddl_log ;
GO
--Delete the Trigger:
DROP TRIGGER [DDL_Log] ON DATABASE 
GO
--------------------------------------------------------------------
--Create Trigger on Server:
USE tempdb
GO
IF OBJECT_ID('DDL_Log')>0
	DROP TABLE DDL_Log
GO
CREATE TABLE DDL_Log 
(
	PostTime datetime, 
	DB_User nvarchar(100), 
	[Event] nvarchar(100), 
	[TSQL] nvarchar(2000)
)
GO
SELECT * FROM DDL_Log
GO
--Create Trigger on Server:
USE master
GO
CREATE TRIGGER [DDL_Log] ON ALL SERVER 
FOR DDL_DATABASE_LEVEL_EVENTS 
AS
	DECLARE @data XML
	DECLARE @DB_Name NVARCHAR(100)
	SET @data = EVENTDATA() 
	INSERT TempDB..ddl_log (PostTime, DB_User, [Event], [TSQL]) 
		VALUES 
			(
				GETDATE(), 
				CONVERT(nvarchar(100), CURRENT_USER), 
				@data.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(100)'), 
				@data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(2000)') 
			) 
	PRINT (CAST(EVENTDATA() AS NVARCHAR(MAX)))
GO
--Show Object Explorer
GO
USE Northwind
GO
IF OBJECT_ID('Students')>0
	DROP TABLE Students
GO
--Create New Table :
CREATE TABLE Students
(
	Code Int,
	Name NVARCHAR(50),
	Family NVARCHAR(50)
)
GO
--Insert
INSERT INTO Students(Code,Name) 
	VALUES (1,'Ali Mohammad Bahmanyar')
GO
SELECT * FROM TempDB..ddl_log 
GO
USE master
--Delete Trigger:
DROP TRIGGER [DDL_Log] ON ALL SERVER 
GO


