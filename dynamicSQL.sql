declare @sql nvarchar(max),@agg varchar(50)

set @agg='TaskStatusID'
set @sql=N'select * from(
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
) x
pivot(count('+@agg+') for taskstatusname in([در حال انجام],[انجام شده],[ابطال شده])) pvt'

exec(@sql)


alter proc sp_dynamic @agg varchar(50)
as
begin
declare @sql nvarchar(max)

set @sql=N'select * from(
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
) x
pivot(count('+@agg+') for taskstatusname in([در حال انجام],[انجام شده],[ابطال شده])) pvt'
exec sp_executesql @sql
end

exec sp_dynamic 'TaskStatusID'



--
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName,count(s.TaskStatusName) over(partition by cast(CreateDate as date))
from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID

select TaskStatusName from task.TblTaskStatus


--dynamic sql

declare @fromdate nvarchar(20)= '2023-01-08'
declare @todate nvarchar(20)= getdate()--'2012-01-12'

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

exec(@sql)

--sp dynamic sql
alter proc sp_dynamic2 @fromdate nvarchar(20),@todate nvarchar(20)
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



--sp dynamic Q2
create proc sp_dynamicQ2 @fromdate varchar(20),@todate varchar(20),@taskcount int
as
begin
	declare @sql nvarchar(max)
	set @sql=N'
	with cte as(
	select p.FullName,t.UserID,CreateDate,TaskStatusName,count(TaskID) over(partition by t.UserID) task_count
	from Task.TblTaskStatus s
	join task.TblTask t on t.TaskStatusID=s.TaskStatusID
	join Users.TblUsers u on u.UserId=t.UserID
	join Users.TblProfiles p on p.UserId=t.UserID
	where TaskStatusName = ''در حال انجام''
	and year(CreateDate) between '''+@fromdate+''' and '''+@todate+'''
	)
	select  * from cte
	where task_count>'''+@taskcount+'''
	'
	exec sp_executesql @sql

end

exec sp_dynamicQ2 '2009-01-08','2022-01-08',100