select
	top 1000 *
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID = a.WokflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
where
	WorkflowID = 2000047
	and WorkflowInstanceID = 795837


select 
	top 1000 *
from 
	workflow.TblWorkflow

	
select 
	top 1000 *
from
	task.TblWorkflowActivityInstance a


select * from INFORMATION_SCHEMA.COLUMNS
where COLUMN_NAME = 'activityid'
and TABLE_SCHEMA not in( 'dbo','log')



---فرایندهای معلق
--select 
--	st.TaskStatusName, *
--from 
--	task.TblSuspendTask s
--	join task.TblTask t on t.TaskID=s.TaskId
--	join task.TblTaskStatus st on t.TaskStatusID=st.TaskStatusID


--select top 1000 *
--from task.TblWorkflowActivityInstance


--select top 1000 *
--from task.TblWorkflowInstance


-- اخذ ارز دانشجویی 
----------------------
select
	TaskName,t.CreateDate, t.EndDate, TaskStatusName, p.FullName
	--,ActivityID
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID = a.WokflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
	join users.TblProfiles p on p.UserId = t.UserID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
where
	WorkflowID = 2000047
	and WorkflowInstanceID = 795837
	and ActivityID = 5556998559925532037
	--and FullName != N'کاربر سیستم'


