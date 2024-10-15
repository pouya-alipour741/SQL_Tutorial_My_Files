/*
20. List all students and their scholarship amounts if they have received any.
If a student has not received a scholarship, display NULL for the scholarship details.
*/
select s.student_id, s.firstname, sch.scholarship_amount from students s
left join scholarship sch
on s.student_id=sch.student_ref_id



/*
21. Write an SQL query to show the top n (say 5) records of Student table order by descending GPA.
*/
--nth highest
create function top_nth(@number int)
returns table
as
	return (select top 1 * from
	(select top (@number) * from Orders
	order by freight desc) as nn
	order by freight)

select * from dbo.top_nth(5)


select top 5 * from Orders
order by freight desc

with cte as
(select top 5 * from Orders
order by freight desc)
select top 1 freight from cte
order by freight


create proc sp_top_nth @number int
as
begin
	select top 1 * from
	(select top (@number) * from Orders
	order by freight desc) as nn
	order by freight
end

exec sp_top_nth 5


--23. Write an SQL query to determine the 5th highest GPA without using LIMIT keyword.
--I use freight from northwind order table
use northwind


with tt as
(select dense_rank() over (order by freight desc) rk,* from orders)
select * from tt
where rk=5


alter proc sp_highest
@column money
as
begin
	with tt as
	(select dense_rank() over (order by @column desc) rk,* from orders)
	select * from tt
	where rk=5
end

exec sp_highest freight

--24. Write an SQL query to fetch the list of Students with the same GPA
--list of all customers  with the same ship country
select c1.CustomerID,c1.Country from customers c1
join customers c2 on c1.CustomerID=c2.CustomerID
where c1.Country=c2.Country order by country

select distinct c1.CustomerID,c1.Country from Customers c1,customers c2 
where c1.Country=c2.Country and c1.CustomerID!=c2.CustomerID
order by c1.Country

select CustomerID,Country from Customers c1
where exists(select * from Customers c2
			where c1.Country=c2.Country
			and c1.CustomerID=c2.CustomerID)
			order by country

select * from
(select c1.CustomerID,c1.Country from customers c1
join customers c2 on c1.CustomerID=c2.CustomerID
where c1.Country=c2.Country) as tt
pivot(count(tt.customerid) for tt.country in([germany],[uk])) as pvt 


--23. Write an SQL query to determine the 5th highest GPA without using top n keyword.
select * from orders 
where 4=(
	select count(o.Freight) from orders o
	where o.Freight>=freight
	and o.OrderID=OrderID
)

--25. Write an SQL query to show the second highest GPA from a Student table using sub-query.
--second highest freight with sub query
select max(freight) from orders
where freight not in(select max(freight) from orders)

select freight from orders
order by freight desc

select freight from orders
where freight not in(select max(freight) from orders)
order by freight desc

--26. Write an SQL query to show one row twice in results from a table.
select * from Orders
union all
select * from orders
where OrderID=10248

--repeat each row twice
select * from Orders
union all
select * from orders
order by OrderID

--cross join
select OrderID,ShipName
from orders o1 cross join
     (select 1 as n union all select 2) n
	 order by orderid

select OrderID,ShipName
from orders o1 cross join
     (select 'a' as n union all select 'b') n
	 order by orderid

--27. Write an SQL query to list STUDENT_ID who does not get Scholarship.
--customers without orders
select CustomerID,CompanyName from Customers 
where CustomerID not in(select customerid from orders o)

--28. Write an SQL query to fetch the first 50% records from a table.
with top_part as
(select NTILE(2) over(order by employeeid) nt,* from EmployeeTerritories)
select * from top_part where nt=1

select top ((select count(*) as cnt from orders)/2) * from orders
select * from orders


use Northwind
exec sp_changedbowner sa
--29. Write an SQL query to fetch the MAJOR subject that have less than 4 people in it.
--customers that have less than 6 orders
select o.CustomerID, count(o.OrderID) as ord_cnt from customers c join orders o on o.CustomerID=c.CustomerID
group by o.CustomerID
having count(o.OrderID)<6

--30. Write an SQL query to show all MAJOR subject along with the number of people in there.
--show all ship country along with how many orders
select isnull(ShipCountry,'??'),count(OrderID),count(ShipCountry) as cnt from orders
group by ShipCountry

--31. Write an SQL query to show the last record from a table.
select * from orders
where OrderID=(select max(OrderID) from orders)


--select 10th to last row
with cte as
(select row_number() over(order by orderid) rw,* from orders)
select * from cte
where rw=(select max(rw)-10 from cte)

--32. Write an SQL query to fetch the first row of a table.
select * from orders
where OrderID=(select min(OrderID) from orders)

--11th row
with cte as
(select row_number() over(order by orderid) rw,* from orders)
select * from cte
where rw=(select min(rw)+10 from cte)


--33. Write an SQL query to fetch the last five records from a table.
select * from
(select top 5 * from orders
order by OrderID desc
) sub
order by OrderID


--between don't work
with cte as
(select ROW_NUMBER() over(order by orderid) rw,* from Orders)
select * from cte
where rw>(select max(rw)-5 from cte) and rw<=(select max(rw) from cte)
--where rw between 832 and 828
--where rw between (select max(rw) from cte) and (select max(rw)-5 from cte)

--34. Write an SQL query to fetch three max GPA from a table using co-related subquery.
--3 max freight
select distinct freight from orders o1
where 3>(select count(distinct freight) from orders o2
		where o2.freight>o1.freight)
order by o1.Freight desc

select * from
(select rank() over(order by freight desc) rw,* from orders) sub
where rw<=3
order by freight desc

--35. Write an SQL query to fetch four min GPA from a table using co-related subquery.
select distinct freight from orders o1
where 4>(select count(distinct freight) from orders o2
		where o2.Freight<o1.Freight)

select * from
(select rank() over(order by freight) rw,* from orders) sub
where rw<=3

--36. Write an SQL query to fetch nth max GPA from a table.
create proc sp_nth @n int
as
begin
select top 1 * from
(select top @n freight from orders order by freight desc) sub
order by freight
end


select distinct top 1 freight from orders o1
where 5>(select count(distinct freight) from orders o2
		where o2.freight>o1.freight)
order by freight

--37. Write an SQL query to fetch MAJOR subjects along with the max GPA in each of these MAJOR subjects.
select CategoryID,max(UnitPrice) max_p from Products
group by CategoryID

--38. Write an SQL query to fetch the names of Students who has highest GPA.
--product with highest price
select ProductName,UnitPrice from Products
where UnitPrice=(select max(UnitPrice) from Products)

--39. Write an SQL query to show the current date and time.
select getdate()[dbo].[Products]

--40. Write a query to create a new table which consists of data and structure copied from the other table (say Student) or clone the table named Student.
select * into orders_new 
from Orders
where 1=2

--45. Write an SQL query to find the students who have the same GPA as ‘Shivansh Mahajan’. 
--products who have same price as chai 
select ProductName from Products
where UnitPrice=(select UnitPrice from Products
				where ProductName='Steeleye Stout')