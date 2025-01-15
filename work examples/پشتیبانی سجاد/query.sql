--select * from Workflow.TblWorkflow
--where Name like N'%پشتیبانی%'

with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate
	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId = 2000045
		and WorkflowInstanceStatusID != 2  --درخواست پشتیبانی بی پاسخ
) 
select
	*
	--,count(WorkflowInstanceID) over() SupportRequestsCount
from cte
where CreateDate < '1403/09/09'




--select * from task.TblWorkflowInstanceStatus


