--select * from Workflow.TblWorkflow
--where Name like N'%پشتیبانی%'

with cte as (
select
	WorkflowInstanceID, dbo.MiladiToShamsi(CreateDate) CreateDate
	--,count(i.WorkflowInstanceID) over() wf_count
from
	task.TblWorkflowInstance 
	--join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID = a.WokflowInstanceID
	--join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	--join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
where
	WorkflowId = 2000045
	and WorkflowInstanceID !=2  --تماس های بی پاسخ
) 
select *
from cte
where CreateDate < '1403/09/09'




-----test
--select
--	*
--from
--	Workflow.TblWorkflow w
--	join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
--	join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID = a.WokflowInstanceID
--	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
--	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
--where
--	w.WorkflowId = 2000579


--select top 1000 * from task.TblWorkflowInstance
--where WorkflowId = 2000045
--order by WorkflowInstanceID desc

--select * from task.TblWorkflowInstanceStatus


