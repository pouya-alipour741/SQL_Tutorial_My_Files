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
select j.job_id,j.job_title_short,j.salary_year_avg
from job_postings_fact
where job_title_short='Machine Learning Engineer'
order by salary_year_avg desc
limit 10



--skills required for these top paying roles
select j.job_id,j.job_title_short,j.salary_year_avg,sd.skills
from job_postings_fact j
join skills_job_dim sj
on sj.job_id=j.job_id
join skills_dim sd
on sd.skill_id=sj.skill_id
order by salary_year_avg desc
limit 10

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


CREATE FUNCTION [dbo].[FunctionName]
(
    @param1 int,
    @param2 char(5)
)
RETURNS @returntable TABLE 
(
	[c1] int,
	[c2] char(5)
)
AS
BEGIN
    INSERT @returntable
    SELECT @param1, @param2
    RETURN 
END


select *,
		hostname,
		loginame,
		nt_domain,
		Net_address
from sys.sysprocesses

select @@Spid

if exists(select * from Customers where len(CompanyName)>4)
print 'name too long'
else
print 'success'