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
	join Tbl_Cu_ServingTableSecondPhaseHistory_Log h on h.wfid = s.wfid
where 
	t.ActivityID in( 5443268012818330002, 4782972985427111846) 
	and t.ActivityID = h.ActivityID
	and t.UserID = h.RegUserID
	and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
	and StatusActing != 2
)	
	update	cte
	set 
		EghdamEndDate = CreateDate,
		EghdamEndTime = CreateTime


