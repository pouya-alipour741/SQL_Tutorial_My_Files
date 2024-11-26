use [SofiaCarRental_v2.2]
go

select * from cars
go
select * from RentalOrders
go
--Q1:
select c.Make , c.Make+' '+c.Model as FullName
from cars c right join RentalOrders r
on c.CarID=r.CarRef 
go 

 select c.Make+' '+c.Model as FullName
	from cars c inner join RentalOrders r
	on c.CarID=r.CarRef 
	where c.Make='bmw' 

alter FUNCTION Get_FullNameRented
(
    @make varchar(50)	
)
RETURNS TABLE AS RETURN
(
    select distinct  c.Make+' '+c.Model as FullName
	from cars c inner join RentalOrders r
	on c.CarID=r.CarRef 
	where c.Make=@make 
)
select * from Get_FullNameRented('Audi')
--Q2:

select distinct  cs.FullName, c.make+' '+c.Model as CarName
from Customers cs
	left join RentalOrders r
	on cs.CustomerID=r.CustomerRef 
	inner join Cars c
	on c.CarID=r.CarRef 
where cs.FullName='Charles Calhoun'

CREATE FUNCTION udf_GetCarRented
(
    @Customer varchar(50)
)
RETURNS TABLE AS RETURN
(
    select  cs.FullName, c.make+' '+c.Model as CarName
from Customers cs
	left join RentalOrders r
	on cs.CustomerID=r.CustomerRef 
	inner join Cars c
	on c.CarID=r.CarRef 
where cs.FullName=@Customer
)
select *
from udf_GetCarRented('Jarmein Defoe')
go


select c.FullName 
from Customers c left join RentalOrders r
on r.CustomerRef=c.CustomerID
go
-- سوال 2رو باید کامل کنم
--Q3:
use NORTHWND
go
select cg.CategoryName, p.ProductName 
from Categories cg
left join Products p
on cg.CategoryID=p.CategoryID 
where cg.CategoryName='Condiments'
go
drop function dbo.udf_Products

CREATE FUNCTION udf_Products
(
    @Category varchar(50)
)
RETURNS TABLE AS RETURN
(
    select cg.CategoryName, p.ProductName 
	from Categories cg
	left join Products p
	on cg.CategoryID=p.CategoryID 
	where cg.CategoryName like @Category
)
go
select u.ProductName
from udf_Products('Condiments') u
go
--Q4:
select count(u.ProductName ) as 'Number of Products'
from udf_Products('Condiments') u
go


drop udf_GetNumber_Q4
alter FUNCTION udf_GetNumber_Q4
(
    @Category varchar(50)
)
RETURNS INT
AS
BEGIN
declare @count int
set @count=
(
select count(u.ProductName ) as 'Number of Products'
from udf_Products(@Category) u
)
    RETURN @count

END
select [dbo].[udf_GetNumber_Q4]('Condiments') as GetNumber_Q4


--Q5:
select s.Region , p.ProductName 
from  Suppliers s
left join Products p
on s.SupplierID = p.SupplierID
where Region is not null and Region like 'LA'
go



alter FUNCTION udf_RegionProducts
(
    @Region nvarchar(15)    
)
RETURNS TABLE AS RETURN
(
    select s.Region , p.ProductName 
	from  Suppliers s
	left join Products p
	on s.SupplierID = p.SupplierID
	where s.Region like '@Region'
)
go

select * from udf_RegionProducts('LA')
go