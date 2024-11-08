--Q1
declare @ndays int
set @ndays=180

select top 1000 WorkflowInstanceID,TaskID,TaskName,t.CreateDate,TaskStatusName
from task.TblTask t
join users.TblUsers u on t.UserID=u.UserId
join task.TblWorkflowInstance i on i.StarterUserID=u.UserId
join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where t.CreateDate between DATEADD(day,-@ndays,getdate()) and getdate()


select max(CreateDate) from Task.TblTask
where CreateDate not in (select max(CreateDate) from Task.TblTask)


--with cte as(
--select top 1000 * from Task.TblTask),
--cte2 as(
--select cast(CreateDate as date) CreateDate,dense_rank() over(order by cast(CreateDate as date)) rk from cte
--group by cast(CreateDate as date)
--)

--Q2
declare @date datetime='2023-01-01' 
declare @date2 datetime='2024-01-01';

with cte as(
select UserName,p.UserId,CreateDate,TaskStatusName,count(taskid) over(partition by p.userid) taskcount
from task.TblTask t 
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
join users.TblUsers u on u.UserId=t.UserID
join users.TblProfiles p on u.UserId=p.UserId
where TaskStatusName='در حال انجام')
select * from cte
where taskcount >100
and CreateDate between @date and @date2
order by CreateDate


--Q2 dynamic sql
alter proc sp_dynamic @date nvarchar(50) ,@date2 nvarchar(50)
as
	begin
		declare @sql nvarchar(max)
		set @sql=N'
		with cte as(
		select UserName,p.UserId,CreateDate,TaskStatusName,count(taskid) over(partition by p.userid) taskcount
		from task.TblTask t 
		join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
		join users.TblUsers u on u.UserId=t.UserID
		join users.TblProfiles p on u.UserId=p.UserId 
		where TaskStatusName=''در حال انجام''
		)
		select * from cte
		where taskcount >100
		and CreateDate between '''+@date+''' and '''+@date2+'''
		order by CreateDate
		'
		exec sp_executesql @sql
	end

exec sp_dynamic cast('2023-01-01' as date),cast('2024-01-01' as date)
select cast('2023-01-01' as date)

--Q3
declare @fromdate date='2012-01-08',@todate date='2012-01-12'

create proc sp_q3 @fromdate date='2012-01-08',@todate date='2012-01-12'
as
	begin
		select * from (
		select cast(CreateDate as date) CreateDate,TaskStatusName,workflowinstanceid
		from task.TblWorkflowInstance i
		join task.TblTaskStatus s on i.WorkflowInstanceStatusID=s.TaskStatusID
		where CreateDate between @fromdate and @todate) x
		pivot(count(workflowinstanceid) for TaskStatusName in([انجام شده],[ابطال شده],[در حال انجام])) pvt
		order by CreateDate desc
	end

exec sp_q3 '2012-01-08','2012-01-18'

--Q5
drop table if exists(sp_table)

create table sp_table(
createdate date,
[انجام شده] int,
[ابطال شده] int, 
[در حال انجام] int
)

insert into sp_table
exec sp_q3

select * from sp_table

