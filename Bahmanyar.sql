--ising ssms snippets
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


select *,
		hostname,
		loginame,
		nt_domain,
		Net_address
from sys.sysprocesses

select @@Spid

if exists(select * from Customers where len(CompanyName)>4)
print 'name too long'
else
print 'success'


--check
use faradars

alter table products
add constraint product_unitsinstuck_not_minus check(unitsinstock>0)


alter trigger sale_product_after_ins on sale after insert
as
begin
select ROW_NUMBER() over(order by product_id) as rw,product_id,quantity
into #temp
from inserted
declare @n int
set @n=1
while @n<=(select count(*) from inserted)
	begin
	declare @q int
	declare @pid int

	set @q=(select quantity from #temp where @n=rw)
	set @pid=(select product_id from #temp where @n=rw)
	update products
	set UnitsInStock-=@q where product_id=@pid
	set @n+=1
	end
end

--does not let minus quantity thanks to check
insert into sale
values (2,6,4500,20)



SELECT * FROM sysdatabases
SELECT * FROM syscacheobjects
SELECT * FROM sysconfigures
SELECT * FROM syslanguages
SELECT * FROM syslogins
SELECT * FROM sysmessages

SELECT * FROM sys.objects


sp_detach_db northwind 

select OBJECT_ID('customers')


--function to return total days of rent of a given car
alter function udf_GetTotalRent(
@car varchar(20)
)
returns varchar(50)
as
begin
	declare @total_rent varchar(50)
	if (@car in(select Make from Cars))
		begin
		set @total_rent = convert(varchar(50),(select sum(isnull(ro.Days,1)) as total_rent from RentalOrders ro right join Cars c
			on c.CarID=ro.CarID
			where c.make=@car)
			)
		end
	else
		begin
			set @total_rent = 'car not valid'
		end
		return @total_rent

end


select dbo.udf_GetTotalRent('opel')

select isnull(ro.Days,1) as total_rent from RentalOrders ro right join Cars c
			on c.CarID=ro.CarID
			where c.make='opel'

select DB_ID('SofiaCarRental_v2.2')
select object_ID(N'SofiaCarRental_v2.2.dbo.cars')
select object_ID(N'cars')



SET STATISTICS IO ON
SET STATISTICS TIME ON