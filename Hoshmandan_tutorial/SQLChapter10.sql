use Northwind
select ROW_NUMBER() over (order by customerid) as radif,*
from customers 

select row_number() over (order by customerid desc) as radif,*
from customers

select row_number() over (partition by country order by city) as row,*
from customers

---مثال: در مقابل نام هر کالا رتبه کالا را از نظر قیمت نشان دهید
select *,rank() over (order by unitprice) as price_rank
from Products

--never skip numbers
select *,dense_rank() over (order by unitprice) as price_rank
from Products

---مثال: در مقابل نام هر کامند تعداد سفارشات را ثبت کنبد و رتبه ایشان را نیز از نظر تعداد سفارش مشخص کنید
select e.EmployeeID,e.LastName,count(o.orderid) as order_count, rank() over (order by count(orderid) desc) as order_rank
from Employees e join Orders o on e.EmployeeID=o.EmployeeID
group by e.EmployeeID,e.LastName

---مثال: گرانترین کالای هر گروه کالا را لیست کنید
--derived table method
select * from (
select ProductID,ProductName,CategoryID,UnitPrice, rank() over (partition by categoryid order by unitprice desc) as category_price_rank
from Products) as n
where category_price_rank=1


--Common table expression method
with highestprice_per_category
as
(select productid,ProductName,CategoryID,UnitPrice, rank() over (partition by categoryid order by unitprice desc) as category_price_rank
from Products)

select * from highestprice_per_category
where category_price_rank=1


--ntile
select *,ntile(2) over (order by unitprice) as nt
from Products

----grouping sets
select employeeid,customerid,count(orderid) as order_count
from orders 
group by grouping sets((EmployeeID,CustomerID),
(employeeid),(CustomerID),())
)


select employeeid,customerid,count(orderid) as order_count
from orders 
group by grouping sets((EmployeeID,CustomerID),(EmployeeID),(customerid))


select employeeid,customerid,count(orderid) as order_count
from orders 
group by EmployeeID,CustomerID


--index

--customers with 91 rows run slower on index
select * from Customers
where CompanyName like 'g%'

--orders with 830 rows run faster on index
select * from orders
where employeeid=1
and shipcountry=N'USA'


create index idx_emp_id on orders(employeeid)
create index idx_shipcountry on orders(shipcountry)

drop index idx_emp_id on orders
drop index idx_shipcountry on orders

create index idx_emp_ship on orders(employeeid,shipcountry)

