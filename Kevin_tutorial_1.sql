select CustomerName as [customer] from kcc.dbo.Customers;

select sum(OrderTotal)
from Orders
where OrderDate >= DATEADD(year,-3,getdate())