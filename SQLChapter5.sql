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