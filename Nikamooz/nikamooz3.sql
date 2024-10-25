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



/*
تمرین کلاسی

کوئری‌ای بنویسید که به‌ازای هر کارمند، علاوه بر تاریخ سفارش و تعداد اقلام
.مشخص کند که آخرین تعداد کل اقلام، قبل از سفارش جاری چه تعداد بوده است

VIEW: Sales.EmpOrders

empid    ordermonth   qty  Prv_Qty
------  -----------  ----- -------
  1      2016-07-01   121   NULL
  1      2016-08-01   247   121
  1      2016-09-01   255   247
  ...  			     
  9      2018-02-01   297   237
  9      2018-03-01   317   297
  9      2018-04-01   289   317

(192 rows affected)
*/

select p.ProductID,p.SellStartDate,StockedQty,sum(StockedQty) over(partition by p.ProductID
order by p.sellstartdate
rows between 1 preceding and 1 preceding --only one before
) last_order
from Production.Product p join Production.WorkOrder w on p.ProductID=w.ProductID;


select p.ProductID,p.SellStartDate,StockedQty,sum(StockedQty) over(partition by p.ProductID
order by p.sellstartdate
rows between unbounded preceding and 1 preceding --all before
) last_order
from Production.Product p join Production.WorkOrder w on p.ProductID=w.ProductID;

--sub
with cte as(
select p.ProductID,p.SellStartDate,StockedQty
from Production.Product p join Production.WorkOrder w on p.ProductID=w.ProductID
)
select ProductID,SellStartDate,StockedQty,
(select max(StockedQty) from cte c2 where c2.ProductID=c1.ProductID and c2.StockedQty<=c1.StockedQty) max_prev_stocks
from cte c1
order by ProductID,SellStartDate;


--
with cte as(
select p.ProductID,p.SellStartDate,StockedQty
from Production.Product p join Production.WorkOrder w on p.ProductID=w.ProductID
)
select ProductID,SellStartDate,StockedQty,
(select min(SellStartDate) from cte c2 where c2.ProductID=c1.ProductID and c2.SellStartDate<=c1.SellStartDate) min_sell_prev_date
from cte c1
order by ProductID,SellStartDate;

/*
تمرین کلاسی

کوئری‌ای بنویسید که به‌ازای مشتری 1 یا 2 علاوه بر نمایش تاریخ و تعداد اقلام سفارش
.در جلو هر سطر قدیمی‌ترین و جدیدترین سفارشی را هم که تاکنون ثبت شده، نمایش دهد

custid    orderdate    qty  Min_OrderDate   Max_OrderDate
-------  -----------  ---- -------------   -------------- 
  1       2017-08-25   38    2017-08-25      2017-08-25  
  1       2017-10-03   20    2017-08-25      2017-10-03  
  1       2017-10-13   21    2017-08-25      2017-10-13  
  1       2018-01-15   17    2017-08-25      2018-01-15  
  1       2018-03-16   18    2017-08-25      2018-03-16  
  1       2018-04-09   60    2017-08-25      2018-04-09  
  2       2016-09-18   6     2016-09-18      2016-09-18  
  2       2017-08-08   18    2016-09-18      2017-08-08  
  2       2017-11-28   10    2016-09-18      2017-11-28  
  2       2018-03-04   29    2016-09-18      2018-03-04  

(10 rows affected)
*/

--duplicate test
with cte as(
select Color,name,SellStartDate,ListPrice,ROW_NUMBER() over(partition by Color order by Color) rn
from Production.Product)
select * from cte
where rn>1 and color is not null


select Color,name,SellStartDate,ListPrice,
min(SellStartDate) over(partition by Color order by SellStartDate rows between unbounded preceding and current row) min_SellStartDate,
max(SellStartDate) over(partition by Color order by SellStartDate rows between unbounded preceding and current row) max_SellStartDate
from Production.Product
where Color is not null;




/*
.بنویسید WF اکنون همین کوئری را بدون استفاده از
*/

select Color,name,SellStartDate,ListPrice,
(select min(SellStartDate) from  Production.Product p2 where p1.Color=p2.Color and p2.SellStartDate<=p1.SellStartDate) min_SellStartDate,
(select max(SellStartDate) from  Production.Product p2 where p1.Color=p2.Color and p2.SellStartDate<=p1.SellStartDate) max_SellStartDate
from Production.Product p1
where Color is not null
order by Color,SellStartDate



