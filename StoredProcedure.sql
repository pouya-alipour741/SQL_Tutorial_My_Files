
--output procedure
create procedure ordercount_by_customer
@customer nvarchar(20),
@ordercount int output
as
begin
select @ordercount=count(orderid) from orders o
join customers c on o.CustomerID=c.CustomerID
where c.CompanyName=@customer
end

declare @employeetotal int
execute ordercount_by_customer [Lazy K Kountry Store],@employeetotal output
/*
if @employeetotal is null
print '@employeetotal is null' --if we remove output @employeetotal will be initialized as null 
else
print '@employeetotal is not null'
*/
print @employeetotal


select count(orderid) from orders o
join customers c on o.CustomerID=c.CustomerID
where c.CompanyName='Lazy K Kountry Store'


--can write it like this similar to python keyword arguements
declare @employeetotal int
execute ordercount_by_customer @ordercount=@employeetotal output,@customer=[Lazy K Kountry Store]
/*
if @employeetotal is null
print '@employeetotal is null' --if we remove output @employeetotal will be initialized as null 
else
print '@employeetotal is not null'
*/
print @employeetotal

--built in stored procedures
sp_help ordercount_by_customer
sp_help products

sp_helptext ordercount_by_customer
sp_helptext sp_help

sp_depends ordercount_by_customer
--useful for checking before dropping a table
sp_depends customers


--procedure for product name and each category price by supplier company name
alter procedure ProdPrice_by_SupCompany
@companyname nvarchar(20),
@price money output,
@sum_price money output
as
begin
select @price=count(p.UnitPrice),@sum_price=sum(p.unitprice)
from Products p join Suppliers s on p.SupplierID=s.SupplierID
where s.CompanyName=@companyname

select top 3 ProductName
from Products
 return 1
end


declare @prodprice money
declare @sum_prod_price money
declare @return_val int
declare @pprice money
--can write exec
execute @return_val=ProdPrice_by_SupCompany [Exotic Liquids], @prodprice output, @sum_prod_price output
--print @prodprice,@sum_prod_price
select @prodprice as price_count,@sum_prod_price,@return_val 


select p.UnitPrice
from Products p join Suppliers s on p.SupplierID=s.SupplierID
where s.CompanyName='Exotic Liquids'


use archive
insert into archive.dbo.new_customers
select * from northwind.dbo.customers

truncate table archive.dbo.new_customers

insert into  archive.dbo.new_customers
select *
from northwind.dbo.Customers ca
where exists(select * from northwind.dbo.Customers cb
			where Region in('SP','bc') and
			ca.Country=cb.Country)

select * from new_customers

--cursor
alter proc ProcedureCursor(@new_customers cursor varying output)
as
begin
set @new_customers=cursor for

select companyname
from new_customers
order by companyname

open @new_customers
end

go

declare @mycursor cursor
declare @companyname nvarchar(50)
exec ProcedureCursor @new_customers=@mycursor output

fetch next from @mycursor into @companyname 
fetch next from @mycursor into @companyname 
select @companyname

close @mycursor
deallocate @mycursor

--with loop
declare @mycursor cursor
declare @companyname nvarchar(50)
exec ProcedureCursor @new_customers=@mycursor output

declare @i int=0
while @i<(select count(*) from new_customers)
begin
set @i+=1

fetch next from @mycursor into @companyname 
select @companyname
end
close @mycursor
deallocate @mycursor


--permission
alter proc dbo.securitytest
as
begin
select contactname,contacttitle
from dbo.new_customers
end

exec securitytest


--change object owner
create schema pouya

--ran into error
sp_changeobjectowner 'dbo.new_customers','pouya'

create proc delete_location @city varchar(50),@country varchar(50)
as
begin
	begin tran
	update new_customers
	set city = null
	where city=@city

	update new_customers
	set country = null
	where country=@country

	if @@ERROR!=0
	rollback tran
	else
	commit tran
end

exec delete_location vancouver,canada