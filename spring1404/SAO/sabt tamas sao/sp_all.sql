create table Tbl_CU_CallCentre_log
(
	CallCentreID bigint primary key identity(1,1),
	WFID bigint,
	RegDate nvarchar(10),
	RegTime nvarchar(5),
	RegUser int,
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


insert into Tbl_CU_LogStatus(LogStatusTitle, WID, ExactMessage, ExactMessageID)  --1934, 1935
values
	('بررسی درخواست ثبت تماس', 2000588, 'شروع فرآیند',1),
	('پایان', 2000588, 'بدون نیاز به شروع زیرفرآیند درخواست پشتیبانی',3)

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
		insert into Tbl_CU_CallCentre_log([WFID], [RegDate], [RegTime], [RegUser], [Nationalcode], [FollowUpCode], [FirstName],
									[LastName], [ContactNo], [Topics], [PremadeResponse], [SubjectDescription], [RelatedWFID],
									[Guidance], [SystemError], [UserError], [RegisteredRequest], [ResultDescription],[StatusID])
		values( @wfid,
				dbo.MiladiToShamsi(getdate()),
				dbo.OnlyTime(getdate()),   
				@txtRegUser,
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
		Descript,
		RegDate,
		RegTime,
		(select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = q.StatusID) LogStatusTitle,
		FinalDesc
	from Tbl_CU_QuestionAnswer q
	where PortalUserID = @portalUserID
end

go

create proc sp_cu_LoadInfo_frm41614
	@NationalCode nvarchar(10)
as
begin
	if exists(select 1 from tbl_cu_govinfo_log where right(('00' + nationalId), 10) = @NationalCode)
	begin
		select top 1 
				firstName ,
				LastName,
				mobile,
				UserID
		from tbl_cu_govinfo_log		
		where
			right(('00' + nationalId), 10) = @NationalCode	
	end
	else if exists(select 1 from Tbl_Cu_ApplierProfile where NationalCode = @NationalCode)
		begin
			select top 1 
				[Name] as firstName,
				LastName,
				MobileNO as mobile,
				UserPortalID as UserID
		from Tbl_Cu_ApplierProfile		
		where
			NationalCode = @NationalCode
		end
	else
		select
				'' as firstName,
				'' as LastName,
				'' as mobile,
				0 as UserID
end

go

create proc sp_cu_LoadInfoByFollowUpCode_frm41614
	@wfid bigint
as
begin
       declare @WorkflowID bigint
       declare @StarterUserID bigint
       select @WorkflowID=WorkflowID,@StarterUserID=StarterUserID from task.TblWorkflowInstance where WorkflowInstanceID=@WFID
       print @WorkflowID
       if @WorkflowID=40
       begin
       select [Name] as FirstName,
              LName as LastName,
              MobileNO as Mobile,
			  UserID as PortalUserID
       from Tbl_CU_SAOComplaintLog L
       where WFID=@WFID
       end
       else if @WorkflowID in(2000579,2000045)
       begin
       select 
                   CASE
                           WHEN Q.IsAutomat = 1 THEN 
                           (
                               SELECT TOP 1
                                      Name 
                               FROM dbo.Tbl_Cu_ApplierProfile x
                               WHERE x.UserPortalID = Q.PortalUserID
                                     AND Q.PortalUserID != 0
                           )
                           ELSE
                       (
                           SELECT TOP 1
                                  FirstName
                           FROM Users.TblProfiles
                           WHERE UserId = Q.RegisteredUserId
                       )
                    END as FirstName,
					CASE
                           WHEN Q.IsAutomat = 1 THEN 
                           (
                               SELECT TOP 1
                                      LastName 
                               FROM dbo.Tbl_Cu_ApplierProfile x
                               WHERE x.UserPortalID = Q.PortalUserID
                                     AND Q.PortalUserID != 0
                           )
                           ELSE
                       (
                           SELECT TOP 1
                                  LastName
                           FROM Users.TblProfiles
                           WHERE UserId = Q.RegisteredUserId
                       )
                    END as LastName,
						Mobile,
					    PortalUserID
					   
       from Tbl_CU_QuestionAnswer Q
       where WFID=@WFID
       end
       else if @WorkflowID =2000569 and @StarterUserID<>2
       begin
       select 
			FirstName,
			LastName,
			(
                SELECT TOP 1
                        MobileNO 
                FROM dbo.Tbl_Cu_ApplierProfile x
                WHERE x.UserPortalID = PortalUserID                   
            ) Mobile,
			PortalUserID
                  
       from Tbl_Cu_StudentGetCertificateCode_LOG
       where WFID=@WFID
       end

       else if @WorkflowID =2000560 
       begin
       select
			CASE
                    WHEN IsAuto = 1 THEN 
                    (
                        SELECT TOP 1
                                Name 
                        FROM dbo.Tbl_Cu_ApplierProfile x
                        WHERE x.UserPortalID = 950682
                                AND PortalUserID != 0
                    )
                    ELSE
						txtEditFirstName
            END as FirstName,
			CASE
                    WHEN IsAuto = 1 THEN 
                    (
                        SELECT TOP 1
                                LastName 
                        FROM dbo.Tbl_Cu_ApplierProfile x
                        WHERE x.UserPortalID = PortalUserID
                                AND PortalUserID != 0
                    )
                    ELSE
						txtEditLastName
            END as LastName,
			(
                SELECT TOP 1
                        MobileNO 
                FROM dbo.Tbl_Cu_ApplierProfile x
                WHERE x.UserPortalID = PortalUserID                   
            ) Mobile,
			PortalUserID
       from Tbl_Cu_MehrSystemEdit_Log
       where WFID=@WFID
       end
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
		WFID,
		FollowCode,
		REPLACE(REPLACE(WFStatus, '<p class="sclosed">', ''), '<p class="schecking">', '') WFStatus,  --REPLACE(REPLACE(WFStatus, '<p class="sclosed">', ''), '<p class="schecking">', '')
		REPLACE(REPLACE(Desciption, '<p class="sclosed">', ''), '<p class="schecking">', '') Desciption
		,(select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = StatusID) LogStatusTitle
	from @temp
end

go

create proc sp_cu_getInfoFromCallCentre_frm41614
	@userID int
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
	where RegUser = @userID
end

go

