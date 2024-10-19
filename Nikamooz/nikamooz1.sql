select  [CategoryID], [CategoryName], [Description], [Picture] from Categories

/*
تمرین کلاسی

.اطلاعات مربوط به مشتریان ثبت شده است Customers در جدول
.از طرفی می‌دانیم که از هر شهر چندین مشتری داریم
کوئری‌ای بنویسید که مشخص کند به‌ازای تمامی مشتریان هر شهر
.تعداد کل سفارشات، مقدار بیشنه و کمینه سفارشات چقدر بوده است

Sum_Order   Min_Order   Max_Order    City
---------  ----------  ----------  ---------
  29          8            12       اردبیل
  24          5            19       ارومیه
  57          3            18       اصفهان
  ...	      	  		           
  30          12           18       کرمانشاه
  11          11           11       یاسوج
  51          4            15       یزد

(29 rows affected)

*/

with cte as(
select c.CustomerID,c.CompanyName,o.ShipCountry,count(o.OrderID) ord_count
from customers c join orders o on o.CustomerID=c.CustomerID
group by c.CustomerID,c.CompanyName,o.ShipCountry
)
select ShipCountry,
max(ord_count) max_orders,
min(ord_count) min_orders,
sum(ord_count) sum_orders
from cte
group by shipcountry


--window
with cte as(
select
	distinct ShipCountry,CustomerID,count(OrderID) over(partition by customerid) country_customer_count
from orders
)
--select * from cte
--order by shipcountry

select distinct ShipCountry,min(country_customer_count) over(partition by shipcountry) min_order,
max(country_customer_count) over(partition by shipcountry) max_order,
sum(country_customer_count) over(partition by shipcountry) sum_order
from cte

--select *,
--(sum_order-lag(sum_order,1,0) over(order by shipcountry)) max_order
--from cte2

select count(CompanyName) cnt,
(select shipcountry  from orders o
where o.CustomerID=c.CustomerID)
from Customers c
group by c.CustomerID



/*
تمرین کلاسی

کوئری‌ای بنویسید Salesman با توجه به رکوردهای موجود در جدول
.که مشخص کند کدامیک از فروشندگان فقط از یک نوع کالا فروخته است

Salesman   single_Sale
---------  -----------
 کالای 2       رضایی 

(1 row affected)

*/
--which employee had exactly 1 order
select c.CustomerID,c.CompanyName,count(o.OrderID) ord_count 
from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,c.CompanyName
having count(o.OrderID)=1


----which employee had exactly 1 order and mention 
with cte as(
select c.CustomerID,c.CompanyName,count(o.OrderID) ord_count 
from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,c.CompanyName
having count(o.OrderID)=1
)
select CustomerID,CompanyName,
(select freight from orders o
where o.CustomerID=cte.CustomerID) freight
from cte;

--alt
with cte as(
select c.CustomerID,c.CompanyName,count(o.OrderID) ord_count 
from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,c.CompanyName
having count(o.OrderID)=1
)
select c.CustomerID,CompanyName,freight 
from customers c join orders o
on o.CustomerID=c.CustomerID
where c.customerid in(select c.customerid from cte);


--alt2
select c.CustomerID,CompanyName,max(freight) single_product_name
from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,CompanyName
having count(distinct freight)=1
;

with cte as(
select c.CustomerID,CompanyName,max(freight) single_product_name
from customers c join orders o
on o.CustomerID=c.CustomerID
group by c.CustomerID,CompanyName
)
select CustomerID,CompanyName,single_product_name,
(select freight from orders
where cte.CustomerID=customerid) freight
from cte


/*
GROUP BY ALL
.فیلتر شده‌اند WHERE نمایش نتایجی که در شرط
*/ 
select title,count(country) country_cnt from Employees
where title = 'Sales Manager'
group by title

select title,count(country) country_cnt from Employees
where title = 'Sales Manager'
group by all title

select title,
count(case when title = 'Sales Manager' then 1 end
)
from employees
group by title


select dateadd(day,1,OrderDate)
from orders


--rollup
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

