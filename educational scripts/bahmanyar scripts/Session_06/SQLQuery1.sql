--Q1:چهار عمل عصلی
declare @a int, @b int ,@sum int
set @a=5
set @b=11
set @sum=@a+@b
print  @sum
print  @a-@b 
print  @a*@b 
print  @a/@b 
go
--Q2: کیو که نام کامل همه کارمندان در نورسویند را به شکل زیر نمایش دهد
--Titleofcoursty+ LastName+ City +
use NORTHWND
select * from Employees;
go
select e.TitleOfCourtesy+''+e.LastName+''+e.City+''+e.PhotoPath+''+e.Country as FullName
from Employees e
go
--Q3: همان سوال 2 با تابع

CREATE FUNCTION udf_CreateFullName
(
    @param1 nvarchar(50),
	@param2 nvarchar(50),
	@param3 nvarchar(50),
	@param4 nvarchar(50),
	@param5 nvarchar(50)
)
RETURNS nvarchar(300)
AS
BEGIN
declare @Result nvarchar(300) 
set @Result=@param1+' '+@param2+' '+@param3+' '+@param4+' '+@param5
    RETURN @Result
END
go
select dbo.udf_CreateFullName(e.TitleOfCourtesy,e.LastName,e.City,e.PostalCode,e.Country) as FullName
from Employees e
go 
--Q4: تابعی بنویسید که قیمت را محاسبه کند

CREATE FUNCTION udf_GetPrice
(
    @Fee money,
	@Amount smallmoney
)
RETURNS money
AS
BEGIN

    RETURN @Fee * @Amount

END
print dbo.udf_GetPrice(50,10)
-- Create Table Test
create table Test
(
Id int primary key not null identity(1,1),
Fee money,
Amount smallmoney
)
go
insert into Test(Fee,Amount)
values(40,10)
go 
select dbo.udf_GetPrice(t.Fee,t.Amount)
from test t
go 
--Q5: سوال یک را در یک فانکشن ذخیره شود



--Q6:تابعی که میک را دریافت کرده و تعداد روز اجاره آن را تحویل دهد.
use [SofiaCarRental_v2.2]


CREATE FUNCTION udf_GetRentDays
(
    @Make varchar(50)
	
)
RETURNS INT
AS
BEGIN

    RETURN @Make varchar(50) + @param2

END
use [SofiaCarRental_v2.2]
select c.Make , sum(r.Days) 
from Cars c left join RentalOrders r
on c.CarID =r.CarRef
group by c.Make
go

--Q7:ساخت جدول فاکتو
-- تابعی برای توتال پرایس و فاینال پرایس طراحی کنید.
create database Session06
use Session06
create table InvoiceMaster
(
Id int primary key not null identity(1,1),
Code int,
Buyer varchar(50),
Seller varchar(50),
TotalPrice money,
Discount money,
ValueAdded money,
FinalPrice as TotalPrice*ValueAdded-Discount
)
create table InvoiceDetail
(
Id int primary key not null identity(1,1),
InvoiceMasterRef int not null foreign key (Fk  ,
Buyer varchar(50),
Seller varchar(50),
TotalPrice money,
Discount money,
ValueAdded money,
)