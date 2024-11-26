use Session13
go

create table test01
(
ID int primary key not null identity(1,1),
county nvarchar(50),
City nvarchar(50),
prevince nvarchar(50),
)
alter table test01
add parent_ID int foreign key references test01(ID)
use [SofiaCarRental_v2.2]
go

select * from RentalOrders
select * from Cars

select c.make , c.Model ,c.CarYear , r.[Days]
from RentalOrders r join Cars  c 
on r.CarRef =c.CarID
where r.Days=(select max([Days]) from RentalOrders)


with GetMaxDay_Rented_Car(make , Model ,CarYear , [Day])
as
(
	select c.make , c.Model ,c.CarYear , r.[Days] as [day]
	from RentalOrders r join Cars  c 
	on r.CarRef =c.CarID
)
select max([day]) as [day] from GetMaxDay_Rented_Car
go

use Session13
go

CREATE TABLE dbo.Student
(
    ID int NOT NULL primary key identity(1,1),
    Name nvarchar(50),
	Surename nvarchar(50)
);
CREATE TABLE dbo.Class
(
    ID int NOT NULL primary key identity(1,1),
    Name nvarchar(50),
);

CREATE TABLE dbo.StudentClass
(
    StudentID int  not null foreign key references Student(ID),
	ClassID  int not null foreign key references Class(ID),
	score int,
	primary key(StudentID,ClassID),
	
);

CREATE PROCEDURE dbo.InsertScore
    @Name nvarchar(50),
    @Surename nvarchar(50),
	@Class nvarchar(50),
	@Score int
AS
insert into Student(Name,Surename) 
values (@Name,@Surename)
declare
insert into class(Name ) 
values (@Name)
