Create Database Commercial
Go
Use Commercial
Go
CREATE TABLE PartGroup
	(
		Id int primary key not null identity(1,1),
		Code int ,
		Name varchar(50),
	)
Go
CREATE TABLE PartType
	(
		Id int primary key not null identity(1,1),
		PartGroupRef int foreign key references partgroup (Id) not null,
		Code int ,
		Name varchar(50),
	)
Go
CREATE TABLE PartModel
	(
		Id int primary key not null identity(1,1),
		PartTypeRef int foreign key references parttype (Id) not null,
		Code int ,
		Name varchar(50),
		Price as fee*Amount,
		Amount smallmoney,
		Fee Money,
		StackSerialNumber int 
	)		
Go

Insert into PartGroup(Name)
values('Mobile'),
	  ('Laptop')
Go
Insert into PartGroup(Name)
values('Mobile')
	  
Go 3000

