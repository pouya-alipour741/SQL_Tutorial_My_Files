--alter table Tbl_Cu_ServingTableSecondPhaseHistory_Log
--add EghdamStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHistory_Log
--add EghdamStartTime nvarchar(5)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHistory_Log
--add EghdamGroupStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHistory_Log
--add EghdamGroupStartTime nvarchar(5)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
--add EghdamStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
--add EghdamStartTime nvarchar(5)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
--add EghdamGroupStartDate nvarchar(10)

--go

--alter table Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
--add EghdamGroupStartTime nvarchar(5)

--go

--create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamStartDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_Log]
--    @WFID AS BIGINT
--AS
--BEGIN
--	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
--	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

--	update Tbl_Cu_ServingTableSecondPhaseHistory_Log
--	set
--		EghdamStartDate = @CurrentDate,
--		EghdamStartTime = @CurrentTime
--	where
--		WFID = @WFID
--		and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
--		and StatusActing != 2
--end

--go

--create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamGroupStartDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_Log]
--    @WFID AS BIGINT
--AS
--BEGIN
--	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
--	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

--	update Tbl_Cu_ServingTableSecondPhaseHistory_Log
--	set
--		EghdamGroupStartDate = @CurrentDate,
--		EghdamGroupStartTime = @CurrentTime
--	where
--		WFID = @WFID
--		and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
--		and StatusActing != 2
--end

--go


--create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamStartDate_into_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log]
--    @WFID AS BIGINT
--AS
--BEGIN
--	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
--	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)))

--	update Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
--	set
--		EghdamStartDate = @CurrentDate,
--		EghdamStartTime = @CurrentTime
--	where
--		WFID = @WFID
--		and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
--		and StatusActing != 2
--end

--go

create table Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log
(
	WFID int,
	EghdamStartDate datetime,
	EghdamEndDate datetime,
	EghdamGroupStartDate datetime,
	EghdamGroupEndDate datetime
)

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamGroupStartDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	insert into Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log(
		WFID,
		EghdamGroupStartDate
		)
	values(
		@WFID,
		GETDATE()
		)
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamGroupEndDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	update Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log
		set EghdamGroupEndDate = GETDATE()
		where WFID = @wfid
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamStartDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	insert into Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log(
		WFID,
		EghdamStartDate
		)
	values(
		@WFID,
		GETDATE()
		)
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamEndDate_into_Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	update Tbl_Cu_ServingTableSecondPhaseHistory_getEghdamTime_Log
		set EghdamEndDate = GETDATE()
		where WFID = @wfid
end


--select * from Tbl_Cu_ServingTableSecondPhaseHistory_Log


--select * from Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log
go

--HumanResourceHistory
create table Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log
(
	WFID int,
	EghdamStartDate datetime,
	EghdamEndDate datetime,
	EghdamGroupStartDate datetime,
	EghdamGroupEndDate datetime
)

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamGroupStartDate_into_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	insert into Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log(
		WFID,
		EghdamGroupStartDate
		)
	values(
		@WFID,
		GETDATE()
		)
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamGroupEndDate_into_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	update Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log
		set EghdamGroupEndDate = GETDATE()
		where WFID = @wfid
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamStartDate_into_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	insert into Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log(
		WFID,
		EghdamStartDate
		)
	values(
		@WFID,
		GETDATE()
		)
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_EghdamEndDate_into_Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log]
    @WFID AS BIGINT
AS
BEGIN
	update Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_getEghdamTime_Log
		set EghdamEndDate = GETDATE()
		where WFID = @wfid
end



