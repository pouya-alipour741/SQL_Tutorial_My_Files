select customerid,Country,city,companyname
into germany_customers
from Customers
where Country='germany'
order by City

select * from germany_customers

insert germany_customers
(customerid,Country,city,companyname)
values('pouya','iran','tehran','tazarv'),
('DUMON','swizterland','geneva','microsoft')

--will error because productID is identity column, need to run below command first
insert products(ProductID,ProductName,Discontinued,UnitPrice)
values(120,'juice',0,50.0)

set identity_insert products on
set identity_insert products off

insert products(ProductName,Discontinued,UnitPrice)
values('juice',0,50.0)
--now we are skipping indexes after deleting re adding operations
select * from Products
--fix
insert products
(ProductName,Discontinued,UnitPrice)
values('juice',0,50.0)
if @@ERROR>0
begin
dbcc checkident('products',reseed,1)
dbcc checkident('products',reseed)
end
select * from Products


/*
مثال: دستوری بنویسید که مشتریانی المانی را داخل یک جدول ببرد
و سپس مشتریان کانادایی را به آن اضافه کنید
*/
select * into new_customers
from Customers
where Country='germany';


insert into new_customers
select * from customers
where country='canada'

select * from new_customers


--query designer
INSERT INTO new_customers
                         (CompanyName, ContactName, City, PostalCode, CustomerID)
VALUES        (N'tesla', N'tom', N'sofia', N'bulgaria', N'hoshc')

--update
---مثال: دستوری بنویسید که موجودی کالا و موجودی در راه رکوردهای غیر فعال را صفر کند
--unitinstock,unitsonorder
select UnitsInStock,UnitsOnOrder from Products
where Discontinued=1


update Products
set
UnitsInStock=0,
UnitsOnOrder=0
where Discontinued=1

---مثال: دستوری بنویسید که قیمت کالاها را 7 دلار ارزانتر کند
update Products
set UnitPrice-=7
--where UnitPrice=18.0 and ProductName='chai'

select * from Products
