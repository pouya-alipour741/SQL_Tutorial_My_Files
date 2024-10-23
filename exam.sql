select top 100 * from Task.TblTask
select top 100 * from  Users.TblUsers
select top 100 * from  Users.TblProfiles
select top 100 * from  Task.TblTaskStatus
select top 100 * from  Task.TblWorkflowInstance
select top 100 * from  Workflow. TblWorkflow


--Q1
select t.TaskStatusID,TaskID,TaskName,CreateDate,ts.TaskStatusName from Task.TblTask t
join Task.TblTaskStatus ts
on t.TaskStatusID=ts.TaskStatusID
--where CreateDate < GETDATE()
where CreateDate between dateadd(day,-720,GETDATE()) and GETDATE()


--Q2
with cte as(
select p.FullName,t.UserID,CreateDate,TaskStatusName,count(TaskID) over(partition by t.UserID) task_count
from Task.TblTaskStatus s
join task.TblTask t on t.TaskStatusID=s.TaskStatusID
join Users.TblUsers u on u.UserId=t.UserID
join Users.TblProfiles p on p.UserId=t.UserID
where TaskStatusName = 'در حال انجام'
and year(CreateDate) between '2009' and '2022'
)
select  * from cte
where task_count>100
--group by p.FullName,t.UserID,CreateDate,TaskStatusName
--having count(TaskID)>100


--Q3

create proc sp_workflow_pvt @date datetime,@date2 datetime
as
begin
	select cast(CreateDate as date) CreateDate,[1] as 'درحال انجام' ,[2] as 'انجام شده' ,[4] as 'ابطال شده'
	from (
	select cast(CreateDate as date) CreateDate,WorkflowInstanceID,WorkflowInstanceStatusID
	from Task.TblWorkflowInstance
	where cast(CreateDate as date) between @date and @date2
	) x
	pivot(count(WorkflowInstanceID ) for WorkflowInstanceStatusID in([1],[2],[4])
	) pvt
end

exec sp_workflow_pvt '2012-01-08','2012-01-12'


--pivot
declare @fromdate nvarchar(20)= '2023-01-08'
declare @todate nvarchar(20)= getdate()--'2012-01-12'

select cast(CreateDate as date) CreateDate,[1] as 'درحال انجام' ,[2] as 'انجام شده' ,[4] as 'ابطال شده'--,[1]+[2]+[3] total
from (
select cast(CreateDate as date) CreateDate,WorkflowInstanceID,WorkflowInstanceStatusID
from Task.TblWorkflowInstance
where cast(CreateDate as date) between @fromdate and @todate
) x
pivot(count(WorkflowInstanceID ) for WorkflowInstanceStatusID in([1],[2],[4])
) pvt
order by CreateDate


--not giving correct results
--select * from (
--select cast(i.CreateDate as date) CreateDate,s.TaskStatusName,i.WorkflowInstanceID 
--from Task.TblWorkflowInstance i
--join users.TblUsers u on i.StarterUserID=u.UserId
--join task.TblTask t on t.ResponsibleUserID=u.UserId
--join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
--where cast(i.CreateDate as date) between '2012-01-08' and '2012-01-12'
--) x
--pivot(count(WorkflowInstanceID ) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt






--Q4
use TBS_Sim

select *
from  INFORMATION_SCHEMA.COLUMNS
where TABLE_SCHEMA = 'dbo'


--Q5
create table wf_table(
CreateDate datetime,
InProgress int,
Finished int,
Canceled int)

insert into wf_table
exec sp_workflow '2012-01-08','2012-01-09'


--Q6
create proc sp_dynamic2 @fromdate nvarchar(20),@todate nvarchar(20)
as
begin
	declare @sql nvarchar(max)

	set @sql = N'select cast(CreateDate as date) CreateDate,[1] as ''درحال انجام'' ,
	[2] as ''انجام شده'',
	[4] as ''ابطال شده''
	from (
	select cast(CreateDate as date) CreateDate,WorkflowInstanceID,WorkflowInstanceStatusID
	from Task.TblWorkflowInstance
	where cast(CreateDate as date) between '''+@fromdate+''' and '''+@todate+'''
	) x
	pivot(count(WorkflowInstanceID ) for WorkflowInstanceStatusID in([1],[2],[4])
	) pvt
	order by CreateDate'

	exec sp_executesql @sql 
end

exec sp_dynamic2 '2023-01-08','2024-01-08'





