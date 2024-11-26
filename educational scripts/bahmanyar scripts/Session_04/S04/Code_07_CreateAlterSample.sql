
--CREATE TABLE PersonSample1
--(
--	Id int  not null identity(1,1),
--	PersonSample2Ref int not null,
--	Code int not null,
--	FName varchar(20) DEFAULT 'Ali Mohammad',
--	LName varchar(20) not null DEFAULT 'Bahmanyar',
--	Age tinyint,
--	CONSTRAINT chk_Age CHECK (Age>=18 AND Age<=65),
--	CONSTRAINT u_Code UNIQUE(Code),
--	 PRIMARY KEY (ID) ,
--	FOREIGN KEY (PersonSample2Ref) REFERENCES PersonSample2(ID)
--) 
--go
CREATE TABLE PersonSample1
(
	Id int  ,
	Code int ,
	FName varchar(20) ,
	LName varchar(20) ,
	Age tinyint
) 
go
--==================Alter=================
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


--ALTER TABLE TempSalesReason 
--ADD CONSTRAINT FK_TempSales_SalesReason FOREIGN KEY (TempID) 
--    REFERENCES Sales.SalesReason (SalesReasonID) 
--    ON DELETE CASCADE
--    ON UPDATE CASCADE
Alter Table PersonSample1
	alter column Id  int not null primary key identity(1,1)  ,
	Add PersonSample2Ref int not null,
	ADD CONSTRAINT uc_Code UNIQUE (Code),
	Add primary key(Id)