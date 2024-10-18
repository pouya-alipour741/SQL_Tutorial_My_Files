--link to DB: https://sqliteviz.com/app/#/workspace?hide_schema=1 uses mysql dbms
--find the count of number of remote job posting per skill

select  sd.skill_id,sd.skills,count(*) as skill_count
from job_postings_fact j join skills_job_dim s on j.job_id=s.job_id
join skills_dim sd on sd.skill_id=s.skill_id
where job_work_from_home= True 
group by sd.skill_id,sd.skills
order by skill_count desc
limit 5


--using cte but no need here
with cte as
(select  sd.skill_id,sd.skills,count(*) as skill_count
from job_postings_fact j join skills_job_dim s on j.job_id=s.job_id
join skills_dim sd on sd.skill_id=s.skill_id
where job_work_from_home= True 
group by sd.skill_id,sd.skills
order by skill_count desc)
select * from cte
limit 5


--3rd join outside  cte with same answer
with cte as
(select  skill_id,count(*) as skill_count
from job_postings_fact j join skills_job_dim s on j.job_id=s.job_id
where job_work_from_home= True 
and job_title_short='Data Analyst'
group by skill_id
)
select cte.skill_id,sd.skills,skill_count from cte join skills_dim sd on sd.skill_id=cte.skill_id
order by skill_count desc
limit 5




--second highest freight with sub query
select top 1 * from orders
where freight not in(select max(freight) from orders)
order by freight desc

select max(freight) from orders
where freight not in(select max(freight) from orders)

--Write an SQL query to show one row twice in results from a table.
select * from Orders
cross join
(select 1 n union select 2) n

--33. Write an SQL query to fetch the last five records from a table.
select * from
(select top 5 * from orders
order by OrderID desc
) sub
order by OrderID

select top 5 * from orders
order by OrderID desc

--Write an SQL query to fetch four min GPA from a table using co-related subquery.
--four min freight
select * from orders
where freight in(select top 4 freight from orders
				order by freight)

select freight from orders
order by freight

select * from orders o1
where 4>(select count(freight) from orders o2
		where o2.Freight<o1.Freight)


