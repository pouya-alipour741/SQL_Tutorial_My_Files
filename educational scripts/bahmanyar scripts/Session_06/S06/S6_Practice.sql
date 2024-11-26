--Q1:
Go
--Q2:
Go
--Q3:
Go
--Q4:

--Q5:

Alter FUNCTION [dbo].Calculate
(
    @Number1 int,
    @Number2 int
)
RETURNS TABLE AS RETURN
(
    SELECT @Number1 AS 'First Number',@Number2 as 'Second Number',
	       @Number1+@Number2 AS [Sum],
		   @Number1-@Number2 AS Minus,
		   @Number1*@Number2 AS Multiply,
		   @Number1/@Number2 AS Divide
)
Go
Select * from [dbo].Calculate(12,12)
Go
--Q6:
use [SofiaCarRental_v2.2]
go
select * from Cars
Go
select * from RentalOrders
Go
--Create Select:
select isnull(c.Make,'????') as Carmake, isnull(sum(r.days),0) as TotalRent
from cars c left join RentalOrders r
on c.CarID = r.CarRef
group by c.Make

Go
--Create Function
Create  FUNCTION udf_GetTotalRent
(
    @Make varchar(50)
)
RETURNS varchar(50)
AS
BEGIN
	declare @TotalRent Varchar(50)

	
	IF( @make in (select Cars.Make from cars) )
	BEGIN

	set @TotalRent=Convert(varchar(50),
							(select isnull(sum(r.days),0) as TotalRent
								from cars c left join RentalOrders r
								on c.CarID = r.CarRef
								where c.Make=@Make)
							)
	END
	else
	begin
		set @TotalRent='Not Valid Make.Please try again!'
	end
	RETURN @TotalRent 


END
Go
select  [dbo].[udf_GetTotalRent]('bmw')
Go
--Q7:

Alter FUNCTION [dbo].SetFinalPrice
(
    @totalPrice money,
	@Discount money
)
RETURNS money
AS
BEGIN

    RETURN @totalPrice-@Discount+dbo.SetValueAdded(@totalPrice)

END
Go

CREATE FUNCTION [dbo].SetPrice
(
    @Fee money,
	@Amount money
)
RETURNS INT
AS
BEGIN

    RETURN @Fee * @Amount

END
Go

CREATE FUNCTION [dbo].SetTotalPrice
(
    @InvoiceMaster_Id int
)
RETURNS money
AS
BEGIN
	declare @TotalPrice Money
	set @TotalPrice=(select sum(d.Price) 
						from InvoiceDetail d
						where d.InvoiceMasterRef=@InvoiceMaster_Id)
    RETURN @TotalPrice

END
Go

CREATE FUNCTION [dbo].SetValueAdded
(
    @TotalPrice int
)
RETURNS money
AS
BEGIN

    RETURN @TotalPrice *0.1

END
Go
Create table InvoiceMaster(
	Id int primary key not null identity(1,1),
	Code int not null unique,
	Buyer Varchar(50),
	Seller varchar(50),
	totalPrice  Money,
	Discount money,
	ValueAdded  money,
	FinalPrice as dbo.SetFinalPrice(totalPrice,Discount,ValueAdded)
	)
Go

Create table InvoiceDetail(
	Id int primary key not null identity(1,1),
	InvoiceMasterRef int foreign key references InvoiceMaster(Id),
	Fee money,
	Amount money,
	Price as dbo.SetPrice(Fee,Amount),
	
	)

