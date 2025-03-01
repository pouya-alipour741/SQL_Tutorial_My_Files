select * from form.TblSearchFormAccessPermission
where formid = 31264

insert into form.TblSearchFormAccessPermission(FormId, UserId)
values(31264, 1)

exec Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264 @FromDate=N'',@ToDate=N'1403/12/11',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'0',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'',@EndWFIDTo=N'',@Desc=N''


select
	TaskName,
	--(select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	--(select dbo.MiladiToShamsi(t.EndDate)) EndDate, TaskStatusName,
	t.CreateDate,
	t.EndDate,
	case
		when isnull(t.EndDate, '') != '' then datediff(hour,t.CreateDate , t.EndDate) 
		else datediff(hour,t.CreateDate , getdate()) 
	end hours_diff,	
	p.FullName,
	p.UserId
--,ActivityID
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
	--WorkflowID = 62
	--and WorkflowInstanceStatusID = 2
	 i.WorkflowInstanceID = 1852996
	 and p.UserId <> 2
	 and p.UserID in( SELECT u.UserId,
           FullName
    WHERE u.UserId IN (SELECT DISTINCT
                              X.RegUserID
                          FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                          WHERE X.RoleID = 4
						  )
						
	 

