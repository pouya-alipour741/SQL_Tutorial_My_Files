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
create proc sp_workflow @date datetime,@date2 datetime
as
begin
	select * from (
	(select i.CreateDate,s.TaskStatusName,i.WorkflowInstanceID 
	from Task.TblWorkflowInstance i
	join users.TblUsers u on i.StarterUserID=u.UserId
	join task.TblTask t on t.ResponsibleUserID=u.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
	where i.CreateDate between @date and @date2
	) x
	pivot(count(WorkflowInstanceID ) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt
end

exec sp_workflow '2012-01-08','2012-01-09'


--pivot
select * from (
(select i.CreateDate,s.TaskStatusName,i.WorkflowInstanceID 
from Task.TblWorkflowInstance i
join users.TblUsers u on i.StarterUserID=u.UserId
join task.TblTask t on t.ResponsibleUserID=u.UserId
join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where i.CreateDate between '2012-01-08' and '2012-01-09'
) x
pivot(count(WorkflowInstanceID ) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt

--case
create proc sp_workflow @date datetime,@date2 datetime
as
begin
	select top 1000 dAY(i.CreateDate) status_day,
	case  when s.TaskStatusName='در حال انجام' then count(WorkflowInstanceID) else 0  end 'در حال انجام',
	case when s.TaskStatusName='انجام شده' then count(WorkflowInstanceID) else 0 end 'انجام شده',
	case when s.TaskStatusName='ابطال شده' then count(WorkflowInstanceID) else 0 end 'ابطال شده'
	from Task.TblWorkflowInstance i
	join users.TblUsers u on i.StarterUserID=u.UserId
	join task.TblTask t on t.ResponsibleUserID=u.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
	where i.CreateDate between @date and @date2
	and s.TaskStatusName in('در حال انجام','انجام شده','ابطال شده')
	group by day(i.CreateDate),s.TaskStatusName
end


select top 1000 cast(i.CreateDate as date) status_day,
case  when s.TaskStatusName='در حال انجام' then count(WorkflowInstanceID) else 0  end 'در حال انجام',
case when s.TaskStatusName='انجام شده' then count(WorkflowInstanceID) else 0 end 'انجام شده',
case when s.TaskStatusName='ابطال شده' then count(WorkflowInstanceID) else 0 end 'ابطال شده'
from Task.TblWorkflowInstance i
join users.TblUsers u on i.StarterUserID=u.UserId
join task.TblTask t on t.ResponsibleUserID=u.UserId
join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where i.CreateDate between '2012-01-08' and '2012-01-12'
and s.TaskStatusName in('در حال انجام','انجام شده','ابطال شده')
group by cast(i.CreateDate as date),s.TaskStatusName


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
EXECUTE sp_executesql   
N'select * from (
(select i.CreateDate,s.TaskStatusName,i.WorkflowInstanceID 
from Task.TblWorkflowInstance i
join users.TblUsers u on i.StarterUserID=u.UserId
join task.TblTask t on t.ResponsibleUserID=u.UserId
join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where i.CreateDate between @date and @date2
) x
pivot(count(WorkflowInstanceID ) for TaskStatusName in([در حال انجام],[انجام شده],[ابطال شده])) pvt',
N'@date datetime,@date2 datetime',
@date='2012-01-08',@date2='2012-01-09'


--wip 
create proc sp_workflow @date datetime,@date2 datetime
as
begin
	declare @sql varchar(max)


	set @sql = '
	select dAY(i.CreateDate) status_day,
	case  when s.TaskStatusName='در حال انجام' then count(WorkflowInstanceID) else 0  end 'در حال انجام',
	case when s.TaskStatusName='انجام شده' then count(WorkflowInstanceID) else 0 end 'انجام شده',
	case when s.TaskStatusName='ابطال شده' then count(WorkflowInstanceID) else 0 end 'ابطال شده'
	from Task.TblWorkflowInstance i
	join users.TblUsers u on i.StarterUserID=u.UserId
	join task.TblTask t on t.ResponsibleUserID=u.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
	where i.CreateDate between @date and @date2
	and s.TaskStatusName in('در حال انجام','انجام شده','ابطال شده')
	group by day(i.CreateDate),s.TaskStatusName'

		


end



