create database faradars
go
use faradars

create table products
(id int identity(1,1),
name nvarchar(50),
UnitsInStock int,
primary key(id))

exec sp_rename 'products.id','product_id','column'

insert into products
values 
('S1',19),
('S2',8),
('S3',28)

set identity_insert products off

insert into products(id,name,UnitsInStock)
values 
(100,'S4',69)

delete from products
where id=103

--not working
insert into products
values 
('S6',15)
if @@error!=0
begin
DBCC checkident('products',reseed,1)
DBCC checkident('products',reseed)
end
select * from products


declare @maxseed int
select @maxseed=max(id) from products
if @maxseed is null
set @maxseed=0
DBCC checkident('products',reseed,@maxseed)

insert into products
values 
('S6',15)

create table customers
(id int identity(1,1),
company_name nvarchar(30),
country nvarchar(30),
primary key(id)
)

insert into customers
values
('tom','germany'),
('dariush','iran')


exec sp_rename 'customers.id' , 'customer_id', 'column'


create table sale
(product_id int not null,
customer_id int not null,
unit_price int,
quantity int,
primary key (product_id,customer_id),
foreign key (product_id) references products(product_id),
foreign key (customer_id) references customers(customer_id)
)

insert into sale
values 
(3,2,5000,14),
(1,2,2000,20)


create trigger product_sale on sale after insert
as
begin
update products 
set unitsinstock=unitsinstock-(select quantity from inserted)
output deleted.*,inserted.*
where product_id in(select product_id from inserted)
end

insert into sale
values
(2,2,3000,2)

insert into sale values (3,1,1000,3)


create trigger product_return on sale after delete
as
begin
update products
set UnitsInStock+=(select quantity from deleted)
where product_id in(select product_id from deleted)
end

delete from sale
where product_id=3 and customer_id=1

