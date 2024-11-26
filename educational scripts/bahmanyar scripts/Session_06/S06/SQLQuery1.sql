--Q1:
Declare @Number1 int
Declare @number2 int
set @Number1=10
set @number2=11
declare @Sum int
set @Sum=@Number1+@number2
print @sum
Go
--Q2:
select e.TitleOfCourtesy+' '+e.TitleOfCourtesy+' '+e.City+' '+e.PostalCode+' '+e.Country as FullName
from Employees e
--Create Function:


CREATE FUNCTION udf_CreateFunction
(
   @TitleOfCourtesy nvarchar(25),
   @LastName nvarchar(20)
)
RETURNS nVarchar(200)
AS
BEGIN
	declare @Result nvarchar(45)
	set @Result= @TitleOfCourtesy+' '+@LastName
    RETURN @result

END
Go
select dbo.udf_CreateFunction(c.CompanyName,e.LastName)
from Customers c



