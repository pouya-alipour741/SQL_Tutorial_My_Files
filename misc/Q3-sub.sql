select top 1000 cast(i.CreateDate as date) status_day,
case  when s.TaskStatusName='در حال انجام' then count(WorkflowInstanceID) else 0 end 'در حال انجام',
case when s.TaskStatusName='انجام شده' then count(WorkflowInstanceID) else 0 end 'انجام شده',
case when s.TaskStatusName='ابطال شده' then count(WorkflowInstanceID) else 0 end 'ابطال شده'
from Task.TblWorkflowInstance i
join users.TblUsers u on i.StarterUserID=u.UserId
join task.TblTask t on t.ResponsibleUserID=u.UserId
join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where i.CreateDate between '2012-01-08' and '2012-01-12'
and s.TaskStatusName in('در حال انجام','انجام شده','ابطال شده')
group by cast(i.CreateDate as date),s.TaskStatusName



declare @fromdate as nvarchar(10)= '2012-01-08'
declare @todate as nvarchar(10) = '2012-01-12'

select distinct cast(i.CreateDate as date) as createdate,
(select count(*) from Task.TblWorkflowInstance i1 where i1.WorkflowInstanceStatusID = 1
and cast(i1.CreateDate as date) =cast(i.CreateDate as date) ) as 'در حال انجام',
(select count(*) from Task.TblWorkflowInstance i2 where i2.WorkflowInstanceStatusID = 2
and cast(i2.CreateDate as date) =cast(i.CreateDate as date) ) as 'انجام شده',
(select count(*) from Task.TblWorkflowInstance i3 where i3.WorkflowInstanceStatusID = 3
and cast(i3.CreateDate as date) =cast(i.CreateDate as date) ) as 'ابطال شده'
--(select case when i.WorkflowInstanceStatusID = 1 and cast(i.CreateDate as date) = @fromdate  then count(*) else 0 end) 'در حال انجام',
--(select case when i.WorkflowInstanceStatusID = 2 and cast(i.CreateDate as date) = @fromdate  then count(*) else 0 end) 'انجام شده',
--(select case when i.WorkflowInstanceStatusID = 3 and cast(i.CreateDate as date) = @fromdate  then count(*) else 0 end) 'ابطال شده'
from Task.TblWorkflowInstance i 

where cast(i.CreateDate as date) between @fromdate and @todate
group by cast(i.CreateDate as date),WorkflowInstanceID,WorkflowInstanceStatusID


select * from task.TblWorkflowInstance
where cast(CreateDate as date) = '2012-01-11' and WorkflowInstanceStatusID = 2

