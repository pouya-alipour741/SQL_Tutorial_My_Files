select 1.0* count(distinct PlanName)/count(distinct ID)
from Tbl_Cu_Plan
;

select count(distinct PlanName)/count(distinct ID)
from Tbl_Cu_Plan


--group by
select PlanName
from Tbl_Cu_Plan
group by PlanName;

--same as
select distinct PlanName
from Tbl_Cu_Plan;

select PlanName
from Tbl_Cu_Plan
;

select PlanName, count(PlanName) as count
from Tbl_Cu_Plan
--where year(PlanEndDate) = 1397
where PlanEndDate like '1397%'
group by PlanName
order by count desc
;

--top 30 highest accepted price
select top 30 RegisterUserName, count(AcceptedPrice) as cnt
from Tbl_CU_TehranMission
group by RegisterUserName
order by cnt desc
--group by RegisterUserName,count(AcceptedPrice)
;

select RegisterUserName, AcceptedPrice
from Tbl_CU_TehranMission

select RegisterUserName, RegDate, count('Price 1') as cnt
from Tbl_CU_TehranMission
group by RegisterUserName, RegDate
order by RegisterUserName desc


select UserName, count('Price 1') as cnt
from Tbl_CU_TehranMission
group by UserName
having count('Price 1')>300
order by UserName desc

select UserName, TotalPrice
from Tbl_CU_TehranMission
group by UserName, TotalPrice


select UserName
from Tbl_CU_TehranMission
order by left(UserName,1)