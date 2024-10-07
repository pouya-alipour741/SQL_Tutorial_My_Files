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