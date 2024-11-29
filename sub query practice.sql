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

--1st method
select AVG(price_sum) avg_price
from(
	select CategoryID,sum(UnitPrice) price_sum
	from Products
	group by CategoryID
	) x


--2nd method
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



------
use [SofiaCarRental_v2.2]

select c.CarID,Make,Model,OrderTotal,OrderStatus
from
	RentalOrders r
	join Cars c on c.CarID=r.CarID


--find brands that it's sale is better than average sales across all brands
--declare @temp table
--(
--	make varchar(20),
--	orderstatus varchar(20),
--	ordertotal int,
--	avgtotal int
--)

--1st method
with cte as(
select
	Make,OrderStatus,SUM(OrderTotal) order_total
from
	RentalOrders r
	join Cars c on c.CarID=r.CarID
where
	OrderTotal < 100
group by
	Make,OrderStatus
)	
select 
	*
from 
	cte
	join (select avg(order_total) avg_of_total
			from cte) avg_sales
			on cte.order_total < avg_sales.avg_of_total; 



--2nd method window function is faster 33% to 66%
with cte as(
select
	Make,OrderStatus,SUM(OrderTotal) order_total,
	avg(SUM(OrderTotal)) over() avg_of_total
from
	RentalOrders r
	join Cars c on c.CarID=r.CarID
where
	OrderTotal < 100
group by
	Make,OrderStatus
)
select * from cte
where order_total < avg_of_total


--having and sub query
select
	Make,OrderStatus,SUM(OrderTotal) order_total
from
	RentalOrders r
	join Cars c on c.CarID=r.CarID
where
	OrderTotal < 100
group by
	Make,OrderStatus
having 
	SUM(OrderTotal) > (select avg(OrderTotal) from RentalOrders where OrderTotal < 100)
	


--cars that are not rented
select 
	*
from
	cars c
where
	not exists(select 1 from RentalOrders r where r.CarID=c.CarID);


--2nd method is slower 51% to 49%
select 
	*
from
	cars c
left join
	RentalOrders r on c.CarID=r.CarID
where 
	r.CarID is null

 
 --find all car categories and add remakrs to those categories that it's daily rate is more than average daily rate
 select * from RentalRates
 select * from Categories

 --1st method
select
	*,
	(case when daily > (select avg(Daily) from RentalRates) then 'higher than average' end)  remarks
from
	Categories c
join
	RentalRates r on c.CategoryID=r.CategoryID;

--2nd method  (both have same cost)
select
	*,
	(case when daily > cj.daily_avg then 'higher than average' end)  remarks
from
	Categories c
join RentalRates r on c.CategoryID=r.CategoryID
cross join (select avg(Daily) daily_avg from RentalRates) cj;


--cars rented the most and with highest rent
select
	Make, count(Days) days_rented, avg(OrderTotal) avg_rent_price
from
	Cars c
join RentalOrders r on r.CarID=c.CarID
group by
	Make
order by count(Days) desc, avg(OrderTotal) desc
	


--insert data into car brand history data. make sure you don't insert duplicate records.
select *
into #temp
from Cars
go
truncate table #temp
go
select * from #temp

insert into #temp
select [TagNumber], [Make], [Model], [CarYear], [CategoryID], [Mp3Player], [DVDPlayer], [AirConditioner], [ABS], [ASR], [Navigation], [Available], [Latitude], [Longitude], [ImageFileName], [Rating], [NumberOfRatings]
from Cars
where
	not exists(select 1 from #temp where #temp.make=cars.Make)

select * from cars

---------------
select Make,r.[CategoryID], [Daily], [Weekly], [Monthly]
into #temp2
from RentalRates r
join Categories ca on ca.CategoryID=r.CategoryID
join Cars c on c.CategoryID=ca.CategoryID
go
truncate table #temp2
go

insert into #temp2
select Make,r.[CategoryID], [Daily], [Weekly], [Monthly]
from RentalRates r
join Categories ca on ca.CategoryID=r.CategoryID
join Cars c on c.CategoryID=ca.CategoryID

select * from #temp2
--where
--	not exists(select 1 from #temp2 where #temp2.RentalRateID=r.RentalRateID)

--give 10 percent increment to all daily rental rates in categoryID of 1 or 2 based on maximum daily rental rate in each categoryid.
select ca.CategoryID,Make,Daily,CategoryName
from RentalRates r
join Categories ca on ca.CategoryID=r.CategoryID
join Cars c on c.CategoryID=ca.CategoryID


--update, need debug
--update #temp2 t
--set
--	Daily = (select max(Daily)*1.1) from RentalRates r
--			where t.categoryid=r.CategoryID)
--where
--	 t.categoryid in (select categoryid from RentalRates where CategoryID=1)


----delete duplicate from table

--insert into #temp2(Make,[CategoryID], [Daily], [Weekly], [Monthly])
--values ('Dodge',5,10.0,8.0,45.0)


delete from #temp2
where make in (
	select Make from #temp2
	where not exists(select 1 from cars where cars.Make=#temp2.Make)
	)

select * from #temp2








