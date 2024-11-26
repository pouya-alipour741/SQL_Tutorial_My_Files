--DDL(Data Definition Language) Statements:
		--	Create
		--	Alter	==> Database,Table,View,...
		--	Drop

--*******************************************************
--DML(Data Manipulation Language) Statement :
		--Insert
		--Delete
		--Update	
		--Merge
		--...
--***********************************************************
--DQL(Data Query Language) Statement :
		--Select
--***********************************************************
--DCL(Data Control Language) Statement:
	--Grant
	--Revoke 
	--Deny

--**********************CREATE*********************************

create database dbtest_01

create table Person
	(
		Id int primary key not null identity(1,1),
		FName varchar(50),
		Lname varchar(50),
		Age tinyint
	)

--***************Constraint******************
--CREATE TABLE Person
--(
--column_name1 data_type(size) constraint_name,
--column_name2 data_type(size) constraint_name,
--column_name3 data_type(size) constraint_name,
--....
--);

--CREATE TABLE PersonsNotNull
--	(
--	P_Id int primary key NOT NULL,
--	Code int UNIQ NOT NULL,
--	LastName varchar(255) NOT NULL,
--	FirstName varchar(255),
--	Address varchar(255),
--	City varchar(255)
--	)


CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName)  --To allow naming of a UNIQUE constraint, and for defining a UNIQUE constraint on multiple columns
)

--CREATE TABLE Persons
--(
--ID int IDENTITY(1,1) PRIMARY KEY,
--LastName varchar(255) NOT NULL,
--FirstName varchar(255),
--Address varchar(255),
--City varchar(255)
--)



--********************************ALTER************************************************
--ALTER TABLE table_name
	--ADD column_name datatype

--ALTER TABLE table_name
	--DROP COLUMN column_name

--ALTER TABLE table_name
--	ALTER COLUMN column_name datatype

--ALTER TABLE Persons
--	ADD DateOfBirth date

--ALTER TABLE Persons
--	ALTER COLUMN DateOfBirth year

--ALTER TABLE Persons
--	ADD UNIQUE (P_Id)

--ALTER TABLE Persons
--	ADD CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName)

--ALTER TABLE Persons
--	DROP COLUMN DateOfBirth

--< Set F.K >:
	ALTER TABLE TempSalesReason 
	ADD CONSTRAINT FK_TempSales_SalesReason FOREIGN KEY (TempID) 
	    REFERENCES Sales.SalesReason (SalesReasonID) 
	    ON DELETE CASCADE
	    ON UPDATE CASCADE




--************DROP****************
--DROP DATABASE database_name
--DROP TABLE table_name

--ALTER TABLE Persons
--	DROP CONSTRAINT uc_PersonID