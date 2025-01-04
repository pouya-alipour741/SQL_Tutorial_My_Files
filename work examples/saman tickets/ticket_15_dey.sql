[192.168.100.160].[forsite].dbo.agentForSite    کار نمی کرد.
--select * 
--from Workflow.TblWorkflow w
--join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
--where i.WorkflowInstanceID = 1705915



SELECT * FROM users.TblUsers WHERE userid=9122

--SELECT * FROM users.TblUsers WHERE userid=7761
--select * from task.TblTaskStatus

select top 1000 * from task.TblWorkflowActivityInstance
where ActivityType like N'%service%' and ActivityID = 5557768103004254029


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



--select distinct TaskName
--from task.TblWorkflowActivityInstance a
--join task.TblTask t on a.WorkflowActivityInstanceID =t.WorkflowActivityInstaceID
--where ActivityID =  4893228140072332922


select distinct TaskName
from task.TblWorkflowActivityInstance a
join task.TblTask t on a.WorkflowActivityInstanceID =t.WorkflowActivityInstaceID
where ActivityID in( 4893228140072332922, 5557768103004254029, 5062970844413312984) 


select * from users.TblGroups
where GroupId = 218

SELECT * FROM users.TblUsers WHERE userid=148

exec SP_CU_TemporaryResetPassword 'p.hadian'


select TaskName,username,t.*
from task.tbltask t
join users.TblUsers u on t.UserID=u.UserId
where taskid = 28835006


--update task.tbltask
--set TaskStatusID = 6
--where taskid = 28835006



select * from Tbl_CU_Base_ChartGroup
where UserID = 9347


select * from Tbl_Cu_Base_GroupRole




