--Add New DataFiles to Created Database:
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
USE Test01
GO
SP_HELPFILE
GO

--Add new DataFile :
ALTER DATABASE Test01 ADD FILE 
	(
		NAME=TEST01_01,
		FILENAME='D:\DataFiles\TEST01_01.ndf',
		SIZE=100MB,
		MAXSIZE=UNLIMITED,
		FILEGROWTH=10%
	)
GO
SP_HELPFILE
GO
--Add new LogFile
ALTER DATABASE Test01 ADD LOG FILE
	(
		NAME=LogFile2,
		FILENAME='D:\DataFiles\LogFile2.ldf',
		SIZE=100MB,
		MAXSIZE=UNLIMITED,
		FILEGROWTH=10%
	)
GO
SP_HELPFILE
GO
--Edit DataFiles Properties:
GO
USE Test01
GO
ALTER DATABASE Test01 MODIFY FILE
	(
		NAME=Test01,
		SIZE=200MB,
		MAXSIZE=2GB,
		FILEGROWTH=100MB
	)
GO
SP_HELPFILE
GO
--Change Logical name of DataFiles
ALTER DATABASE Test01 MODIFY FILE
	( 
		NAME = Test01_02, NEWNAME = 'DataFile2_New' 
	) 
GO
SP_HELPFILE
GO
--------------------------------------------------------------------
--Delete DataFiles:
GO
USE master 
GO
IF DB_ID('Test01')>0
	DROP DATABASE Test01
GO
--Create New Database
CREATE DATABASE Test01
	ON
	(
		NAME=DataFile1,FILENAME='C:\Dump\DataFile1.mdf',
		SIZE=10MB,MAXSIZE=1000MB,FILEGROWTH=10%
	)
	LOG ON
	(
		NAME=LogFile1,FILENAME='C:\Dump\LogFile1.ldf',
		SIZE=100MB,MAXSIZE=5GB,FILEGROWTH=1024MB
	)                     
GO
--Add new datafile to Database:
ALTER DATABASE Test01 ADD FILE 
	(
		NAME=DataFile2,FILENAME='C:\Dump\DataFile2.ndf',
		SIZE=10MB,MAXSIZE=UNLIMITED,FILEGROWTH=10%
	)
GO
USE Test01
GO
--See DbFiles:
SP_HELPFILE
GO

--Create a Table with Large Volume(for inserting larg volume Data):
CREATE TABLE TestTable
(
	Id INT primary key not null IDENTITY(1,1) ,
	FName CHAR(4000),
	LName CHAR(3700),
	FullName as FName+' '+LName
)
GO
INSERT INTO TestTable (FName,LName) VALUES ('Ali Mohammad','Bahmanyar')
GO 100000 --Test it many times

SP_HELPFILE
GO

-- Test this Query in RESMON(win 8.1) or ResourceMonitor(win 7)
GO
--Delete DataFile:
ALTER DATABASE Test01 REMOVE FILE DataFile2
GO
--Data Transport:
DBCC SHRINKFILE(DataFile2,EMPTYFILE)
GO

SP_HELPFILE
GO
--Delete DataFile
ALTER DATABASE Test01 REMOVE FILE DataFile2
GO
---------------------------------------------------------------------