--alter table Tbl_Cu_ServingTableSecondPhase_Log
--add EghdamStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhase_Log
--add EghdamStartTime nvarchar(5)

--go


--alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
--add EghdamStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
--add EghdamStartTime nvarchar(5)

--go


create PROCEDURE [dbo].[Sp_Cu_Update_EghdamStartDate_Tbl_Cu_ServingTableSecondPhaseHistory_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare
		@CreateDate nvarchar(10),
		@CreateTime nvarchar(5)

	select	top 1
		@CreateDate = (select dbo.MiladiToShamsi(t.CreateDate)) ,
		@CreateTime = (select convert(nvarchar(5),cast(t.CreateDate as time))) 
	from
		task.TblTask t
		join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
	where
		a.ActivityType = 'TZHumanActivity'
		and a.WokflowInstanceID = @WFID
	order by
		TaskID desc;


	with cte as(
		select
			h.EghdamStartDate, h.EghdamStartTime
		from 
			Tbl_Cu_ServingTableSecondPhaseHistory_Log h 
		where
			h.WFID = @WFID
			--and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			--and h.StatusActing != 2
			and (RoleID = 6 and h.StatusActing != 2)
			or RoleID = 4
			and activityID = 5443268012818330002
		)
		update cte
		set
			EghdamStartDate = @CreateDate,
			EghdamStartTime = @CreateTime
end

go

create PROCEDURE [dbo].[Sp_Cu_Update_EghdamGroupStartDate_Tbl_Cu_ServingTableSecondPhaseHistory_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare
		@CreateDate nvarchar(10),
		@CreateTime nvarchar(5)

	select	top 1
		@CreateDate = (select dbo.MiladiToShamsi(t.CreateDate)) ,
		@CreateTime = (select convert(nvarchar(5),cast(t.CreateDate as time))) 
	from
		task.TblTask t
		join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
	where
		a.ActivityType = 'TZHumanActivity'
		and a.WokflowInstanceID = @WFID
	order by
		TaskID desc;


	with cte as(
		select
			h.EghdamStartDate, h.EghdamStartTime
		from 
			Tbl_Cu_ServingTableSecondPhaseHistory_Log h 
		where
			h.WFID = @WFID
			--and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			--and h.StatusActing != 2
			and (RoleID = 6 and h.StatusActing != 2)
			or RoleID = 4
			and activityID = 4782972985427111846
		)
		update cte
		set
			EghdamStartDate = @CreateDate,
			EghdamStartTime = @CreateTime
end

go


create PROCEDURE [dbo].[Sp_Cu_Update_EghdamStartDate_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare
		@CreateDate nvarchar(10),
		@CreateTime nvarchar(5)

	select	top 1
		@CreateDate = (select dbo.MiladiToShamsi(t.CreateDate)) ,
		@CreateTime = (select convert(nvarchar(5),cast(t.CreateDate as time))) 
	from
		task.TblTask t
		join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
	where
		a.ActivityType = 'TZHumanActivity'
		and a.WokflowInstanceID = @WFID
	order by
		TaskID desc;


	with cte as(
		select
			h.EghdamStartDate, h.EghdamStartTime
		from 
			Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log h 
		where
			h.WFID = @WFID
			--and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			--and h.StatusActing != 2
			and (RoleID = 6 and h.StatusActing != 2)
			or RoleID = 4
			and activityID = 5443268012818330002
		)
		update cte
		set
			EghdamStartDate = @CreateDate,
			EghdamStartTime = @CreateTime
end

go

create PROCEDURE [dbo].[Sp_Cu_Update_EghdamGroupStartDate_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare
		@CreateDate nvarchar(10),
		@CreateTime nvarchar(5)

	select	top 1
		@CreateDate = (select dbo.MiladiToShamsi(t.CreateDate)) ,
		@CreateTime = (select convert(nvarchar(5),cast(t.CreateDate as time))) 
	from
		task.TblTask t
		join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
	where
		a.ActivityType = 'TZHumanActivity'
		and a.WokflowInstanceID = @WFID
	order by
		TaskID desc;


	with cte as(
		select
			h.EghdamStartDate, h.EghdamStartTime
		from 
			Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log h 
		where
			h.WFID = @WFID
			--and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			--and h.StatusActing != 2
			and (RoleID = 6 and h.StatusActing != 2)
			or RoleID = 4
			and activityID = 4782972985427111846
		)
		update cte
		set
			EghdamStartDate = @CreateDate,
			EghdamStartTime = @CreateTime
end





