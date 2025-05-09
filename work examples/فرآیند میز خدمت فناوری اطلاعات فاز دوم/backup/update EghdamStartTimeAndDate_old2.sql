﻿alter table Tbl_Cu_ServingTableSecondPhase_Log
add EghdamEndDate nvarchar(10)

go

alter table Tbl_Cu_ServingTableSecondPhase_Log
add EghdamEndTime nvarchar(5)

go

--alter table Tbl_Cu_ServingTableSecondPhase_Log
--add EghdamGroupEndDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhase_Log
--add EghdamGroupEndTime nvarchar(5)

--go

alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
add EghdamEndDate nvarchar(10)

go

alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
add EghdamEndTime nvarchar(5)

go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
--add EghdamGroupEndDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
--add EghdamGroupEndTime nvarchar(5)

--go

create PROCEDURE [dbo].[Sp_Cu_Update_EghdamEndDate_Tbl_Cu_ServingTableSecondPhase_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

	with cte as(
		select top 1
			*
		from
			Tbl_Cu_ServingTableSecondPhaseHistory_Log
		where
			WFID = @WFID
			and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and StatusActing != 2
			and activityID = 5443268012818330002
		order by
			 --primary key desc
		),
		cte2 as(
			select top 1
				*
			from
				Tbl_Cu_ServingTableSecondPhase_Log
			where
				cte.wfid = Tbl_Cu_ServingTableSecondPhase_Log.wfid
			order by
				--primary key desc
		)
		update cte2
		set
			EghdamEndDate = @CurrentDate,
			EghdamEndTime = @CurrentTime
end

go

create PROCEDURE [dbo].[Sp_Cu_Update_EghdamGroupEndDate_Tbl_Cu_ServingTableSecondPhase_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

	with cte as(
		select top 1
			*
		from
			Tbl_Cu_ServingTableSecondPhaseHistory_Log
		where
			WFID = @WFID
			and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and StatusActing != 2
			and activityID = 4782972985427111846
		order by
			 --primary key desc
		),
		cte2 as(
			select top 1
				*
			from
				Tbl_Cu_ServingTableSecondPhase_Log
			where
				cte.wfid = Tbl_Cu_ServingTableSecondPhase_Log.wfid
			order by
				--primary key desc
		)
		update cte2
		set
			EghdamEndDate = @CurrentDate,
			EghdamEndTime = @CurrentTime
end

go


create PROCEDURE [dbo].[Sp_Cu_Update_EghdamEndDate_Tbl_Cu_ServingTableSecondPhaseHumanResource_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

	with cte as(
		select top 1
			*
		from
			Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
		where
			WFID = @WFID
			and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and StatusActing != 2
			and activityID = 5443268012818330002
		order by
			 --primary key desc
		),
		cte2 as(
			select top 1
				*
			from
				Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
			where
				cte.wfid = Tbl_Cu_ServingTableSecondPhaseHumanResource_Log.wfid
			order by
				--primary key desc
		)
		update cte2
		set
			EghdamEndDate = @CurrentDate,
			EghdamEndTime = @CurrentTime
end

go

create PROCEDURE [dbo].[Sp_Cu_Update_EghdamGroupEndDate_Tbl_Cu_ServingTableSecondPhaseHumanResource_Log]
    @WFID AS BIGINT
AS
BEGIN
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

	with cte as(
		select top 1
			*
		from
			Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
		where
			WFID = @WFID
			and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and StatusActing != 2
			and activityID = 4782972985427111846
		order by
			 --primary key desc
		),
		cte2 as(
			select top 1
				*
			from
				Tbl_Cu_ServingTableSecondPhaseHumanResource_Log
			where
				cte.wfid = Tbl_Cu_ServingTableSecondPhaseHumanResource_Log.wfid
			order by
				--primary key desc
		)
		update cte2
		set
			EghdamEndDate = @CurrentDate,
			EghdamEndTime = @CurrentTime
end





--select * from Tbl_Cu_ServingTableSecondPhaseHistory_Log


--select * from Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log

