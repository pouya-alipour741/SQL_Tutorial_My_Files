 use kcc

 create schema st
 alter schema st
 transfer dbo.Customers

 alter schema st
 transfer dbo.Order_product
 alter schema st
 transfer dbo.orders
 alter schema st
 transfer dbo.Product

 select * from st.Customers


 --chapter 5
 select Orderid, (select count(orderid) from st.orders) as order_count
 from st.orders
 group by orderid



 select e.EmployeeID, e.LastName, isnull(count(orderid),0) as ordercount
 from employees e left join orders o
 on e.EmployeeID=o.EmployeeID
 group by e.EmployeeID, e.LastName

 --same answer as above so no need for isnull?!
SELECT        e.EmployeeID, e.LastName, COUNT(o.OrderID) AS order_count
FROM            Orders AS o full JOIN
                         Employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.LastName


select * from employees e full join orders o on e.EmployeeID=o.EmployeeID

 
--مدیرعامل
select m.EmployeeID,m.LastName,count(e.employeeid) as employee_count
from Employees e right join Employees m
on m.EmployeeID=e.ReportsTo
group by m.EmployeeID,m.LastName


select m.LastName,e.LastName
from Employees e right join Employees m
on m.EmployeeID=e.ReportsTo

 ----مثال: در مقابل نام هر کارمند فروش ریالی 
select e.EmployeeID,e.LastName,sum(od.unitprice*quantity) as sale
from Employees e left join Orders o
on e.EmployeeID=o.EmployeeID
left join [order details] od
on o.OrderID=od.OrderID
group by e.EmployeeID,e.LastName
union
--silly way to make summation line for now
select top 1 productid,convert(nvarchar(10),discount),
(select sum(unitprice*quantity) from [order details]) as sale
from [order details]

select sum(unitprice*quantity) as sale from [order details];

--checking if we have correct sum
with sum_cal
as
(select e.EmployeeID,e.LastName,sum(od.unitprice*quantity) as sale
from Employees e left join Orders o
on e.EmployeeID=o.EmployeeID
left join [order details] od
on o.OrderID=od.OrderID
group by e.EmployeeID,e.LastName)
select sum(sale) as total from sum_cal;


 ---مثال: در مقابل نام هر کارمند تعداد سفارشات شرکت را نشان دهید
 select lastname,
 (select count(orderid) from orders o
 where o.employeeid=e.employeeid)
 from employees e
 order by e.lastname

 --like above but show total order of all employees
 select lastname,
 (select count(orderid) from orders o)
 from employees e

 --join instead of sub query for same result
 select e.lastname, count(o.orderid)
 from orders o right join employees e
 on o.employeeid=e.employeeid
 group by e.lastname
 order by e.lastname


 select *
 from region r join territories t
 on t.regionid=r.regionid


 --- مثال: در مقابل نام هر کارمند تعداد سفارشاتش و درصد آن از کل سفارشات شرکت را بنویسید
 select e.EmployeeID, e.LastName, count(o.orderid) as order_count,(select count(orderid) from orders) as total_orders,
 convert(decimal(4,1),100.0*count(o.orderid)/(select count(orderid) from orders)) as [% of total_order]
 from employees e right join orders o
 on e.employeeid=o.employeeid
 group by e.EmployeeID, e.LastName

  ---مثال: در مقابل نام هر گروه کالا، شماره، نام و قیمت گرانترین کالای آن گروه را نمایش دهید
  select categoryname,(select top 1 convert(nvarchar(10),productid)+ ' '+ productname+' '+convert(nvarchar(10),unitprice) as [highest product] from products
  where categoryid=c.categoryid
  order by unitprice desc) 
  from categories c

   select categoryname,(select top 1 productid from products
  where categoryid=c.categoryid
  order by unitprice desc) as highest_id
  ,(select top 1 productname from products
  where categoryid=c.categoryid
  order by unitprice desc) as highest_produce,
  (select top 1 unitprice from products
 where CategoryID=c.CategoryID 
 order by UnitPrice desc) as price
  from categories c


 --cross tab query
 --مثال: در مقابل نام هر کارمند تعداد سفارشات او در سه سال 1996 و 1997 و 1998 و جمع این سه سال در یک ستون بیاید

select employeeid, lastname,
(select count(orderid) from orders
where year(orderdate)=1996 and e.employeeid=employeeid) as '1996',
(select count(orderid) from orders
where year(orderdate)=1997 and e.employeeid=employeeid) as '1997',
(select count(orderid) from orders
where year(orderdate)=1998 and e.employeeid=employeeid) as '1998',
(select count(orderid) from orders
where year(orderdate)in (1996,1997,1998) and e.employeeid=employeeid) as 'total'
from employees e


 
  ---مثال: گرانترین کالای شرکت کدام است
  select * from products
  where unitprice=(select max(unitprice) from products)

  
  ---کالاهایی را لیست کنید که از متوسط بهای کالاهای هم نوع خود گرانتر هستند
  select productid,productname,unitprice,(select avg(unitprice) from products  where categoryid=p.categoryid) as average_price
  from products p where unitprice>(select avg(unitprice) from products where categoryid=p.categoryid)


  select productid,productname,unitprice,(select avg(unitprice) from products  where categoryid=p.categoryid) as average_price,
  (select categoryname from categories where categoryid=p.categoryid) as category
  from products p where unitprice>(select avg(unitprice) from products where categoryid=p.categoryid)

  --above with join
   select p.productname,s.productname,s.unitprice--,avg(s.unitprice) as average_price
  from products p join products s
  on p.categoryid=s.categoryid
  group by s.productname,s.unitprice
