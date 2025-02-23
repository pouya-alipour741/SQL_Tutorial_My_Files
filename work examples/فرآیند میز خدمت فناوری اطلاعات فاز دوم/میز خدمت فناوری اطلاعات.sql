select top 1000 *
from task.TblWorkflowInstance
where WorkflowInstanceStatusID = 1
and WorkflowID = 38
order by WorkflowInstanceID desc



--در انتظار پیمان کار
select top 1000
	WFID,RegDate, RegTime, FullName, OrganizationUnit, OrganizationPost, DateActing, TimeActing
	, EghdamRegDate, EghdamRegTime
from
	Tbl_Cu_ServingTableSecondPhase_Log
where
	StatusActing = 2


and wfid not in(select WFID
from
	Tbl_Cu_ServingTableSecondPhase_Log sl
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = sl.WFID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where
	StatusActing = 2
	and ActivityID = 5443268012818330002
	and t.TaskStatusID in(1,6)
	)


	

with cte as
(
select top 1000
	ROW_NUMBER() over(partition by wfid order by (select null)) rn,
	WFID,RegDate, RegTime, FullName, OrganizationUnit, OrganizationPost, DateActing, TimeActing
	, EghdamRegDate, EghdamRegTime
from
	Tbl_Cu_ServingTableSecondPhase_Log sl
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = sl.WFID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where
	StatusActing = 2
	and ActivityID = 5443268012818330002
	and t.TaskStatusID in(1,6)
	)
select 
	*
from cte 
where rn = 1


select *
from task.TblWorkflowActivityInstance
where WokflowInstanceID = 1451613
and ActivityID = 5297334902614213484





select *
from Tbl_Cu_ServingTableSecondPhase_Log
where cmbSubGroup = 1
order by wfid desc



select distinct RegUserID, cmbSubGroup
from Tbl_Cu_ServingTableSecondPhase_Log
where cmbSubGroup = 1

--لطفا به تفکیک نام کاربری افراد درون گروه بیمه ای ارسال شود.
select
	distinct p.FullName  
from
	Tbl_Cu_ServingTableSecondPhase_Log s
	join users.TblProfiles p on p.UserId = s.EghdamUserId
where
	cmbSubGroup = 1


select top 1000 *
from task.TblWorkflowInstance i
join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where WorkflowInstanceStatusID = 1
and WorkflowID = 38
and ActivityID = 5443268012818330002
order by WorkflowInstanceID desc










