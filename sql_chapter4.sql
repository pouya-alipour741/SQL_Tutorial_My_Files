select *
from Customers c join Orders o
on c.CustomerID = o.CustomerID


--sum of total order for each state on january
select State ,sum(OrderTotal) as 'Order sum'
from Customers c join Orders o
on c.CustomerID=o.CustomerID
group by State
order by 'Order sum'