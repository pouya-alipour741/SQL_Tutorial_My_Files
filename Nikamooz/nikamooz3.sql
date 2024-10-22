select month(OrderDate)
from orders
where year(OrderDate) =1997

/*
تمرین کلاسی
کوئری‌ای بنویسید که براساس چارک‌های سال 2017 میزان فروش
.از کمترین تا بیشترین را در هر ماه از آن سال مشخص کند

OrderMonth    Total     Tile_Num
----------- ----------  ----------
    6        36362.82      1
    2        38483.64      1
    3        38547.23      1
    11       43533.80      2
    8        47287.68      2
    7        51020.86      2
    4        53032.95      3
    5        53781.30      3
    9        55629.27      3
    1        61258.08      4
    10       66749.23      4
    12       71398.44      4

(12 rows affected)

*/

with cte as(
select o.OrderID,month(OrderDate) ord_month,
(select od.unitprice*od.quantity) sale

from orders o join [Order Details] od on o.OrderID=od.OrderID
where year(OrderDate) =1997
)
select ord_month,sum(sale) monthly_sale,ntile(4) over(order by (sum(sale))) tile_num
from cte
group by ord_month;



with cte as(
select o.OrderID,month(OrderDate) ord_month,
(select od.unitprice*od.quantity) sale

from orders o join [Order Details] od on o.OrderID=od.OrderID
where year(OrderDate) = 1997
),
cte2 as(
select distinct ord_month,sum(sale) over(partition by ord_month) monthly_sale
from cte
)
select *,
case ntile(4) over(order by (monthly_sale))
when 1 then 'highest'
when 2 then 'high'
when 3 then 'medium'
when 4 then 'low'
end num_tile
from cte2


------
create schema nik

create table nik.price
(id int identity,
product varchar(50),
price money)

insert into nik.price
values (N'کالای 1',100),(N'کالای 2',200),(N'کالای 3',300),(N'کالای 4',200),(N'کالای 5',250),
	   (N'کالای 6',200),(N'کالای 7',100),(N'کالای 8',400),(N'کالای 9',450),(N'کالای 10',100);


select product,price,
case ntile(3) over(order by price)
when 1 then 'low'
when 2 then 'medium'
when 3 then 'high'
end tile_num
from nik.price


--
