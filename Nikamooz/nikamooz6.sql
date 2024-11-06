--order sets
select c.CustomerID,max(od.UnitPrice*od.Quantity) price
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
order by c.CustomerID



select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
order by CustomerID,OrderDate desc, OrderID desc




--
select c.CustomerID,max(od.UnitPrice*od.Quantity) price
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
order by c.CustomerID;


with cte as(
select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price,
LAST_VALUE(od.UnitPrice*od.Quantity) over(partition by c.customerid
											order by (od.UnitPrice*od.Quantity)
											rows between unbounded preceding 
											and unbounded following
											) LastOrderValue,
ROW_NUMBER() over(partition by c.customerid 
					order by (od.UnitPrice*od.Quantity)
					) rn
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID)
select CustomerID,CompanyName,OrderID,OrderDate,price,LastOrderValue
from cte where rn=1;


--distinct
select distinct c.CustomerID,
LAST_VALUE(od.UnitPrice*od.Quantity) over(partition by c.customerid
											order by (od.UnitPrice*od.Quantity)
											rows between unbounded preceding 
											and unbounded following
											) LastOrderValue
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID;


--hypothetical function
with cte as(
select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price,
rank() over(partition by c.customerid order by od.UnitPrice*od.Quantity) rk
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
)
select CustomerID,CompanyName,OrderID,OrderDate,price,rk,
max(rk) over(partition by customerid) max_rk
from cte
--where price<=500
;


with cte as(
select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price,
rank() over(partition by c.customerid order by od.UnitPrice*od.Quantity) rk
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
)
select CustomerID,max(rk) max_rk
from cte
--where price<=500
group by CustomerID;



--
declare @price numeric(12,3)=500

select c.CustomerID,
count(case when (od.UnitPrice*od.Quantity)<@price then 1 end) rank_with_count
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
order by CustomerID;

--dense_rank
declare @price numeric(12,3)=500

select c.CustomerID,
--count(case when (od.UnitPrice*od.Quantity)<@price then 1 end) rank_with_count
count(distinct (od.UnitPrice*od.Quantity)) rank_with_count
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
order by CustomerID;


--
with cte as(
select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price,
dense_rank() over(partition by c.customerid order by od.UnitPrice*od.Quantity) rk
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
)
select CustomerID,max(rk) max_rk
from cte
--where price<=500
group by CustomerID;


--percent_rank
select c.CustomerID,c.CompanyName,o.OrderID,o.OrderDate,(od.UnitPrice*od.Quantity) price,
percent_rank() over(partition by c.customerid order by od.UnitPrice*od.Quantity) pr,
cume_dist() over(partition by c.customerid order by od.UnitPrice*od.Quantity) cd
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID


--above query with case
with cte as(
select c.CustomerID,
count(case when (od.UnitPrice*od.Quantity) < 500 then 1 end) +1 rk,
count(*) +1 nr
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
)
select *,1.0 * (rk-1)/(nr-1) percent_rk
from cte 
order by customerid


--cume dist simulation
with cte as(
select c.CustomerID,
count(case when (od.UnitPrice*od.Quantity) < 500 then 1 end) +1 rk,
count(*) +1 nr
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
group by c.CustomerID
)
select *,1.0 * rk/nr percent_rk
from cte 
order by customerid


--
select c.CustomerID,o.orderdate,(od.UnitPrice*od.Quantity) price,
CUME_DIST() over(partition by c.customerid order by o.orderdate) cd
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID


--
with cte as(
select c.CustomerID,o.orderdate,(od.UnitPrice*od.Quantity) price,
PERCENTILE_DISC(0.5) within group(order by od.UnitPrice*od.Quantity) over(partition by c.customerid) p_disc,
PERCENTILE_CONT(0.5) within group(order by od.UnitPrice*od.Quantity) over(partition by c.customerid) p_cont,
ROW_NUMBER() over(partition by c.customerid order by (od.UnitPrice*od.Quantity)) rn
from Customers c
join Orders o on c.CustomerID=o.CustomerID
join [Order Details] od on od.OrderID=o.OrderID
)
select * from cte 
where rn=1


--
select c.CustomerID,
(
select count(case when freight<10 then 1 end ) price_count
from Orders o
where o.CustomerID=c.customerid
)
from Customers c

--
select c.CustomerID,
(
select count(case when (od.UnitPrice*od.Quantity)<500 then 1 end ) price_count
from Orders o join [Order Details] od on o.OrderID=od.OrderID
where o.CustomerID=c.customerid and od.OrderID=o.OrderID
)
from Customers c



select c.CustomerID,
(
select count(case when (od.UnitPrice*od.Quantity)<500 then 1 end )
from Orders o join [Order Details] od on o.OrderID=od.OrderID
where o.CustomerID=c.customerid and od.OrderID=o.OrderID
) p_count
from Customers c;


select c.CustomerID,count(case when (od.UnitPrice*od.Quantity)<500 then 1 end) price_count
from customers c join Orders o on o.CustomerID=c.CustomerID join [Order Details] od on o.OrderID=od.OrderID
group by c.CustomerID
order by CustomerID;

--
select distinct WorkflowInstanceName,
STRING_AGG(WorkflowInstanceName,'/') flow_names
from task.TblWorkflowInstance i
group by WorkflowInstanceName

