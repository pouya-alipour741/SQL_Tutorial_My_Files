create database Commercial
Go
use Commercial
Go
select * from Product_Group
go
--Q11:
create table Product_Group
(
	ID int Primary key not null Identity (1,1),
	Name varchar(10) CONSTRAINT chk_Name CHECK (Name LIKE '[A-Z][A-Z][A-Z][A-Z]' )
)
Go
insert into Product_Group(Name)
values('ADAD')
Go
--Q12:
create table Employee
(
ID int primary key not null identity(1,1),
Name varchar(50),
Salary money,
HireShamsiDate varchar(10)
)
Go
ALTER TABLE Employee 
   ADD CONSTRAINT CHK_Salary CHECK (Salary > 50000 );
Go
insert into Employee(Salary)
values(5000)
Go
insert into Employee(Salary)
values(50001)
Go
--Q13
create table ProductType
(
ID int primary key not null identity (1,1),
ProductGroupRef int foreign key (Id)
references Product_Group (Id) not null,
Name varchar(50)
)
Go
create table ProductModel
(
	ID int primary key not null identity (1,1),
	ProductTypeRef int foreign key references ProductType (Id) not null,
	Name varchar(50),
	Fee varchar(50),
	Amount smallmoney,
	Price as Fee*Amount
)
Go
ALTER TABLE ProductModel 
   ADD [Year] int NULL 
   CONSTRAINT CHK_Year
   CHECK ([Year] >= 1395 AND [Year] <= 1400);
Go
--Q14:
ALTER TABLE ProductModel 
   ADD  
   CONSTRAINT CHK_Fee
   CHECK (Fee >= 15000 AND Fee <= 200000);

Go
--Q15:
ALTER TABLE Employee 
   ADD Code int null 
   CONSTRAINT Unique_Code UNIQUE
Go



