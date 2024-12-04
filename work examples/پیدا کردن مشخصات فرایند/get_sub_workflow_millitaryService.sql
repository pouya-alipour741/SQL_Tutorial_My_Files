--select top 1000 *
--from task.TblWorkflowInstance
--where WorkflowID = 62
--and WorkflowInstanceStatusID = 2
--and WorkflowInstanceID = 3997921


--select top 1000 *
--from Workflow.TblWorkflow


--select
--	top 1000 WorkflowActivityInstaceID,*
--from
--	task.TblWorkflowInstance i
--	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
--	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
--where
--	WorkflowID = 62
--	and WorkflowInstanceStatusID = 2
--	and WorkflowInstanceID = 3997921


--with cte as(
--select *,
--	ROW_NUMBER() over(partition by TABLE_NAME order by (select null)) rn
--from INFORMATION_SCHEMA.COLUMNS
--where TABLE_NAME like '%activity%'
--)
--select * from cte 
--where rn=1;

--select distinct TABLE_NAME
--from INFORMATION_SCHEMA.COLUMNS
--where TABLE_NAME like '%activity%'


 --درخواست تغییرات امور نظام وظیفه دانشجویان 
-----------------
select
	TaskName,
	(select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	(select dbo.MiladiToShamsi(t.EndDate)) EndDate, TaskStatusName,
	p.FullName
--,ActivityID
--,p.UserID
--, tr.Groupid
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
	--join task.TblWorkflowInstanceTrustee tr on tr.WorkflowInstanceId = i.WorkflowInstanceID
	join users.TblProfiles p on p.UserId = t.UserId	
where
	WorkflowID = 62
	and WorkflowInstanceStatusID = 2
	and i.WorkflowInstanceID = 3997921
	and p.UserId != 2  --کاربر سیستم
--select * from users.TblProfiles
--where UserId = 2112


--select 
--	ug.UserId,g.GroupId, GroupName
--from
--	users.TblProfiles p 
--	join users.TblUsersGroups ug on ug.UserId = p.UserId
--	join users.TblGroups g on g.GroupId = ug.GroupId 



----------------------
--select
--	TaskName, (select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
--	(select dbo.MiladiToShamsi(t.EndDate)) EndDate, TaskStatusName,
--	p.FullName
--	--,GroupName,
--	,(select GroupName from users.TblGroups g where g.GroupId = t.GroupId ) Group_Name
--	--,ActivityID
--	--,p.UserID
--	--, g.Groupid
--from
--	task.TblWorkflowInstance i
--	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
--	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
--	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
--	join users.TblProfiles p on p.UserId = t.UserId
--	--join users.TblUsersGroups ug on ug.UserId = p.UserId
--	--join users.TblGroups g on g.GroupId = ug.GroupId
--where
--	WorkflowID = 62
--	and WorkflowInstanceStatusID = 2
--	and i.WorkflowInstanceID = 3997921
--	and p.UserID != 2
	--and FullName != N'کاربر سیستم'



-----------
--sub query for GroupName
select
	TaskName, (select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	(select dbo.MiladiToShamsi(t.EndDate)) EndDate, TaskStatusName,
	p.FullName
	--,GroupName
	,(select GroupName from users.TblGroups g where g.GroupId = t.GroupId ) GroupName
	--,ActivityID
	--,p.UserID
	--, g.Groupid
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
	join users.TblProfiles p on p.UserId = t.UserId
	--join users.TblGroups g on g.GroupId = t.GroupId
where
	WorkflowID = 62
	--and WorkflowInstanceStatusID = 2
	and i.WorkflowInstanceID = 3997921
	and p.UserID != 2;


--left join
select
	TaskName, (select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	(select dbo.MiladiToShamsi(t.EndDate)) EndDate, TaskStatusName,
	p.FullName
	,GroupName
	--,(select GroupName from users.TblGroups g where g.GroupId = t.GroupId ) Group_Name
	--,ActivityID
	--,p.UserID
	--, g.Groupid
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
	join users.TblProfiles p on p.UserId = t.UserId
	left join users.TblGroups g on g.GroupId = t.GroupId
where
	WorkflowID = 62
	--and WorkflowInstanceStatusID = 2
	and i.WorkflowInstanceID = 3997921
	and p.UserID != 2




-------sub query for TaskStatusName--------
select
	TaskName,
	(select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	(select dbo.MiladiToShamsi(t.EndDate)) EndDate
	,(select TaskStatusName from task.TblTaskStatus s where s.TaskStatusID = t.TaskStatusID) TaskStatusName 
	,p.FullName
	
	--,TaskStatusName
	--,p.UserID
	--, tr.Groupid
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	--join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
	--join task.TblWorkflowInstanceTrustee tr on tr.WorkflowInstanceId = i.WorkflowInstanceID
	join users.TblProfiles p on p.UserId = t.UserId	
where
	WorkflowID = 62
	and WorkflowInstanceStatusID = 2
	and i.WorkflowInstanceID = 3997921


