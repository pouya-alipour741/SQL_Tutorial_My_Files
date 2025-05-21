create table tbl_cu_base_IncomingSource
(
	IncomingSource_ID int primary key identity(1,1),
	IncomingSource nvarchar(50)
)

go

insert into tbl_cu_base_IncomingSource
values('سلامت'), ('منابع انسانی'), ('امور رفاهی'), ('سایر')

go

alter table Tbl_CU_HR_RequestLog
add RequestSource int

--------Created Sps----------
go

create or alter proc sp_cu_TreeView_frm31328
as
begin
	(
		SELECT 
			'شاخه اصلی' as MainSubjectTitle,		
				1 as BranchLevel,
				-1 as ParentID
		)
	union all
	(
		SELECT 
			MainSubjectTitle,		
				MainSubjectID + 1 as BranchLevel,
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
				   RelationOfMainSubjectID + (select count(1) cnt from Tbl_CU_Base_MainSubject_HR) + 1 as BranchLevel,
				   MainSubjectMapID + 1 as ParentID
	
		from Tbl_CU_Base_RelationOfMainSubject_HR   as  r 
		where RelationOfMainSubjectStatus = 1
	)
end

go

create or alter proc sp_cu_select_IncomingSource_frm580
as
begin
	select * from tbl_cu_base_IncomingSource
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


