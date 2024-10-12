begin try
set identity_insert customers on
declare @i int=0
declare @j int=10
while @i<3
begin
	insert into customers(customer_id,company_name,country)
	values (@j,'google','poland')
	set @i+=1
	set @j+=1
end
print 'success'
end try
begin catch 
--insert into customers(customer_id,company_name,country)
--values ((select max(customer_id)+1 from customers),@name,'usa')
print 'کد مشتری وارد شده تکراری است'
--print 'مشتری با ایدی جدید ساخته شد'
end catch

delete from customers
where company_name='google'



--cursor
declare my_cursor cursor for
select customer_id,company_name from customers
open my_cursor

declare @i int
declare @j nvarchar(20)
fetch next from my_cursor into @i,@j
print convert(nvarchar,@i)+' '+@j

close my_cursor
deallocate my_cursor


truncate table customers

alter table sale
drop constraint FK__sale__customer_i__3C69FB99

truncate table sale

alter table sale
add constraint FK__sale__customer foreign key (customer_id) references customers(customer_id)

 
 --cursor with loop
 declare my_cursor cursor for 
 select  CustomerID,CompanyName,Country from northwind.dbo.Customers

 open my_cursor

 declare @i nvarchar(20)
 declare @j nvarchar(20)
 declare @k nvarchar(20)
 declare @counter int
 set @counter=0

 while @counter<10
 begin
 fetch next from my_cursor into @i,@j,@k
 insert into faradars.dbo.customers
 values (@j,@k)
 print'inserted'+' '+@j+' '+'successfully'
 set @counter+=1
 end

 close my_cursor
 deallocate my_cursor


 --fixing mistake for infinite loop whoops
delete from faradars.dbo.customers
 where customer_id>2

 declare @i int
 set @i=(select max(customer_id) from customers)
 dbcc checkident('customers',reseed,@i)


 
 --re create sale trigger with loop
drop trigger product_return
drop trigger product_sale
drop trigger update_product

create trigger sale_product_ins on sale after insert
as
begin
declare @n int
set @n=1
while @n<=(select count(*) from inserted)
	 begin
	 declare @pid int
	 declare @q int
	 set @pid=(select product_id from  (select product_id,quantity,ROW_NUMBER() over(order by product_id) as rw from inserted) as r  where rw=@n)
	 set @q = (select quantity from  (select product_id,quantity,ROW_NUMBER() over(order by product_id) as rw from inserted) as r  where rw=@n)
	 update products
	 set UnitsInStock-=@q where product_id=@pid
	 set @n+=1
	 end
end

insert into sale(product_id,customer_id,quantity)
values (4,12,2),(4,13,1),(4,14,1)

select * from products


--modified with #temp
drop trigger sale_product_ins

create trigger sale_product_ins on sale after insert
as
begin
select product_id,quantity,ROW_NUMBER() over(order by product_id) as rw 
into #temp
from inserted
declare @n int
set @n=1
while @n<=(select count(*) from inserted)
	 begin
	 declare @pid int
	 declare @q int
	 set @pid= (select product_id from #temp where rw=@n)
	 set @q = (select quantity from #temp where rw=@n)
	 update products
	 set UnitsInStock-=@q where product_id=@pid
	 set @n+=1
	 end
end

insert into sale(product_id,customer_id,quantity)
values (4,15,1),(4,16,1)

select * from products


--trigger to insert names with only first 3 words
alter trigger customer_trim_ins on customers instead of insert
as
begin
declare @CompName nvarchar(50)
set @CompName=(select company_name from inserted)
if len(@CompName)>3
	begin
	set @CompName=(select left(@CompName,3))
	end
insert into customers(customer_id,company_name,country)
values((select customer_id from inserted),@CompName,(select country from inserted))
end

set identity_insert customers on
insert into customers(customer_id,company_name,country)
values (20,'microsoft','usa')



--quick test of trim
set statistics time on
declare @n nvarchar(50)
set @n='laptop     '
select left(@n,3),len(@n)
select trim(@n),len(@n)

alter table sale
drop constraint FK__sale__product_id__3C69FB99 


alter table sale
ADD CONSTRAINT FK_saleTest
foreign key(product_id) references products(product_id)
on delete cascade
on update cascade