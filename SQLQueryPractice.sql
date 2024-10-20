select * from Customers

/*
در مقابل هر شرکت تعداد مخاطب ها در 4 کشور زیر
*/
select *,[uk]+[austria]+[brazil] as total from
(select CompanyName,country,Contactname from Customers) as tt
pivot(count(Contactname) for country in([uk],[austria],[brazil])) as pvt


create table my_prods
(prod_id int, prod_name nvarchar(50),price money,
primary key prod_id,
foreign key (prod_name) references products(productname)
)



--luke barousse queries
--database link, search in here: https://www.lukebarousse.com/sql
SELECT *
FROM job_postings_fact

--top paying jobs for my role
select top 10 j.job_id,j.job_title_short,j.salary_year_avg
from job_postings_fact j
where job_title_short='Machine Learning Engineer'
order by salary_year_avg desc




--skills required for these top paying roles
select top 10 j.job_id,j.job_title_short,j.salary_year_avg,sd.skills
from job_postings_fact j
join skills_job_dim sj
on sj.job_id=j.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
order by salary_year_avg desc


--most in demand skills for my role
select sd.skills,count(sd.skills) as skill_demand
from job_postings_fact j
join skills_job_dim sj
on sj.job_id=j.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
where job_title_short='Machine Learning Engineer'
group by sd.skills 
order by skill_demand desc


--top skills based on salary for my role
select distinct sd.skills,j.salary_year_avg
from job_postings_fact j
join skills_job_dim sj
on sj.job_id=j.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
where job_title_short='Machine Learning Engineer'
order by salary_year_avg desc

--what are the most optimal skills to learn
--optimal as high demand and high paying
select skills,salary_year_avg,skill_demand from
(select ntile(2) over (order by j.salary_year_avg desc) as top_n_percent_salary,j.salary_year_avg,sd.skills,count(sd.skills) as skill_demand
from job_postings_fact j
join skills_job_dim sj
on sj.job_id=j.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
group by sd.skills
order by skill_demand desc) as tt
where tt.top_n_percent_salary=1


--average salary and number of job postings per skill
--and percent of jobs to total
with cte as(
SELECT skills,avg(salary_year_avg) avg_salary,count(job_title) job_count
FROM job_postings_fact jp join skills_job_dim sj on sj.job_id=jp.job_id
join skills_dim sd on sd.skill_id=sj.skill_id
group by skills
),
cte2 as(
select *,sum(job_count) over() total_jobs from cte
 )
 select *,100.0*job_count/total_jobs from cte2


--how many job posting mention each skill
SELECT sd.skill_id ,count(job_title) 
FROM skills_job_dim sd join job_postings_fact jp on jp.job_id=sd.job_id
group by sd.skill_id


--To list order items and number of it's orders for products low in stock, type:
--best soution with join method
with tt
as
(select NTILE(5) over (order by p.unitsinstock) as nt,p.ProductName,p.unitsinstock,count(o.orderid) as order_count from orders o
join [Order Details] od on od.OrderID=o.OrderID
join Products p on p.ProductID=od.ProductID
where p.UnitsInStock != 0
group by p.ProductName,p.UnitsInStock
)
select * from tt where nt=1


--sub query and ntile
select count(orderid) as order_count from orders
where orderid in(select orderID  from [Order Details]
				where orderID=orders.OrderID
				and productid in(select ProductID from Products
								where UnitsInStock<20
								and ProductID=[Order Details].ProductID)
				)


--modified version
--how to add UnitsInStock from subquery to CTE table. most likely only join method can do this
with tt
as
(select count(orderid) as order_count from orders
where orderid in(select orderID  from [Order Details]
				where orderID=orders.OrderID
				and productid in(select ProductID from Products
								--where UnitsInStock<20
								where ProductID=[Order Details].ProductID)
				)
)
--can't make this condition work becaue there is no unitsinstock in CTE table
select ntile(5) over (order by UnitsInStock) as nt,* from tt where nt=1




---مثال: گروه کالاهایی را لیست کنید که تمام کالاهای آن گران تر از 10 دلار داشته باشند
select categoryid,CategoryName from Categories
where 10<all(select UnitPrice from Products
			where Categories.CategoryID=CategoryID)
order by CategoryID


---مثال: مشریانی را لیست کنید که هرگز از ما خرید نکرده اند
select CustomerID,CompanyName from Customers c
where CustomerID not in(select CustomerID from Orders
						where CustomerID=c.CustomerID)

--not exist
select CustomerID,CompanyName from Customers c
where not exists (select orderid from Orders
						where CustomerID=c.CustomerID
						)

---مثال: کارمندانی را لیست کنید که به دانمارک فروش داشتند
select EmployeeID,LastName from Employees
where exists(select * from orders
				where EmployeeID=Employees.EmployeeID
				and ShipCountry='denmark')


  ---کالاهایی را لیست کنید که از متوسط بهای کالاهای هم نوع خود گرانتر هستند
  select * from Products p
  where UnitPrice>(select avg(UnitPrice) from Products
					where CategoryID=p.CategoryID)


--average number of orders per customer per country
select ShipCountry, avg(order_count) as avg_ord_count from 
(select customerid,shipcountry,count(orderid) as order_count from Orders
group by customerid,shipcountry) as su
group by ShipCountry

use Northwind

--compare partition vs order in over() command
select ProductName,UnitPrice, CategoryID, sum(UnitPrice) over(partition by ProductName) as all_total_price, sum(UnitPrice) over() as s_t from Products

select ProductName,UnitPrice, CategoryID, sum(UnitPrice) over(order by ProductName) as all_total_price, sum(UnitPrice) over() as s_t from Products


--how to include a select without including it in group by? wip

select e.EmployeeID, o.ShipName, o.freight
from Employees e join orders o
on e.EmployeeID=o.EmployeeID
where (o.ShipName,o.freight)
in (select o.ShipName,max(o.freight)
from Employees e join orders o
on e.EmployeeID=o.EmployeeID
group by o.ShipName)


select OrderID,OrderDate,Freight
from Orders
where (OrderDate,Freight) in
(select OrderDate,max(freight)
from Orders
group by OrderDate
)

--Select latest Order for each Customer
select max(orderdate) from Orders

with nn
as
(select c.customerid, companyname,max(o.orderdate) as latest_order
from Customers c join orders o
on c.CustomerID=o.CustomerID
group by c.customerid, companyname)
--select customerid, companyname,latest_order from nn
select customerid, companyname,substring(convert(nvarchar,latest_order),1,12) as latest_order_date 
into #temp
from nn

select * from #temp
select customerid, companyname, count(companyname) over (partition by companyname) from #temp
select customerid, companyname, count(companyname)  from #temp group by customerid, companyname

select c.customerid, companyname,o.orderdate
from Customers c join orders o
on c.CustomerID=o.CustomerID
where c.CustomerID='alfki'


--re create the trigger for sale
create trigger sale_prod_ins on sale after insert
as
begin
update products
set UnitsInStock-=(select quantity from inserted)
where product_id in(select product_id from inserted)
end


--reset seed for identity
declare @n int
set @n=(select count(*) from products)

dbcc checkident('products',reseed,@n)

set identity_insert products on

insert into products(product_id,name,UnitsInStock)
values (3,'S3',4500)

update products
set UnitsInStock=45
where product_id=3

use faradars
select ROW_NUMBER() over(order by product_id),* from View_ProdSale

select * from products
where product_id not in(select product_id from sale)


select * from products

select count(UnitPrice),SupplierID,CategoryID from Products
group by SupplierID,CategoryID


select *,lead(UnitPrice,2,2) over(order by unitprice) ld from Products


with cte as(
	select CustomerID,count(country) as country_cnt
	from Customers
	group by CustomerID
	)
select cte.CustomerID,contactTitle,country_cnt,address
from cte join Customers c on c.CustomerID=cte.customerid


select ContactTitle,count(country) as country_cnt
	from Customers
	group by ContactTitle


select *,count(country) over(partition by ContactTitle,city) as country_cnt
	from Customers


--second highest
select * 
from products
order by UnitPrice desc
offset 1 rows fetch next 1 rows only;

select * 
from products p1
where 1=(select count(ProductID) from Products p2
		where p2.UnitPrice>p1.UnitPrice)

alter proc sp_insert @productname varchar(50)
as
begin
	insert into price_history(productname)
	select @productname
	from Products
end

exec sp_insert ProductName

delete from price_history
where productid is null

insert into price_history(productname)
select productname
from Products


create function price_thresh(@unitprice_thresh int)
returns table
as RETURN(select * from Products
		where UnitPrice>@unitprice_thresh)


select * from price_thresh(50) p join [Order Details] od on od.ProductID=p.ProductID

--can't join this with other tables unlike function above
create proc sp_price_thresh(@unitprice_thresh int)
as
begin
	select * from Products
	where UnitPrice>@unitprice_thresh
end

exec sp_price_thresh 50


--
with cte as(
select o.OrderID,CustomerID
from Orders o
where 0.2<=all(select Discount from [Order Details] od
		where od.OrderID=o.OrderID)
),
cte2 as(
select Country,ContactTitle,count(Country) country_cnt from  Customers c join cte on cte.CustomerID=c.CustomerID
group by Country,ContactTitle
)
select * from cte2
order by country


--customers that had orders within a week
select customerid,o1.OrderID,OrderDate from orders o1
where customerid in(select customerid from orders o2
		where datediff(day,o1.OrderDate,o2.orderdate) in(1,2,3,4,5,6,7)
)


select * from orders
where CustomerID='HANAR'


select customerid,o1.OrderID,OrderDate from orders o1
where customerid in(select customerid from orders o2
		where datediff(day,o1.OrderDate,o2.orderdate)=7)
order by 1;


with cte as(
select customerid,OrderID,OrderDate,lag(OrderDate) over(partition by customerid order by orderdate) previous_ord from orders
)
select * from cte
where OrderDate= (select dateadd(day,7,previous_ord))
order by 1;


select dateadd(day,1,'1998-05-06 00:00:00.000')
