--errors because it has master record on a detail table
delete from Customers
where country='germany'


use master
go
create database archive
go
use Northwind
go
select * into archive.dbo.customers
from Customers
where 1=2 --false condition to prevent inserting records and only get the schema

select * into archive.dbo.orders
from Orders
where 1=2

select * into archive.dbo.[order details]
from [Order Details]
where 1=2


insert into archive.dbo.customers
select * from northwind.dbo.Customers
where CustomerID not in(select CustomerID from northwind.dbo.Orders)

select distinct CustomerID from Orders

delete from archive.dbo.customers
where CustomerID not in(select CustomerID from northwind.dbo.Orders)


insert into archive.dbo.customers
select * from northwind.dbo.Customers
where CustomerID !=all(select CustomerID from northwind.dbo.Orders)

insert into archive.dbo.customers
select * from northwind.dbo.Customers nc
where not exists (select * from northwind.dbo.Orders no
					where no.CustomerID=nc.CustomerID)

alter table [order details]
drop constraint FK_Order_Details_Orders

truncate table [order details]
truncate table orders


insert into Products(ProductName,CategoryID)
output inserted.* 
values ('ice cream',1),
('cake',6)


delete from Products
output deleted.*
where ProductID>77


update Products
set UnitPrice*=1.1
output 
deleted.ProductID,deleted.ProductName,deleted.UnitPrice as old_price,
inserted.UnitPrice as new_price,getdate()
where ProductID<4


create table price_history
(productid int,productname nvarchar(10),old_price money,new_price money,
change_time datetime)

alter table price_history
alter column productname nvarchar(50)

update products
set UnitPrice*=1.1
output
deleted.ProductID,deleted.ProductName,deleted.UnitPrice as old_price,
inserted.UnitPrice as new_price,getdate()
into price_history
where ProductID>70

select max(len_name) as highest_len from
(select len(productname) as len_name from Products) as tt


/*
transactions
with begin tran
rollback tran
commit tran
*/
begin tran 
update Customers
set CompanyName='a'
where CompanyName='Alfreds Futterkiste'

rollback tran
--commit tran to execute transaction