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
