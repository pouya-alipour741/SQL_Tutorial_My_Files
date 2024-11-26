--Step 1:
--Create Database with FileGroups and DataFiles:
IF( DB_ID('Document')>0 )
BEGIN
 DROP DATABASE Document
END
GO
CREATE DATABASE Document
	ON Primary
	(
		NAME=Document_mdf,
		FILENAME='D:\DataFiles\Document_mdf.mdf',
		SIZE=10MB,
		MAXSIZE=200MB,
		FILEGROWTH=10%
	),
	FILEGROUP FG_Below_91
	(
		NAME=ndf_Below_91,
		FILENAME='D:\DataFiles\ndf_Below_91.ndf',
		SIZE=20MB,
		MAXSIZE=300MB,
		FILEGROWTH=10%
	),
	FILEGROUP FG_91_92
	(
		NAME=ndf_91_92,
		FILENAME='D:\DataFiles\ndf_91_92.ndf',
		SIZE=30MB,
		MAXSIZE=400MB,
		FILEGROWTH=10%
	),
	FILEGROUP FG_92_93
	(
		NAME=ndf_92_93,
		FILENAME='D:\DataFiles\ndf_92_93.ndf',
		SIZE=30MB,
		MAXSIZE=400MB,
		FILEGROWTH=10%
	),
	FILEGROUP FG_Up_93
	(
		NAME=ndf_Up_93,
		FILENAME='D:\DataFiles\ndf_Up_93.ndf',
		SIZE=30MB,
		MAXSIZE=400MB,
		FILEGROWTH=10%
	)
	LOG ON
	(
		NAME=Document_Log,
		FILENAME='D:\DataFiles\Document_Log.ldf',
		SIZE=100MB,
		MAXSIZE=5GB,
		FILEGROWTH=1024MB
	)
GO
use Document
sp_helpfile
Go
-- Step 2 : 
-- Creates a partition function called pf_Year that will partition a table into four partitions 
 
CREATE PARTITION FUNCTION pf_Year (int)  
    AS RANGE LEFT FOR VALUES (91, 92, 93) ;  
GO

--Step3 :
--Create PartitionSchema:
-- Creates a partition scheme called ps_Year that applies myRange to the four filegroups created above  
CREATE PARTITION SCHEME ps_Year 
    AS PARTITION pf_Year  
    TO (FG_Below_91, FG_91_92, FG_92_93, FG_Up_93) ;  
GO 
--Step4: 
-- Creates a partitioned table called "Test" that uses "ps_Year" to partition "SubmissionYear"    
--GO 
Create Table Test(
					Code int,
					Name varchar(50),
					SubmissionYear int
					)
on ps_Year(SubmissionYear)
Go
--or we can  Set Table Properties with design.
Go
insert into Test(Code,Name,SubmissionYear)
values(1,'Ali',83),
	  (2,'Elham',85),
	  (3,'Mina',92),
	  (4,'A',93),
	  (5,'N',95)
Go
insert into Test(Code,Name,SubmissionYear)
values(1,'Ali',97)
--Get Report on Database: Disk Usage by Partition
SELECT * FROM sys.partitions
WHERE object_id = OBJECT_ID('Test');