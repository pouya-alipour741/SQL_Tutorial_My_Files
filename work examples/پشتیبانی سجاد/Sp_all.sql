--SELECT Problem,
--        ProblemTypeID
--FROM Tbl_Cu_Base_ProblemTypeForAskQuestion
--where ProblemTypeID = 6


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

----test

--select top 1000 FollowUpCode,* from Tbl_CU_QuestionAnswer order by wfid desc

--select top 1000 WFID,* from Tbl_CU_FollowUpCode
--where  FollowUpCode = '6452642'

--select distinct MainSubjectID from  Tbl_CU_QuestionAnswer

--select top 1000 WorkflowInstanceID,*
--from Workflow.TblWorkflow w
--join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
--where Name like N'%فرآیند درخواست پشتیبانی سامانه سجاد%'
-------------------
alter PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode nvarchar(50),
@ProblemType int
AS
BEGIN
	if @ProblemType = 6
		begin
			if (select WorkflowID
				from Tbl_CU_FollowUpCode f
					join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
				where FollowUpCode = @FollowUpCode) = @MainSubject

				select cast(1 as bit) res
			else
				select cast(0 as bit) res
		end
	else
		select cast(1 as bit) res
END;



--exec Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041  154,6452646

go
--create PROC [dbo].[Sp_CU_GetNonActiveWorkflow_SajadSupport]  --not used
--AS
--BEGIN

--      select WorkFlowID,WorkflowName  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
--	where WorkFlowID not in (153,155,81,66,42,2000564,2000553,84)
--	and IsActive=0 
--	order by OrderId
--END;

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

    SELECT CAST('پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'نامعلوم') + '-'+isnull(@MainSubject,'') AS TASKNAME1,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'نامعلوم') +'-'+isnull(@MainSubject,'') AS TASKNAME2,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'نامعلوم') +'-'+isnull(@MainSubject,'') AS TASKNAME3,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'نامعلوم') +'-'+isnull(@MainSubject,'') AS TASKNAME4,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'نامعلوم') +'-'+isnull(@MainSubject,'') AS TASKNAME5;

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
			i.WorkflowId = @mainSubject
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
--create proc Sp_Cu_Select_university_By_institudeID_FRM21041     
--@wfid bigint,
--@institudeID int  
--as
--begin
--	declare @UniversityID int = (select top 1 University from Tbl_CU_QuestionAnswer where WFID = @wfid)
--	if (select top 1 ReferralToUni from Tbl_CU_QuestionAnswer where WFID = @wfid) = 1
--	begin
--		SELECT UniversityID,UniversityName
--		FROM dbo.Tbl_CU_University
--		WHERE InstituteID = @institudeID and UniversityID not in(@UniversityID)
--	end
--	else
--		SELECT UniversityID,UniversityName
--		FROM dbo.Tbl_CU_University
--		WHERE InstituteID = @institudeID 
--end


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


--/*در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ،
--فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت . */
--select * from Tbl_Cu_Institute
--where InstituteID in (6,8,9,2,3,1)


--create proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
--@InstitudeID int
--as
--begin
--	 if @InstitudeID in(select InstituteID from Tbl_Cu_Institute where InstituteID in (3,2,1,9))
--		select cast(1 as bit) res
--	 else
--		select cast(0 as bit) res

--end


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
				Desciption 
				,case 
					 when WFMode = 'Editable' then cast(1 as bit) else cast(0 as bit)    --در صورتی که درخواست در کارتابل متقاضی (دانشجو) باشد ، امکان ثبت درخواست وجود نداشته 
				end as res
			from
				@temp
			where
				FollowCode = @FollowUpCode
		end
end



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
	--declare @temp table  (
	--GUIDID nvarchar(50),	CountriesScholarshipID bigint,	WorkFlowName nvarchar(50),	WFID bigint,
	--FollowCode nvarchar(50),	WFStatus nvarchar(50),	Desciption nvarchar(max),WFMode nvarchar(10),	PortalFormID int,
	--PageID int,	EntryID nvarchar(50),	ShowFRM nvarchar(10),	StatusID bigint,	IsNewPortal int,	ActivityId  bigint
	--)
	--insert into @temp
	--exec [Sp_CU_GetDashboard] @PortalUserID

	--if @chkFollowUpCodeIfInRelatedWFID = 1 and not exists(select 1 from @temp where FollowCode = @FollowUpCode and WFMode = 'Editable')  --درخواست در کارتابل خود دانشجو نباشد و شماره پیگیری فرآیند مربوطه وجود داشته باشد
	--	select cast(1 as bit) TrueEnableCheckbox	

	--else
	--	select cast(0 as bit) TrueEnableCheckbox
end


--2nd method
--if @chkFollowUpCodeIfInRelatedWFID = 1 and not exists(select 1 from Tbl_CU_QuestionAnswer where WFID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode) and PortalUserID = @PortalUserID)
--	select cast(1 as bit) TrueEnableCheckbox	
--else
--	select cast(0 as bit) TrueEnableCheckbox

--3rd method
--if @chkFollowUpCodeIfInRelatedWFID = 1 and and @PortalUserID not in(
--select
--	top 1 t.userid 
--from
--	task.TblWorkflowActivityInstance a
--	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
--where
--	a.WokflowInstanceID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode)
--order by
--	t.TaskID desc)






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


--حذف گزینه ارسال به تذرو از لیست گزینه های فیلد "نتیجه بررسی" در بخش نتیجه بررسی 
--ALTER PROCEDURE [dbo].[Sp_Cu_GetFinalResult_frm20295] @UserID AS BIGINT   --backup_old
--AS
--BEGIN

--    IF EXISTS
--    (
--        SELECT *
--        FROM Users.TblUsersGroups
--        WHERE GroupId = 923
--              AND UserId = @UserID
--    )
--       OR (@UserID IN ( 2043, 2045 ))
--    BEGIN
--        SELECT FinalResultID,
--               FinalResult
--        FROM Tbl_Cu_SaoSupportFinalResult
--        ORDER BY OrderID ASC;
--    END;
--    ELSE
--    BEGIN
--        SELECT FinalResultID,
--               FinalResult
--        FROM Tbl_Cu_SaoSupportFinalResult
--        WHERE FinalResultID NOT IN ( 1 )
--        ORDER BY OrderID ASC;
--    END;


--END;


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
--select * from Workflow.TblWorkflow
--where name like N'%پشتیبانی سامانه سجاد%'


--select *
--from task.TblWorkflowInstance i
--where WorkflowID = 2000045
--order by WorkflowInstanceID desc


--SELECT    top 1000 Task.TblWorkflowActivityInstance.WokflowInstanceID,Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID, Task.TblWorkflowActivityInstance.ActivityID, Task.TblTask.UserID, Task.TblTask.TaskID, Task.TblTask.TaskName, 
--                      Task.TblTask.GroupID, Task.TblTask.TaskStatusID, Task.TblTask.WorkflowActivityInstaceID, Task.TblTask.FromTaskID, Task.TblTask.TaskPriorityID, Task.TblTask.ResponsibleUserID, 
--                      Task.TblTask.CreateDate, Task.TblTask.ViewDate, Task.TblTask.EndDate, Task.TblTask.IntervalTime, Task.TblTask.FolderId, Task.TblTask.UserID AS Expr1, Task.TblTask.RoleID, 
--                       Task.TblTask.IsSendforAll, Task.TblWorkflowActivityInstance.ResualtConditionID
--FROM         Task.TblTask INNER JOIN
--                      Task.TblWorkflowActivityInstance ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
--WHERE     Task.TblTask.TaskStatusID in (1,6) and Task.TblWorkflowActivityInstance.ActivityID=4981242400227183039
--ORDER BY Task.TblTask.TaskID desc
-------------------------------------------

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

--select * from Tbl_CU_FollowUpCode
--where FollowUpCode = '012137891'





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



--ALTER PROCEDURE [dbo].[Sp_cu_SelectWxpertByMainSubject_SaoSupport]  --استفاده نشد
--@WFID AS BIGINT
--AS
--BEGIN
	
--		DECLARE @MainSubject AS BIGINT = (
--											 SELECT TOP 1
--												 MainSubjectID
--											 FROM dbo.Tbl_CU_QuestionAnswer
--											 WHERE WFID = @WFID
--											 ORDER BY Id DESC
--										)
--		declare @ExpertUserID as bigint,
--				@GroupID bigint


--		DECLARE @ProblemType AS BIGINT = (                ---update
--											 SELECT TOP 1
--												 ProblemType
--											 FROM dbo.Tbl_CU_QuestionAnswer
--											 WHERE WFID = @WFID
--											 ORDER BY Id DESC
--										)
		
--		--update
--		if @ProblemType = 10 --@ProblemType = 10 مشکل فنی
--			begin
--				set @ExpertUserID =  (select top 1 ITExpertID
--				from Tbl_Cu_Base_ExpertWF_SaoSupport
--				where WFID = @MainSubject)

--				select @ExpertUserID as ExpertID,
--						0  as GroupID
--			end
--		--end

--		else IF EXISTS
--		(
--			SELECT top 1 1
--			FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
--			WHERE WFID = @MainSubject and isnull(GroupID, 0)<>0
		
--		)
--		begin
--			set @GroupID= (SELECT TOP 1 GroupID
--			FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
--			WHERE WFID = @MainSubject and isnull(GroupID, 0)<>0)

--			SELECT CAST(@ExpertUserID AS BIGINT) AS ExpertID,
--				   cast(@GroupID as bigint) as GroupID
--		end


--		else IF EXISTS
--		(
--			SELECT ExpertID
--			FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
--			WHERE WFID = @MainSubject
		
--		)
--		BEGIN

--			set @ExpertUserID= (SELECT TOP 1 ExpertID
--			FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
--			WHERE WFID = @MainSubject)

--			update Tbl_CU_QuestionAnswer
--			set sajadExpertUserID=@ExpertUserID
--			WHERE WFID=@WFID

--			SELECT CAST(@ExpertUserID AS BIGINT) AS ExpertID,
--				   cast(0 as bigint) as GroupID
--		END;
--		ELSE
--		BEGIN
      
		
--			UPDATE Tbl_CU_QuestionAnswer
--			set SajadExpertUserID=6
--			where WFID=@WFID
--			  SELECT CAST(6 AS BIGINT) AS ExpertID,
--					 cast(0 as bigint) as GroupID
--		END;


--END;


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



--new QuestionRefer for new sub routes
create proc [dbo].[Sp_Cu_InsertIntoQuestionRefer_IT_Observor]  
@WFID AS BIGINT,
@UserID AS BIGINT,			 --exec Sp_Cu_InsertIntoQuestionRefer_IT_Observor @WorkflowInstanceId, $SecondReferID, $IsAutomat, $SendResult ,
@IsAutomat AS BIT,            --$DesiredUnit, $ReferralToUniversity, $ResultSecond, $SendToTazarv, $cmbdesiredoffice, $ExpertID,
@SendResultInfo bit,			--  $institudeID, $universityID, $DescriptionInfo, $txtGroupIDInfo
@DesiredOfficeInfo bit,
@OtherOrgInfo bit,
@Result int,
@SendToTazarv bit,
@DesiredUnitInfo int,
@ExpertUserIDInfo int,
@Institude int,
@University int,
@DescInfo nvarchar(1000),
@GroupID bigint
AS
BEGIN
IF NOT EXISTS(SELECT * FROM dbo.Tbl_CU_QuestionRefer
               WHERE WFID = @WFID)
BEGIN
INSERT INTO dbo.Tbl_CU_QuestionRefer         
(
    ReferId,
    RegisteredDate,
    RegisteredTime,
    SendResult,
    DesiredOffice,
    OtherOrg,
    Result,                    
	SendToTazarv,     
	OrganizationId,     
    ExpertID,
    WFID,
    [Des],
    IsAutomat,
	InstitudeID,
	UniversityID,
	GroupID
)
SELECT @UserID,
       dbo.MiladiToShamsi(GETDATE()),
	   substring(CAST(GETDATE() AS NVARCHAR(50)),13,5),
	   @SendResultInfo,
	   @DesiredOfficeInfo,
	   @OtherOrgInfo,
	   @Result,
	   @SendToTazarv,
	   @DesiredUnitInfo,
	   @ExpertUserIDInfo,
	   @WFID,
	   @DescInfo,
	   @IsAutomat,
	   @Institude,
	   @University,
	   @GroupID
	   END 
END 



go
				


-------بازیابی اطلاعات
ALTER PROCEDURE [dbo].[Sp_Cu_GetValues_From_SaoSupportResult_Log] --2032668,'اگر در سامانه سجاد اطلاعات شخصي آزمون زبان شما تاييد شده باشد امکان ورود خواهيد داشت. در صورتي که با خطاي ورود به سامانه مواجه مي شويد، از گزينه "رمزتان را گم کرده ايد" استفاده کنيد و رمز جديد دريافت نماييد','',1
    @WFID AS BIGINT,
    @Attachment AS NVARCHAR(4000),
    @IsAutomat AS BIT
AS
BEGIN
    IF EXISTS (SELECT top 1 1 FROM Tbl_CU_QuestionRefer b WHERE b.WFID = @WFID)
    BEGIN
        PRINT 1;
        SELECT top 1 SendResult,
               DesiredOffice,
               OtherOrg,
               Result,
               OrganizationId,
               OfficeId,
			   SendToTazarv,  --update
			   ExpertID,
			   [Des],
			   InstitudeID,
			   UniversityID,
			   GroupID  --end
			   

        FROM Tbl_CU_QuestionRefer b
        WHERE b.WFID = @WFID
        ORDER BY b.Id DESC;



    END;
    ELSE
    BEGIN
        PRINT 2;
        SELECT cast(1 as bit)  AS SendResult,
               0 AS DesiredOffice,
               0 AS OtherOrg,
               3 AS Result,
               -1 AS OrganizationId,
               -1 AS OfficeId
			   ,0 as SendToTazarv,  --update
			   0 as ExpertID,
			   '' as [Des],
			   0 as InstitudeID,
			   0 as UniversityID,
			   cast(0 as bigint) as GroupID--end


        INSERT INTO Tbl_CU_QuestionRefer
        (
            ReferId,
            PKFormId,
            RegisteredDate,
            RegisteredTime,
            SendResult,
            DesiredOffice,
            OtherOrg,
            Result,
            OrganizationId,
            OfficeId,
            UserId,
            WFID,
            [GUID],
            [Des],
            Attachment,
            StatusID,
            GroupID,
            IsAutomat
        )
        SELECT ReferId,
               PKFormId,
               dbo.MiladiToShamsi(GETDATE()),
               SUBSTRING(CAST(GETDATE() AS NVARCHAR(50)), 13, 5),
               SendResult,
               DesiredOffice,
               OtherOrg,
               Result,
               OrganizationId,
               OfficeId,
               UserId,
               @WFID,
               [GUID],
               (
                   SELECT TOP 1
                       FinalDesc
                   FROM Tbl_CU_QuestionAnswer
                   WHERE WFID = @WFID
                   ORDER BY Id DESC
               ),
               @Attachment,
               StatusID,
               GroupID,
               @IsAutomat
        FROM Tbl_CU_QuestionRefer b
        WHERE WFID = @WFID;
    END;



END;



--select * from Tbl_CU_QuestionRefer where wfid=2038048
--Sp_Cu_GetValues_From_SaoSupportResult_Log 2038048 ,'اگر در سامانه سجاد اطلاعات شخصي آزمون زبان شما تاييد شده باشد امکان ورود خواهيد داشت. در صورتي که با خطاي ورود به سامانه مواجه مي شويد، از گزينه 'رمزتان را گم کرده ايد' استفاده کنيد و رمز جديد دريافت نماييد' ,'' ,True



--------------------------------

ALTER PROCEDURE [dbo].[Sp_Cu_GetValues_From_SaoSupportResult_Log_Sec] --2032668,'اگر در سامانه سجاد اطلاعات شخصي آزمون زبان شما تاييد شده باشد امکان ورود خواهيد داشت. در صورتي که با خطاي ورود به سامانه مواجه مي شويد، از گزينه "رمزتان را گم کرده ايد" استفاده کنيد و رمز جديد دريافت نماييد','',1
    @WFID AS BIGINT
AS
BEGIN
    DECLARE @IsAutomat AS BIT = (
                                    SELECT TOP 1
                                        X.IsAutomat
                                    FROM Tbl_CU_QuestionAnswer X
                                    WHERE X.WFID = @WFID
                                    ORDER BY X.Id DESC
                                );
    DECLARE @Attachment AS NVARCHAR(4000) = (
                                                SELECT TOP 1
                                                    X.Attachment
                                                FROM Tbl_CU_QuestionRefer X
                                                WHERE X.WFID = @WFID
                                                ORDER BY X.Id DESC
                                            );
    IF EXISTS (SELECT TOP 1 1 FROM Tbl_CU_QuestionRefer b WHERE b.WFID = @WFID)
    BEGIN
        PRINT 1;
        SELECT TOP 1
            SendResult,
            DesiredOffice,
            OtherOrg,
            Result,
            OrganizationId,
            OfficeId
			,SendToTazarv,  --update
			ExpertID,
			[Des],
			InstitudeID,
			UniversityID --end
        FROM Tbl_CU_QuestionRefer b
        WHERE b.WFID = @WFID
        ORDER BY b.Id DESC;



    END;
    ELSE
    BEGIN
        PRINT 2;
        SELECT CAST(1 AS BIT) AS SendResult,
               0 AS DesiredOffice,
               0 AS OtherOrg,
               3 AS Result,
               -1 AS OrganizationId,
               -1 AS OfficeId
			   ,0 as SendToTazarv,  --update
			   0 as ExpertID,
			   '' as [Des],
			   0 as InstitudeID,
			   0 as UniversityID  --end
			   


        INSERT INTO Tbl_CU_QuestionRefer
        (
            ReferId,
            PKFormId,
            RegisteredDate,
            RegisteredTime,
            SendResult,
            DesiredOffice,
            OtherOrg,
            Result,
            OrganizationId,
            OfficeId,
            UserId,
            WFID,
            [GUID],
            [Des],
            Attachment,
            StatusID,
            GroupID,
            IsAutomat
        )
        SELECT ReferId,
               PKFormId,
               dbo.MiladiToShamsi(GETDATE()),
               SUBSTRING(CAST(GETDATE() AS NVARCHAR(50)), 13, 5),
               SendResult,
               DesiredOffice,
               OtherOrg,
               Result,
               OrganizationId,
               OfficeId,
               UserId,
               @WFID,
               [GUID],
               (
                   SELECT TOP 1
                       FinalDesc
                   FROM Tbl_CU_QuestionAnswer
                   WHERE WFID = @WFID
                   ORDER BY Id DESC
               ),
               @Attachment,
               StatusID,
               GroupID,
               @IsAutomat
        FROM Tbl_CU_QuestionRefer b
        WHERE WFID = @WFID;
    END;



END;



--15883




