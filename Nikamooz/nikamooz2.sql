﻿--rollup
select c.CustomerID,CompanyName,count(OrderID) ord_cnt from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,CompanyName

select c.CustomerID,country,ShipName,count(OrderID) ord_cnt from customers c join orders o
on o.CustomerID=c.CustomerID
group by rollup (c.CustomerID,country,ShipName)


SELECT
	EmployeeID,
	YEAR(OrderDate) AS OrderYear,
	MONTH(OrderDate) AS OrderMonth,
	COUNT(OrderID) AS Num
FROM Orders
	WHERE EmployeeID  IN (1,2)
GROUP BY ROLLUP(EmployeeID, YEAR(OrderDate), MONTH(OrderDate));


--grouping
SELECT
	EmployeeID,
	YEAR(OrderDate) AS OrderYear,
	MONTH(OrderDate) AS OrderMonth,
	COUNT(OrderID) AS Num,
	grouping (EmployeeID) as GROUPING_EmployeeID,
	grouping (month(OrderDate)) as grouping_month,
	grouping (YEAR(OrderDate)) as grouping_year
FROM Orders
	--WHERE EmployeeID  IN (1,2)
GROUP BY ROLLUP(EmployeeID, YEAR(OrderDate), MONTH(OrderDate))


--cube
with cte as(
select o.OrderID,CustomerID
from Orders o
where 0.2<=all(select Discount from [Order Details] od
		where od.OrderID=o.OrderID)
),
cte2 as(
select Country,ContactTitle,count(Country) country_cnt,
grouping(Country) country_grouping,
grouping(ContactTitle) contact_grouping
from  Customers c join cte on cte.CustomerID=c.CustomerID
group by cube (Country,ContactTitle)
)
select * from cte2
order by country


--grouping
select ProductName,SupplierID,CategoryID,count(CategoryID) cat_count,
GROUPING_ID(ProductName,CategoryID,SupplierID) group_id
from Products
group by grouping sets(
(ProductName,CategoryID),(CategoryID,SupplierID)
)
order by 3


select EmployeeID,CustomerID,year(OrderDate) year_ord,count(OrderID) ord_count,
GROUPING_ID(CustomerID,EmployeeID,year(OrderDate)) grouping_set
from orders
where EmployeeID in(5,6)
group by grouping sets(
	(EmployeeID,CustomerID),
	(EmployeeID,year(OrderDate)) ,
	(CustomerID,year(OrderDate))
)


--row number

-- loop takes too much resource, not advised.
alter table new_customers
add row_count int

declare @i int=1
while @i<= (select count(*) from temp_table)
	begin
		update temp_table
		set n=@i
		where employeeid= @i
			
		set @i+=1
		 
	end;



--alt row numver vs original
select OrderID,CustomerID,(select count(*) from orders o2
							where o2.OrderID<=o1.OrderID) row_count
from Orders o1
order by OrderID;
 

select ProductID,ProductName,ROW_NUMBER() over(order by productid) rn
from Products p1
order by ProductID ;


--
use AdventureWorks2014

select CustomerID,SalesOrderID,ROW_NUMBER() over(order by (select null)) rn
from sales.SalesOrderHeader
order by 2

select CustomerID,SalesOrderID,ROW_NUMBER() over(order by SalesOrderID) rn
from sales.SalesOrderHeader


--
select top 100 SalesOrderID,OrderDate,TotalDue,
(select count(OrderDate) from sales.SalesOrderHeader s2
where s2.OrderDate >= s1.OrderDate) ord_rank,
(select count(distinct orderdate) from sales.SalesOrderHeader s2
where s2.OrderDate >= s1.OrderDate) ord_dense_rank,
(select count(SalesOrderID) from sales.SalesOrderHeader s2
where s2.SalesOrderID >= s1.SalesOrderID) row_count,
(select count(TotalDue) from sales.SalesOrderHeader s2
where s2.TotalDue>=s1.TotalDue) rank_price

from sales.SalesOrderHeader s1
order by SalesOrderID 


select top 100 SalesOrderID,OrderDate,TotalDue,
rank() over(partition by TotalDue order by SalesOrderID) rk_price,
(select count(TotalDue) from sales.SalesOrderHeader s2
where s2.TotalDue>=s1.TotalDue) rk_price
from sales.SalesOrderHeader s1

/*
تمرین کلاسی
DENSE_RANK کوئری‌ای بنویسید که با استفاده از تابع
.رتبه‌بندی هر مشتری را براساس تعداد سفارشاتی که داشته است، انجام دهد

custid  Num_Orders   D_Rnk
------  ----------- -------
 71         31         1
 20         30         2
 63         28         3
 ...	       			 
 33         2          20
 43         2          20
 13         1          21

(89 rows affected)
*/

use northwind

select c.customerid,c.CompanyName,count(o.orderid) ord_count,
DENSE_RANK() over(order by count(o.orderid)) customer_rank
from customers c join orders o
on c.customerid=o.customerid
group by c.customerid,c.CompanyName;


with cte as(
select c.customerid,c.CompanyName,count(o.orderid) ord_count
from customers c join orders o
on c.customerid=o.customerid
group by c.customerid,c.CompanyName
)
select customerid,companyname,ord_count,
DENSE_RANK() over(order by ord_count) customer_rank
from cte;


with cte as(
select *,rank() over(order by freight desc) fr_rank from orders 
)
select * from cte
where fr_rank=5

select top 1 * from(
select top 5 * from orders
order by freight desc
) x
order by freight

