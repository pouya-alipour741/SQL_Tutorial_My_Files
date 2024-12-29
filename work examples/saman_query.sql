select
	f.Name, count(i.WorkflowInstanceID) wf_count
from
	Workflow.TblWorkflow f
	join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
group by
	f.Name



with cte as(
select
	f.Name,
	last_VALUE(i.CreateDate) over(partition by f.Name order by i.WorkflowInstanceID,t.taskid) last_CreateDate,
	count(i.WorkflowInstanceID ) over(partition by f.Name order by i.WorkflowInstanceID,t.taskid) wf_count
	,count(case when t.TaskStatusID = 6 then i.WorkflowInstanceID end) over(partition by f.Name order by i.WorkflowInstanceID,t.taskid) wf_count_open
	,count(case when t.TaskStatusID = 1 then i.WorkflowInstanceID end) over(partition by f.Name order by i.WorkflowInstanceID,t.taskid) wf_count_in_progress
	,ROW_NUMBER() over(partition by f.Name order by i.WorkflowInstanceID,t.taskid) RowNumber
from
	Workflow.TblWorkflow f
	join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
)
select
	Name,last_CreateDate,wf_count,wf_count_open,wf_count_in_progress
from
	cte
where
	RowNumber = 1


SELECT CustomerID,
count(DISTINCT CustomerID) OVER (PARTITION BY region ORDER BY date) AS distinct_sales_sum
FROM Customers;

--------------------
with cte as(
select
	f.Name,
	last_VALUE(i.CreateDate) over(partition by f.name order by(select null)) last_CreateDate,
	count(case when t.TaskID in (select max(TaskID) over(partition by i.WorkflowInstanceID) from task.TblTask join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID ) then i.WorkflowInstanceID end) over(partition by f.Name) wf_count
	,count(case when t.TaskStatusID = 6 then i.WorkflowInstanceID end) over(partition by f.Name) wf_count_open
	,count(case when t.TaskStatusID = 1 then i.WorkflowInstanceID end) over(partition by f.Name) wf_count_in_progress
	,ROW_NUMBER() over(partition by f.Name order by (select null)) rn
from
	Workflow.TblWorkflow f
	join task.TblWorkflowInstance i on f.WorkflowId = i.WorkflowID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
)

select Name,last_CreateDate,wf_count,wf_count_open,wf_count_in_progress
from cte where rn = 1



-----
select * from Workflow.TblWorkflow
where Name like N'فرآیند استعلام نرخ'


select * from task.TblWorkflowInstance 
where WorkflowID = 21


select WorkflowInstanceStatusID from task.TblWorkflowInstance