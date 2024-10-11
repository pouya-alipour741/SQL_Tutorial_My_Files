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


 

