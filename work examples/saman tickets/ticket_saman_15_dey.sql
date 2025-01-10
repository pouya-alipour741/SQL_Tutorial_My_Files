DECLARE @BranchCode     ----از این لینک سرور دوباره امروز مقدار برنمی گرداند.
 AS nvarchar(100)
	   SELECT TOP 1
	          @BranchCode = (CASE
	                             WHEN cntrKindCode in( 202,204) THEN
	   (
	       SELECT TOP 1
	              branchCode
	       FROM [192.168.100.160].[forsite].dbo.agentForSite
	       WHERE IssuanceCode  = (cntrCode COLLATE DATABASE_DEFAULT) 
	   )
	                             ELSE
	                                 cntrCode
	                         END
	                        )
	   FROM [192.168.100.160].[forsite].dbo.agentForSite
	       right JOIN dbo.[Tbl_CU_ResponsibilityDamage_Log]
	           ON IssuanceCode = (cntrCode COLLATE DATABASE_DEFAULT) 
	   WHERE WFID = 1463827;
	   select @BranchCode

---------------------------
SELECT TOP 1    ---در فرایند 1463827 گروهی برای برنچ کد مورد نظر تعریف نشده است 
        GroupID
FROM [dbo].[Tbl_CU_Base_ChartGroup]
WHERE RoleID = 2
        AND [BranchCode] = 530
        AND WorkflowID = 31



-----------------------------
[192.168.100.160].[forsite].dbo.agentForSite    کار نمی کرد.
-----------------------------


------1:wfid =  1796984 ok, in the previous cartable
select * from task.TblWorkflowActivityInstance
where ActivityID = 5557768103004254029
and WokflowInstanceID = 1796984


------2:wfid =  1784133 ok, in the previous cartable
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5557768103004254029
and WokflowInstanceID = 1784133

------3:wfid =  1672577 ok
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 4893228140072332922
and WokflowInstanceID = 1672577

------4:wfid =  1655012 ok, in the previous cartable
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5557768103004254029
and WokflowInstanceID = 1655012

------5:wfid =  1654560 ok, in the previous cartable
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5557768103004254029
and WokflowInstanceID = 1654560

------6:wfid =  1635665 ok
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 4893228140072332922
and WokflowInstanceID = 1635665

------7:wfid =  1604644 ok
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5062970844413312984
and WokflowInstanceID = 1604644

------8:wfid =  1472178 ok
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 4893228140072332922
and WokflowInstanceID = 1472178

------9:wfid =  1463827   --baraye branchcode 530, group tarif nashode
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5062970844413312984
and WokflowInstanceID = 1463827

------10:wfid =  1394413  ok
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 4893228140072332922
and WokflowInstanceID = 1394413

------11:wfid =  1654560  ok, in the previous cartable
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 5557768103004254029
and WokflowInstanceID = 1654560

------12:wfid =  1674612  
select top 1000 * from task.TblWorkflowActivityInstance
where ActivityID = 4893228140072332922
and WokflowInstanceID = 1674612



--select distinct TaskName
--from task.TblWorkflowActivityInstance a
--join task.TblTask t on a.WorkflowActivityInstanceID =t.WorkflowActivityInstaceID
--where ActivityID =  4893228140072332922


--select distinct TaskName
--from task.TblWorkflowActivityInstance a
--join task.TblTask t on a.WorkflowActivityInstanceID =t.WorkflowActivityInstaceID
--where ActivityID in( 4893228140072332922, 5557768103004254029, 5062970844413312984) 


--select * from users.TblGroups
--where GroupId = 218

--SELECT * FROM users.TblUsers WHERE userid=148

--exec SP_CU_TemporaryResetPassword 'p.hadian'


--select TaskName,username,t.*
--from task.tbltask t
--join users.TblUsers u on t.UserID=u.UserId
--where taskid = 28835006


----update task.tbltask
----set TaskStatusID = 6
----where taskid = 28835006



--select * from Tbl_CU_Base_ChartGroup
--where UserID = 9347


--select * from Tbl_Cu_Base_GroupRole

----------------------------------------------------
select top 1000 * from Tbl_CU_Base_ChartGroup
where GroupID = 208

select top 1000 * from Tbl_Cu_Base_GroupRole

------------------------------------------------------

select
	 ActivityID,i.WorkflowInstanceID,ActivityType--,t.TaskStatusID,v.VariableName,v.VariableType,v.WorkflowVariableId,v.WorkflowInstanceVariableId
from
	Workflow.TblWorkflow w
	--join Workflow.TblWorkflowInstanceVariable v on v.WorkflowId = w.WorkflowId
	join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
where
	--t.TaskStatusID in(1,6)
	 ActivityID = 5062970844413312984



4868048695950530805 کارشناس مالی
4957782255869768507 کارشناس فنی

select * from dbo.Tbl_CU_Base_ChartGroup
where GroupID = 203


select * from dbo.Tbl_Cu_Base_GroupRole
where GroupRoleID in(select RoleID from dbo.Tbl_CU_Base_ChartGroup
where GroupID = 203)


select * from Workflow.TblWorkflowInstanceVariable
where WorkflowVariableId  = 4957782255869768507
and WorkflowInstanceId = 1463827


