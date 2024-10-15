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

--29. Write an SQL query to fetch the MAJOR subject that have less than 4 people in it.
