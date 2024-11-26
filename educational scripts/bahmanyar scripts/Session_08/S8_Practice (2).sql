--Q3:
use NORTHWND
Go
select c.CategoryName,p.ProductName
from Categories c left join Products p
on c.CategoryID=p.CategoryID
where c.CategoryName like 'Beverages'
Go

CREATE FUNCTION [dbo].[FunctionName]
(
    @param1 int,
    @param2 char(5)
)
RETURNS @returntable TABLE 
(
	[c1] int,
	[c2] char(5)
)
AS
BEGIN
    INSERT @returntable
    SELECT @param1, @param2
    RETURN 
END

Alter FUNCTION [dbo].GetProducts
(
    @CategoryName nvarchar(15)
)
RETURNS @tblResult TABLE 
						(
							ProductName nvarchar(40)
						)
AS
BEGIN
	
	IF( @CategoryName in (select Categories.CategoryName from Categories) )
		BEGIN

			 INSERT @tblResult
				select p.ProductName
				from Categories c left join Products p
				on c.CategoryID=p.CategoryID
				where c.CategoryName like @CategoryName
				

		END
	IF( @CategoryName not in (select Categories.CategoryName from Categories) )
	begin
		INSERT into @tblResult(ProductName)
				values('NotValid Name')
					
	end
RETURN
     
END

Go

select * from dbo.GetProducts('Ali')
select * from dbo.GetProducts('Bevrages')