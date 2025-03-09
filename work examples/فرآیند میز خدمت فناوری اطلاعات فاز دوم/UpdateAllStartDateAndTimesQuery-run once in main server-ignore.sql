--Information Technology
with cte as(
	select
		EghdamStartDate,
		EghdamStartTime,
		(select dbo.MiladiToShamsi(t.CreateDate)) StartDate,
		(select convert(nvarchar(5),cast(t.CreateDate as time))) StartTime
		--,t.EndDate
		--,h.wfid

	from
		task.TblWorkflowInstance i
		join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
		join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID	
		join Tbl_Cu_ServingTableSecondPhaseHistory_Log h on h.wfid = i.WorkflowInstanceID
	where 
		a.ActivityID in( 5443268012818330002, 4782972985427111846) 
		and a.ActivityID = h.ActivityID
		and t.UserID = h.RegUserID
		and (h.RoleID = 6 and h.StatusActing != 2 or h.RoleID = 4)	  --شرط های کاربر اقدام کننده بودن
		and TaskName like N'%اقدام%'
)	
	update c
	set 
		EghdamStartDate = StartDate,
		EghdamStartTime = StartTime	
	from
		cte c;




--HumanResource
with cte as(
	select
		EghdamStartDate,
		EghdamStartTime,
		(select dbo.MiladiToShamsi(t.CreateDate)) StartDate,
		(select convert(nvarchar(5),cast(t.CreateDate as time))) StartTime
		--,t.EndDate
		--,h.wfid

	from
		task.TblWorkflowInstance i
		join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
		join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID	
		join Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log h on h.wfid = i.WorkflowInstanceID
	where 
		a.ActivityID in( 5443268012818330002, 4782972985427111846) 
		and a.ActivityID = h.ActivityID
		and t.UserID = h.RegUserID
		and (h.RoleID = 6 and h.StatusActing != 2 or h.RoleID = 4)	 --شرط های کاربر اقدام کننده بودن	
		and TaskName like N'%اقدام%'
)	
	update c
	set 
		EghdamStartDate = StartDate,
		EghdamStartTime = StartTime	
	from
		cte c










