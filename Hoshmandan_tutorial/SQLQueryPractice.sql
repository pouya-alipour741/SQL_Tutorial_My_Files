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

