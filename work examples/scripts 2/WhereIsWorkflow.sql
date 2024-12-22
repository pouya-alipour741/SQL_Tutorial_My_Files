GO
-- =============================================
-- Author:		<Dehghani>*
-- Create date: <1393/02/20>
-- Description:	<Monitoring The Proccess And Flow Of A WorkFlow Instance ID>
-- =============================================
declare @wfid as BIGINT

/*set WorkFlow Instance ID*/ 
set @wfid = 	97586
     
     
	 --SELECT * FROM Task.TblWorkflowInstance
--SELECT * FROM Users.TblUsers WHERE username like'%gha%'
--SELECT * FROM Users.TblUsers WHERE userid=10
--SELECT * FROM Users.TblUSersGroups where groupid=53
--update Task.TblTask set TaskStatusID=6 where TaskID=1513385
--SELECT * FROM USERS.TBLGROUPS WHERE GROUPID=152

--show tasks of an workflow instance id
SELECT     Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID, Task.TblWorkflowActivityInstance.ActivityID, Task.TblTask.UserID, Task.TblTask.TaskID, Task.TblTask.TaskName, 
                      Task.TblTask.TaskTypeID, Task.TblTask.TaskStatusID, Task.TblTask.WorkflowActivityInstaceID, Task.TblTask.FromTaskID, Task.TblTask.TaskPriorityID, Task.TblTask.ResponsibleUserID, 
                      Task.TblTask.CreateDate, Task.TblTask.ViewDate, Task.TblTask.EndDate, Task.TblTask.IntervalTime, Task.TblTask.FolderId, Task.TblTask.UserID AS Expr1, Task.TblTask.RoleID, 
                      Task.TblTask.GroupID, Task.TblTask.IsSendforAll, Task.TblWorkflowActivityInstance.ResualtConditionID
FROM         Task.TblTask INNER JOIN
                      Task.TblWorkflowActivityInstance ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
WHERE     (Task.TblWorkflowActivityInstance.WokflowInstanceID = @wfid)
ORDER BY Task.TblTask.TaskID desc

--parameters inside the workflow
select * from Workflow.TblWorkflowInstanceVariable where WorkflowInstanceId=@wfid

--WorkFlow Instance Record Info
select * from task.TblWorkflowInstance where WorkflowInstanceId=@wfid

--WorkFlow Instance Child Records
select * from task.TblWorkflowInstance where WorkflowInstanceRefrenceId=@wfid

--Form Instance reocrd For WorkFlow Instance ID
select * from task.TblFormInstance where WorkflowInstanceId=@wfid

--All WorkFlow Names
--select WorkflowId,Name from Workflow.TblWorkflow


--All WorkFlow Instance Created For Specific WorkFlowID
--select * from task.TblWorkflowInstance 

GO


