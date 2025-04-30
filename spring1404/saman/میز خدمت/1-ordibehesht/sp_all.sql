--alter table Tbl_CU_Base_FieldValue_FRM167
--add FieldManager int

--go

--alter table Tbl_CU_Base_DetermineRequestAcc_FRM141
--add chkManagerConfirmation bit

--go

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

--create PROCEDURE [dbo].[Sp_CU_Update_Tbl_CU_Base_DetermineRequestAcc_FRM141]
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
--	@chkManagerConfirmation bit
	
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
--		chkManagerConfirmation = @chkManagerConfirmation
--	where DetermineRequestAccID = @txtDeleteRow3;   
--    --SELECT GETDATE() AS Res;
--END;

--go

create Proc SP_CU_NeedManagerConfirmation_wf38
@wfid int
AS
	begin	
		
	declare @GUID nvarchar(50) = (select GUIDD from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID order by ServingTableFieldID desc)

	declare @RequestKindID int = (select cmbRequestKind from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

	declare @RequestSubjectID int = (select cmbRequestSubject from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

	declare @GroupID int = (select FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID )

	if exists(
		select 1 from Tbl_CU_Base_DetermineRequestAcc_FRM141
		where RequestKindID = @RequestKindID and RequestSubjectID = @RequestSubjectID and chkManagerConfirmation = 1	
	)
	select
		 @GroupID as ManagerGroupID,
		 1 as ManagerConfirmation
	else
		select
			 0 as ManagerGroupID,
			 0 as ManagerConfirmation  
end

go

create proc sp_cu_check_IsFieldManagerAvailable
@RequestKindID int,
@RequestSubjectID int,
@guidd nvarchar(50)
as
begin
	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log
					WHERE  GUIDD = @guidd
					and FieldID in(15,505))
	if exists(
		select 1 from Tbl_CU_Base_DetermineRequestAcc_FRM141
		where RequestKindID = @RequestKindID and RequestSubjectID = @RequestSubjectID and chkManagerConfirmation = 1	
	)
	and
	exists(
		select 1 from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID and isnull(FieldManager, '') = ''	
		)
		select cast(1 as bit) as FieldManagerNotAvailable
	else
		select cast(0 as bit) as FieldManagerNotAvailable
end

go









