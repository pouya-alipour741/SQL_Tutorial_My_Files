declare @fromdate as nvarchar(10)= '2012-01-08'
declare @todate as nvarchar(10) = '2012-01-12'
select  cast(CreateDate as date) as CreateDate, [1] as 'درحال انجام' ,[2] as 'انجام شده' ,[3] as 'ابطال شده'
from (select cast(CreateDate as date) as CreateDate,WorkflowInstanceStatusID,WorkflowInstanceID from task.TblWorkflowInstance as i where cast(i.CreateDate as date) between @fromdate and @todate) as i1
pivot
(
count([WorkflowInstanceID])
for [WorkflowInstanceStatusID]
in (
[1],
[2],
[3]

)
) as pt
order by CreateDate