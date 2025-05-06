--alter table Tbl_CU_Base_FieldValue_FRM167
--add FieldManager int

--go

--alter table Tbl_Cu_ServingTableSecondPhase_Log
--add ManagerGroupID int

--go

--alter table Tbl_CU_Base_DetermineRequestAcc_FRM141
--add rbnManagerConfirmation bit

--go

----insert into Tbl_Cu_Base_LogStatus(LogStatusTitle, wid, Descriptions)
----values('تایید مدیر',38,'')

----go

--alter proc sp_cu_check_FieldSubjectID_frm167
--@txtFieldSubjectID int
--as
--begin
--	if @txtFieldSubjectID in(15,505)
--		select 1  res
--	else
--		select 0 res
--end

--go

--create Proc SP_CU_GetGroupsList
--@GroupName nvarchar(50)
--AS
	--set @GroupName = dbo.Fn_CU_FixPersianString(@GroupName)
--	Select ROW_NUMBER()over(order by GroupId)RowN,
--	GroupId,
--	GroupName From Users.TblGroups
--	where (GroupName Like '%'+@GroupName+'%' or @GroupName = '')

--go

--alter PROCEDURE [dbo].[Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141]
--	@txtDeleteRow3 int,
--    @SubGroupID AS INT,
--    @RequestKindID AS INT,
--    @RequestSubjectID AS INT,
--    @UserID AS BIGINT,
--    @rbnHierarchy AS BIT,
--    @rbnPersonAcc AS BIT,
--    @chkActive3 AS BIT,
--    @HierarchyLevel AS INT,
--    @rbnNotAcc AS BIT,
--    @rbnToLevel AS BIT,
--    @rbnOnlyLevel AS BIT,
--    @txtHierarchyOnlyLevel AS INT,
--    @cmbLocation AS INT,
--	@rbnManagerConfirmation bit
	
--AS
--BEGIN
--    update Tbl_CU_Base_DetermineRequestAcc_FRM141
--	set 
--		[SubGroupID] = @SubGroupID,
--        [RequestKindID] = @RequestKindID,
--        [RequestSubjectID] = @RequestSubjectID,
--        [rbnHierarchy] = @rbnHierarchy,
--        [rbnPersonAcc] = @rbnPersonAcc,
--        [chkActive3] = @chkActive3,
--        [txtUserID3] = @UserID,
--        HierarchyLevel = @HierarchyLevel,
--        rbnNotAcc = @rbnNotAcc,
--        rbnToLevel = @rbnToLevel,
--        rbnOnlyLevel = @rbnOnlyLevel,
--        HierarchyOnlyLevel = @txtHierarchyOnlyLevel,
--        cmbLocation = @cmbLocation,
--		rbnManagerConfirmation = @rbnManagerConfirmation
--	where DetermineRequestAccID = @txtDeleteRow3;   
--    --SELECT GETDATE() AS Res;
--END;

--go

--create proc sp_cu_check_IsFieldManagerAvailable
--@RequestKindID int,
--@RequestSubjectID int,
--@guidd nvarchar(50)
--as
--begin
--	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log
--					WHERE  GUIDD = @guidd
--					and FieldID in(15,505))
--	if exists(
--		select 1 from Tbl_CU_Base_DetermineRequestAcc_FRM141
--		where RequestKindID = @RequestKindID and RequestSubjectID = @RequestSubjectID and rbnManagerConfirmation = 1	
--	)
--	and
--	exists(
--		select 1 from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID and isnull(FieldManager, '') = ''	
--		)
--		select cast(1 as bit) as FieldManagerNotAvailable
--	else
--		select cast(0 as bit) as FieldManagerNotAvailable
--end

--go

--create PROCEDURE [dbo].[Sp_Cu_Insert_Tbl_Cu_ServingTableSecondPhaseHistory_Log_Second_Manager] @WFID AS BIGINT
--AS
--BEGIN
--    DECLARE @RegDate AS NVARCHAR(10),
--            @RegTime AS NVARCHAR(5),
--            @RegUserID AS BIGINT,
--            @rbnAccSeconder AS BIT,
--            @rbnNotAccSeconder AS BIT,
--            @rbnReferencerbnAccSeconder AS BIT,
--            @ReferenceUserSeconder AS BIGINT,
--            @DescSeconder AS NVARCHAR(2000),
--            @GUIDD AS NVARCHAR(100),
--            @ActivityID AS BIGINT;

--    SELECT @RegDate = Col_4866237595884546157,
--           @RegTime = Col_4839123484665695911,
--           @RegUserID = Col_4882272451934286700,
--           @rbnAccSeconder = Col_5433095950633073955,
--           @rbnNotAccSeconder = Col_5558469775321616550,
--           @rbnReferencerbnAccSeconder = Col_4684667365755274354,
--           @ReferenceUserSeconder = Col_5265233019818142125,
--           @DescSeconder = Col_5181720467505861532,
--           @GUIDD = Col_4995533338641167379,
--           @ActivityID = Col_5626482120269590337
--    FROM dbo.Tbl_frm243
--    WHERE frm243Id IN (
--                          SELECT MAX(PKFormID)
--                          FROM Task.TblFormInstance
--                          WHERE WorkflowInstanceId = @WFID
--                                AND FormID = 243
--                      );
--    INSERT INTO dbo.Tbl_Cu_ServingTableSecondPhaseHistory_Log
--    (
--        WFID,
--        GUIDD,
--        RegUserID,
--        RegDate,
--        RegTime,
--        RoleID,
--        RbnAcc,
--        RbnNotAcc,
--        RbnReference,
--        RbnReferenceUserID,
--        UserDesc,
--        ActivityID
--    )
--    VALUES
--    (   @WFID,                       -- WFID - bigint
--        @GUIDD,                      -- GUID - nvarchar(100)
--        @RegUserID,                  -- RegUserID - bigint
--        @RegDate,                    -- RegDate - nvarchar(10)
--        @RegTime,                    -- RegTime - nvarchar(5)
--        7,                           -- RoleID - int
--        @rbnAccSeconder,             -- RbnAcc - bit
--        @rbnNotAccSeconder,          -- RbnNotAcc - bit
--        @rbnReferencerbnAccSeconder, -- RbnReference - bit
--        @ReferenceUserSeconder,      -- RbnReferenceUserID - bigint
--        @DescSeconder,               -- UserDesc - nvarchar(2000)
--        @ActivityID);

--END;

--go

--ALTER Proc [dbo].[SP_CU_NeedManagerConfirmation_wf38]
--@wfid int,
--@index int
--AS
--begin	
			
--	declare @GUID nvarchar(50) = (select GUIDD from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)
	
--	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID and FieldID in(15,505))

--	declare @txtMultipleValues nvarchar(100) = (select top 1 MultyData from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID and FieldID in(15,505))

--	--set @txtMultipleValues = (select ROW_NUMBER() over(order by [value]) rn,value from string_split(@txtMultipleValues, ','))

--	declare @RequestKindID int = (select cmbRequestKind from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

--	declare @RequestSubjectID int = (select cmbRequestSubject from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

--	DECLARE @SelectInfo AS BIT,
--            @IsNeedCertificate AS BIT,
--			@rbnMultipleValues AS BIT
--    SELECT @SelectInfo = SelectInfo,
--           @IsNeedCertificate = IsNeedCertificate,
--		   @rbnMultipleValues = rbnMultipleValues
--    FROM [dbo].[Tbl_CU_Base_FieldSubject_FRM157]
--    WHERE FieldSubjectID in(15,505) and RequestSubjectID = @RequestSubjectID;

--	declare @GroupID int
--	if @SelectInfo = 1
--	begin
--		if exists(
--			select 1 from Tbl_CU_Base_DetermineRequestAcc_FRM141
--			where RequestKindID = @RequestKindID and RequestSubjectID = @RequestSubjectID and rbnManagerConfirmation = 1	
--		)
--			begin
--				set @GroupID  = (select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID )
--				select @GroupID as Managergroupid,
--				cast(1 as bit) as ManagerConfirmation,
--				cast(0 as bit) ManagerRemained,
--				@index as idx
--			end
--		else
--			begin
--				set @GroupID  = (select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID )
--				select @GroupID as Managergroupid,
--				cast(0 as bit) as ManagerConfirmation,
--				cast(0 as bit) ManagerRemained,
--				@index as idx
--			end
--	end
--	else if @rbnMultipleValues = 1
--	begin	
--		declare @tbl as table(idx int, val nvarchar(50))

--		insert into @tbl(idx, val)
--		select ROW_NUMBER() over(order by [value]), value
--		from string_split(@txtMultipleValues, ',');

--		declare @CountAll int = (select count(1) from @tbl)

--		if exists(
--			select 1 from Tbl_CU_Base_DetermineRequestAcc_FRM141
--			where RequestKindID = @RequestKindID and RequestSubjectID = @RequestSubjectID and rbnManagerConfirmation = 1	
--		)
--		begin
--			if @CountAll = 1
--				begin
--					select
--						(select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = val) Managergroupid,
--						cast(1 as bit) as ManagerConfirmation,
--						cast(0 as bit) ManagerRemained,
--						@index + 1 as idx
--					from @tbl
--					where idx = @index
--				end
--			else 
--				begin
--					if @CountAll >= @index
--					begin
--						select
--							(select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = val) Managergroupid,
--							cast(1 as bit) as ManagerConfirmation,
--							cast(0 as bit) ManagerRemained,
--							@index + 1 as idx
--						from @tbl
--						where idx = @index
--					end			
--					else
--						begin
--							select
--								0 as Managergroupid,
--								cast(0 as bit) as ManagerConfirmation,
--								cast(0 as bit) ManagerRemained,
--								@index + 1 as idx
--						end
--				end
--		end
--		else
--			begin
--				if @CountAll = 1
--				begin
--					select
--						(select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = val) Managergroupid,
--						cast(0 as bit) as ManagerConfirmation,
--						cast(0 as bit) ManagerRemained,
--						@index + 1 as idx
--					from @tbl
--					where idx = @index
--				end
--				else 
--					begin
--						if @CountAll >= @index
--							begin
--								select
--									(select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = val) Managergroupid,
--									cast(0 as bit) as ManagerConfirmation,
--									cast(1 as bit) ManagerRemained,
--									@index + 1 as idx
--								from @tbl
--								where idx = @index
--							end			
--						else
--							begin
--								select
--									0 as Managergroupid,
--									cast(0 as bit) as ManagerConfirmation,
--									cast(0 as bit) ManagerRemained,
--									@index + 1 as idx
--							end
--				end
--			end
--	end

--end







