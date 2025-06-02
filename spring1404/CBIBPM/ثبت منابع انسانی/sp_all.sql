create table tbl_cu_base_IncomingSource
(
	IncomingSource_ID int primary key identity(1,1),
	IncomingSource nvarchar(50)
)

go

insert into tbl_cu_base_IncomingSource
values ('منابع انسانی'),('سلامت'),('امور رفاهی'), ('سایر')

go

alter table Tbl_CU_HR_RequestLog
add RequestSource int

go

--create or alter proc sp_cu_GetIVRGroup
--	@IVR int
--as
--begin
--	if @IVR = 1
--		select 56 as GroupID
--	else if @IVR = 2
--		select 6 as GroupID
--	else if @IVR = 3
--		select 6 as GroupID
--	else
--		select 6 as GroupID
--end

--go

create table Tbl_CU_Base_3rdLevel_HR
(
	ThirdLevelID int primary key identity(1,1),
	ThirdLevelTitle nvarchar(100),
	MainSubjectID int,
	SubSubjectID int,
	SubSubjectMapID int,
	ShowPortal bit,
	SortOrder int,
	IsActive bit
)

go

create table Tbl_CU_Base_4thLevel_HR
(
	FourthLevelID int primary key identity(1,1),
	FourthLevelTitle nvarchar(100),
	MainSubjectID int,
	SubSubjectID int,
	ThirdLevelID int,
	ThirdLevelMapID int,
	ShowPortal bit,
	SortOrder int,
	IsActive bit
)

--------Created Sps----------
go

create or alter proc sp_cu_chkIsChildAvailableIn4thLevel
	@ThirdLevelMapID int
as
begin
	DECLARE @MainCount INT = (SELECT max(MainSubjectID) FROM Tbl_CU_Base_MainSubject_HR);
	DECLARE @RelationCount INT = (SELECT max(RelationOfMainSubjectID) FROM Tbl_CU_Base_RelationOfMainSubject_HR);
	DECLARE @ThirdLevelCount INT = (SELECT max(ThirdLevelID) FROM Tbl_CU_Base_3rdLevel_HR);


	--اگر در سطح چهارم رکورد زیرمجموعه ای از سطح سوم داشته باشیم امکان حذف آن والد در سطح سوم وجود نداشته باشد
	if (select @ThirdLevelMapID + @MainCount + @RelationCount + 1 ) in	(select ThirdLevelMapID + @MainCount + @RelationCount + 1 from Tbl_CU_Base_4thLevel_HR )		
		select 1 as res
	else
		select 0 as res								
end

go

create or alter proc sp_cu_chkIsChildAvailableIn4thLevel_InactiveStatus_frm31329
	@ThirdLevelMapID int,
	@IsActive bit
as
begin
	DECLARE @MainCount INT = (SELECT max(MainSubjectID) FROM Tbl_CU_Base_MainSubject_HR);
	DECLARE @RelationCount INT = (SELECT max(RelationOfMainSubjectID) FROM Tbl_CU_Base_RelationOfMainSubject_HR);


	--اگر در سطح چهارم رکورد زیرمجموعه ای از سطح سوم داشته باشیم امکان حذف آن والد در سطح سوم وجود نداشته باشد
	if (select @ThirdLevelMapID + @MainCount + @RelationCount + 1 ) in	(select ThirdLevelMapID + @MainCount + @RelationCount + 1 from Tbl_CU_Base_4thLevel_HR )
		and @IsActive = 0
	begin
		select 1 as res
	end
	else
		select 0 as res								
end

go

create or alter proc sp_cu_chkIsChildAvailableIn3rdLevel_InactiveStatus_frm592
	@SubSubjectMapID int,
	@IsActive bit
as
begin
	DECLARE @MainCount INT = (SELECT max(MainSubjectID) FROM Tbl_CU_Base_MainSubject_HR);


	--اگر در سطح چهارم رکورد زیرمجموعه ای از سطح سوم داشته باشیم امکان حذف آن والد در سطح سوم وجود نداشته باشد
	if (select @SubSubjectMapID + @MainCount + 1 ) in	(select SubSubjectMapID + @MainCount  + 1 from Tbl_CU_Base_3rdLevel_HR )
		and @IsActive = 0
	begin
		select 1 as res
	end
	else
		select 0 as res								
end

go

create or alter proc sp_cu_chkIsChildAvailableIn2ndLevel_InactiveStatus_frm591
	@MainSubjectMapID int,
	@IsActive bit
as
begin


	--اگر در سطح چهارم رکورد زیرمجموعه ای از سطح سوم داشته باشیم امکان حذف آن والد در سطح سوم وجود نداشته باشد
	if (select @MainSubjectMapID + 1 ) in	(select MainSubjectMapID  + 1 from Tbl_CU_Base_RelationOfMainSubject_HR )
		and @IsActive = 0
	begin
		select 1 as res
	end
	else
		select 0 as res								
end

go

create or alter proc sp_cu_TreeView_frm31328
as
begin
	DECLARE @MainCount INT = (SELECT max(MainSubjectID) FROM Tbl_CU_Base_MainSubject_HR);
    DECLARE @RelationCount INT = (SELECT max(RelationOfMainSubjectID) FROM Tbl_CU_Base_RelationOfMainSubject_HR);
    DECLARE @ThirdLevelCount INT = (SELECT max(ThirdLevelID) FROM Tbl_CU_Base_3rdLevel_HR);

	(
		SELECT 
			'شاخه اصلی' as MainSubjectTitle,		
				1 as MainBranch,
				-1 as ParentID
		)
	union all
	(
		SELECT 
			MainSubjectTitle,		
				MainSubjectID + 1 as MainBranch,
				1 as ParentID
		FROM Tbl_CU_Base_MainSubject_HR
		where MainSubjectStatus = 1 
		)
	union all
	(
		select 
	 
					r.RelationOfMainSubjectTitle as MainSubjectTitle ,
				   --(select MainSubjectTitle 
				   --from Tbl_CU_Base_MainSubject_HR where MainSubjectID = r.MainSubjectMapID) as MainSubjectTitle,
				   RelationOfMainSubjectID + @MainCount + 1 as MainBranch,
				   MainSubjectMapID + 1 as ParentID
	
		from Tbl_CU_Base_RelationOfMainSubject_HR   as  r 
		where RelationOfMainSubjectStatus = 1 
	)
	union all
	(
		select
			ThirdLevelTitle,
			ThirdLevelID + @MainCount + @RelationCount + 1 as MainBranch,
			SubSubjectMapID + @MainCount + 1 as ParentID
		from Tbl_CU_Base_3rdLevel_HR
		where IsActive = 1
	)
	union all
	(
		select
			FourthLevelTitle,
			FourthLevelID + @MainCount + @RelationCount  + @ThirdLevelCount + 1 as MainBranch,
			ThirdLevelMapID + @MainCount + @RelationCount + 1 as ParentID
		from Tbl_CU_Base_4thLevel_HR	
		where IsActive = 1
	)
end

go

create or alter proc sp_cu_select_IncomingSource_frm580
as
begin
	select * from tbl_cu_base_IncomingSource
end

go

create or alter proc sp_cu_ThirdLevelSearch_frm581
	@MainSubjectID int, @SubSubjectID int
as
begin
	select
	ThirdLevelID,
	ROW_NUMBER() over(order by SortOrder) rownumber,
	(select MainSubjectTitle from Tbl_CU_Base_MainSubject_HR where MainSubjectID = third.MainSubjectID) MainSubjectTitle,
	(select RelationOfMainSubjectTitle from Tbl_CU_Base_RelationOfMainSubject_HR where RelationOfMainSubjectID=third.SubSubjectID) SubSubjectTitle,
	ThirdLevelTitle
	,CASE 
			WHEN IsActive = 0
				THEN N'غیرفعال'
			WHEN IsActive = 1
				THEN N'فعال'
			ELSE N'نامشخص'
			END AS [Status]
from Tbl_CU_Base_3rdLevel_HR third
where 
	(MainSubjectID = @MainSubjectID or @MainSubjectID in('',-1) )
	and (SubSubjectID = @SubSubjectID or @SubSubjectID in('',-1) )
order by SortOrder
end

go

create or alter PROCEDURE [dbo].[Sp_CU_RelationOfMainSubjectWithID_HR]		
	@ID int 
AS
BEGIN
	SET NOCOUNT ON;

 select *
 from Tbl_CU_Base_RelationOfMainSubject_HR
 where RelationOfMainSubjectID = @ID
END

go

create or alter proc sp_cu_chkIfSubjectsEmpty_frm581
	@MainSubject int, @SubSubject int
as
begin
	if (@MainSubject in('',-1) or @SubSubject in('',-1))
		select 1 as res
	else
		select 0 as res
		
end

go

create or alter proc Sp_CU_Base_3rdLevel_HR
	@ID int
as
begin
	select * from Tbl_CU_Base_3rdLevel_HR where ThirdLevelID = 	@ID
end

go

create or alter proc Sp_CU_ThirdLevel_HR_frm581
	@SubSubjectID int
as
begin
	select *
	from Tbl_CU_Base_3rdLevel_HR
	where IsActive = 1
	and SubSubjectID = @SubSubjectID
	order by SortOrder
end

go

create or alter proc sp_cu_FourthLevelSearch_frm581
	@MainSubjectID int, @SubSubjectID int, @ThirdLevelID int
as
begin
	select
		FourthLevelID,
		ROW_NUMBER() over(order by SortOrder) rownumber,
		(select MainSubjectTitle from Tbl_CU_Base_MainSubject_HR where MainSubjectID = fourth.MainSubjectID) MainSubjectTitle,
		(select RelationOfMainSubjectTitle from Tbl_CU_Base_RelationOfMainSubject_HR where RelationOfMainSubjectID=fourth.SubSubjectID) SubSubjectTitle,
		(select ThirdLevelTitle from Tbl_CU_Base_3rdLevel_HR where ThirdLevelID = fourth.ThirdLevelID) ThirdLevelTitle,
		FourthLevelTitle
		,CASE 
				WHEN IsActive = 0
					THEN N'غیرفعال'
				WHEN IsActive = 1
					THEN N'فعال'
				ELSE N'نامشخص'
				END AS [Status]
from Tbl_CU_Base_4thLevel_HR fourth
where 
	(MainSubjectID = @MainSubjectID or @MainSubjectID in('',-1) )
	and (SubSubjectID = @SubSubjectID or @SubSubjectID in('',-1) )
	and (ThirdLevelID = @ThirdLevelID or @ThirdLevelID in('',-1) )
order by SortOrder
end

go

create or alter proc sp_cu_chkIfSubjectsEmpty4thLevel_frm581
	@MainSubject int, @SubSubject int, @ThirdLevel int
as
begin
	if (@MainSubject in('',-1) or @SubSubject in('',-1) or @ThirdLevel in('',-1))
		select 1 as res
	else
		select 0 as res
		
end

go

create proc sp_cu_DeleteFrom_Tbl_CU_Base_4thLevel_HR_frm581
	@GV4thLevelPrimaryID int
as
begin
	delete from Tbl_CU_Base_4thLevel_HR
	where FourthLevelID = @GV4thLevelPrimaryID									
end

go

create proc sp_cu_DeleteFrom_Tbl_CU_Base_3rdLevel_HR_frm581
	@GV3rdLevelPrimaryID int
as
begin
	delete from Tbl_CU_Base_3rdLevel_HR
	where ThirdLevelID = @GV3rdLevelPrimaryID									
end

go

create or alter proc sp_cu_GetCallDataForRequestSource_frm580
	@json nvarchar(max)
as
begin

	declare
		@RequestSource nvarchar(500),
		@Mob nvarchar(11),
		@WebServiceResult bit

	IF (@json <> '')

    BEGIN
		create TABLE #tb_TblWorkflowCall

			(

				Tazarv_ID INT

			);

			EXEC dbo.Sp_GenerateJsonTable '#tb_TblWorkflowCall', @json;

			SELECT @RequestSource = RequestSource,

				  @Mob=Mob,

				  @WebServiceResult=WebServiceResult

			FROM #tb_TblWorkflowCall;

			select * from tbl_cu_base_IncomingSource
			where IncomingSource_ID = cast(@RequestSource as int)

	end
	else
		select 
			0 as IncomingSource_ID,
			'' as IncomingSource
end

go

create proc sp_cu_chkMessageCondition
	@txtMessageResult nvarchar(50)
as
begin
	if @txtMessageResult = N'پیام با موفقیت ارسال شد'
		select 1 as Condition
	else 
		select 0 as Condition
end

--------Modified Sps----------
go

ALTER PROCEDURE [dbo].[Sp_CU_Base_CustomerType]
	-- Add the parameters for the stored procedure here	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select * from Tbl_CU_Base_CustomerType 
    where CustomerTypeStatus = 1  and CustomerTypeID in(6, 4)
    order by CustomerTypeID desc 
END

go

ALTER PROCEDURE [dbo].[SP_CU_HR_Request_Insert_LOG] @WFID INT
	,@StatusID INT
AS
BEGIN
	SET NOCOUNT ON;

	IF NOT EXISTS (
			SELECT TOP 1 WFID
			FROM Tbl_CU_HR_RequestLog
			WHERE WFID = @WFID
			)
	BEGIN
		PRINT 1;

		INSERT INTO Tbl_CU_HR_RequestLog (
			AgentName
			,UserName
			,ContactKey
			,AutoNO
			,RefNo
			,PreRequest
			,AgentID
			,CallCenterGroupID
			,WFID
			,StatusID
			,GUID
			,RequestTypeId
			,ChannelType
			,CallId
			,RequestDesc
			,UnitId
			,CurrDelReqLog
			,SelectedSubSubject
			,OldCat
			,OldGuidance
			,SelectedKeyWord
			,CustomerName
			,EmailAddress
			,CustomerAddress
			,CustomerTel
			,CustomerMob
			,BranchCode
			,BranchName
			,Descriptions
			,PortalGUID
			,CodeBankAmel
			,GuidanceId
			,CustomerKey
			,SelectedCatId
			,CustomerID
			,RegUserID
			,CurrentUserID
			,ReffererID
			,CallData
			,ContactKeyMessages
			,SelectedMessageText
			,MailRoomDesc
			,Security
			,ResponsePriority
			,RefrenceMonitor
			,Refrence
			,ConnectSubject
			,Province
			,City
			,RelationType
			,RequestType
			,MainSubject
			,UnitType
			,UnitName
			,CustomerType
			,SendMessageMethod
			,[Messages]
			,Edit
			,Tree
			,ContactDate
			,DeadLineToResponse
			,ResourceDate
			,AutomationDate
			,ContactTime
			,RequestUnit
			,CALLER
			,CreationDate
			,NotConfirmMailRoom
			,ConfirmMailRoom,
			RequestSource
			)
		SELECT Col_4835052219614985470 --AgentName --nvarchar
			,Col_5078629388748595035 --UserName  --nvarchar
			,Col_4958537852955506416 --ContactKey  --nvarchar
			,Col_4934454419635033382 --AutoNO  --nvarchar
			,Col_5308909026972441761 --RefNo  --nvarchar
			,Col_4691859131373889793 --PreRequest  --nvarchar
			,Col_4646952504660524859 --AgentID  --bigint
			,Col_5251296508541128784 --CallCenterGroupID --int
			,@WFID --WFID  --bigint
			,@StatusID
			,Col_4818727898664409699 --GUID  --nvarchar
			,Col_5506452975957456641 --RequestTypeId  --nvarchar
			,Col_5195378080604747187 --ChannelType  --int
			,Col_5379644954860161971 --CallId  --nvarchar
			,Col_4846219717633864012 --RequestDesc  --nvarchar
			,Col_5042667071313147072 --UnitId  --nvarchar
			,Col_4829012140955927389 --CurrDelReqLog  --nvarchar
			,Col_5325880307424696642 --SelectedSubSubject  --nvarchar
			,Col_5283551072353516701 --OldCat  --nvarchar
			,Col_5038558994888493944 --OldGuidance  --nvarchar
			,Col_5654537710045239283 --SelectedKeyWord  --nvarchar
			,Col_5621880167346255957 --CustomerName  --nvarchar
			,Col_5727919396233459670 --EmailAddress  --nvarchar
			,Col_4956345232888599971 --CustomerAddress  --nvarchar
			,Col_5416326173105681389 --CustomerTel  --nvarchar
			,Col_5149163966672174906 --CustomerMob  --nvarchar
			,Col_4736715871585976454 --BranchCode  --int
			,Col_5488878484257476780 --BranchName  --nvarchar
			,Col_4979668695134538620 --Descriptions  --nvarchar
			,Col_4736338851948295946 --PortalGUID  --nvarchar
			,Col_5138459972413569544 --CodeBankAmel  --nvarchar
			,Col_5410946159210410548 --GuidanceId  --nvarchar
			,Col_4726265193322635980 --CustomerKey  --nvarchar
			,Col_4695069347381358504 --SelectedCatId  --nvarchar
			,Col_5187195314030350463 --CustomerID  --int
			,Col_4643044390201649785 --RegUserID  --int
			,Col_5348493112738579644 --CurrentUserID
			,Col_5227978870912382101 --ReffererID
			,Col_4614315279183026689 --CallData  --nvarchar
			,Col_4887377176061268839 --ContactKeyMessages  --nvarchar
			,Col_4948485212339926307 --SelectedMessageText  --nvarchar
			,Col_5172676551330604820 --MailRoomDesc  --nvarchar
			,Col_5418721579779152662 --Security  --int
			,Col_5645499286930943005 --ResponsePriority  --int
			,Col_4723454330510133604 --RefrenceMonitor  --int
			,Col_5284169006269860546 --Refrence  --int
			,Col_4966540355264565199 --ConnectSubject  --int
			,Col_4649788700829190388 --Province  --int
			,Col_5368968972546010608 --City  --int
			,Col_5150273576523463686 --RelationType  --int
			,Col_5157890643141901605 --RequestType  --nvarchar
			,Col_4613900982019080235 --MainSubject  --int
			,Col_5077825146905942429 --UnitType  --nvarchar
			,Col_5502126156385499374 --UnitName  --nvarchar
			,Col_5750720592477976324 --CustomerType  --int
			,Col_5346511958135401302 --SendMessageMethod  --nvarchar
			,Col_4796325688401265793 --Messages  --nvarchar
			,Col_5612766299956091158 --Edit  --bit
			,Col_4993950578746710324 --Tree  --bit
			,Col_5527471615793558864 --ContactDate  --nvarchar
			,Col_5091281540346186012 --DeadLineToResponse  --nvarchar
			,Col_5128907718964409969 --ResourceDate  --nvarchar
			,Col_5150403476623261500 --AutomationDate  --nvarchar
			,Col_5472182945302384778 --ContactTime  --nvarchar
			,Col_5250143960557690836 --RequestUnit  --nvarchar
			,Col_4881866177360143584 --Caller  --nvarchar
			,GETDATE() --CreationDate --datetime
			,Col_4862086036759254686 --NotConfirmMailRoom
			,Col_5743999155490051445 --ConfirmMailRoom
			,Col_5217775007848584591 --RequestSource
		FROM Tbl_frm580
		WHERE frm580Id = (
				SELECT PKFormID
				FROM Task.TblFormInstance
				WHERE FormID = 580
					AND WorkflowInstanceId = @WFID
				);
	END;
	ELSE
	BEGIN
		DECLARE @AgentName NVARCHAR(100)
			,@UserName NVARCHAR(100)
			,@ContactKey NVARCHAR(100)
			,@AutoNO NVARCHAR(100)
			,@RefNo NVARCHAR(100)
			,@PreRequest NVARCHAR(100)
			,@AgentID BIGINT
			,@CallCenterGroupID INT
			,@GUID NVARCHAR(100)
			,@RequestTypeId NVARCHAR(100)
			,@ChannelType INT
			,@CallId NVARCHAR(100)
			,@RequestDesc NVARCHAR(100)
			,@UnitId NVARCHAR(100)
			,@CurrDelReqLog NVARCHAR(100)
			,@SelectedSubSubject NVARCHAR(100)
			,@OldCat NVARCHAR(100)
			,@OldGuidance NVARCHAR(100)
			,@SelectedKeyWord NVARCHAR(100)
			,@CustomerName NVARCHAR(100)
			,@EmailAddress NVARCHAR(100)
			,@CustomerAddress NVARCHAR(100)
			,@CustomerTel NVARCHAR(100)
			,@CustomerMob NVARCHAR(100)
			,@BranchCode INT
			,@BranchName NVARCHAR(100)
			,@Descriptions NVARCHAR(100)
			,@PortalGUID NVARCHAR(100)
			,@CodeBankAmel NVARCHAR(100)
			,@GuidanceId NVARCHAR(100)
			,@CustomerKey NVARCHAR(100)
			,@SelectedCatId NVARCHAR(100)
			,@CustomerID INT
			,@RegUserID INT
			,@CurrentUserID INT
			,@ReffererID INT
			,@CallData NVARCHAR(100)
			,@ContactKeyMessages NVARCHAR(100)
			,@SelectedMessageText NVARCHAR(100)
			,@MailRoomDesc NVARCHAR(100)
			,@Security INT
			,@ResponsePriority INT
			,@RefrenceMonitor INT
			,@Refrence INT
			,@ConnectSubject INT
			,@Province INT
			,@City INT
			,@RelationType INT
			,@RequestType NVARCHAR(100)
			,@MainSubject INT
			,@UnitType NVARCHAR(100)
			,@UnitName NVARCHAR(100)
			,@CustomerType INT
			,@SendMessageMethod NVARCHAR(100)
			,@Messages NVARCHAR(100)
			,@Edit BIT
			,@Tree BIT
			,@ContactDate NVARCHAR(100)
			,@DeadLineToResponse NVARCHAR(100)
			,@ResourceDate NVARCHAR(100)
			,@AutomationDate NVARCHAR(100)
			,@ContactTime NVARCHAR(100)
			,@RequestUnit NVARCHAR(100)
			,@CALLER NVARCHAR(100)
			,@CreationDate DATETIME = GETDATE()
			,@NotConfirmMailRoom BIT
			,@ConfirmMailRoom BIT

		SELECT @AgentName = Col_4835052219614985470
			,@UserName = Col_5078629388748595035
			,@ContactKey = Col_4958537852955506416
			,@AutoNO = Col_4934454419635033382
			,@RefNo = Col_5308909026972441761
			,@PreRequest = Col_4691859131373889793
			,@AgentID = Col_4646952504660524859
			,@CallCenterGroupID = Col_5251296508541128784
			,@GUID = Col_4818727898664409699
			,@RequestTypeId = Col_5506452975957456641
			,@ChannelType = Col_5195378080604747187
			,@CallId = Col_5379644954860161971
			,@RequestDesc = Col_4846219717633864012
			,@UnitId = Col_5042667071313147072
			,@CurrDelReqLog = Col_4829012140955927389
			,@SelectedSubSubject = Col_5325880307424696642
			,@OldCat = Col_5283551072353516701
			,@OldGuidance = Col_5038558994888493944
			,@SelectedKeyWord = Col_5654537710045239283
			,@CustomerName = Col_5621880167346255957
			,@EmailAddress = Col_5727919396233459670
			,@CustomerAddress = Col_4956345232888599971
			,@CustomerTel = Col_5416326173105681389
			,@CustomerMob = Col_5149163966672174906
			,@BranchCode = Col_4736715871585976454
			,@BranchName = Col_5488878484257476780
			,@Descriptions = Col_4979668695134538620
			,@PortalGUID = Col_4736338851948295946
			,@CodeBankAmel = Col_5138459972413569544
			,@GuidanceId = Col_5410946159210410548
			,@CustomerKey = Col_4726265193322635980
			,@SelectedCatId = Col_4695069347381358504
			,@CustomerID = Col_5187195314030350463
			,@RegUserID = Col_4643044390201649785
			,@CurrentUserID = Col_5348493112738579644
			,@ReffererID = Col_5227978870912382101
			,@CallData = Col_4614315279183026689
			,@ContactKeyMessages = Col_4887377176061268839
			,@SelectedMessageText = Col_4948485212339926307
			,@MailRoomDesc = Col_5172676551330604820
			,@Security = Col_5418721579779152662
			,@ResponsePriority = Col_5645499286930943005
			,@RefrenceMonitor = Col_4723454330510133604
			,@Refrence = Col_5284169006269860546
			,@ConnectSubject = Col_4966540355264565199
			,@Province = Col_4649788700829190388
			,@City = Col_5368968972546010608
			,@RelationType = Col_5150273576523463686
			,@RequestType = Col_5157890643141901605
			,@MainSubject = Col_4613900982019080235
			,@UnitType = Col_5077825146905942429
			,@UnitName = Col_5502126156385499374
			,@CustomerType = Col_5750720592477976324
			,@SendMessageMethod = Col_5346511958135401302
			,@Messages = Col_4796325688401265793
			,@Edit = Col_5612766299956091158
			,@Tree = Col_4993950578746710324
			,@ContactDate = Col_5527471615793558864
			,@DeadLineToResponse = Col_5091281540346186012
			,@ResourceDate = Col_5128907718964409969
			,@AutomationDate = Col_5150403476623261500
			,@ContactTime = Col_5472182945302384778
			,@RequestUnit = Col_5250143960557690836
			,@CALLER = Col_4881866177360143584
			,@NotConfirmMailRoom = Col_4862086036759254686
			,@ConfirmMailRoom = Col_5743999155490051445
		FROM Tbl_frm580;

		UPDATE [dbo].[Tbl_CU_HR_RequestLog]
		SET StatusID = @StatusID
			,AgentName = @AgentName
			,UserName = @UserName
			,ContactKey = @ContactKey
			,AutoNO = @AutoNO
			,RefNo = @RefNo
			,PreRequest = @PreRequest
			,AgentID = @AgentID
			,CallCenterGroupID = @CallCenterGroupID
			,GUID = @GUID
			,RequestTypeId = @RequestTypeId
			,ChannelType = @ChannelType
			,CallId = @CallId
			,RequestDesc = @RequestDesc
			,UnitId = @UnitId
			,CurrDelReqLog = @CurrDelReqLog
			,SelectedSubSubject = @SelectedSubSubject
			,OldCat = @OldCat
			,OldGuidance = @OldGuidance
			,SelectedKeyWord = @SelectedKeyWord
			,CustomerName = @CustomerName
			,EmailAddress = @EmailAddress
			,CustomerAddress = @CustomerAddress
			,CustomerTel = @CustomerTel
			,CustomerMob = @CustomerMob
			,BranchCode = @BranchCode
			,BranchName = @BranchName
			,Descriptions = @Descriptions
			,PortalGUID = @PortalGUID
			,CodeBankAmel = @CodeBankAmel
			,GuidanceId = @GuidanceId
			,CustomerKey = @CustomerKey
			,SelectedCatId = @SelectedCatId
			,CustomerID = @CustomerID
			,RegUserID = @RegUserID
			,CurrentUserID = @CurrentUserID
			,ReffererID = @ReffererID
			,CallData = @CallData
			,ContactKeyMessages = @ContactKeyMessages
			,SelectedMessageText = @SelectedMessageText
			,MailRoomDesc = @MailRoomDesc
			,Security = @Security
			,ResponsePriority = @ResponsePriority
			,RefrenceMonitor = @RefrenceMonitor
			,Refrence = @Refrence
			,ConnectSubject = @ConnectSubject
			,Province = @Province
			,City = @City
			,RelationType = @RelationType
			,RequestType = @RequestType
			,MainSubject = @MainSubject
			,UnitType = @UnitType
			,UnitName = @UnitName
			,CustomerType = @CustomerType
			,SendMessageMethod = @SendMessageMethod
			,[Messages] = @Messages
			,Edit = @Edit
			,Tree = @Tree
			,ContactDate = @ContactDate
			,DeadLineToResponse = @DeadLineToResponse
			,ResourceDate = @ResourceDate
			,AutomationDate = @AutomationDate
			,ContactTime = @ContactTime
			,RequestUnit = @RequestUnit
			,CALLER = @CALLER
			,CreationDate = @CreationDate
			,NotConfirmMailRoom = @NotConfirmMailRoom
			,ConfirmMailRoom = @ConfirmMailRoom
		WHERE WFID = @WFID

		PRINT 2;
	END;
END;

go

ALTER   PROCEDURE [dbo].[SP_CU_Complaint_GetTaskName_HR] @WFID BIGINT
AS
    BEGIN
        DECLARE @TaskName1 NVARCHAR(300);
        SET NOCOUNT ON;
		Declare @CustomerName nvarchar(200)
		
        set @CustomerName = (select t.CustomerName from Tbl_CU_HR_RequestLog as t 
		                     where t.WFID = @WFID)
		declare @GUID nvarchar(50) = (select [GUID] from Tbl_CU_HR_RequestLog where WFID = @wfid)

		declare @MainSubject nvarchar(200) 

		declare @RelationToMainSubject nvarchar(200)

		set @MainSubject = (	
		select top 1
			(select MainSubjectTitle from Tbl_CU_Base_MainSubject_HR where MainSubjectID = r.MainID) as  MainSubject			
		from Tbl_CU_Complaint_RequestLog_HR  as r
		where r.[GUID] = @Guid  and @Guid != ''
							)

		set @RelationToMainSubject = (	
		select top 1
			( select RelationOfMainSubjectTitle + ',' from Tbl_CU_Base_RelationOfMainSubject_HR
		   where RelationOfMainSubjectID IN (SELECT  ID 
                              FROM dbo.FN_CU_split(r.SubID,','))  
                              FOR XML PATH('')     ) as RelationOfMainSubjectTitle 
			
		from Tbl_CU_Complaint_RequestLog_HR  as r
		where r.[GUID] = @Guid  and @Guid != ''
							)
		
        SET @TaskName1 =
        (
            SELECT
            (
                SELECT CustomerTypeTitle
                FROM Tbl_CU_Base_CustomerType
                WHERE Tbl_CU_Base_CustomerType.CustomerTypeID = Tbl_CU_HR_RequestLog.CustomerType
            )

			--+' - ' + CustomerName 

            FROM Tbl_CU_HR_RequestLog
            WHERE WFID = @WFID
        );
        SELECT
			Concat(@CustomerName,'-',@TaskName1,'-',@WFID) AS 'TaskName1',
			concat('بررسی درخواست', '-', @MainSubject, '-', @RelationToMainSubject) as 'TaskName2'
         	
	END;

go

ALTER PROCEDURE [dbo].[SP_CU_Complaint_GetReferGroupList_HR]
@chbNeedAction bit 
AS
BEGIN
	
	if isnull(@chbNeedAction,0)=1
	begin
		select 
		(select GroupName from users.TblGroups as Tblgroup 
		 where Tblgroup.GroupId=TblReferGroup.GroupId) as ReferGroupName,
		 TblReferGroup.GroupId as ReferGroupId
		from [dbo].[Tbl_CU_Base_ReferGroup_HR] as TblReferGroup 
		inner join users.TblGroups as g on g.GroupId = TblReferGroup.GroupId
	
		where TblReferGroup.status=1 and g.Enabled = 1  and g.GroupId != 57 and g.GroupId not in (48,49) 
		union all
		select 'میز خدمت' as ReferGroupName, 1 as ReferGroupId
	
	end
	else
	select  '' as ReferGroupName,'' as ReferGroupId
	
END

go

ALTER PROC [dbo].[SP_CU_Tbl_CU_Referral_History_Insert]
@WFID INT
AS
BEGIN
	DECLARE @UserID INT
	DECLARE @ReferrerGroupID INT
	DECLARE @Description NVARCHAR(1000)
	DECLARE @GUID NVARCHAR(50)



	SELECT TOP 1
		@GUID = GUID,
		@Description = MailRoomDesc,
		@UserID = ISNULL(CurrentUserID , 0),
		@ReferrerGroupID = ReffererID
	FROM Tbl_CU_HR_RequestLog
	WHERE WFID = @WFID

	if @ReferrerGroupID != 1
	begin
		INSERT INTO Tbl_CU_Referral_History_HR (
			ReferralDate
			,ReferralTime
			,UserID
			,ReferrerGroupID
			,Description
			,WFID
			,GUID
			)
		SELECT dbo.MiladiToShamsi(GETDATE())
			,CAST(CONVERT(time , GETDATE()) AS NVARCHAR(5))
			,@UserID
			,@ReferrerGroupID
			,@Description
			,@WFID
			,@GUID
	end
	else
	begin
		declare @RegUserID int  = (select top 1 t.UserID
							from task.TblTask t join task.TblWorkflowActivityInstance a on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
							where a.WokflowInstanceID = @WFID and a.ActivityID = 5033508932275506362); --کاربر ثبت کننده میز خدمت 

		INSERT INTO Tbl_CU_Referral_History_HR (
			ReferralDate
			,ReferralTime
			,UserID
			,ReferrerGroupID
			,Description
			,WFID
			,GUID
			)
		SELECT dbo.MiladiToShamsi(GETDATE())
			,CAST(CONVERT(time , GETDATE()) AS NVARCHAR(5))
			,@RegUserID
			,@ReferrerGroupID
			,@Description
			,@WFID
			,@GUID
	end
END

go

ALTER proc [dbo].[SP_CU_Get_RefferalID] @WFID BIGINT
AS
BEGIN
select
	top 1 ReferrerGroupID, UserID
	from Tbl_CU_Referral_History_HR
	WHERE WFID = @WFID ORDER BY ID DESC
END

go

ALTER PROCEDURE [dbo].[Sp_CU_Base_RelationOfMainSubject_HR]
	@MainSubject int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from Tbl_CU_Base_RelationOfMainSubject_HR
	 where MainSubjectMapID = @MainSubject
	 and RelationOfMainSubjectStatus = 1
	 order by SortOrder 
END

go

ALTER PROC [dbo].[SP_CU_Tbl_CU_Referral_History]
    @WFID INT
AS
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ID, ReferralTime) AS RowNumber,
        RH.ID,
        RH.ReferralDate,
        RH.ReferralTime,
        (SELECT TU.UserName 
         FROM users.TblUsers TU 
         WHERE TU.UserId = RH.UserID) AS UserName,
		 case
			when RH.ReferrerGroupID = 1 then 'میز خدمت'
			else UG.GroupName
		end GroupName,
        RH.Description
    FROM 
        Tbl_CU_Referral_History_HR RH
    INNER JOIN 
        Users.TblGroups UG ON UG.GroupId = RH.ReferrerGroupID
    WHERE 
        RH.WFID = @WFID;
END