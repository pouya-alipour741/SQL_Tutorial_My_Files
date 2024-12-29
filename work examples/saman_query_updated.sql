with cte as(
select
	f.name
	,t.TaskStatusID
	,i.CreateDate
	,i.WorkflowInstanceID
	,ROW_NUMBER() over(partition by i.WorkflowInstanceID order by (select null)) RowNumber
from
	Workflow.TblWorkflow f
	join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
)
,cte2 as(
select
	Name,
	last_VALUE(CreateDate) over(partition by Name order by CreateDate rows between unbounded preceding and unbounded following) last_CreateDate
	,count(WorkflowInstanceID) over(partition by Name) wf_count
	,count(case when TaskStatusID = 6 then WorkflowInstanceID end) over(partition by Name) wf_count_open
	,count(case when TaskStatusID = 1 then WorkflowInstanceID end) over(partition by Name) wf_count_in_progress,
	ROW_NUMBER() over(partition by name order by (select null)) rowNumber2
from
	cte
where
	RowNumber = 1
)
select
	Name, last_CreateDate, wf_count, wf_count_open, wf_count_in_progress
from
	cte2
where
	rowNumber2 = 1