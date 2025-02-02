
create PROCEDURE [dbo].[Sp_Cu_chkProblemTypeID_frm21041]
@ProblemType int
AS
BEGIN
	if @ProblemType = 6 --پیگیری پاسخ
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
   
END;

go


-------------------
alter PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode nvarchar(50),
@ProblemType int
AS
BEGIN 
	declare @wfid int = (select top 1 wfid from Tbl_CU_FollowUpCode where FollowUpCode = @followupcode )

	if @ProblemType = 6
		begin			 
			if (select top 1 WorkflowID from task.TblWorkflowInstance where WorkflowInstanceID = @wfid) = 2000045   --درخواست پشتیبانی
				begin
					if (
						--select WorkflowID
						select MainSubjectID
						from Tbl_CU_FollowUpCode f
							--join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
							join Tbl_CU_QuestionAnswer q on f.WFID = q.WFID
						where f.FollowUpCode = @FollowUpCode) = @MainSubject

						select cast(1 as bit) res
					else
						select cast(0 as bit) res
				end
			else  --غیر از درخواست پشتیبانی
				begin
					if (
						select WorkflowID
						--select MainSubjectID
						from Tbl_CU_FollowUpCode f
							join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
							--join Tbl_CU_QuestionAnswer q on f.WFID = q.WFID
						where f.FollowUpCode = @FollowUpCode) = @MainSubject

						select cast(1 as bit) res
					else
						select cast(0 as bit) res
				end
		end
	else
		select cast(1 as bit) res
END;



--exec Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041  154,6452646


go

alter PROCEDURE [dbo].[Sp_Cu_TaskName_SaoSupport]
@WFID AS BIGINT
AS
BEGIN
    DECLARE @MainSubject AS NVARCHAR(300) = (
                                                SELECT x.[Name]
                                                FROM Workflow.TblWorkflow x
                                                WHERE x.WorkflowId =
                                                (
                                                    SELECT TOP 1
                                                        MainSubjectID
                                                    FROM dbo.Tbl_CU_QuestionAnswer
                                                    WHERE WFID = @WFID
                                                    ORDER BY Id DESC
                                                )
                                            );

	declare @IsAutomat bit = (select IsAutomat from Tbl_CU_QuestionAnswer where WFID = @WFID)
	declare @PortalUserID bigint = (select PortalUserID from Tbl_CU_QuestionAnswer where WFID = @WFID)
	declare @regUsername nvarchar(50) = (   
											case 
												when @IsAutomat = 1 then
														(select top 1 
															concat(name, ' ', LastName) from Tbl_Cu_ApplierProfile		
														where
															UserPortalID = @PortalUserID
														)

												else
													(select
														top 1 FullName 											
													from
														Tbl_CU_QuestionAnswer l
														join users.TblProfiles p on l.RegisteredUserId = p.UserId
													where
														WFID = @WFID)
											end
										)

    SELECT CAST('پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') + '-'+isnull(@MainSubject,'') AS TASKNAME1,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME2,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME3,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME4,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME5;

END;



go


--select * from users.TblProfiles
--where UserId =64505

--select top 1000 * from [Tbl_CU_QuestionAnswer]
--where wfid = 154


alter proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041  
@userID int,
@mainSubject int
as
begin
	if exists(
		select 1
		from [Tbl_CU_QuestionAnswer] q		
		join task.TblWorkflowInstance i on q.WFID = i.WorkflowInstanceID
		where 
			MainSubjectID = @mainSubject
			and WorkflowInstanceStatusID = 1
			and PortalUserID = @userID
			)
		begin
			select cast(1 as bit) res
		end
	else
		select cast(0 as bit) res
end

--exec sp_cu_chk_NoRepeatedReqestPerUser_frm21041 64505,6452647

go


--SELECT     task.TblWorkflowInstance.WorkflowInstanceID,Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID, Task.TblWorkflowActivityInstance.ActivityID, Task.TblTask.UserID, Task.TblTask.TaskID, Task.TblTask.TaskName, 
--                      Task.TblTask.GroupID, Task.TblTask.TaskStatusID, Task.TblTask.WorkflowActivityInstaceID, Task.TblTask.FromTaskID, Task.TblTask.TaskPriorityID, Task.TblTask.ResponsibleUserID, 
--                      Task.TblTask.CreateDate, Task.TblTask.ViewDate, Task.TblTask.EndDate, Task.TblTask.IntervalTime, Task.TblTask.FolderId, Task.TblTask.UserID AS Expr1, Task.TblTask.RoleID, 
--                       Task.TblTask.IsSendforAll, Task.TblWorkflowActivityInstance.ResualtConditionID
--FROM         Task.TblTask INNER JOIN
--                      Task.TblWorkflowActivityInstance ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
--					  join task.TblWorkflowInstance on task.TblWorkflowInstance.WorkflowInstanceID = Task.TblWorkflowActivityInstance.WokflowInstanceID

--WHERE     (Task.TblWorkflowActivityInstance.ActivityID = 5301958918738439373)
--and Task.TblTask.TaskStatusID in(1,6)
--ORDER BY Task.TblTask.TaskID desc



/*در صورت انتخاب گزینه ارجاع به دانشگاه ها ، در فیلد "نوع دانشگاه" و "نام دانشگاه" ،
تمامی دانشگاه های دیگر به جز دانشگاه فعلی که در حال بررسی درخواست است ، قابل انتخاب باشد */ 



alter proc Sp_Cu_Select_university_By_institudeID_FRM21041     
@wfid bigint,
@institudeID int  
as
begin
	declare @UniversityID int = (select top 1 UniversityID from Tbl_CU_QuestionRefer where WFID = @wfid)
	if (select top 1 OtherOrg from Tbl_CU_QuestionRefer where WFID = @wfid) = 1
	begin
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID and UniversityID not in(@UniversityID)
	end
	else
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID 
end



/* در صورت انتخاب گزینه عدم ارجاع و اعلام نتیجه اعلام نتیجه به متقاضیکاربر در صورت انتخاب گزینه ارجاع به دانشگاه ها ،
دانشگاه  مورد نظر (یکی دیگر از دانشگاه ها) را انتخاب می نماید و توضیحات خود را در فیلد توضیحات درج و سپس نسبت به تایید اقدام می نماید.
(در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ، فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت .)     */

alter proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
@InstitudeID int,@UniReferral bit
as
begin
	 if (@InstitudeID not in(select InstituteID from Tbl_Cu_Institute where InstituteID in (3,2,1,9))
		and @UniReferral = 1)
		select cast(1 as bit) res
	 else
		select cast(0 as bit) res
end


go

ALTER PROCEDURE [dbo].[Sp_cu_SelectObservors_SaoSupport]
@WFID AS BIGINT
AS
BEGIN

		declare @ObservorUserID as bigint,
				@ObservorGroupID bigint



		declare @FollowUpCode nvarchar(100) = (select top 1 UserChosenFollowUpCode from Tbl_CU_QuestionAnswer where WFID = @WFID) 


		select top 1
			@ObservorUserID=isnull(t.UserID,0), 
			@ObservorGroupID=isnull(t.GroupID,0) 
		from
			task.TblWorkflowActivityInstance a
			join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
		where
			a.WokflowInstanceID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode)
			and a.ActivityType = 'TZHumanActivity'
		order by
			t.TaskID desc
		
		select @ObservorUserID as ObservorID, @ObservorGroupID as ObservorGroupID

END;


go

-----------------
ALTER proc [dbo].[sp_cu_getStatusFromDashboard_frm31548]  --exec [sp_cu_getStatusFromDashboard_frm31548] 15883,6452657   
															--exec [Sp_CU_GetDashboard] 64505   >> followupcode: 6452504,6452642
@PortalUserID bigint,
@FollowUpCode nvarchar(10)
as
begin
	declare @temp table  (
	GUIDID nvarchar(50),	CountriesScholarshipID bigint,	WorkFlowName nvarchar(50),	WFID bigint,
	FollowCode nvarchar(50),	WFStatus nvarchar(50),	Desciption nvarchar(max),WFMode nvarchar(10),	PortalFormID int,
	PageID int,	EntryID nvarchar(50),	ShowFRM nvarchar(10),	StatusID bigint,	IsNewPortal int,	ActivityId  bigint
	)
	insert into @temp
	exec [Sp_CU_GetDashboard] @PortalUserID

		begin
			select 
				'وضعیت درخواست شما به شرح زیر میباشد : ' + '<br>' +  Desciption  as Desciption 
				,case 
					 when WFMode = 'Editable' then cast(1 as bit) else cast(0 as bit)    --در صورتی که درخواست در کارتابل متقاضی (دانشجو) باشد ، امکان ثبت درخواست وجود نداشته 
				end as res
			from
				@temp
			where
				FollowCode = @FollowUpCode
		end
end

go

alter proc [dbo].[sp_cu_IfNotInOwnCartableAndIfRelated_frm31548]       													
@chkIsInOwnCartable bit,
@chkFollowUpCodeIfInRelatedWFID bit,
@chkIsResponseFollowUp bit
as
begin
	if @chkFollowUpCodeIfInRelatedWFID = 1  --درخواست در کارتابل خود دانشجو نباشد و شماره پیگیری فرآیند مربوطه وجود داشته باشد
		and @chkIsInOwnCartable = 0  
		and @chkIsResponseFollowUp = 1
		select cast(1 as bit) TrueEnableCheckbox	
	else
		select cast(0 as bit) TrueEnableCheckbox

end


go



ALTER PROCEDURE [dbo].[Sp_Cu_GetGroupID_frm20295]   
    @rbnDesiredOffice AS BIT,
    @rbnOtherOrg AS BIT,
    @OrganUnitID AS BIGINT,
    @cmbUniversity AS BIGINT,
	@cmbMainSubject int
AS
BEGIN
    DECLARE @GROUPID AS BIGINT;

    IF (@rbnDesiredOffice = 1)
    BEGIN
        SET @GROUPID =
        (
            SELECT GroupID
            FROM Tbl_Cu_Base_OrganizationalUnit
            WHERE OrganizationalUnitID = @OrganUnitID
        );
    END;

    ELSE IF (@rbnOtherOrg = 1)
    BEGIN		
		if @cmbMainSubject = 154   --گروه های تعریف شده در فرآیند لغو تعهد
			set @GROUPID =          
				( 
					select GroupID
					from Tbl_Cu_UniversityGroupDiploma    
					where UniversityID = @cmbUniversity
				)
		--else if @cmbMainSubject = 156		--گروه های تعریف شده در فرآیند تایید مدارک دانشجویان داخل و غیرایرانی-جدید	
		--	set @GROUPID =          
		--		( 
		--			select GroupID
		--			from     
		--			where UniversityID = @cmbUniversity
		--		)
	 
    END;

    SELECT @GROUPID AS GROUPID;


END;

go

/*لیست مقادیر فیلد "موضوع اصلی" برای کارشناسان پشتیبان فرایند ها ،
لیست فرایند هایی میباشد که دسترسی آنها در فرم ورود اطلاعات پایه درخواست پشتیبانی سامانه سجاد تعریف شده است .*/
create PROCEDURE [dbo].[Sp_Cu_GetMainSubject_frm41606] @UserId INT   
AS
BEGIN
    IF @UserId = 2085
    BEGIN
        PRINT 'سخاوت';
        SELECT WorkflowId,
               [Name]
        FROM Workflow.TblWorkflow
        WHERE WorkflowId IN ( 80, 68, 94, 100, 96, 2000040, 62, 60, 59 );
    END;
	else if @UserId IN (6,1)
	begin
	SELECT WorkflowId,
               [Name]
        FROM Workflow.TblWorkflow
        WHERE WorkflowId IN ( 37, 40,  154, 46, 49, 61, 62, 63, 65, 66, 67, 68, 70, 73, 78, 80, 81, 82, 85, 88, 89,
                              90, 91, 93, 94, 95, 96, 97, 98, 100, 103, 104, 107, 84, 2000044, 134, 125, 120, 121, 114,
                              113, 110, 109, 126, 127, 128, 129, 130, 159, 122, 2000556, 2000040, 62, 59, 60, 43, 57,
                              2000047, 2000559,2000558,2000567,2000566,2000573
                            )
							union all
							SELECT 1000 as WorkflowId,
              'پایگاه اطلاعات و مدارک تحصیلی کشور'  as [Name]

	end
	else
	    BEGIN
        PRINT 'به جز سخاوت';
        SELECT WorkflowId,
               [Name]
        FROM Workflow.TblWorkflow
		where WorkflowId IN
		(SELECT WFID
        FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
		where ExpertID = @UserID  --فقط فرآیندهای تعریف شده برای آن کاربر در فرم ورود اطلاعات پایه درخواست پشتیبانی سامانه سجاد 
		)OR WorkflowId = 57
		union all
							SELECT 1000 as WorkflowId,
              'پایگاه اطلاعات و مدارک تحصیلی کشور'  as [Name]
    END;
END;

go


create table sp_cu_PremadeResponses
(
	PremadeResponses_ID int primary key identity(1,1),
	MainSubject nvarchar(50),
	RequestType nvarchar(100),
	Response nvarchar(1000),
	[Status] bit,
	UserID int,
	MainSubjectID int
)


go

alter proc sp_cu_gvPremadeResponses_frm41606
@mainSubject int,
@userID int
as
	begin
		select
			PremadeResponses_ID,
			MainSubject,
			RequestType,
			Response,
			case Status
				when 1 then 'فعال'
				else 'غیر فعال'
			end [status]
		from
			sp_cu_PremadeResponses
		where
			(MainSubjectID = @mainSubject) and
			UserID = @userID
	end

--select * from sp_cu_PremadeResponses

go


ALTER PROCEDURE [dbo].[Sp_Cu_GetFinalResult_frm20295] @UserID AS BIGINT   
AS
BEGIN   
    SELECT FinalResultID,
            FinalResult
    FROM Tbl_Cu_SaoSupportFinalResult
    WHERE FinalResultID NOT IN ( 1 )
    ORDER BY OrderID ASC;
END;

-------------------------------------------

go

ALTER PROCEDURE [dbo].[Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer]
    @MainSubjectID AS INT,
    @WFID AS BIGINT,
	@userID int -- آپدیت
	
AS     
BEGIN
    DECLARE @WorkflowId AS INT;
    SELECT @WorkflowId = MainSubjectID
    FROM [dbo].[Tbl_CU_QuestionAnswer]
    WHERE WFID = @WFID
    ORDER BY Id DESC;
    IF ISNULL(@WorkflowId, -1) != -1
        SET @MainSubjectID = @WorkflowId; 
	
	select   --آپدیت
		PremadeResponses_ID, RequestType, Response
	from
		sp_cu_PremadeResponses	
	where
		MainsubjectID = @MainSubjectID
		and userID = @userID
		and [status] = 1

    --SELECT ReadSaoAnswerID,
    --       Title,
    --       Answer
    --FROM Tbl_Cu_Base_SaoReadyAnswer
    --WHERE MainSubjectID = @MainSubjectID
    --      AND Statuss = 1;
END;
---exec Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer @MainSubjectID=N'42'



go


---- add IT expert
create PROCEDURE [dbo].[Sp_cu_Select_ITExpert_SaoSupport]
@WFID AS BIGINT
AS
BEGIN

		DECLARE @MainSubject AS BIGINT = (
											 SELECT TOP 1
												 MainSubjectID
											 FROM dbo.Tbl_CU_QuestionAnswer
											 WHERE WFID = @WFID
											 ORDER BY Id DESC
										)
		declare @ITExpertUserID as bigint


		set @ITExpertUserID =  (
								select top 1 ITExpertID  
								from Tbl_Cu_Base_ExpertWF_SaoSupport
								where WFID = @MainSubject
								order by expertWfID desc
								)

		select @ITExpertUserID as ITExpertID

END;

go

--چکباکس "ارسال به تذرو" ، فقط برای پشتیبان های سامانه قابل مشاهده و انتخاب است
create PROCEDURE [dbo].[Sp_Cu_chkSendToTazarv_frm21041]
@UserID bigint 
AS
BEGIN
	
if @UserID in  (select isnull(ITExpertID,0)  as SupportUserID
				from Tbl_Cu_Base_ExpertWF_SaoSupport
				union
				select isnull(ExpertID,0) as SupportUserID 
				from Tbl_Cu_Base_ExpertWF_SaoSupport
				)
	select cast(1 as bit) res
else
	select cast(0 as bit) res

END;
			

go
--------------------------------




alter proc sp_cu_chkSendToTazarvMandatoryFRM21041 
	@cmbResultInfo int,
	@rbnSendResultInfo bit,
	@chkSendToTazarvForSupport bit,
	@chkSendToTazarv bit
as
begin
	if @rbnSendResultInfo = 1
		begin
			if (@cmbResultInfo = -1 and @chkSendToTazarvForSupport = 0)
				select cast(1 as bit) res
				--اگر کاربر پشتیبانی باشد در صورت خالی بودن فیلد نتیجه نهایی باید چکباکس ارسال به تذرو حتما انتخاب شود.
			else if (@cmbResultInfo = -1 and @chkSendToTazarvForSupport = 1 and @chkSendToTazarv = 0) 
				select cast(1 as bit) res
			else
				select cast(0 as bit) res
		end
	else
		select cast(0 as bit) res
end

go

create proc sp_cu_chkSendToTazarvMandatoryforITExpertFRM21041 
@txtWFFollowUpCode nvarchar(10)
as
begin
	if isnumeric(@txtWFFollowUpCode) = 0
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
end

go

alter proc sp_cu_portal_userID_FRM31548 
@UserID int
as
begin
	select ExternalUserId from users.TblMemebrShips
	where UserId = @UserID
end

go

create proc sp_cu_chk_IsMainSubjectEmpty 
@cmbMainSubject int
as
begin
	if (@cmbMainSubject = '' or @cmbMainSubject = -1)
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
end

go

ALTER proc sp_cu_RecoveredMainSubject 
@MainSubject int
as
begin
	select
		(select ISNULL(Name , '') from Workflow.TblWorkflow w2 where w2.WorkflowId=w1.WorkflowId) Name
	from 
		Workflow.TblWorkflow w1
	where 
		WorkflowId = @MainSubject

end

go