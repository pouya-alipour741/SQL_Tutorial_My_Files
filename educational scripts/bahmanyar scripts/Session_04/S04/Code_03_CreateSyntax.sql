USE [SofiaCarRental_v2.2]
go
--==================================
--Create Database:
create database Sample1
go
--===================================
--Create Table & Fields :
--Type1:
CREATE TABLE PersonSample1
(
	Id int  not null identity(1,1),
	PersonSample2Ref int not null,
	Code int not null,
	FName varchar(20) DEFAULT 'Ali Mohammad',
	LName varchar(20) not null DEFAULT 'Bahmanyar',
	Age tinyint,
	CONSTRAINT chk_Age CHECK (Age>=18 AND Age<=65),
	CONSTRAINT u_Code UNIQUE(Code),
	PRIMARY KEY (ID) 
	--FOREIGN KEY (PersonSample2Ref) REFERENCES PersonSample2(ID)
) 
go


DROP TABLE PersonSample1
GO
--Type2:
CREATE TABLE PersonSample2
(
	Id int primary key not null identity(1,1),
	PersonSample1Ref int not null FOREIGN KEY  REFERENCES PersonSample1(ID),
	Code int UNIQUE not null,
	FName varchar(20) DEFAULT 'Ali Mohammad',
	LName varchar(20) not null DEFAULT 'Bahmanyar',
	Age tinyint CHECK (Age>=18 AND Age<=65) DEFAULT 18
) 
go

alter TABLE PersonSample1

	add FOREIGN KEY (PersonSample2Ref) REFERENCES PersonSample2(ID)
 
go
DROP TABLE PersonSample2
GO

