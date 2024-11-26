 -- Product Group
 create database Session04
 go 
 use Session04
 go 
 create table ProductGroup
 (Id int primary key not null identity(1,1),
 Name varchar(50)
 )
 go
-- Produc Type
create table ProducType
 (Id int primary key not null identity(1,1),
 ProductTypeRef int foreign key references ProductGroup(Id) not null ,
 Name varchar(50),
 Fee money,
 Amount smallmoney,
 Price as fee*Amount,
 latinSubmissionDate date,
 )
 go

-- Pruduct Model
create table PruductModel
 (Id int primary key not null identity(1,1),
 ProductGroupRef int foreign key references PruductModel(Id) not null ,
 Name varchar(50)
 )
 go

insert into ProductGroup(Name)
values ('Mobile'),
		('Labtop')
go
create table Employee
 (Id int primary key not null identity(1,1), 
 Name varchar(50),
 )
 go
 alter table Employee
 add  Salary int
 go
 alter table Employee
 add HejriShamsiDAte varchar(8)
 go
 alter table Employee
 drop  column Salary 
 go
 
 alter table PruductModel
 drop  column EmployeeRef
 go

-- select * from ProductGroup
alter table PruductModel
add EmployeeRef  int foreign key references Employee(Id) not null 
go
--
