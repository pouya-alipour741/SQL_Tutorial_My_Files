use [SofiaCarRental_v2.2]
Go
--Q1:
select distinct c.Make+' '+c.Model
from Cars c inner join RentalOrders r
on c.CarID=r.CarRef
where c.Make='BMw'
Go

CREATE FUNCTION [dbo].GetCarRented
(
  
    @Make varchar(50)
)
RETURNS TABLE AS RETURN
(
    select distinct c.Make+' '+c.Model as CarName
		from Cars c inner join RentalOrders r
		on c.CarID=r.CarRef
		where c.Make=@Make
)
Go
select * from dbo.GetCarRented('Audi')
Go
--Q2:
--=============

--Type 1:
--Right Way:
select Q1.CustomerName,Q2.CarName
from
(select c.FullName as CustomerName,r.RentalOrderID as Id
from RentalOrders r right join Customers c
on r.CustomerRef=c.CustomerID)Q1
left join
(select c.Make+c.Model as CarName,r.RentalOrderID as Id
from Cars c inner join RentalOrders r
on c.CarID=r.CarRef)Q2
on Q1.Id=Q2.Id
Go
--Use view to Simplicity:

CREATE VIEW dbo.uv_CustomerName
AS
   select c.FullName as CustomerName,r.RentalOrderID as Id
from RentalOrders r right join Customers c
on r.CustomerRef=c.CustomerID
Go

CREATE VIEW dbo.uv_CarName
AS
   select c.Make+c.Model as CarName,r.RentalOrderID as Id
from Cars c inner join RentalOrders r
on c.CarID=r.CarRef

Go
select distinct A.CustomerName,B.CarName
from dbo.uv_CustomerName A left join dbo.uv_CarName B
on A.Id=B.Id
Go
--Type 2:
--doubtful way(Attention: Maybe Wrong)
select distinct  cs.FullName, c.make+' '+c.Model as CarName
from Customers cs
	inner join RentalOrders r
	on cs.CustomerID=r.CustomerRef 
	inner join Cars c
	on c.CarID=r.CarRef 
Go
--Create Function:
Alter FUNCTION [dbo].udf_GetRentedCar
(
    @CustomerName varchar(50)
)
RETURNS TABLE AS RETURN
(
    select distinct A.CustomerName,B.CarName
		from dbo.uv_CustomerName A left join dbo.uv_CarName B
		on A.Id=B.Id
		where a.CustomerName like @CustomerName
)
Go
select * from Customers
select * from [dbo].udf_GetRentedCar('John Wattson')
Go
--Q3:
use NORTHWND