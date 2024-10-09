begin try
select 2/0
end try
begin catch
print 'cant devide by zero'
end catch

set identity_insert customers on
insert into customers(customer_id,company_name,country)
values (3,'apple','usa')


--WIP work in progress
begin try
declare @name nvarchar(10)
insert into customers(customer_id,company_name,country)
values (3,'apple' into @name,'usa')
end try
begin catch 
insert into customers(customer_id,company_name,country)
values ((select max(customer_id)+1 from customers),@name,'usa')
print 'کد مشتری وارد شده تکراری است'
print 'مشتری با ایدی جدید ساخته شد'
end catch


begin try
insert into customers(customer_id,company_name,country)
values (3,'apple','usa')
end try
begin catch 
insert into customers(customer_id,company_name,country)
values ((select max(customer_id)+1 from customers),'apple','usa')
print 'کد مشتری وارد شده تکراری است'
print 'مشتری با ایدی جدید ساخته شد'
end catch

begin try
select 2/0
end try
begin catch
print 'cant devide by zero';
throw
end catch

--throw err_num,message,state

begin try
select 2/0
end try
begin catch
throw 50020,'cant devide by zero',29
end catch


create proc emp_ins @id int, @name nvarchar(20), @country nvarchar(20)
as
begin
begin try
set identity_insert customers on
insert into customers(customer_id,company_name,country)
values (@id,@name,@country)
set identity_insert customers off
end try
begin catch
print 'ایدی تکراری';
throw
end catch
end

emp_ins 7,'ford','usa'



