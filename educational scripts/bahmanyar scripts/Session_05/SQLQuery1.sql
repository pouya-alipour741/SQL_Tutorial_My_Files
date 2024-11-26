--Q1: حاصل جمع دو عدد را چاپ کند
declare @x int, @y int
set @x=12
set @y=3
print @x * @y


--Q2: یک عبارت متنی و یک عدد تعریف کنید.
-- عبارت متنی به اندازه آن عدد چاپ شود
declare @s int, @t varchar(20), @Counter int
set @s=5
set @Counter = 1
set @t='Hadi'
while(@Counter <= @s)
begin
print  convert (varchar(20),@Counter )+'  '+ @t 
set @Counter +=1
end
--Q3: جداول ریز در NorthWind ساخته شود
use NORTHWND
go
create table Student
(
Id int not null primary key identity(1,1) ,
Code int ,
Name varchar(20),
AddressStudent varchar(20),
)
go
create table Class
(
Id int not null primary key identity(1,1),
Code int,
Name varchar(20),
ClassFloor varchar(20),
)
go
--Q4: فیلد Score را در db تعبیه کنید.

create table StudentClass
(
Id int not null primary key identity(1,1),
RefStudent int  foreign key  references student(Id),
RefClass int  foreign key  references Class(Id),
Score smallint,
)
go 

--

