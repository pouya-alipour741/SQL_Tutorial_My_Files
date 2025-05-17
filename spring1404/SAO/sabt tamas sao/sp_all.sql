CREATE FUNCTION dbo.RemoveHTMLTags (@Input NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Output NVARCHAR(MAX)
    DECLARE @Start INT
    DECLARE @End INT
    DECLARE @Length INT

    SET @Output = @Input
    SET @Start = CHARINDEX('<', @Output)
    SET @End = CHARINDEX('>', @Output, @Start)

    WHILE @Start > 0 AND @End > 0 AND @End > @Start
    BEGIN
        SET @Length = @End - @Start + 1
        SET @Output = STUFF(@Output, @Start, @Length, '')
        SET @Start = CHARINDEX('<', @Output)
        SET @End = CHARINDEX('>', @Output, @Start)
    END

    RETURN LTRIM(RTRIM(@Output))
END

go

create table Tbl_CU_CallCentre_log
(
	CallCentreID bigint primary key identity(1,1),
	WFID bigint,
	RegDate nvarchar(10),
	RegTime nvarchar(5),
	RegUser int,
	PortalUserID int,
	Nationalcode  nvarchar(10),
	FollowUpCode nvarchar(100),
	FirstName nvarchar(100),
	LastName nvarchar(100),
	ContactNo nvarchar(100),
	Topics int,
	PremadeResponse int,
	SubjectDescription nvarchar(500),
	RelatedWFID int,
	Guidance bit,
	SystemError bit,
	UserError bit,
	RegisteredRequest bit,
	ResultDescription nvarchar(500),
	StatusID int
)

go

insert into Tbl_CU_LogStatus(LogStatusTitle, WID, ExactMessage, ExactMessageID)  --1934, 1935, 1936, 1937
values
	('بررسی درخواست ثبت تماس', 2000588, 'شروع فرآیند',1),
	('بدون نياز به شروع زيرفرآيند درخواست پشتيباني', 2000588, 'خاتمه فرآيند',3),
	('بررسي درخواست پشتيباني سامانه سجاد از ثبت تماس', 2000045, 'در حال بررسي در سازمان امور دانشجويان',2),
	('نياز به درخواست پشتيباني', 2000588, 'خاتمه فرآيند',3)

go

create proc sp_cu_Insert_Update_Tbl_CU_CallCentre_log
	@wfid bigint,
	@StatusID int
as
begin
	declare
		@txtRegUser int,
		@txtNationalCode nvarchar(10),
		@txtFollowUpCode nvarchar(100),
		@txtPortalUserID int,
		@txtName nvarchar(100),
		@txtLastName nvarchar(100),
		@txtContactNo nvarchar(100),
		@rbnRegister bit,
		@rbnAffirmation bit,
		@rbnDegreeApproval bit,
		@rbnCommitmentCancelation bit,
		@rbnCommission bit,
		@cmbOtherTopics int,
		@cmbPremadeResponse int,
		@txtSubjectDescription nvarchar(500),
		@txtRelatedWFID int,
		@rbnGuidance bit,
		@rbnSystemError bit,
		@rbnUserError bit,
		@rbnRegisteredRequest bit,
		@txtResultDescription nvarchar(500)

	select 
		@txtRegUser = col_4941204978461054497,
		@txtNationalCode = col_5718928631750974967,
		@txtFollowUpCode = col_4929762884074901527,
		@txtPortalUserID = col_5157668540547016625,
		@txtName = col_5015109671430041049,
		@txtLastName = col_4878731099635972323,
		@txtContactNo = col_5639456084995486972,
		@rbnRegister = col_4669561737145455733,
		@rbnAffirmation = col_5554754662913942396,
		@rbnDegreeApproval = col_5147703354148026239,
		@rbnCommitmentCancelation = col_5277225740029483546,
		@rbnCommission = col_5085479191938738428,
		@cmbOtherTopics = col_5023808873728860115,
		@cmbPremadeResponse = col_4709800063438243513,
		@txtSubjectDescription = col_5201950943389170313,
		@txtRelatedWFID = col_5704821534341723680,
		@rbnGuidance = col_4680749092622027115,
		@rbnSystemError = col_5219106803957463407,
		@rbnUserError = col_5190006649273867614,
		@rbnRegisteredRequest = col_5622112977338097565,
		@txtResultDescription = col_5577593720855528687
	from Tbl_frm41614		
	where frm41614Id in(select PKFormID from task.TblFormInstance where WorkflowInstanceId = @wfid)

	declare @Topics int
	set @Topics = (select
							case
								when @cmbOtherTopics != -1 then @cmbOtherTopics
								when @rbnRegister = 1 then 43
								when @rbnAffirmation = 1 then 2000569
								when @rbnDegreeApproval = 1 then 156
								when @rbnCommitmentCancelation = 1 then 154
								when @rbnCommission = 1 then 90
							end
							)

	if not exists(select 1 from Tbl_CU_CallCentre_log where WFID = @wfid)
	begin
		insert into Tbl_CU_CallCentre_log([WFID], [RegDate], [RegTime], [RegUser],[PortalUserID], [Nationalcode], [FollowUpCode], [FirstName],
									[LastName], [ContactNo], [Topics], [PremadeResponse], [SubjectDescription], [RelatedWFID],
									[Guidance], [SystemError], [UserError], [RegisteredRequest], [ResultDescription],[StatusID])
		values( @wfid,
				dbo.MiladiToShamsi(getdate()),
				dbo.OnlyTime(getdate()),   
				@txtRegUser,
				@txtPortalUserID,
				@txtNationalCode,
				@txtFollowUpCode,
				@txtName,
				@txtLastName,
				@txtContactNo,				
				@Topics,
				@cmbPremadeResponse,
				@txtSubjectDescription,
				@txtRelatedWFID,
				@rbnGuidance,
				@rbnSystemError,
				@rbnUserError,
				@rbnRegisteredRequest,
				@txtResultDescription,
				@StatusID
		)
	end
	else
		update Tbl_CU_CallCentre_log
		set
			[RegDate] = dbo.MiladiToShamsi(getdate()),
			[RegTime] = dbo.OnlyTime(getdate()),
			[Nationalcode] = @txtNationalCode,
			[FollowUpCode] = @txtFollowUpCode,
			[FirstName] = @txtName,
			[LastName] = @txtLastName,
			[ContactNo] = @txtContactNo,
			[Topics] = @Topics,
			[PremadeResponse] = @cmbPremadeResponse,
			[SubjectDescription] = @txtSubjectDescription,
			[RelatedWFID] = @txtRelatedWFID,
			[Guidance] = @rbnGuidance,
			[SystemError] = @rbnSystemError,
			[UserError] = @rbnUserError,
			[RegisteredRequest] = @rbnRegisteredRequest,
			[ResultDescription] = @txtResultDescription,
			[StatusID] = @StatusID
		where WFID = @wfid			
end

go

create proc sp_cu_ClearFrequentTopics_frm41614
	@cmbOtherTopics int
as
begin
	if @cmbOtherTopics != -1
		select 1 as res
	else
		select 0 as res
end

go

create proc sp_cu_GetMainSubject_frm41614
as
begin
	SELECT WorkflowId,[Name]            
				FROM Workflow.TblWorkflow
				where WorkflowId IN
				(SELECT WFID
				FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
				)
				and WorkflowId not in(37,40,43,88,89,93,95,96,98,100,2000556,2000558,2000559)	
				and WorkflowId not in(43,2000569,156,154,90) --به غیر از گزینه های فرم
				union
				select WorkFlowID,workflowname  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
				where WorkFlowID in (2000567)
				
end

go

create proc sp_cu_CallCentreAdvancedSearch
	@FromDate nvarchar(10),
	@ToDate nvarchar(10),
	@NationalCode nvarchar(10),
	@Expert int,
	@Topic int
as
begin	
	select 
		[WFID], [RegDate], [RegTime], [RegUser], [Nationalcode], [FollowUpCode],
		[FirstName], [LastName], [ContactNo], [Topics], [PremadeResponse], [SubjectDescription], [RelatedWFID],
		[Guidance], [SystemError], [UserError], [RegisteredRequest], [ResultDescription],
		(select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID =  [StatusID]) LogStatusTitle
	from Tbl_CU_CallCentre_log
	where
		(RegDate >= @FromDate or @FromDate = '') and
		(RegDate <= @ToDate or @ToDate = '') and
		(Nationalcode = @NationalCode or @NationalCode = '') and
		(RegUser = @Expert or @Expert = '') and
		(Topics = @Topic or @Topic = '')
end

go

create proc sp_cu_getMainTopicResult_frm41614
	@cmbOtherTopics int,
	@rbnRegister bit,
	@rbnAffirmation bit,
	@rbnDegreeApproval bit,
	@rbnCommitmentCancelation bit,
	@rbnComission bit
as
begin	
	select 
		case			
			when @rbnRegister = 1 then 43
			when @rbnAffirmation = 1 then 2000569
			when @rbnDegreeApproval = 1 then 156
			when @rbnCommitmentCancelation = 1 then 154
			when @rbnComission = 1 then 90
			when @cmbOtherTopics != - 1 then @cmbOtherTopics
		end as MainTopicResult
end

go

create proc sp_cu_getTicketsListsFrom_QuestionAnswer_frm41614
	@portalUserID int
as
begin
	select
		WFID,
		(select [Name] from Workflow.TblWorkflow where WorkflowId = MainSubjectID) MainSubjectTitle,
		Descript
		RegDate,
		RegTime,
		(select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = q.StatusID) LogStatusTitle,
		FinalDesc
	from Tbl_CU_QuestionAnswer q
	where PortalUserID = @portalUserID
end

go

create proc sp_cu_getWorkFlowListFrom_DashBoard_frm41614
	@portalUserID int
as
begin
	declare @temp table  (
	--rno int,
	GUIDID nvarchar(max),	CommitmentCancellationID bigint,	WorkFlowName nvarchar(max),	WFID bigint,
	FollowCode bigint,	WFStatus nvarchar(max),	Desciption nvarchar(max),WFMode nvarchar(max),	PortalFormID int,
	PageID int,	EntryID nvarchar(max),	ShowFRM nvarchar(max),	StatusID bigint,	IsNewPortal int,	ActivityId  bigint
	)
	insert into @temp
	exec [Sp_CU_GetDashboard] @portalUserID

	select
		WorkFlowName,
		WFID as key_value,
		WFID,
		FollowCode,
		REPLACE(REPLACE(REPLACE(WFStatus, '<p class="sclosed">', ''), '<p class="schecking">', ''), '</p>', '') WFStatus, 
		dbo.RemoveHTMLTags(Desciption) Desciption
	from @temp
end

go

create proc sp_cu_getInfoFromCallCentre_frm41614
	@PortalUserID int
as
begin
	select 
		WFID,
		RegDate,
		RegTime,
		SubjectDescription,
		(select top 1 [Name] from Workflow.TblWorkflow where WorkflowId = Topics) MainSubjectTitle,
		(select top 1 FullName from users.TblProfiles where UserId = RegUser) RegUser,
		ResultDescription,
		(select top 1 LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = StatusID) LogStatusTitle,
		FollowUpCode
	from Tbl_CU_CallCentre_log
	where PortalUserID = @PortalUserID
end

go

create proc sp_cu_chkIfUserChosen_frm41614
	@txtGetPortalUserID nvarchar(20)
as
begin
	if (@txtGetPortalUserID = '' or @txtGetPortalUserID = 0)
		select 1 as res
	else
		select 0 as res
end

go

create proc sp_cu_chkIfMainSubjectChosen_frm41614
	@txtMainTopicResult nvarchar(20)
as
begin
	if (@txtMainTopicResult = '' or @txtMainTopicResult = 0)
		select 1 as res
	else
		select 0 as res
end

go

create PROCEDURE sp_cu_LoadInfo_frm41614
    @NationalCode NVARCHAR(10),
    @WFID BIGINT
AS
BEGIN
    SET NOCOUNT ON;

 
    -- Step 1: Try to get user info from gov info log
	if @NationalCode != ''
		begin
			IF EXISTS (SELECT 1 FROM tbl_cu_govinfo_log WHERE RIGHT('00' + nationalId, 10) = @NationalCode)
				BEGIN
					SELECT TOP 1 
						FirstName,
						LastName,
						Mobile,
						UserID
					FROM tbl_cu_govinfo_log
					WHERE RIGHT('00' + nationalId, 10) = @NationalCode
					ORDER BY GovInfoLogId DESC;
					RETURN;
				END

					-- Step 2: Try to get user info from applier profile
			ELSE IF EXISTS (SELECT 1 FROM Tbl_Cu_ApplierProfile WHERE NationalCode = @NationalCode)
				BEGIN
					SELECT TOP 1
						[Name] AS FirstName,
						LastName,
						MobileNO AS Mobile,
						UserPortalID AS UserID
					FROM Tbl_Cu_ApplierProfile
					WHERE NationalCode = @NationalCode
					ORDER BY ApplierProfileID DESC;
					RETURN;
				END
		end
	else IF @WFID != ''
		begin
			
			DECLARE @WorkflowID BIGINT;
			DECLARE @StarterUserID BIGINT;

			-- Step 3: Get Workflow details
			SELECT @WorkflowID = WorkflowID, @StarterUserID = StarterUserID
			FROM task.TblWorkflowInstance
			WHERE WorkflowInstanceID = @WFID;

			-- Step 4: Handle based on WorkflowID
			IF @WorkflowID = 40
			BEGIN
				SELECT top 1 [Name] AS FirstName,
					   LName AS LastName,
					   MobileNO AS Mobile,
					   UserID 
				FROM Tbl_CU_SAOComplaintLog
				WHERE WFID = @WFID;
				RETURN;
			END

			IF @WorkflowID IN (2000579, 2000045)
			BEGIN
				SELECT top 1
					CASE WHEN Q.IsAutomat = 1 THEN 
						(SELECT TOP 1 Name FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = Q.PortalUserID AND Q.PortalUserID != 0)
					ELSE
						(SELECT TOP 1 FirstName FROM Users.TblProfiles WHERE UserId = Q.RegisteredUserId)
					END AS FirstName,
					CASE WHEN Q.IsAutomat = 1 THEN 
						(SELECT TOP 1 LastName FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = Q.PortalUserID AND Q.PortalUserID != 0)
					ELSE
						(SELECT TOP 1 LastName FROM Users.TblProfiles WHERE UserId = Q.RegisteredUserId)
					END AS LastName,
					Mobile,
					PortalUserID as UserID
				FROM Tbl_CU_QuestionAnswer Q
				WHERE WFID = @WFID;
				RETURN;
			END

			IF @WorkflowID = 2000569 AND @StarterUserID <> 2
			BEGIN
				SELECT top 1
					FirstName,
					LastName,
					(SELECT TOP 1 MobileNO FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID) AS Mobile,
					PortalUserID as UserID
				FROM Tbl_Cu_StudentGetCertificateCode_LOG
				WHERE WFID = @WFID;
				RETURN;
			END

			IF @WorkflowID = 2000560
			BEGIN
				SELECT top 1
					CASE WHEN IsAuto = 1 THEN
						(SELECT TOP 1 Name FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID AND PortalUserID != 0)
					ELSE
						txtEditFirstName
					END AS FirstName,
					CASE WHEN IsAuto = 1 THEN
						(SELECT TOP 1 LastName FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID AND PortalUserID != 0)
					ELSE
						txtEditLastName
					END AS LastName,
					(SELECT TOP 1 MobileNO FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID) AS Mobile,
					PortalUserID as UserID
				FROM Tbl_Cu_MehrSystemEdit_Log
				WHERE WFID = @WFID;
				RETURN;
			END

			-- Step 5: Default case
			SELECT top 1
				(SELECT TOP 1 [Name] FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID order by ApplierProfileID desc) as FirstName,
				(SELECT TOP 1 LastName FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID order by ApplierProfileID desc) AS LastName,
				(SELECT TOP 1 MobileNO FROM Tbl_Cu_ApplierProfile WHERE UserPortalID = PortalUserID order by ApplierProfileID desc) AS Mobile,
				PortalUserID as UserID     
			FROM Tbl_CU_FollowUpCode F
			INNER JOIN Tbl_Cu_PortalReceiveLog P ON P.PortalLogID = F.PortalLogID
			WHERE F.WFID = @WFID;
		
		end
	else
		select
			'' as FirstName,
			'' as LastName,
			'' as Mobile,
			0 as UserID

END;

go

create PROCEDURE [dbo].[Sp_Insert_Tbl_CU_QuestionAnswer_From_CallCentre] 
    @WFID AS BIGINT ,
    @StatusID AS BIGINT 

AS
    BEGIN
        SET NOCOUNT ON;
        --DECLARE @FollowUpCode AS NVARCHAR(50)= ( SELECT TOP 1
        --                                                FollowUpCode
        --                                         FROM   dbo.Tbl_CU_FollowUpCode
        --                                         WHERE  WFID = @WFID
        --                                       ) 

        DECLARE @Pkfrm41614Id bigint,
		        @PortalUserID AS BIGINT ,
				--@RegDate nvarchar(10),
				--@RegTime nvarchar(10),
				@MainSubjectID bigint,
				@Mobile bigint,
				--@Email nvarchar(100),
				@ProblemType bigint,
				@Descript nvarchar(2000),
				@NationalCode nvarchar(10)
        
		  SELECT TOP 1
                @Pkfrm41614Id = frm41614Id ,
                @PortalUserID = Col_5157668540547016625 ,
                --@RegDate = Col_5659690905747023735 ,
                --@RegTime = Col_4622391479516633008 ,
                @MainSubjectID = Col_5252272654235027560 ,
                @Mobile = Col_5639456084995486972 ,
                --@Email = Col_5072203725658548127 ,
                --@ProblemType = Col_4685558585417077630 ,
                @Descript = Col_5201950943389170313 ,
                @NationalCode = col_5718928631750974967
               
        FROM    dbo.Tbl_frm41614
        WHERE   frm41614Id IN ( SELECT top 1  PKFormID
                                FROM    Task.TblFormInstance
                                WHERE   WorkflowInstanceId = @WFID
                                        AND FormID = 41614 )
        

        if not exists(select top 1 1 from Tbl_CU_QuestionAnswer where WFIDPortal = WFID)
		begin
        INSERT  INTO [dbo].[Tbl_CU_QuestionAnswer]
                ( RegDate ,
                  RegTime ,
                  PortalUserID ,
                  FollowUpCode ,
                  WFIDPortal ,
                  [MainSubjectID] ,
                  [Mobile] ,
                  --[Email] ,
                  ProblemType ,
                  [Descript] ,
                  [StatusID] ,
                  IsAutomat ,
                  --RegisteredUserId ,
                  NationalCode,
				  PriorityID,
				  PkFrm31548ID
                  
		        )
                values (dbo.MiladiToShamsi(GETDATE()),
                         dbo.OnlyTime(GETDATE()),
                        @PortalUserID ,
                        @WFID ,
                        @WFID ,
                        @MainSubjectID ,
                        @Mobile ,
                        --@Email ,
                        10 ,
                        @Descript ,
                        @StatusID ,
                        6 ,                     
                        --( SELECT TOP 1
                        --            UserID
                        --  FROM      Task.TblWorkflowActivityInstance
                        --            INNER JOIN Task.TblTask ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                        --  WHERE     ActivityID = 5566011793824984477
                        --            AND WokflowInstanceID = @WFID
                        --  ORDER BY  TaskID DESC
                        --) ,
                        @NationalCode,
						5,
						@Pkfrm41614Id						
						)  
            end
			select top 1 id from Tbl_CU_QuestionAnswer where WFIDPortal=@WFID
			order by id desc
    END

go

create proc sp_cu_chkMandatoryResult_frm41614
	@rbnGuidance bit,
	@rbnSystemError bit,
	@rbnUserError bit,
	@rbnRegisteredRequest bit
as
begin
	if (@rbnGuidance = 0 and @rbnSystemError = 0 and @rbnUserError = 0 and @rbnRegisteredRequest = 0)
		select 1 as res
	else
		select 0 as res	
end

go

create proc sp_cu_chkIsNationalCodeNumeric_frm41614
	@NationalCode nvarchar(50)
as
begin
	if (isnumeric(@NationalCode) = 0 and @NationalCode != '')	
		select 1 as res
	else
		select 0 as res
end

go

create proc sp_cu_chkIsFollowUpCodeNumeric_frm41614
	@FollowUpCode nvarchar(50)
as
begin
	if (isnumeric(@FollowUpCode) = 0 and @FollowUpCode != '')
		select 1 as res
	else
		select 0 as res
end

go

create PROCEDURE [dbo].[SP_CU_Search_TBL_CU_CertificateCodeDatas_Log_CallCentre] @NationalCode NVARCHAR(10), @WFID bigint
AS
BEGIN
	if @NationalCode != ''
		begin
			SELECT IdentityCode
				,Average
				,StudingModeTitle
				,FieldCode
				,EducationStatusCode
				,EducationStatusTitle
				,CodeSehat
				,levelDegreetTitle
				,UniversityCode
				,UniversityTypeCode
				,FieldTitle
				,EduEndDate
				,UniversityTypeTitle
				,LeveldDegreeCode
				,LevelCode
				,InquirySourceCode
				,InquirySourceTitle
				,IdentityType
				,StudingModeCode
				,FirstName
				,EduStartDate
				,Last_Name
				,UniversityTitle
				,ExpireDate
				,LevelTitle
				,InquiryDate
			FROM TBL_CU_CertificateCodeDatas_Log
			WHERE IdentityCode = @NationalCode
		end
	else
		begin						
			DECLARE @WorkflowID BIGINT;
			DECLARE @StarterUserID BIGINT;
			-- Step 3: Get Workflow details
			SELECT @WorkflowID = WorkflowID, @StarterUserID = StarterUserID
			FROM task.TblWorkflowInstance
			WHERE WorkflowInstanceID = @WFID;

			-- Step 4: Handle based on WorkflowID
			IF @WorkflowID = 40
			BEGIN
				SELECT top 1 
						@NationalCode = NationalCode
				FROM Tbl_CU_SAOComplaintLog
				WHERE WFID = @WFID;
				RETURN;
			END

			else IF @WorkflowID IN (2000579, 2000045)
			BEGIN
				SELECT top 1				
					@NationalCode = NationalCode
				FROM Tbl_CU_QuestionAnswer Q
				WHERE WFID = @WFID;
				RETURN;
			END

			else IF @WorkflowID = 2000569 AND @StarterUserID <> 2
			BEGIN
				SELECT top 1
					@NationalCode = NationalCode
				FROM Tbl_Cu_StudentGetCertificateCode_LOG
				WHERE WFID = @WFID;
				RETURN;
			END

			else IF @WorkflowID = 2000560
			BEGIN
				SELECT top 1
					@NationalCode = NationalCode
				FROM Tbl_Cu_MehrSystemEdit_Log
				WHERE WFID = @WFID;
				RETURN;
			END

			else
			begin
				-- Step 5: Default case
				SELECT top 1
					@NationalCode = NationalCode
				FROM Tbl_CU_FollowUpCode F
				INNER JOIN Tbl_Cu_PortalReceiveLog P ON P.PortalLogID = F.PortalLogID
				WHERE F.WFID = @WFID
			end

			SELECT IdentityCode
				,Average
				,StudingModeTitle
				,FieldCode
				,EducationStatusCode
				,EducationStatusTitle
				,CodeSehat
				,levelDegreetTitle
				,UniversityCode
				,UniversityTypeCode
				,FieldTitle
				,EduEndDate
				,UniversityTypeTitle
				,LeveldDegreeCode
				,LevelCode
				,InquirySourceCode
				,InquirySourceTitle
				,IdentityType
				,StudingModeCode
				,FirstName
				,EduStartDate
				,Last_Name
				,UniversityTitle
				,ExpireDate
				,LevelTitle
				,InquiryDate
			FROM TBL_CU_CertificateCodeDatas_Log
			WHERE IdentityCode = @NationalCode
		end
END;
