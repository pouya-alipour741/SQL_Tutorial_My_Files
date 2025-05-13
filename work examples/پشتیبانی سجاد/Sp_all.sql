alter table  Tbl_CU_QuestionAnswer
add UserChosenFollowupCode nvarchar(10), ObservorID int

go

alter table Tbl_CU_QuestionRefer
add InstituteID int, UniversityID int, SendToTazarv bit , UniversityUserID int, IsUniRefUser bit

go

alter table Tbl_Cu_Base_ExpertWF_SaoSupport
add ITExpertID bigint  

go

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
create PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode bigint,
@ProblemType int,
@PortalUserID int
AS
BEGIN 
	if @ProblemType = 6
		begin			 
			declare @temp table  (
			--rno int,
			GUIDID nvarchar(max),	CommitmentCancellationID bigint,	WorkFlowName nvarchar(max),	WFID bigint,
			FollowCode bigint,	WFStatus nvarchar(max),	Desciption nvarchar(max),WFMode nvarchar(max),	PortalFormID int,
			PageID int,	EntryID nvarchar(max),	ShowFRM nvarchar(max),	StatusID bigint,	IsNewPortal int,	ActivityId  bigint
			)
			insert into @temp
			exec [Sp_CU_GetDashboard] @PortalUserID

		
			declare @wfid bigint = (select wfid										
									from @temp									
									where FollowCode = @FollowUpCode									
										)
			if (select WorkflowId from task.TblWorkflowInstance where WorkflowInstanceID = @wfid) = @MainSubject
				begin
					select cast(1 as bit) as res
				end
			else
				select cast(0 as bit) as res
				
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
	declare @RegisteredUserId bigint = (select RegisteredUserId from Tbl_CU_QuestionAnswer where WFID = @WFID)
	declare @regUsername nvarchar(50) = (   
											case 
												when 
													@IsAutomat = 1
													and exists	(select 1 from Tbl_Cu_ApplierProfile where UserPortalID = @PortalUserID)
													then
															(select top 1 
																concat(name, ' ', LastName) from Tbl_Cu_ApplierProfile		
															where
																UserPortalID = @PortalUserID
															)
												when 
													@IsAutomat = 1
													and exists	(select 1 from tbl_cu_govinfo_log where UserID = @PortalUserID)
												then
													(select top 1 
															concat(firstName, ' ', LastName) from tbl_cu_govinfo_log		
													where
														UserID = @PortalUserID
													)
																										
												--else
												--	(select
												--		top 1 FullName 											
												--	from
												--		Tbl_CU_QuestionAnswer l
												--		join users.TblProfiles p on l.RegisteredUserId = p.UserId
												--	where
												--		WFID = @WFID)
												else
													(select
														top 1 FullName 											
													from
														users.TblProfiles
													where
														UserId = @RegisteredUserId)
											end
										)

    SELECT CAST('پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') + '-'+isnull(@MainSubject,'') AS TASKNAME1,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME2,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME3,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME4,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME5;

END;


go


create proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041  
@userID int,
@mainSubject int
as
begin
	if exists(
		select 1
			from [Tbl_CU_QuestionAnswer] q		
			--join task.TblWorkflowInstance i on i.WorkflowInstanceID = q.WFID
		where 
			MainSubjectID = @mainSubject
			and ISNULL(FinalDesc , '') = ''
			and PortalUserID = @userID
			--and WorkflowInstanceStatusID = 1 
			and statusID not in(1021, 1920) --غیر از ابطالی ها
			)
		begin
			select cast(1 as bit) res
		end
	else
		select cast(0 as bit) res
end


--exec sp_cu_chk_NoRepeatedReqestPerUser_frm21041 64505,6452647

go




/*در صورت انتخاب گزینه ارجاع به دانشگاه ها ، در فیلد "نوع دانشگاه" و "نام دانشگاه" ،
تمامی دانشگاه های دیگر به جز دانشگاه فعلی که در حال بررسی درخواست است ، قابل انتخاب باشد */ 



create proc Sp_Cu_Select_university_By_institudeID_FRM21041     
@wfid bigint,
@instituteID int  
as
begin
	declare @UniversityID int = (select top 1 UniversityID from Tbl_CU_QuestionRefer where WFID = @wfid order by Id desc)
	if (select top 1 OtherOrg from Tbl_CU_QuestionRefer where WFID = @wfid order by Id desc) = 1
	begin
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @instituteID and UniversityID not in(@UniversityID)
	end
	else
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @instituteID 
end

go

/* در صورت انتخاب گزینه عدم ارجاع و اعلام نتیجه اعلام نتیجه به متقاضیکاربر در صورت انتخاب گزینه ارجاع به دانشگاه ها ،
دانشگاه  مورد نظر (یکی دیگر از دانشگاه ها) را انتخاب می نماید و توضیحات خود را در فیلد توضیحات درج و سپس نسبت به تایید اقدام می نماید.
(در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ، فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت .)     */

create proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
@InstituteID int,@UniReferral bit
as
begin
	 if (@InstituteID not in(3,2,1,9)
		and @UniReferral = 1)
		select cast(1 as bit) res
	 else
		select cast(0 as bit) res
end


go

--create PROCEDURE [dbo].[Sp_cu_SelectObservors_SaoSupport]
--@WFID AS BIGINT
--AS
--BEGIN

--		declare @ObservorUserID as bigint,
--				@ObservorGroupID bigint



--		declare @FollowUpCode nvarchar(100) = (select top 1 UserChosenFollowUpCode from Tbl_CU_QuestionAnswer where WFID = @WFID) 


--		select top 1
--			@ObservorUserID=isnull(t.UserID,0), 
--			@ObservorGroupID=isnull(t.GroupID,0) 
--		from
--			task.TblWorkflowActivityInstance a
--			join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
--		where
--			a.WokflowInstanceID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode)
--			--and a.ActivityType = 'TZHumanActivity'
--			and isnull(userid,0)<>2
--		order by
--			t.TaskID desc
		
--		select @ObservorUserID as ObservorID, @ObservorGroupID as ObservorGroupID

--END;

create PROCEDURE [dbo].[Sp_cu_SelectObservors_SaoSupport]
@WFID AS BIGINT
AS
BEGIN

		declare @ObservorUserID as bigint,
				@ObservorGroupID bigint



		declare @FollowUpCode nvarchar(100) = (select top 1 UserChosenFollowUpCode from Tbl_CU_QuestionAnswer where WFID = @WFID) 
		declare @MainSubjectID int = (select top 1 MainSubjectID from Tbl_CU_QuestionAnswer where WFID = @WFID) 

		if @MainSubjectID = 46 --مدیریت پروفایل متقاضی
			begin
				set @ObservorUserID = 31 --رسول توکلی
				set @ObservorGroupID = 0
			end
		else
			begin
				select top 1
					@ObservorUserID=isnull(t.UserID,0), 
					@ObservorGroupID=isnull(t.GroupID,0) 
				from
					task.TblWorkflowActivityInstance a
					join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
				where
					a.WokflowInstanceID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode)
					--and a.ActivityType = 'TZHumanActivity'
					and isnull(userid,0)<>2
				order by
					t.TaskID desc
			end
		select @ObservorUserID as ObservorID, @ObservorGroupID as ObservorGroupID

END;

go

-----------------
create proc [dbo].[sp_cu_getStatusFromDashboard_frm31548]  --exec [sp_cu_getStatusFromDashboard_frm31548] 15883,6452657   
															--exec [Sp_CU_GetDashboard] 64505   >> followupcode: 6452504,6452642
@PortalUserID bigint,
@FollowUpCode nvarchar(10)
as
begin  --ExchangeStudentID, CountriesScholarshipID
	declare @temp table  (
	rno int,
	GUIDID nvarchar(max),	CommitmentCancellationID bigint,	WorkFlowName nvarchar(max),	WFID bigint,
	FollowCode bigint,	WFStatus nvarchar(max),	Desciption nvarchar(max),WFMode nvarchar(max),	PortalFormID int,
	PageID int,	EntryID nvarchar(max),	ShowFRM nvarchar(max),	StatusID bigint,	IsNewPortal int,	ActivityId  bigint
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

create proc [dbo].[sp_cu_IfNotInOwnCartableAndIfRelated_frm31548]       													
@chkIsInOwnCartable bit,
@chkFollowUpCodeIfInRelatedWFID bit,
@chkIsResponseFollowUp bit
as
begin
	if @chkFollowUpCodeIfInRelatedWFID = 1  --  شماره پیگیری فرآیند مربوطه وجود داشته باشد
		and @chkIsInOwnCartable = 0    --درخواست در کارتابل خود دانشجو نباشد
		and @chkIsResponseFollowUp = 1   --فقط برای گزینه پیگیری پاسخ روشن شود
		select cast(1 as bit) TrueEnableCheckbox	
	else
		select cast(0 as bit) TrueEnableCheckbox

end


go

--پیدا کردن گروه تاییدیه تحصیلی
create PROCEDURE [dbo].[Sp_Cu_GetUniExpert_StudentGetCertificateCode_Support]-- 8231037
    @UniID AS int,
	@group int output
AS
BEGIN
    SET NOCOUNT ON;
      DECLARE @ExpertID AS BIGINT,
            @GroupID AS BIGINT;

    DECLARE @ProvinceCode AS BIGINT 
	 DECLARE @UniversityCode AS BIGINT
	
                                          SELECT TOP 1
                                            @ProvinceCode=  ProvinceCode,
											@UniversityCode= UniversityCode
                                          FROM dbo.Tbl_CU_University
                                          WHERE UniversityID =@UniID


    If @UniID=163
	 set @UniversityCode= 1058 
 print @UniversityCode

 select top 1  @group = A.GroupId
        FROM Users.TblUsersGroups A
        WHERE UserId IN (
                            SELECT UserId
                            FROM Users.TblUsers
                            WHERE LEFT(UserName, 3) LIKE N'%al_%'
                                  AND ISNUMERIC(SUBSTRING(UserName, CHARINDEX('_', UserName) + 1, 4)) = 1
                                  AND UserName NOT LIKE N'%aledu%'
                                  AND UserId NOT
                                  BETWEEN 50395 AND 50487
                                  AND UserId NOT
                                  BETWEEN 55592 AND 56370
                                  AND UserId NOT
                                  BETWEEN 56499 AND 56502
                                  AND UserId <> 59561
                                  AND UPPER(UserName) NOT LIKE N'%ALPR%'
                        )
              AND GroupId NOT IN ( 17, 19, 852, 2015, 32184, 872, 40562, 39277,51336)  
    and A.UserId =(select userID  from users.TblUsers where UserName='al_'+cast(@UniversityCode as nvarchar(50)))
	order by A.GroupId desc
                                      
  --select userID as ExpertID from users.TblUsers where UserName='al_'+cast(@UniversityCode as nvarchar(50))
END;

go

---پیدا کردن گروه لغو تعهد آموزش رایگان
create PROCEDURE [dbo].[Sp_Cu_Get_Group_ForUni_CommitmentCancellationGroup_Support]  
    @UniID AS BIGINT,
	@group int output
AS
    BEGIN
        SET NOCOUNT ON;

        PRINT @UniID
        IF @UniID NOT IN ( 170, 218, 226, 228, 232 )
            BEGIN
				select
					top 1 @group = isnull(CommitmentCancellationGroup, 680)
					FROM    dbo.Tbl_Cu_UniversityGroupDiploma
					WHERE   UniversityID = @UniID
            END
        ELSE
            BEGIN
				select
					top 1 @group =  isnull(GroupID, 680)
					FROM    dbo.Tbl_Cu_UniversityGroupDiploma
					WHERE   UniversityID = @UniID
            END
       
    END

go

---------گروه تاييد مدارک دانشگاهي جهت ترجمه رسمي 
create PROCEDURE [dbo].[Sp_Cu_Select_Group_ForUni_VerificationDocuments_New_Support] --2020,1748447  
    @UniID AS INT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @GroupID AS BIGINT;
    DECLARE @UniTypeID AS INT,
            @ProvinceID AS INT;

    BEGIN

        SELECT @UniTypeID = InstituteID,
               @ProvinceID = ProvinceID
        FROM dbo.Tbl_CU_University
        WHERE UniversityID = @UniID;

        PRINT @UniTypeID;
        PRINT @ProvinceID;

        if @uniid=2944
		SET @GroupID = 39547;

        ELSE IF @UniID in( 3036,15,1859,1873)--پیام نور
                AND @UniTypeID = 2
            SET @GroupID = 26753;

      ELSE IF @UniID = 1858----موسسه غیرانتفاعی کیش
                AND @UniTypeID = 7
            SET @GroupID = 26864;---دانشگاه صنعتي شريف - تهران_تایید مدرک دانشجویان داخل


        ELSE IF @UniID = 2036
               -- OR @UniTypeID = 7
            SET @GroupID = 36620;

        --*****************  استثنا آقای محمدی
		else if @uniid=3001
		set @GroupID=877
		--=================
		  --*****************  استثنا آقای موذنی
		else if @uniid=2017
		set @GroupID=36621
		--=================
        --ELSE
        --    IF @UniID = 2961
        --        SET @GroupID = CAST(36614 AS BIGINT); 

        ELSE IF @UniTypeID = 1
            SET @GroupID = 36753;

        ELSE IF @ProvinceID = 8
                AND @UniTypeID = 3
        BEGIN
            IF EXISTS
            (
                SELECT *
                FROM dbo.Tbl_CU_University
                WHERE UniversityID = @UniID
                      AND ISNULL(IsWestTehran, 0) = 1
            )
                SET @GroupID = CAST(36613 AS BIGINT);
            ELSE IF EXISTS
            (
                SELECT *
                FROM dbo.Tbl_CU_University
                WHERE UniversityID = @UniID
                      AND ISNULL(IsEastTehran, 0) = 1
            )
                SET @GroupID = CAST(36614 AS BIGINT);
            ELSE
                SET @GroupID = CAST(35481 AS BIGINT);
        END;
        ELSE IF @ProvinceID <> 8
                AND @UniTypeID = 3
        BEGIN
            SET @GroupID = ISNULL(
                           (
                               SELECT TOP 1
                                   GroupId
                               FROM Users.TblUsersGroups
                               WHERE UserId =
                               (
                                   SELECT TOP 1
                                       UserId
                                   FROM Users.TblUsers
                                   WHERE UserName = ('DV_uast' +
                                                     (
                                                         SELECT TOP 1
                                                             CAST(UniProvinceCode AS NVARCHAR(20))
                                                         FROM dbo.Tbl_Cu_UniversityProvince
                                                         WHERE UniProvinceID = @ProvinceID
                                                     )
                                                    )
                               )
                               ORDER BY GroupId DESC
                           ),
                           0
                                 );
        END;
        ELSE IF @ProvinceID <> 8
                AND @UniTypeID = 2
        BEGIN
            SET @GroupID = ISNULL(
                           (
                               SELECT TOP 1
                                   GroupId
                               FROM Users.TblUsersGroups
                               WHERE UserId =
                               (
                                   SELECT TOP 1
                                       UserId
                                   FROM Users.TblUsers
                                   WHERE UserName = ('DV_PNU' +
                                                     (
                                                         SELECT TOP 1
                                                             CAST(UniProvinceCode AS NVARCHAR(20))
                                                         FROM dbo.Tbl_Cu_UniversityProvince
                                                         WHERE UniProvinceID = @ProvinceID
                                                     )
                                                    )
                               )
                               ORDER BY GroupId DESC
                           ),
                           0
                                 );
        END;
		else if @UniTypeID=10
            SET @GroupID = ISNULL(
                           (
                               SELECT TOP 1
                                   VerificationDocumentsGroupID
                               FROM dbo.Tbl_Cu_UniversityGroupDiploma
                               WHERE UniversityID = @UniID
                           ),
                           873
                                 )
        ELSE 
		begin
		print 'else' 
            SET @GroupID = ISNULL(
                           (
                               SELECT TOP 1
                                   VerificationDocumentsGroupID
                               FROM dbo.Tbl_Cu_UniversityGroupDiploma
                               WHERE UniversityID = @UniID
                           ),
                           0
                                 )
     end 								 ;
    END;
    PRINT @GroupID;
    IF @GroupID <= 0
        SELECT CAST(35481 AS BIGINT) AS GroupID;
    ELSE
        SELECT @GroupID AS GroupID;
END;

go


ALTER PROCEDURE [dbo].[Sp_Cu_GetGroupID_frm20295]   
    @rbnDesiredOffice AS BIT,
    @rbnOtherOrg AS BIT,
    @OrganUnitID AS BIGINT,
    @cmbUniversity AS BIGINT,
	@cmbInstitute int,
	@cmbMainSubject int
AS
BEGIN
    DECLARE @GROUPID AS BIGINT,
			@USERID bigint,
			@IsUser bit = 0

    IF (@rbnDesiredOffice = 1)
    BEGIN
        SET @GROUPID =
        (
            SELECT GroupID
            FROM Tbl_Cu_Base_OrganizationalUnit
            WHERE OrganizationalUnitID = @OrganUnitID
        )
		SELECT @GROUPID AS GROUPID
    END;

    ELSE IF (@rbnOtherOrg = 1)
    BEGIN
		if @cmbInstitute in(1,2,3,9)  --علمی کاربردی ، پیام نور ، فرهنگیان و فنی و حرفه ای 
			begin
				if @cmbInstitute = 1  --فرهنگیان
					set @GROUPID = (select top 1 GroupId
					from users.TblUsersGroups 
					where UserId in(select UserId from users.TblUsers where UserName like N'%dv_6000%')
					order by groupid desc)

				else if @cmbInstitute = 2  --پیام نور
					set @GROUPID = (select 923 as GroupId)
					
				else if @cmbInstitute = 3  --علمی کاربردی
					set @GROUPID = (select 923 as GroupId)

				else if @cmbInstitute = 9  --فنی حرفه ای
					set @GROUPID = (select top 1 GroupId
					from users.TblUsersGroups 
					where UserId in(select UserId from users.TblUsers where UserName like N'%dv_5000%')
					order by groupid desc)
			end
		else
			begin
				if @cmbMainSubject = 42   --گروه های تعریف شده در فرآیند لغو تعهد قدیمی
					begin
						exec Sp_Cu_Get_Group_ForUni_CommitmentCancellationGroup_Support @cmbUniversity,@GROUPID output
						--set @GROUPID =          
						--	( 
						--		select GroupID 
						--		from Tbl_Cu_UniversityGroupDiploma    
						--		where UniversityID = @cmbUniversity
						--	)	
						--SELECT @GROUPID AS GROUPID
					end
								
				else if @cmbMainSubject = 2000569
					begin
						exec Sp_Cu_GetUniExpert_StudentGetCertificateCode_Support @cmbUniversity, @GROUPID output
						--SELECT @GROUPID AS GROUPID
					end

				else if @cmbMainSubject = 154     --گروه های تعریف شده در فرآیند لغو تعهد جدید
					begin
						exec Sp_Cu_Get_Group_ForUni_CommitmentCancellationGroup_Support @cmbUniversity,@GROUPID output
						--SELECT @GROUPID AS GROUPID
					end

				else if @cmbMainSubject = 156
					begin
						declare @temp table(GroupID int)
						insert into @temp
						exec Sp_Cu_Select_Group_ForUni_VerificationDocuments_New_Support @cmbUniversity

						set @GROUPID = (select GroupID from @temp)
					end
				else if @cmbMainSubject = 65
					set @GROUPID = (SELECT TOP 1
						DoctoraResearchOppExpertGroupID
					FROM
						dbo.Tbl_Cu_UniversityGroupDiploma
					WHERE
						UniversityID = @cmbUniversity)

				else if @cmbMainSubject = 68
					begin
						set @GROUPID = (SELECT TOP 1
							DoctoraResearchOppExpertGroupID
						FROM  
							dbo.Tbl_Cu_UniversityGroupDiploma
						WHERE
							UniversityID = @cmbUniversity)
					end
				else if @cmbMainSubject = 90
					begin
						set @GROUPID = (SELECT TOP 1
							UniversityEducationalSpecialistGroupID
						FROM
							dbo.Tbl_Cu_UniversityGroupDiploma
						WHERE
							UniversityID = @cmbUniversity)
					end
				else if @cmbMainSubject = 141
					begin
						set @GROUPID = (SELECT TOP 1
							TransmissionAndGuestGroupID 
						from
							dbo.Tbl_Cu_UniversityGroupDiploma
						where
							UniversityID = @cmbUniversity)
					end
				else if @cmbMainSubject = 103
					begin
						set @GROUPID = (SELECT TOP 1
							[BodyHealthGroupID] 
						FROM
							dbo.Tbl_Cu_UniversityGroupDiploma
						WHERE
							UniversityID = @cmbUniversity)
					end
				else if @cmbMainSubject = 104
					begin
						declare @temp2 table(GroupID int, MentalHealthGroup5 int, MentalHealthGroup6 int)
						insert into @temp2
						exec Sp_Cu_Select_Group_ForMentalHealth @cmbUniversity
						set @GROUPID = (select top 1 GroupID from @temp2)
					end
				else if @cmbMainSubject = 2000578 --فرآیند دانشجویان سرآمد
					begin
						set @IsUser = 1
						set @USERID = (select top 1 UserId from  users.TblUsers
						where UserName like '%' + 'saramad_' + cast((select top 1 UniversityCode from Tbl_CU_University where UniversityID = @cmbUniversity) as nvarchar(50)) + '%')
					end
				else if @cmbMainSubject = 2000573  --فرآیند همیار دانشجو
					begin
						set @IsUser = 1
						set @USERID = (select top 1 UserId from  users.TblUsers
						where UserName like '%' + 'hamyar_' + cast((select top 1 UniversityCode from Tbl_CU_University where UniversityID = @cmbUniversity) as nvarchar(50)) + '%')
					end
			end

    END
	SELECT isnull(@GROUPID, 923) AS GROUPID, isnull(@USERID, 51) as USERID, @IsUser as IsUniRefUser
		

END;

go


--فقط فرآیندهای تعریف شده برای آن کاربر در فرم ورود اطلاعات پایه درخواست پشتیبانی سامانه سجاد 
create PROCEDURE [dbo].[Sp_Cu_GetMainSubject_frm41606] @UserId INT   
AS
BEGIN
		select
			WorkFlowID,WorkflowName
		FROM
			dbo.Tbl_Cu_Base_WorkFlowInReqOrder
		where
			WorkFlowID not in (153,155,81,66,42,2000564,2000553,84)
			and IsActive=1 
			and WorkflowId IN (SELECT WFID FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport where ExpertID = @UserID or ITExpertID = @UserID)  		
		order by
			OrderId
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

create proc sp_cu_gvPremadeResponses_frm41606
@mainSubject int,
@userID int
as
	begin
		select
			ROW_NUMBER() over(order by PremadeResponses_ID) rn,
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
		order by PremadeResponses_ID
			
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

		select isnull(@ITExpertUserID, 26) as ITExpertID
END;
go 

--چکباکس "ارسال به تذرو" ، فقط برای پشتیبان های سامانه قابل مشاهده و انتخاب است
create PROCEDURE [dbo].[Sp_Cu_chkSendToTazarv_frm21041]
@UserID bigint 
AS
BEGIN
	
if @UserID in  (
					select isnull(ExpertID,0) as SupportUserID 
					from Tbl_Cu_Base_ExpertWF_SaoSupport
					union
					select isnull(ITExpertID,0) as SupportUserID 
					from Tbl_Cu_Base_ExpertWF_SaoSupport
				)
	select cast(1 as bit) res
else
	select cast(0 as bit) res

END;
			

go
--------------------------------
create proc sp_cu_chkSendToTazarvMandatoryFRM21041 
	@cmbResultInfo int,
	@rbnSendResultInfo bit,
	@userid int,
	@chkSendToTazarv bit
as
begin
	declare @chkSendToTazarvForSupport bit
	if @UserID in  (
					select isnull(ExpertID,0) as SupportUserID 
					from Tbl_Cu_Base_ExpertWF_SaoSupport
					union
					select isnull(ITExpertID,0) as SupportUserID 
					from Tbl_Cu_Base_ExpertWF_SaoSupport
					)
		set @chkSendToTazarvForSupport = 1
	else
		set @chkSendToTazarvForSupport = 0

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

--go

--create proc sp_cu_chkIsFollowUpCodeNumeric_FRM21041 
--@txtWFFollowUpCode nvarchar(10)
--as
--begin
--	if isnumeric(@txtWFFollowUpCode) = 0
--		select cast(1 as bit) res
--	else
--		select cast(0 as bit) res
--end

go

create proc sp_cu_portal_userID_FRM31548 
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
		select cast(0 as bit) res
	else
		select cast(1 as bit) res
end

go

create proc sp_cu_RecoveredMainSubject 
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

create proc sp_cu_UpdateFirstReferID_IT  
@wfid bigint
as
begin
		declare @FirstReferID bigint = (
		select
			t.UserID
		from 
			task.TblTask t
			join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
		where 
			a.WokflowInstanceID = @wfid
			and a.ActivityID = 5625006272480608290)  --بررسی کارشناس IT
			
		update Tbl_CU_QuestionAnswer
		set	FirstReferID = @FirstReferID
		where WFID = @wfid

end


go

create proc sp_cu_UpdateFirstReferID_Group  
@wfid bigint
as
begin
		declare @FirstReferID bigint = (
		select
			t.UserID
		from 
			task.TblTask t
			join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
		where 
			a.WokflowInstanceID = @wfid
			and a.ActivityID = 4981242400227183039)  -- کاربر مشاهده کنندهبررسی گروهی درخواست پشتیبانی سامانه سجاد
			
		update Tbl_CU_QuestionAnswer
		set	FirstReferID = @FirstReferID
		where WFID = @wfid

end

go


create proc sp_cu_UpdateFirstReferID 
@wfid bigint
as
begin
		declare @FirstReferID bigint = (
		select
			t.UserID
		from 
			task.TblTask t
			join task.TblWorkflowActivityInstance a on a.WorkflowActivityInstanceID = t.WorkflowActivityInstaceID
		where 
			a.WokflowInstanceID = @wfid
			and a.ActivityID = 5215090122552527259)  --بررسی درخواست پشتیبانی سامانه سجاد
			
		update Tbl_CU_QuestionAnswer
		set	FirstReferID = @FirstReferID
		where WFID = @wfid

end

go

create PROCEDURE [dbo].[Sp_Cu_GetWFStatus_SearchQuestionAnswer_frm41608]
AS
BEGIN

	SELECT 1 AS ID , 'در حال بررسی' AS TITLE
	UNION
	SELECT 2 AS ID , 'خاتمه یافته' AS TITLE

END

go

create proc [dbo].[sp_cu_NoUniForCertainMainSubjects_frm21041]
@MainSubject int
as
begin
	if @MainSubject not in(159,46,57,59,60,61,62,80,10150,85,94,109,2000040,2000044,2000047,2000567)
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
end


--create proc sp_cu_NoUniForCertainMainSubjects_frm21041
--@WFID int,
--@MainSubject int,
--@User int
--as
--begin
--	if @MainSubject not in(159,46,57,59,60,61,62,80,10150,85,94,109,2000040,2000044,2000047,2000567)
--		and (select top 1 ActivityID  from task.TblWorkflowActivityInstance a
--		where a.wokflowinstanceID = @WFID and a.ActivityType = 'TZHumanActivity' order by ActivityID) != 5753723988987375715  --فرم درخواست پشتیبانی سامانه سجاد
--		select cast(1 as bit) res
--	else
--		select cast(0 as bit) res
--end

--go 

--create proc sp_cu_IsCertainInstitude
--@wfid int
--as
--begin
--	declare @instituteID int = (select top 1 InstituteID from Tbl_CU_QuestionRefer where WFID = @wfid order by Id desc)
--	if @instituteID in(3,2,1,9)
--		select cast(1 as bit) IsCertainInstitude
--	else
--		select cast(0 as bit) IsCertainInstitude
--end

go

create proc sp_cu_UpdateStatus_Support
@wfid int,
@status int
as
begin
	if not exists(select 1 from Tbl_CU_QuestionAnswer where WFID = @wfid)
		begin
			print 'insert'
			insert into Tbl_CU_QuestionAnswer(StatusID)
			values(@status)
		end
	else
		begin
			print 'update'
			update Tbl_CU_QuestionAnswer
			set StatusID = @status
			where WFID = @wfid
		end
end

go


create PROCEDURE [dbo].[SP_CU_GetGroupOrUserName_QuestionRefer]
@WFID AS BIGINT
AS
    BEGIN

        SELECT TOP 1
                GroupID, UniversityUserID
        FROM    dbo.Tbl_CU_QuestionRefer
        WHERE   WFID = @WFID
        ORDER BY Id DESC


    END


go

create proc [dbo].[sp_cu_UpdateObservorUser_Support]
@wfid int
as
begin
	declare @observorID int = (
								select top 1 t.userid
								from
									task.TblTask t
									join task.TblWorkflowActivityInstance a on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
								where
									a.WokflowInstanceID = @wfid
									and ActivityID in(5012698392437218490, 5669317155888546760)
									and t.UserID is not null
								)
	if not exists(select 1 from Tbl_CU_QuestionAnswer where WFID = @wfid)
		begin
			print 'insert'
			insert into Tbl_CU_QuestionAnswer(ObservorID)
			values(@ObservorID)
		end
	else
		begin
			print 'update'
			update Tbl_CU_QuestionAnswer
			set ObservorID = @ObservorID
			where WFID = @wfid

		end
end

go

create PROCEDURE [dbo].[Sp_Cu_Insert_tbl_cu_QuestionRefer_wf2000045]
@WFID AS BIGINT, @IsAutomat bit
as	
    declare
		@SendResult AS BIT,
		@DesiredOffice AS BIT,
		@OtherOrg AS BIT,
		@cmbResult AS INT,
		@cmbDesiredUnit AS INT,
		--@cmbDesiredOffice AS INT,  --update
		@cmbExperUserID AS INT,
		@cmbInstitute int,   --update
		@cmbUniversity int,  
		@SendToTazarv bit, 
		@UniversityUserID int,
		@IsUniRefUser bit,--end
		@Des AS NVARCHAR(1000),
		@Attachment AS NVARCHAR(1000),
		@GroupID AS BIGINT,
		@ReferId AS BIGINT,
		@UserId AS BIGINT,
		@GUID AS NVARCHAR(1000)

BEGIN
	select 
		 @SendResult = Col_5581934880622446261,
		 @DesiredOffice = col_5319920761961862933,
		 @OtherOrg = col_5139528391810745165,
		 @cmbResult = col_4948200665753577473,
		 @cmbDesiredUnit = col_5195609748428162630,
		 @cmbExperUserID = col_5649431032226153954,
		 @cmbInstitute = col_5208403737968325202,
		 @cmbUniversity = col_5610076180504582867,
		 @SendToTazarv = col_4731394453799451628,
		 @UniversityUserID = col_5608294427009945013,
		 @IsUniRefUser = col_5325503521548115568,
		 @Des = col_5409369756743812385,
		 @Attachment = col_4761793774768584392,
		 @GroupID = col_5214184851893828049,
		 @ReferId = col_5491021531889411585,
		 @UserId = col_4612732637702051994,
		 @GUID = col_5190992840719060449

	from tbl_frm21041
	where frm21041Id in(select PKFormID from task.TblFormInstance where WorkflowInstanceId = @WFID)


    INSERT INTO dbo.Tbl_CU_QuestionRefer   
    (
        ReferId,
        OrganizationId,
        --OfficeId,  --update
        UserId,
        RegisteredDate,
        WFID,
        RegisteredTime,
        SendResult,
        DesiredOffice,
        OtherOrg,
        Result,
        [GUID],
        [Des],
        Attachment,
        GroupID,
        IsAutomat,
        ExpertID,
		InstituteID,  --update
		UniversityID,  
		SendToTazarv,
		UniversityUserID, 
		IsUniRefUser--end
	)
    SELECT @ReferId,
           @cmbDesiredUnit,
           --@cmbDesiredOffice,  --update
           @UserId,
           dbo.MiladiToShamsi(GETDATE()),
           @WFID,
           CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)),
           @SendResult,
           @DesiredOffice,
           @OtherOrg,
           @cmbResult,
           @GUID,
           @Des,
           @Attachment,
           @GroupID,
           @IsAutomat,
           @cmbExperUserID,
		   @cmbInstitute,  --update
		   @cmbUniversity,  
		   @SendToTazarv,
		   @UniversityUserID,
		   @IsUniRefUser--end

END;


