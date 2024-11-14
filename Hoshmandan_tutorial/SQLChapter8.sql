
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


---مثال: کالای گروه کالای 1 ، 10 درصد گران شود و گروه کالای 2 ، 20 درصد گران شود
update Products
set unitprice=case
when CategoryID=1
then UnitPrice*1.1
when CategoryID=2
then UnitPrice*1.2
end

/*
مثال: دستوری بنویسید که ستون جدیدی  از جنس پولی به جدول کارمندان
اضافه کندو سپس دستوری بنویسید که یک درصد از فروش خالص هر کارمند
را در سال 1997 به عنوان پاداش در این ستون ذخیره کند
*/


alter table Employees
add bonus money not null default 0


update Employees
set bonus=0.01*(select sum(od.UnitPrice*od.Quantity-od.UnitPrice*od.Quantity*od.Discount) from [Order Details] od
			join orders o on o.OrderID=od.OrderID
			where year(o.OrderDate)=1997 and
			employees.EmployeeID=o.EmployeeID)

--WIP
with new_t
as
(select e.EmployeeID,sum(od.UnitPrice*od.Quantity-od.UnitPrice*od.Quantity*od.Discount) as sum_price from [Order Details] od
			join orders o on o.OrderID=od.OrderID join Employees e on e.EmployeeID=o.EmployeeID
			where year(o.OrderDate)=1997
			group by e.EmployeeID)
select sum_price from new_t

select sum(od.UnitPrice*od.Quantity-od.UnitPrice*od.Quantity*od.Discount) from [Order Details] od

/*
مثال: به جدول کارمندان ستونی اضافه کنید از جنس 
int
 و سپس دستوری بنویسید که تعداد سفارشات هر کارمند را در این ستون وارد کند

*/

alter table employees
add order_count int default 0

update Employees
set order_count=(select count(orderid) from Orders o
				where Employees.EmployeeID=o.EmployeeID)

---تمرین : پاداش فقط به کارمندانی تعلق بگیرد که در سال 1997
--- بیش از 40 فاکتور فروش داشتند
--create new tables to preserve base tables
--work in progress,need to set foreign key on the new tables later
select * into my_employees from employees
select * into my_orders from orders
select * into my_order_details from [Order Details]


select * from my_employees


alter table my_employees
add bonus money not null default 0
select * from my_employees

--if it was in addition to example above
update my_employees 
set bonus=0.01*(select sum(od.UnitPrice*od.Quantity-od.UnitPrice*od.Quantity*od.Discount) from my_order_details od
				join my_orders o on od.OrderID=o.OrderID
				where my_employees.EmployeeID=o.EmployeeID
				and year(o.orderdate)=1997
				having count(o.OrderID)>40)

--solution
update my_employees 
set bonus= isnull((select  count(orderid) 
                 from  my_Orders o
				 where my_employees.EmployeeID=o.EmployeeID
				 and YEAR(o.OrderDate)='1997'
				 having count (orderid)>40
				 ),0)
