--Q3:
use NORTHWND
Go
select c.CategoryName,p.ProductName
from Categories c left join Products p
on c.CategoryID=p.CategoryID
where c.CategoryName like 'Beverages'
Go

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
--Q4:
--Q5:
select isnull(s.Region,'Not Assigned'),p.ProductName
from Suppliers s left join Products p
on s.SupplierID =p.SupplierID
Go
Alter FUNCTION [dbo].GetRegionProducts
(
    @Region nvarchar(15)
)
RETURNS @tblResult TABLE 
						(
							ProductName nvarchar(40)
						)
AS
BEGIN
	
	IF( @Region in (select Suppliers.Region from Suppliers) )
		BEGIN

			
			IF( @Region not like 'Not Assigned' )
			BEGIN

			 INSERT @tblResult
							select p.ProductName
							from Suppliers s left join Products p
							on s.SupplierID =p.SupplierID
							where s.Region like @Region 

			END
			else
			INSERT @tblResult
							select p.ProductName
							from Suppliers s left join Products p
							on s.SupplierID =p.SupplierID
							where s.Region is null

				

		END
	IF( @Region not in (select Suppliers.Region from Suppliers))
	begin
		INSERT into @tblResult(ProductName)
				values('NotValid Name')
					
	end
RETURN
     
END
Go
select * from dbo.GetRegionProducts('Ali')
