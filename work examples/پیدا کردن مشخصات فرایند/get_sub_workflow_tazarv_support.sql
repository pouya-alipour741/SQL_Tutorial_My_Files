--select 
--	*
--from
--	Workflow.TblWorkflow f
--where 
--	Name like N'%ÊÐÑæ%'


select 
	TaskName, t.CreateDate, t.EndDate,
	(select TaskStatusName from task.TblTaskStatus s where s.TaskStatusID = t.TaskStatusID) TaskStatusName,
	(select p.FullName from users.TblProfiles p where p.UserId = t.UserID) FullName
	,(select GroupName from users.TblGroups g where g.groupid = t.GroupID) GroupName
	,(select p.UserId from users.TblProfiles p where p.UserId = t.UserID) UserID
from
	task.TblWorkflowInstance i 
	join task.TblWorkflowActivityInstance a on i.WorkflowInstanceID = a.WokflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where
	WorkflowId = 157
	and WorkflowInstanceID = (select max(WorkflowInstanceID) from task.TblWorkflowInstance where WorkflowId = 157)


