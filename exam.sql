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
select top 100 TaskStatusName,UserID,CreateDate,count(TaskID) task_count
from Task.TblTaskStatus s join task.TblTask t
on t.TaskStatusID=s.TaskStatusID
where TaskStatusName = 'در حال انجام'
and year(CreateDate) between '2009' and '2011'
group by TaskStatusName,UserID,CreateDate
having count(TaskID)>100


--Q3
create proc sp_workflow @year datetime,@year2 datetime
as
begin
	select day(CreateDate),IsActive,count(wfi.WorkflowID) wf_count from Task.TblWorkflowInstance wfi
	join Workflow. TblWorkflow wf
	on wfi.WorkflowID=wf.WorkflowId
	where year(CreateDate) between @year and @year2
	group by day(CreateDate),IsActive
end

exec sp_workflow 2008,2009


select CreateDate,IsActive,count(wfi.WorkflowID) wf_count from Task.TblWorkflowInstance wfi
	join Workflow. TblWorkflow wf
	on wfi.WorkflowID=wf.WorkflowId
	where year(CreateDate) between 2008 and 2009
	group by CreateDate,IsActive

--Q4
use TBS_Sim

select *
from  INFORMATION_SCHEMA.COLUMNS
where TABLE_SCHEMA = 'dbo'

select *
from  INFORMATION_SCHEMA.tables
where TABLE_SCHEMA = 'dbo'

--Q5
create table wf_table(
CreateDate datetime,
IsActive int,
wf_count int)

insert into wf_table
exec sp_workflow 2008,2009


--practice
create proc sp_test @year int,@year2 int
as
begin
	select ModifiedDate,BusinessEntityID,count(EmailPromotion) wf_count from [AdventureWorks2014].[Person].[Person] p
	where year(ModifiedDate) between @year and @year2
	group by ModifiedDate,BusinessEntityID
end

exec sp_test 2011,2013


create table wf_table(
ModifiedDate datetime,
BusinessEntityID int,
wf_count int)

insert into wf_table
exec sp_test 2008,2009

