

/*
CREATE DATABASE DbName ON
	[
	(
		[NAME= LogicalName, FILENAME= 'PhysicalName', 
		[,SIZE= Size] [,MAXSIZE= MaxSize | UNLIMITED]
		[,FILEGROWTH= Growth]
	) [,...n]
	[LOG ON
	(
		[NAME= LogicalName, FILENAME= 'PhysicalName', 
		[,SIZE= Size] [,MAXSIZE= MaxSize | UNLIMITED]
		[,FILEGROWTH= Growth]
	)[,...n]
	]
*/
CREATE DATABASE Test
GO
--See list of Databases:
--Type1 : SDSP
SP_HELPDB
Go
--Type2 : DMV
SELECT * FROM SYS.databases
GO
USE Test
GO
--See DataFiles of Database:
SP_HELPFILE
Go
SELECT * FROM SYS.database_files
GO
--Create Database:
--Set Database Properties with T-SQL in Create:
USE master 
GO
IF( DB_ID('Test01')>0 )
BEGIN
 DROP DATABASE Test01
END
GO
CREATE DATABASE Test01
	ON
	(
		NAME=Test01,
		FILENAME='D:\DataFiles\TEST01.mdf',
		SIZE=100MB,
		MAXSIZE=UNLIMITED,
		FILEGROWTH=10%
	)
	LOG ON
	(
		NAME=TEST01_log,
		FILENAME='D:\DataFiles\TEST01_log.LDF',
		SIZE=1GB,
		MAXSIZE=5GB,
		FILEGROWTH=1024MB
	)
GO
--See Volume of Every DataFile:
SP_HELPFILE
GO
SELECT * FROM SYS.database_files
Go
Use Test01
Go
--Create Table For Inserting Data:
drop table province
Go
CREATE TABLE Province
(
	ID INT primary key not null IDENTITY(1,1) ,
	Name char(2000),
)
GO
INSERT INTO Province (Name) 
VALUES ('Tehran')
GO 150000 
--Test below sp many times
--Test below sp in other Session(other new Query DialogBox)
SP_HELPFILE
GO
--Create DataBase with Some MDF & NDF
USE master
GO
IF DB_ID('Test01')>0
	DROP DATABASE Test01
GO
CREATE DATABASE Test01
	ON
	(
		NAME=TEST01,
		FILENAME='D:\DataFiles\TEST01.mdf',
		SIZE=10MB,
		MAXSIZE=200MB,
		FILEGROWTH=10%
	),
	(
		NAME=TEST01_01,
		FILENAME='D:\DataFiles\TEST01_01.ndf',
		SIZE=20MB,
		MAXSIZE=300MB,
		FILEGROWTH=10%
	),
	(
		NAME=TEST01_02,
		FILENAME='D:\DataFiles\TEST01_02.ndf',
		SIZE=30MB,
		MAXSIZE=400MB,
		FILEGROWTH=10%
	)
	LOG ON
	(
		NAME=TEST01_01,
		FILENAME='D:\DataFiles\TEST01_01.ldf',
		SIZE=100MB,
		MAXSIZE=5GB,
		FILEGROWTH=1024MB
	),
	(
		NAME=TEST01_02,
		FILENAME='D:\DataFiles\TEST01_02.ldf',
		SIZE=200MB,
		MAXSIZE=5GB,
		FILEGROWTH=1024MB
	)
GO
USE Test01
GO
--See DataFiles of Database and Check Volume of Every DataFile:
SP_HELPFILE
GO
--Create Table For Inserting Data:
CREATE TABLE Province
(
	ID INT primary key not null IDENTITY(1,1) ,
	Name varchar(2000),
)
GO
INSERT INTO Province (Name) 
VALUES ('Tehran')
GO 150000 
Go
--Test below sp many times
--Test below sp in other Session(other new Query DialogBox)
SP_HELPFILE
GO

