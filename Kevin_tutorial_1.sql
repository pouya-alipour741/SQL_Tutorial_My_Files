select CustomerName as [customer] from kcc.dbo.Customers;

select sum(OrderTotal)
from Orders
where OrderDate >= DATEADD(year,-3,getdate())

select *
from Orders
where OrderDate >= DATEADD(month,-31,getdate());

select sum(OrderTotal)
from Orders
where OrderDate >= DATEADD(month,-31,getdate());

select sum(OrderTotal)
from Orders
where OrderDate >= DATEADD(month,-31,getdate())
group by CustomerID;

--using query designer
SELECT        Customers.CustomerID, Orders.OrderDate, Orders.CustomerID AS Expr1, Orders.OrderTotal
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID

