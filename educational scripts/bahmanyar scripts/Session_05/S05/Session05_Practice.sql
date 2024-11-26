
--Q2:
declare @number int,@Expression varchar(50)
set @number=1
set @Expression='SQL Class'
WHILE( @number<=10 )
BEGIN
print @Expression+' '+Convert(varchar(50),@number)
set @number+=1
END
go
--Q3:
use NORTHWND
Go
use Session05
Go
Create Table Student(
	Id int primary key not null identity(1,1),
	Code int not null,
	Name varchar(50),
	StudentAdd varchar(250)
	)
Go
Create Table Class(
	Id int primary key not null identity(1,1),
	Code int not null,
	Name varchar(50),
	[Floor] tinyint
	)
Go 
Create table StudentClass(
	StudentId int not null,
	ClassId int not null,
	Score int
	primary key(StudentId,ClassId)
	FOREIGN KEY (StudentId) REFERENCES Student(Id),
	FOREIGN KEY (ClassId) REFERENCES Class(Id)
	)
Go
insert into Student(Code,Name)
select ROW_NUMBER() OVER(ORDER BY c.CompanyName ASC) AS Row#, c.CompanyName
from Customers c
Go

select * from Customers
Go

select * from Student
Go

insert into Class(Code,Name)
select ROW_NUMBER() OVER(ORDER BY p.ProductId ASC) AS Row#,p.ProductName
from Products p
Go


select * from Class
go

select s.CompanyName,Sum(p.unitprice) as TotalUnitPrice
from Products p inner join Suppliers s
on p.SupplierID=s.SupplierID
group by s.CompanyName
Go


