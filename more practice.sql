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
pivot(count(WorkflowInstanceID) for TaskStatusName in ([ÏÑÍÇá ÇäÌÇã],
														[ÇäÌÇã ÔÏå], 
														[ÇÈØÇá ÔÏå])
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
		pivot(count(WorkflowInstanceID) for TaskStatusName in ([ÏÑÍÇá ÇäÌÇã],
																[ÇäÌÇã ÔÏå], 
																[ÇÈØÇá ÔÏå])
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
[ÏÑÍÇá ÇäÌÇã] int,
[ÇäÌÇã ÔÏå] int, 
[ÇÈØÇá ÔÏå] int
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
			pivot(count(WorkflowInstanceID) for TaskStatusName in ([ÏÑÍÇá ÇäÌÇã],
																	[ÇäÌÇã ÔÏå], 
																	[ÇÈØÇá ÔÏå])
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
	(select count(*) from v_pivot v2 where taskstatusname = 'ÇÈØÇá ÔÏå' and v2.createdate=v1.createdate) count_done
from
	v_pivot v1


select * from v_pivot v2 where taskstatusname = 'ÇÈØÇá ÔÏå'


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
	TaskStatusName != 'ÇäÌÇã ÔÏå'
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
	(select count(*) from v_task_taskstatus v2 where taskstatusname='ÏÑÍÇá ÇäÌÇã' and v2.createdate=v1.createdate) 
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
	TaskStatusName = 'ÏÑ ÍÇá ÇäÌÇã'
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
	TaskStatusName != 'ÇäÌÇã ÔÏå'
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
	count(TaskID) over(order by t.userid) task_count,
	ROW_NUMBER() over(partition by p.FullName order by (select null)) rn
from	
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join users.tblusers u on u.UserId=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	TaskStatusName != 'ÇäÌÇã ÔÏå'
)
select *
from cte
where
	task_count>200
	and rn=1


--group by with temp table
use [SofiaCarRental_v2.2]
go


select 
	Make,count(CarID) car_count
from
	cars c
group by
	Make




