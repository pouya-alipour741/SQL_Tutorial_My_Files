use [SofiaCarRental_v2.2]
go
select * from RentalOrders
go
--Q1:نام کامل همه ماشینهایی که اجار شده  اند
select  cars.Make +' '+Cars.Model+' '+CONVERT(varchar(50), Cars.CarYear) as fullName
from RentalOrders join  Cars
on RentalOrders.CarRef=cars.CarID
go
--Q2: نام کامل همه کارمندان که در  اجاره شرکت داشته اند
select Employees.FullName 
from RentalOrders right join  Employees
on RentalOrders.EmployeeRef=Employees.EmployeeID 
go
--Q3: نام کامل همه مشتریان و تعداد روز اجاره هر کدام
select Customers.FullName,
