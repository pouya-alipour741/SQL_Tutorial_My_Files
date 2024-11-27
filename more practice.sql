create table person
(
name varchar(40), last_name varchar(30)
)

create table store
(
[store id] bigint, [store name] varchar(40)
)

insert into store
values (1000,'test store')

alter table person
add [store id] bigint


update person
set [store id] = 1000
where name='pouya'


go
insert into person
values ('pouya','alipour')

select *
from person

select * from store

alter table store
alter column [store id] bigint not null

alter table store
add constraint pk_store_storeid primary key([store id])

alter table person
add constraint fk_person foreign key ([store id]) references store([store id])

--select *
--into archive.dbo.person_ap
--from person

--select *
--into archive.dbo.store_ap
--from store


--drop table if exists person
--drop table store

select * 
from person_ap

select * 
from store_ap


alter table person_ap
alter column [store id] bigint not null

alter table person_ap
add constraint pk_person_ap primary key([store id])

alter table person_ap
drop constraint pk_person_ap

alter table store_ap
add constraint fk_store_person_storeID  foreign key ([store id]) references person_ap([store id])

alter table store_ap
add constraint pk_store_storeID primary key([store id])


EXEC sp_rename '[dbo.person_ap.store id]', 'dbo.person_ap.[store id]', 'column'

create table new_person
(
'person id' varchar(20),
'person name' varchar(20),
'store id' bigint
)


use TBSSimNew
go
declare @fromdate date= '2012-01-08'
declare @todate date= '2012-01-12'
go
select * from(
select 
	WorkflowInstanceID, cast(i.CreateDate as date) createdate, TaskStatusName
from 
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID=a.WokflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	cast(i.CreateDate as date) between @fromdate and @todate
) x
pivot(count(WorkflowInstanceID) for TaskStatusName in ([درحال انجام],
														[انجام شده], 
														[ابطال شده])
														) pvt

--select * from Policy.TblPolicy


alter proc sp_pivot_test @fromdate datetime= '2012-01-08',@todate datetime= '2012-01-12'
as
	begin
		select * from(
		select 
			WorkflowInstanceID, cast(i.CreateDate as date) createdate, TaskStatusName
		from 
			task.TblWorkflowInstance i
			join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID=a.WokflowInstanceID
			join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
			join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
		where
			cast(i.CreateDate as date) between @fromdate and @todate
		) x
		pivot(count(WorkflowInstanceID) for TaskStatusName in ([درحال انجام],
																[انجام شده], 
																[ابطال شده])
																) pvt
		order by createdate
	end

declare @current_date datetime=getdate()
exec sp_pivot_test @fromdate = '2023-11-26',@todate= @current_date


select getdate()

use TBSSimNew
create table archive.dbo.test 
(
createdate date,
[درحال انجام] int,
[انجام شده] int, 
[ابطال شده] int
)
select * from archive.dbo.test 
truncate table archive.dbo.test 

insert into archive.dbo.test 
exec sp_pivot_test @fromdate = '2023-11-26',@todate= '2025'


--dynamic query
alter proc sp_dynamic2 
@fromdate datetime= null,
@todate datetime= null
as
	begin
		declare @sql nvarchar(max)
		set @sql = N'
			select * from(
			select 
				WorkflowInstanceID, cast(i.CreateDate as date) createdate, TaskStatusName
			from 
				task.TblWorkflowInstance i
				join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID=a.WokflowInstanceID
				join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
				join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
				where 1=1'
			if @fromdate is not null and @todate is not null
				set @sql+=N' and cast(i.CreateDate as date) between @fd and @td'
			set @sql+=N') x
			pivot(count(WorkflowInstanceID) for TaskStatusName in ([درحال انجام],
																	[انجام شده], 
																	[ابطال شده])
																	) pvt
			order by createdate'
		
		exec sp_executesql @sql,
			N'@fd datetime, @td datetime',
			@fd = @fromdate, @td=@todate
	end


exec sp_dynamic2 


select * from task.tblworkflowinstance



alter view v_pivot
as
	select 
		WorkflowInstanceID, cast(i.CreateDate as date) createdate, TaskStatusName
	from
		task.TblWorkflowInstance i
		join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID=a.WokflowInstanceID
		join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
		join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID

select * from v_pivot


--with sub query
select 
	CreateDate,
	(select count(*) from v_pivot v2 where task) cnt
from 
	v_pivot v1
where
	CreateDate between '2021-02-20' and '2022'



--select distinct
--		TaskStatusName
--	from
--		task.TblWorkflowInstance i
--		join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID=a.WokflowInstanceID
--		join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
--		join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID


select
	createdate,
	(select count(*) from v_pivot v2 where taskstatusname = 'ابطال شده' and v2.createdate=v1.createdate) count_done
from
	v_pivot v1


select * from v_pivot v2 where taskstatusname = 'ابطال شده'


select distinct contacttitle,
(select count(*) from customers c2 where c2.contacttitle=c1.contacttitle) contact_count
from customers c1;


with cte as(
select contacttitle,
(select count(*) from customers c2 where c2.contacttitle=c1.contacttitle) contact_count,
ROW_NUMBER() over(partition by contacttitle order by (select null)) rn
from customers c1
)
select * from cte 
where rn=1;


use TBSSimNew
go

with cte as(
select 
	p.FullName,t.UserID,t.CreateDate,TaskStatusName,
	count(TaskID) over(partition by p.userid) task_count,
	ROW_NUMBER() over(partition by p.FullName order by (select null)) rn
from	
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join users.tblusers u on u.UserId=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	TaskStatusName != 'انجام شده'
)
select *
from cte
where
	task_count>200
	and rn=1

select *
from sys.columns
where name = 'orderid'


alter view v_task_taskstatus
as
select
	cast(CreateDate as date) createdate, TaskStatusName 
from
	task.TblTask t
	join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID


select  
	createdate,
	(select count(*) from v_task_taskstatus v2 where taskstatusname='درحال انجام' and v2.createdate=v1.createdate) 
from 
	v_task_taskstatus v1


create view v_cust_order
as
	select *
	from customers c join orders o on o.CustomerID=c.CustomerID

select * from v_cust_order


use Northwind
go
select
	ContactName,
	(select count(*) from customers c join orders o on o.CustomerID=c.CustomerID)
from
	customers c join orders o on o.CustomerID=c.CustomerID



--solve it with group by
with cte as(
select 
	p.FullName,t.UserID,CreateDate,TaskStatusName,count(TaskID) over(partition by t.UserID) task_count
from 
	Task.TblTaskStatus s
	join task.TblTask t on t.TaskStatusID=s.TaskStatusID
	join Users.TblUsers u on u.UserId=t.UserID
	join Users.TblProfiles p on p.UserId=t.UserID
where 
	TaskStatusName = 'در حال انجام'
	and year(CreateDate) between '2009' and '2022'
)
select  * from cte
where task_count>100



--answer
use TBSSimNew
go


with cte as(
select 
	t.UserID,count(TaskID) task_count
from 
	task.TblTask t
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where 
	TaskStatusName != 'انجام شده'
group by
	t.UserID
having
	count(TaskID) >200
)
select cte.UserID,p.UserName,task_count,p.FullName,cast(t.CreateDate as date) createdate
from 
	cte
	join users.TblProfiles p on p.UserId=cte.UserID
	join task.TblTask t on t.UserID=cte.UserID
order by 
	cte.UserID


select * from Users.TblUsers


--compare 
use TBSSimNew
go

with cte as(
select 
	p.FullName,t.UserID,t.CreateDate,TaskStatusName,
	count(TaskID) over(partition by t.userid) task_count,
	ROW_NUMBER() over(partition by p.FullName order by (select null)) rn
from	
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join users.tblusers u on u.UserId=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	TaskStatusName != 'انجام شده'
)
select *
from cte
where
	task_count>200
	and rn=1


--group by with temp table
use [SofiaCarRental_v2.2]
go


declare @table table(
	car varchar(40),
	car_count int
)

insert into @table
select 
	Make,count(CarID) car_count
from
	cars c
group by
	Make

alter table @table
add RentalOrderID int 
select * from @table


--
use TBSSimNew
go
select *
from task.TblTaskStatus

select distinct WorkflowInstanceStatusID from task.TblWorkflowInstance

select * from task.TblTask

--compare the two, first one is much faster
/
with cte as(
select
	p.fullname,t.userid,t.createdate,s.taskstatusname, count(taskid) over(partition by t.userid) task_count,
	ROW_NUMBER() over(partition by t.userid order by (select null)) rn
from
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	t.TaskStatusID = 1
)
select * from cte
where task_count > 100
	and rn =1;


with cte as(
select 
	p.FullName,t.UserID,t.CreateDate,TaskStatusName,
	count(TaskID) over(partition by t.userid) task_count,
	ROW_NUMBER() over(partition by p.FullName order by (select null)) rn
from	
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	TaskStatusName = 'در حال انجام'
)
select *
from cte
where
	task_count>100
	and rn=1;
*/

select * from Policy.TblProperty
select len('i+vh0CbhUJmwVDwycIXh4NQ/0tCGzG9MfEWxecUkVjxqa1bKW/r8jZ01bTxTXcfNYkyJ77I+85MK96HAAfq6Tw==N9EdpiSNiVaVW4IbMQFxD6/3OdNN4j7S7V2BfDw3YJG8+4Gims6BjYLxFAAGpz/2y3A2RRGN0EV5vtN+89lXvA==MiAQ8g4udJ3oJuX87UdUzK+3+va/BmzZimxyTXO6Pp4b045TmV6bC+nZh+Pn2d3Pb8nYreIflb288+PExizteA==nZ1C/u8jKp6XFMZikK9gCsutuG6C33Gl9rLfyLXm72snAPb++0YZN6i65fr72aTSnOGGLhOvMIkd1QjRNULfYQ==iEi2T/LRf2WINgNildqG0szNn7SZvJn+q4LCJeMx/ADcbfPleoACg+YOkYJbbGdzWrsb8x33FjRVw7BJaZDKUw==474Fucew3rBoseurii4uBQclBZG8EnKInBp/Sy7LuvnqGqiJmwt4kGldkJTLml+7+dCgzbwcs/40zshpdw4bWA==Zq7WbsQuZvKBjidfMHKO4hwgWaSKaXJWshdWBzW43LyhlDLIMjOPRtHP37g1XAU+uGKDEX3i9AK5kEw7NPmzhg==GaUOb672FRP9i2XuFPHpwgzdbdmjCP3NHLZrO9/E1dN7foq1FGsR2xTXO4XlqBDUQCBbg2rNhFzb31kKW0E+fA==nkXYixp8H1UyGsULaJEQukMwnOymVL45qjVrWccZQzhwVy5iendv2PjNqPzUuCiRuxUvfn9PCf6yJP6JWskHFg==K78M5IDLzoPWH5NlO86SfQjYEMUQ1FS78f7bHEwLwTHlrbxCvT6q7Un7z5+8tr+5iH5g3f372U7IbCwLCDThDQ==7Q4SqHW+04H2nhGo1pJEoUUj2dOSmo+gHx2EmMosGx6/nzOnNR0eMJ/FInLjL6ETGWLuBKdyicuKC+O6RBdHog==ZJmfKe1NB0Qy4kjHpet3D77nYQ3cMJ7+vnVgIjQAW4OBNPZvzTxiuUMBX9BDcuaXBD7uxnshMKWi/nRnX8MGtw==KpkJ573VgbqAoi1qOETu3wL/iTbQwz2de3zsDE+2npRh8xulO7twd1NAVgPyIWvC+rFPobqTmYxuuCn6dy7Cag==YItnlvFRb+D1FBL9rQZcrdGlXrOUV1suvy8TnpNxrek0DPw8Ey4jToiOEiDrl/+F0iPgU4PwR6IKVbMSuD85iA==NqZIIFzYw17W/bYOXBCUeKQ9Vl2tVoPDNX8O+A6yLyVTQQCBLBn7oSLYmv7o9UPgnn+ukH1FMb6tONOJg7rsjw==Qgo9ICxb8jqUe2TKHf59ANI+ONTVUr4Sbs4o9eJHHUD3yc09prYxZKz4B4RUWA4lYqAoDznaH7OUxcElhyUkaw==')


select len('9Su3rICeZGrnwJTld4RPYRVvlIfUV4nqp27zItcNsicl8KVLHCZD1Y08pFb1cXIxE4oCmuGGC1j6V8dnUNDcIw==IGE2Vkt6jDljnsKDjbQm1TkJqTGnP6zM10kjsia1+Y2uGIt5EY02aYyHZY0FUdE/28231hBbq6pFeaOWEy1eqg==jwv2cfnAHyKNOqjtTk48DvGfrbEunRBJyN+XPmcUPECvStSyh7s38LGodxnZZNrueh1qciq2EHFYp3aRraOOTw==GTggzKuPH+Z8SNTuqAPBHMZV/jbMkx2Ru4xltE05M7Xku6zexB7rSHbMmtbMdGlBp7iNJT9jxuEp3PS3MgwlEg==7H0mgjU4ImV4VwwhP2Mgz07fGkfONdGBU3XtZ2kynn5Dr8zRnHcfRHffEVVQo5am/oOBio4j2U7fugQr6KvWDw==pG5GOP5CA7KtgFPpKpoyCEWGqj4fvkU/2wJ4Ffip8NHwXskvLt50BV2w2tUtoSBJHVUjmLBrtm/ovP84WXbgLQ==8dKu4yj2/CIRyKb14quLtlq1FZhnka8EZmv1OEOQuhsarHSUupIg6vNJGoJQUlzC0pKZVNZZtlCbZTigdi+iFg==vjgEn8LR72PIj+jDfSAQ6vqEtGd+W2kk7rF2nnwehE+ugJYyjdyI6PgcV8DTyyRrkCASM1Wb0VTOLXaA9VwSdQ==ZzUBouYd+iy2jiLZyX6yz+Rq9LpQ6gmxw2cCpT+HimCdqH+VzqzEE9aaQiVK8TZqYGw2UUCkP6Oi70jo4JeJeQ==AlOTShNCD8GiT3LbHmu2LSt3X4Mv1WGyu15CelFZBb84FLCJoaaenUYCybQRzqzLY/go2+wqOwm9E9WGEyCamw==ZPzO/ykCrcn/TRBHzAT6vPxhFHDQq/yD5hFlNwKUUOuQjwatChmoonMWcJWTUGPP0N8FkVlHQN2tajKoylnOKg==cHCN401Q0/IGCBMOD+px0L+c6T8CQY/n+KjXRsZFr2YGIZbY19f5bwWtmFyd22VjmQanmO5W9oFDorPGOFE9Ng==lxhq9EyAkvbr05HNEkrL/d8OdLlx0cAPGqO5HWgNI9jVdSLrbaAK6ncW6sFxsuWJAVvIZmTS0+mLrr40gK8ReA==ZSYBRL9LgCKcwixaAvmbAOB/mW8bJCB+Mk7SifGIbwu/HRDNWjTW0+AtXpLWOs9fVvZZ636Oh7apbFb2W8YYSw==UDjigx089LUcLjHxLPpInB6WhbLhkonQyLC97ILsmqw+IPQB6fxzGzI+iJS3wtAOIg0gbQrRjmg8sz1Mu3KZRQ==rPeT/9v2mSFFIp2J6eflpYubJFrN+CucrbQZsGPJdfkO/G+IOdHCTXJ1/0GdC0gJbN7O0brPRGJBebHvfceeEw==')

--group by with temp table
declare @table table(
UserID int,
task_count int,
TaskStatusID bigint
)

--insert into @table
with cte as(
select 
	t.userid,count(taskid) task_count
from
	task.TblTask t
group by
	t.UserID
having
	count(taskid) > 100
),
cte2 as(
select 
	cte.userid,task_count,TaskStatusID,CreateDate
from 
	cte 
join 
	task.TblTask t on t.UserID=cte.UserID
),
cte3 as(
select 
	p.UserID,p.FullName,task_count,s.TaskStatusID,TaskStatusName,CreateDate,
	ROW_NUMBER() over(partition by fullname order by (select null)) rn
from
	cte2
	join task.TblTaskStatus s on cte2.TaskStatusID=s.TaskStatusID
	join users.TblProfiles p on p.UserId=cte2.UserID
where
	s.TaskStatusID=1)
select *
from cte3
--where rn=1




select 
	s.TaskStatusName,s.TaskStatusID
from 
	task.TblTaskStatus s
join
	@table t on t.TaskStatusID=s.TaskStatusID

select * from @table




/*
with cte as(
select 
	t.userid,count(taskid) over(partition by t.userid order by (select null)) task_count,
	ROW_NUMBER() over(partition by t.userid order by (select null)) rn
from
	task.TblTask t 
)
select * from cte
where rn=1
and task_count>100;


select 
	t.userid,count(taskid) task_count
from
	task.TblTask t 
group by
	t.UserID
having
	count(taskid) > 100
order by
	t.UserID;
*/


--Q3
select CreateDate,[1] as 'در حال انجام' , [2] as 'انجام شده', [4] as 'ابطال شده'
from(
select
	i.WorkflowInstanceID,cast(i.CreateDate as date) CreateDate,s.TaskStatusID
from
	task.TblTask t
	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID= t.WorkflowActivityInstaceID
	join task.TblWorkflowInstance i on i.WorkflowInstanceId = a.WokflowInstanceID
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	cast(i.CreateDate as date) between '2012-10-25' and '2013' 
) x
pivot(count(WorkflowInstanceID) for TaskStatusID in([1],[2],[3],[4],[5],[6])) pvt;



select *
from(
select
	i.WorkflowInstanceID,cast(i.CreateDate as date) CreateDate,s.TaskStatusName
from
	task.TblTask t
	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID= t.WorkflowActivityInstaceID
	join task.TblWorkflowInstance i on i.WorkflowInstanceId = a.WokflowInstanceID
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	cast(i.CreateDate as date) between '2012-10-25' and '2013' 
) x
pivot(count(WorkflowInstanceID) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt;


select * from task.tbltaskstatus

--
select
	cast(createdate as date) createdate,
	taskstatusid,
	count(taskid) task_count,
	count(taskid) * 100.0/count(count(taskid)) over (partition by taskstatusid) task_count_per_total
from
	task.TblTask t
group by
	cast(createdate as date),taskstatusid
order by
	createdate


--2-	جدولی از task های در حال انجام کاربران که تعداد آنها بیش از 100 باشد در بازه تاریخی (از تاریخ تا تاریخ)
declare @temp table
(
	usr int,
	tsk_cnt bigint,
	task_status int
)

insert into @temp
select
	userid,TaskStatusID,count(taskid) task_count
from
	task.TblTask t
where 
	TaskStatusID=1
group by
	UserID,TaskStatusID
having
	count(taskid) > 100

select usr,tsk_cnt,s.TaskStatusName,p.FullName
from 
	@temp t
	join task.TblTaskStatus s on s.TaskStatusID=t.task_status
	join users.TblProfiles p  on p.UserId= t.usr
--------------------------

select 
	WorkflowInstanceId,cast(CreateDate as date) CreateDate,count(WorkflowInstanceId) wf_count
from
	task.TblWorkflowInstance
group by rollup
	(WorkflowInstanceId,cast(CreateDate as date)) 


select *
from(
select
	i.WorkflowInstanceID,cast(i.CreateDate as date) CreateDate,s.TaskStatusName
from
	task.TblTask t
	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID= t.WorkflowActivityInstaceID
	join task.TblWorkflowInstance i on i.WorkflowInstanceId = a.WokflowInstanceID
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	cast(i.CreateDate as date) between '2012-10-25' and '2013' 
) x
pivot(count(WorkflowInstanceID) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt;


--debug 
select cast(t1.CreateDate as date) CreateDate,
count(case when t1.TaskStatusID=1 then WorkflowInstanceID end) [در حال انجام],
count(case when t1.taskstatusid=2 then WorkflowInstanceID end) [انجام شده],
count(case when t1.taskstatusid=4 then WorkflowInstanceID end) [ابطال شده]
from
	task.TblTask t1
	join task.TblTaskStatus s on t1.TaskStatusID=s.TaskStatusID
	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID=t1.WorkflowActivityInstaceID
	join task.TblWorkflowInstance i on i.WorkflowInstanceID=a.WorkflowActivityInstanceID
where t1.CreateDate between '2012-10-25' and '2013'
group by
	cast(t1.CreateDate as date)
order by CreateDate
-----------------

--wrong
--select distinct cast(t1.CreateDate as date) CreateDate,
--(select count(*) from task.TblWorkflowInstance i1 where s.TaskStatusID=1 and cast(i1.createdate as date)=cast(i.createdate as date)) [در حال انجام],
--(select count(*) from task.TblWorkflowInstance i1 where s.TaskStatusID=2 and cast(i1.createdate as date)=cast(i.createdate as date)) [انجام شده],
--(select count(*) from task.TblWorkflowInstance i1 where s.TaskStatusID=4 and cast(i1.CreateDate as date)=cast(i.CreateDate as date)) [ابطال شده]
--from
--	task.TblTask t1
--	join task.TblTaskStatus s on t1.TaskStatusID=s.TaskStatusID
--	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID=t1.WorkflowActivityInstaceID
--	join task.TblWorkflowInstance i on i.BaseWorkflowInstanceID=a.WokflowInstanceID
--where t1.CreateDate between '2012-10-25' and '2013'



select * from task.TblTaskStatus


--Find employees whose salary is higher than the average salary in their department.
--Employees e, Departments d
--select emp_id, 



--Find customers who have placed orders with a total amount greater than the average order amount for their respective region.
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.RegionID,
    (SELECT SUM(o.OrderAmount) 
     FROM Orders o 
     WHERE o.CustomerID = c.CustomerID) AS TotalOrderAmount
FROM Customers c
WHERE (SELECT SUM(o.OrderAmount)
       FROM Orders o
       WHERE o.CustomerID = c.CustomerID) > 
      (SELECT AVG(SUM(o.OrderAmount))
       FROM Customers c2
       JOIN Orders o ON o.CustomerID = c2.CustomerID
       WHERE c2.RegionID = c.RegionID
       GROUP BY c2.RegionID);


use Northwind

--window function
with cte as(
select
	c.CustomerID,
	r.RegionID,
	count(o.OrderID) order_count,
	AVG(count(o.OrderID)) over(partition by r.regionid) avg_per_region,
	AVG(count(o.OrderID)) over() avg_total
from
	customers c
	join Orders o on o.CustomerID=c.CustomerID
	join Employees e on o.EmployeeID=e.EmployeeID
	join EmployeeTerritories et on e.EmployeeID=et.EmployeeID
	join Territories t on t.TerritoryID=et.TerritoryID
	join region r on r.RegionID= t.RegionID
group by
	c.CustomerID,r.regionid
)
select * from cte
where avg_per_region > avg_total


/*
Here’s an alternative to a PIVOT table using conditional aggregation:

Problem:
Show total sales for each product categorized by year.
*/

SELECT 
    Product,
    SUM(CASE WHEN YEAR(SaleDate) = 2021 THEN Sales ELSE 0 END) AS Sales_2021,
    SUM(CASE WHEN YEAR(SaleDate) = 2022 THEN Sales ELSE 0 END) AS Sales_2022,
    SUM(CASE WHEN YEAR(SaleDate) = 2023 THEN Sales ELSE 0 END) AS Sales_2023
FROM SalesData
GROUP BY Product;


--debug 
select cast(t1.CreateDate as date) CreateDate,
count(case when t1.TaskStatusID=1 then WorkflowInstanceID else 0 end) [در حال انجام],
count(case when t1.taskstatusid=2 then WorkflowInstanceID else 0 end) [انجام شده],
count(case when t1.taskstatusid=4 then WorkflowInstanceID else 0 end) [ابطال شده]
from
	task.TblTask t1
	join task.TblTaskStatus s on t1.TaskStatusID=s.TaskStatusID
	join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID=t1.WorkflowActivityInstaceID
	join task.TblWorkflowInstance i on i.WorkflowInstanceID=a.WorkflowActivityInstanceID
where t1.CreateDate between '2012-10-25' and '2013'
group by
	cast(t1.CreateDate as date)
order by CreateDate
-----------------