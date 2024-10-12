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