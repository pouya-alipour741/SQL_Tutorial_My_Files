use Northwind
/*
find category ids whose price is more than average price across all prices
*/
select o.CustomerID,p.ProductName,p.CategoryID,p.UnitPrice
from orders o 
join [Order Details] od on o.OrderID=od.OrderID
join Products p on p.ProductID=od.ProductID

select *
from Products


select AVG(price_sum) avg_price
from(
	select CategoryID,sum(UnitPrice) price_sum
	from Products
	group by CategoryID
	) x


select avg(UnitPrice) price_avg
	from Products


with cte as
(
select CategoryID,price_sum,AVG(price_sum) over() avg_price
from (
select CategoryID,sum(UnitPrice) price_sum
	from Products
	group by CategoryID
	) x
)
select * from cte
where price_sum > avg_price

