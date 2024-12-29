select top 1000 *
into #temp
from
	Workflow.TblWorkflow f
	join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID



with cte as(
select
	f.name
	,t.TaskStatusID
	,i.CreateDate
	,case when ROW_NUMBER() over(partition by i.WorkflowInstanceID order by (select null)) = 1 then i.WorkflowInstanceID end as distinct_WorkflowInstanceID
from
	#temp
)
,cte2 as(
select
	Name
	,LAST_VALUE(CreateDate) over(partition by Name order by CreateDate rows between unbounded preceding and unbounded following) last_CreateDate
	,count(distinct_WorkflowInstanceID) over(partition by Name) wf_count
	,count(case when TaskStatusID = 6 then distinct_WorkflowInstanceID end) over(partition by Name) wf_count_open
	,count(case when TaskStatusID = 1 then distinct_WorkflowInstanceID end) over(partition by Name) wf_count_in_progress
	,ROW_NUMBER() over(partition by name order by (select null)) rowNumber2
from
	cte
)
select
	Name, last_CreateDate, wf_count, wf_count_open, wf_count_in_progress
from
	cte2
where
	rowNumber2 = 1