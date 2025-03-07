--declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(t.CreateDate))
--declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(t.CreateDate as time)));


with cte as(
select
	(select dbo.MiladiToShamsi(t.CreateDate)) CreateDate,
	(select convert(nvarchar(5),cast(t.CreateDate as time))) CreateTime,
	--t.EndDate,
	s.wfid

from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance ai on ai.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = ai.WorkflowActivityInstanceID	
	join Tbl_Cu_ServingTableSecondPhase_Log s on s.wfid = i.WorkflowInstanceID
where 
	t.ActivityID in( 5443268012818330002, 4782972985427111846) 
	and t.UserID in
				(select
					RegUserID
				from 
					Tbl_Cu_ServingTableSecondPhaseHistory_Log s
				where
					RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
					and StatusActing != 2
						)
)	
	update	Tbl_Cu_ServingTableSecondPhaseHistory_Log
	set 
		EghdamEndDate = cte.CreateDate,
		EghdamEndTime = cte.CreateTime
	where
		cte.wfid = Tbl_Cu_ServingTableSecondPhaseHistory_Log.wfid
		and cte.ActivityID = Tbl_Cu_ServingTableSecondPhaseHistory_Log.ActivityID
		and cte.RegUserID = t.UserID

