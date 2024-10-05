select country from suppliers
union
select country from customers

select country from suppliers
union all
select country from customers

---مثال: از چه کشورهایی مشتری و تامین کننده داریم
select country from suppliers
intersect
select country from customers

---مثال: از چه کشورهایی هم مشتری و هم تامین کننده داریم
select country from suppliers
except
select country from customers

---مثال: کدام کالاها هم در ماه 9 و هم در ماه 10 سال 1997 فروش رفته اند 
select p.ProductID,ProductName from Products p join [Order Details] od on od.ProductID=p.ProductID
join Orders o on o.OrderID=od.OrderID
where year(o.orderdate)=1997 and month(o.OrderDate)=9
intersect
select p.ProductID,ProductName from Products p join [Order Details] od on p.ProductID=od.ProductID
join Orders o on o.OrderID=od.OrderID
where year(o.orderdate)=1997 and month(o.OrderDate)=10


--with in note:doesn't seem like a good alternative
--note 2 use or for union alternative
select distinct p.ProductID,ProductName from Products p join [Order Details] od on od.ProductID=p.ProductID
join Orders o on o.OrderID=od.OrderID
where year(o.orderdate)=1997 and month(o.OrderDate) =9
and p.productid  in (
select p.ProductID
from products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o on o.OrderID=od.OrderID
where year(o.OrderDate)=1997 and MONTH(o.OrderDate)=10)

--into
select *
into new_table
from orders
where customerid='hanar'

select * from orders where customerid='hanar'

--changed a value in orders but did not reflect to this new table
--orderid=250 changed employeeid to 6 from 4
select * from new_table

---مثال: در مقابل نام هر کشور تعداد کارمندها،تعداد مشتری و تعداد تامین کننده
select country,sum(employee_count) as employee_count,sum(customer_count) as customer_count,sum(supplier_count) as supplier_count from
(select country,count(employeeid) as employee_count,0 as customer_count,0 as supplier_count
from Employees
where country is not null --because of the added record previously
group by Country
union
select country,0 as employee_count,count(CustomerID) as customer_count,0 as supplier_count
from customers
group by Country
union
select country,0 as employee_count,0 as customer_count,count(supplierid) as supplier_count
from suppliers
group by Country) as tt
group by country


--create view of all people from different countries in database
--note:all colums must have a name for create view to work
  create view v_allpeople
  as
  select convert(nchar(5), employeeid) as id, LastName, Country from employees
  union
  select CustomerID as id, CompanyName, Country from customers
  union 
  select convert(nchar(5),supplierid) as id, CompanyName, country from suppliers


  select * from v_allpeople  --view is used only for select purposes

  --- در مقابل نام هر کارمند، تعداد سفارشات او در سه سال 1996، 1997 و 1998 را نشان دهید
  --به علاوه ستون کل
select *,  [1996]+[1997]+[1998] as total from
(select e.EmployeeID,LastName,year(o.OrderDate) yo,o.orderid from Employees e join Orders o
on e.EmployeeID=o.EmployeeID) as nt
pivot(count(nt.orderid) for yo in([1996],[1997],[1998])) as pvt


---مثال: در مقابل نام هر کارمند تعداد سفارشات به چهار کشور آمریکا،انگلیس، آلمان و فرانسه را بنویسید
select * from  --can add [USA]+[Uk]+[germany]+[France] as total to get total column
(select e.EmployeeID,LastName,c.country,o.orderid from Employees e join Orders o
on e.EmployeeID=o.EmployeeID join customers c
on c.CustomerID=o.CustomerID) as nt
pivot(count(nt.orderid) for country in ([usa],[uk],[germany],[france])) as pvt

--compare to group by based on all countries
select e.EmployeeID,LastName,c.country,count(o.orderid) as order_count from Employees e join Orders o
on e.EmployeeID=o.EmployeeID join customers c
on c.CustomerID=o.CustomerID
group by e.EmployeeID,LastName,c.country


create view v_allpeople_2
  as
  select convert(nchar(5), employeeid) as id, LastName, Country,'e' as origin from employees
  union
  select CustomerID as id, CompanyName, Country, 'c' as origin from customers
  union 
  select convert(nchar(5),supplierid) as id, CompanyName, country,'s' as origin from suppliers

  select * from v_allpeople_2

 --divide employees,customers and suppliers by country
 select *,[s]+[e]+[c] as total from
 (select country, origin,id from v_allpeople_2) as vws
 pivot(count(id) for origin in([e],[s],[c])) as pvt --run into error without as


 --my example
 select * into new_table_2 from
 (select productid,SupplierID,ProductName from Products) as pd
 pivot(count(SupplierID) for ProductName in([Chai],[Tofu])) as pvt

 select * from new_table_2