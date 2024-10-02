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

