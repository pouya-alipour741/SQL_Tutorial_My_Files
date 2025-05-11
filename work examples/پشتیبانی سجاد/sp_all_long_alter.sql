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
               --OfficeId,    --update
			   SendToTazarv,   
			   --,ExpertID,
			   --[Des],
			   InstituteID
			   --UniversityID,
			   --GroupID  --end
			   

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
               --1 AS OfficeId,   --update
			   0 as SendToTazarv ,  
			   --,0 as ExpertID,
			   --'' as [Des],
			   0 as InstituteID
			   --0 as UniversityID,
			   --cast(0 as bigint) as GroupID--end


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
            --OfficeId,  --update
			SendToTazarv,
			InstituteID, --end
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
               --OfficeId,  --update
			   SendToTazarv,
			   InstituteID,  --end
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


GO

ALTER PROCEDURE [dbo].[Sp_Cu_GetMainSubject_frm21041] @UserId INT
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
	--else if @UserId IN (6,1)
	--begin
	--SELECT WorkflowId,
 --              [Name]
 --       FROM Workflow.TblWorkflow
 --       WHERE WorkflowId IN ( 37, 40,  154, 46, 49, 61, 62, 63, 65, 66, 67, 68, 70, 73, 78, 80, 81, 82, 85, 88, 89,
 --                             90, 91, 93, 94, 95, 96, 97, 98, 100, 103, 104, 107, 84, 2000044, 134, 125, 120, 121, 114,
 --                             113, 110, 109, 126, 127, 128, 129, 130, 159, 122, 2000556, 2000040, 62, 59, 60, 43, 57,
 --                             2000047, 2000559,2000558,2000567,2000566,2000573
 --                           )
	--						union all
	--						SELECT 1000 as WorkflowId,
 --             'پایگاه اطلاعات و مدارک تحصیلی کشور'  as [Name]

	--end

	--else   
	--    BEGIN
 --       PRINT 'به جز سخاوت';
 --       SELECT WorkflowId,
 --              [Name]
 --       FROM Workflow.TblWorkflow
	--	where WorkflowId IN
	--	(SELECT WFID
 --       FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
	--	)OR WorkflowId = 57
 --       --WHERE WorkflowId IN ( 37, 40,  42, 46, 49, 61, 62, 63, 65, 66, 67, 68, 70, 73, 78, 80, 81, 82, 85, 88, 89,
 --       --                      90, 91, 93, 94, 95, 96, 97, 98, 100, 103, 104, 107, 84, 2000044, 134, 125, 120, 121, 114,
 --       --                      113, 110, 109, 126, 127, 128, 129, 130, 159, 122, 2000556, 2000040, 62, 59, 60, 43, 57,
 --       --                      2000047, 2000559,2000558
 --       --                    );
	--	union all
	--						SELECT 1000 as WorkflowId,
 --             'پایگاه اطلاعات و مدارک تحصیلی کشور'  as [Name]
 --   END;
	else
		begin		
			SELECT WorkflowId,[Name]            
			FROM Workflow.TblWorkflow
			where WorkflowId IN
			(SELECT WFID
			FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
			)
			and WorkflowId not in(37,40,43,88,89,93,95,96,98,100,2000556,2000558,2000559)	
			union
			select WorkFlowID,workflowname  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
			where WorkFlowID in (2000567)
		end
END;

GO

ALTER PROCEDURE [dbo].[Sp_Cu_GetMainSubject_frm21041_NewOne] 
AS
BEGIN
        --SELECT WorkflowId,
        --       [Name]
        --FROM Workflow.TblWorkflow
        --WHERE WorkflowId IN ( 37, 40, 41, 42, 46, 49, 61, 62, 63, 65, 66, 67, 68, 70, 73, 78, 80, 81, 82, 85, 88, 89,
        --                      90, 91, 93, 94, 95, 96, 97, 98, 100, 103, 104, 107, 84, 2000044, 134, 125, 120, 121, 114,
        --                      113, 110, 109, 126, 127, 128, 129, 130, 159, 122, 2000556, 2000040, 62, 59, 60, 43, 57,
        --                      2000047, 2000559 
							 -- , 154 --update
        --                    );

		SELECT WorkflowId,[Name]      --update        
		FROM Workflow.TblWorkflow
		where WorkflowId IN
		(SELECT WFID
		FROM dbo.Tbl_Cu_Base_ExpertWF_SaoSupport
		)
		and WorkflowId not in(37,40,43,88,89,93,95,96,98,100,2000556,2000558,2000559)	
		union
		select WorkFlowID,workflowname  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
		where WorkFlowID in (2000567)  --end
END;

go

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
            --OfficeId,  --update
			SendToTazarv  
			--ExpertID,
			--[Des],
			,InstituteID
			--UniversityID --end
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
               ---1 AS OfficeId,   --update
			   0 as SendToTazarv  
			   --0 as ExpertID,
			   --'' as [Des],
			   ,0 as InstituteID
			   --0 as UniversityID  --end
			   


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
            --OfficeId,
			SendToTazarv,
			InstituteID,
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
               --OfficeId,
			   SendToTazarv,
			   InstituteID,
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

go

ALTER PROCEDURE [dbo].[Sp_Cu_GetWFStepStatus_SearchQuestionAnswer]
AS
BEGIN

select * from Tbl_CU_LogStatus
--where wid=2000045  --update
where LogStatusID in(998, 1507, 1560, 1561, 1021, 1918)  --end
END

go

ALTER PROCEDURE [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG]   
    @WFID AS BIGINT ,
    @Status AS BIGINT
AS
    BEGIN
        SET NOCOUNT ON;
        DECLARE @PkFrm21041ID AS BIGINT ,
            @UserID AS BIGINT ,
            @RegTime AS NVARCHAR(10) ,
            @RegDate AS NVARCHAR(10) ,
            @MainSubject AS INT ,
            @MobileNumber AS NVARCHAR(11) ,
            @Email AS NVARCHAR(50) ,
            @OrienProblem AS BIT ,
            @QuestionLetter AS BIT ,
            @ProblemType AS INT ,
            @Des AS NVARCHAR(1000) ,
            @Accepted AS BIT ,
            @NotAccepted AS BIT ,
            @FinalDesc AS NVARCHAR(1000) ,
            @GUID AS NVARCHAR(MAX) ,
            --@FirstRefer AS BIGINT, --update
			@Priority AS INT


	---------------------------------------------------------------------------
        SELECT TOP 1
                @PkFrm21041ID = frm21041Id ,
                @RegTime =dbo.OnlyTime(getdate()) ,
                @RegDate = dbo.MiladiToShamsi(getdate()) ,
                @UserID = Col_4917072605639784939 ,
                @MainSubject = Col_5734364465859836924 ,
                @MobileNumber = Col_5684013610708670363 ,
                @Email = Col_5410123904378380874 ,
                @OrienProblem = Col_4676825254353781655 ,
                @QuestionLetter = Col_4858775235086145070 ,
                @ProblemType = Col_4659311251708217602 ,
                @Des = Col_5588901027094583235 ,
                @Accepted = Col_5668558491494590571 ,
                @NotAccepted = Col_4681715191942200396 ,
                --@FinalDesc = Col_5656188629762278570 ,  --update
				@FinalDesc = Col_5409369756743812385,  --update
                @GUID = Col_5190992840719060449 ,
				@Priority = Col_5274322539269778963
                --,@FirstRefer = ( SELECT top 1 b.UserID   --update
                --                FROM    Task.TblTask b
                --                        INNER JOIN Task.TblWorkflowActivityInstance a ON a.WorkflowActivityInstanceID = b.WorkflowActivityInstaceID
                --                WHERE   a.ActivityID = 5215090122552527259
                --                        AND a.WokflowInstanceID = @WFID
                --              )
		

        FROM    dbo.Tbl_frm21041
        WHERE   frm21041Id IN ( SELECT top 1  PKFormID
                                FROM    Task.TblFormInstance
                                WHERE   WorkflowInstanceId = @WFID
                                        AND FormID = 21041 )

         if   EXISTS(select top 1 1 from [dbo].[Tbl_Cu_SajadDoneTaskLog] where [WFID]=@WFID)   
		 begin
		 set @FinalDesc=(select top 1 [Descript] from [dbo].[Tbl_Cu_SajadDoneTaskLog] where [WFID]=@WFID)  
		 update dbo.Tbl_frm21041
		 --set Col_5656188629762278570=@FinalDesc  --update
		 set Col_5409369756743812385=@FinalDesc   --update
        WHERE   frm21041Id IN ( SELECT top 1  PKFormID
                                FROM    Task.TblFormInstance
                                WHERE   WorkflowInstanceId = @WFID
                                        AND FormID = 21041 )
										set @Status=1507
		 end   
		----------------------------------------------------------------------------------
        IF NOT EXISTS ( SELECT  Id
                        FROM    Tbl_CU_QuestionAnswer
                        WHERE   WFID = @WFID )
            BEGIN 
                PRINT 'Insert'
                INSERT  INTO dbo.Tbl_CU_QuestionAnswer
                        ( PkFrm21041 ,
                          WFID ,
                          [GUID] ,
                          RegisteredUserId ,
                          RegTime ,
                          RegDate ,
                          MainSubjectID ,
                          Mobile ,
                          Email ,
                          OrienProblem ,

                          QuestionLetter ,
                          ProblemType ,
                          [Descript] ,
                          IsConfirmed ,
                          IsNotConfirmed ,
                          FinalDesc ,
                          StatusID ,
                          --FirstReferID,  --update
						  PriorityID
						  
                        )
                VALUES  ( @PkFrm21041ID ,
                          @WFID ,
                          @GUID ,
                          @UserID ,
                          @RegTime ,
                          @RegDate ,
                          @MainSubject ,
                          @MobileNumber ,
                          @Email ,
                          @OrienProblem ,
                          @QuestionLetter ,
                          @ProblemType ,
                          @Des ,
                          @Accepted ,
                          @NotAccepted ,
                          @FinalDesc ,
                          @Status ,
                          --@FirstRefer,  --update
						  @Priority
                        )
            END 
        ELSE
            BEGIN 
                PRINT 'Update'
                UPDATE  Tbl_CU_QuestionAnswer   
                SET     PkFrm21041 = @PkFrm21041ID ,                   
                        MainSubjectID = @MainSubject ,
                        Mobile = @MobileNumber ,
                        Email = @Email ,
                        OrienProblem = @OrienProblem ,
                        QuestionLetter = @QuestionLetter ,
                        ProblemType = @ProblemType ,
                        [Descript] = @Des ,
                        IsConfirmed = @Accepted ,
                        IsNotConfirmed = @NotAccepted ,
                        FinalDesc = @FinalDesc ,
                        StatusID = @Status ,
                        --FirstReferID = @FirstRefer,  --update
						RegisteredUserId=@UserID,
						PriorityID=@Priority
                WHERE   WFID = @WFID
            END		

    END

go

ALTER PROCEDURE [dbo].[Sp_Cu_Select_Tbl_Cu_Base_SaoReadyAnswer]
    @MainSubjectID AS INT,
    --@WFID AS BIGINT,  -- آپدیت
	@userID int   -- آپدیت
	
AS     
BEGIN

	
	select   --آپدیت
		ISNULL(PremadeResponses_ID , -1) AS PremadeResponses_ID, ISNULL(RequestType , '') AS RequestType, ISNULL(Response , '') AS Response
	from
		sp_cu_PremadeResponses	
	where
		MainsubjectID = @MainSubjectID
		and userID = @userID
		and [status] = 1

END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041]
--    @ReadyAnswer INT,
--    @Id BIGINT,
--    @WFID AS BIGINT
@cmbReadyAnswer int
AS
BEGIN
--    IF ISNULL(@ReadyAnswer, '-1') <> -1
--    BEGIN
--        SELECT TOP 1
--            Answer
--        FROM Tbl_Cu_Base_SaoReadyAnswer
--        WHERE ReadSaoAnswerID = @ReadyAnswer;
--    END;
--    ELSE IF (ISNULL(@Id, 0) <> 0)
--    BEGIN
--        SELECT [Des] 
--        FROM Tbl_CU_QuestionRefer
--        WHERE Id = @Id;
--    END;
--    ELSE IF
--    (
--        SELECT TOP 1
--            ISNULL(Col_5409369756743812385, '') AS Answer
--        FROM Tbl_frm21041 A
--        WHERE A.frm21041Id =
--        (
--            SELECT TOP 1
--                X.PKFormID
--            FROM Task.TblFormInstance X
--            WHERE X.FormID = 21041
--                  AND X.WorkflowInstanceId = @WFID
--        )
--    ) <> ''
--    BEGIN
--        SELECT TOP 1
--            Col_5409369756743812385 AS Answer
--        FROM Tbl_frm21041 A
--        WHERE A.frm21041Id =
--        (
--            SELECT TOP 1
--                X.PKFormID
--            FROM Task.TblFormInstance X
--            WHERE X.FormID = 21041
--                  AND X.WorkflowInstanceId = @WFID
--        );
--    END;
--	ELSE
--    BEGIN
--        SELECT TOP 1
--            'با سلام و احترام' AS Answer
--    END;
	select   --آپدیت
		 Response
	from
		sp_cu_PremadeResponses	
	where
		PremadeResponses_ID = @cmbReadyAnswer
END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_SearchRefer_frm21041] @WFID AS BIGINT
AS
BEGIN
	
    SELECT ROW_NUMBER() OVER (ORDER BY Id DESC) AS RowNum,
           Id,
           (
               SELECT FullName FROM Users.TblProfiles WHERE UserId = a.ReferId
           ),
           a.RegisteredDate,
           a.RegisteredTime,
		   case  
				when DesiredOffice = 1 then (SELECT top 1 ChartNodeTitle FROM dbo.Tbl_CU_Chart WHERE GroupID = a.GroupID ORDER BY ChartNodeID DESC)
				when OtherOrg = 1 then (select InstituteName from Tbl_Cu_Institute where InstituteID = a.InstituteID)
			end as Chart,
			case  
				when DesiredOffice = 1 then (SELECT FullName FROM Users.TblProfiles WHERE UserId = a.ExpertID)
				when OtherOrg = 1 then (SELECT UniversityName FROM dbo.Tbl_CU_University where UniversityID = a.UniversityID)
			end as Expert,
           a.Des,
           CASE
               WHEN a.Attachment = '-1#' THEN
                   N''
               ELSE
                   a.Attachment
           END AS Attachment,
           CASE
			   WHEN ISNULL(SendResult, 0) = 1 and SendToTazarv != 1 THEN
				   'اعلام نتیجه به متقاضی'
				WHEN ISNULL(SendResult, 0) = 1 and SendToTazarv = 1 THEN
				   'ارسال به تذرو'						
               WHEN ISNULL(DesiredOffice, 0) = 1 THEN
                   'ارجاع به ادارات سازمان امور دانشجویان '
               WHEN ISNULL(OtherOrg, 0) = 1 THEN
                   'ارجاع به دانشگاه ها'
           END AS Res,
           (
               SELECT TOP 1
                   X.FinalResult
               FROM Tbl_Cu_SaoSupportFinalResult X
               WHERE X.FinalResultID = Result
           ) AS Result
    FROM dbo.Tbl_CU_QuestionRefer a       
    WHERE a.WFID = @WFID
	and WFID != -1;  
END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_Insert_tbl_cu_QuestionRefer]
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
    @WFID AS BIGINT,
    @GUID AS NVARCHAR(1000)
AS
BEGIN

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
        GUID,
        Des,
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
           1,
           @cmbExperUserID,
		   @cmbInstitute,  --update
		   @cmbUniversity,  
		   @SendToTazarv,
		   @UniversityUserID,
		   @IsUniRefUser--end
    SELECT GETDATE() AS Res;
END;


go


ALTER PROCEDURE [dbo].[Sp_Cu_Update_tbl_cu_QuestionRefer]
    @SendResult AS BIT,
    @DesiredOffice AS BIT,
    @OtherOrg AS BIT,
    @cmbResult AS INT,
    @cmbDesiredUnit AS INT,
    --@cmbDesiredOffice AS INT,  --update
    @cmbExperUserID AS INT,
    @Des AS NVARCHAR(1000),
    @Attachment AS NVARCHAR(1000),
    @GroupID AS BIGINT,
    @ReferId AS BIGINT,
    @UserId AS BIGINT,
    @WFID AS BIGINT,
    @GUID AS NVARCHAR(1000),
    @Id AS BIGINT,
	@UniversityID int,  --update
	@InstituteID int,  
	@SendToTazarv bit,
	@UniversityUserId int,
	@IsUniRefUser bit-- end
AS
BEGIN
    UPDATE Tbl_CU_QuestionRefer
    SET ReferId = @ReferId,
        OrganizationId = @cmbDesiredUnit,
        --OfficeId = @cmbDesiredOffice,  --update
        UserId = @UserId,
        RegisteredDate = dbo.MiladiToShamsi(GETDATE()),
        WFID = WFID,
        RegisteredTime = CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)),
        SendResult = @SendResult,
        DesiredOffice = @DesiredOffice,
        OtherOrg = @OtherOrg,
        Result = @SendResult,
        [GUID] = @GUID,
        [Des] = @Des,
        Attachment = @Attachment,
        GroupID = @GroupID,
        ExpertID = @cmbExperUserID,
		UniversityID = @UniversityID,  --update
		InstituteID = @InstituteID,
		SendToTazarv = @SendToTazarv,
		UniversityUserId = @UniversityUserId,
		IsUniRefUser = @IsUniRefUser --end
    WHERE Id = @Id;

    SELECT GETDATE() AS Res;
END;


go


ALTER PROCEDURE [dbo].[Sp_Insert_Tbl_CU_SaoSajadSupoort_Portal_New] 
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

        DECLARE @PkFrm31548ID bigint,
		        @PortalUserID AS BIGINT ,
				@RegDate nvarchar(10),
				@RegTime nvarchar(10),
				@MainSubjectID bigint,
				@Mobile bigint,
				@Email nvarchar(100),
				@ProblemType bigint,
				@Descript nvarchar(2000),
				@NationalCode nvarchar(10),
				@ApplierUserID bigint,
				@UserChosenFollowUpCode nvarchar(10)    --update
        
		  SELECT TOP 1
                @PkFrm31548ID = frm31548Id ,
                @PortalUserID = Col_5580294098464216683 ,
                @RegDate = Col_5659690905747023735 ,
                @RegTime = Col_4622391479516633008 ,
                @MainSubjectID = Col_5591268675506701146 ,
                @Mobile = Col_5195032388036176829 ,
                @Email = Col_5072203725658548127 ,
                @ProblemType = Col_4685558585417077630 ,
                @Descript = Col_5338322824532072097 ,
                @NationalCode = col_5143704890239982122,
				@UserChosenFollowUpCode = col_5744797132753413952    --update
               
        FROM    dbo.Tbl_frm31548
        WHERE   frm31548Id IN ( SELECT top 1  PKFormID
                                FROM    Task.TblFormInstance
                                WHERE   WorkflowInstanceId = @WFID
                                        AND FormID = 31548 )
        
		set @ApplierUserID=(select ExternalUserId from users.TblMemebrShips where UserId=@PortalUserID)

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
                  [Email] ,
                  ProblemType ,
                  [Descript] ,
                  [StatusID] ,
                  IsAutomat ,
                  RegisteredUserId ,
                  NationalCode,
				  PriorityID,
				  PkFrm31548ID,
				  UserChosenFollowUpCode     --update
                  
		        )
                values (@RegDate,
                        @RegTime ,
                        @ApplierUserID ,
                        @WFID ,
                        @WFID ,
                        @MainSubjectID ,
                        @Mobile ,
                        @Email ,
                        @ProblemType ,
                        @Descript ,
                        @StatusID ,
                        5 ,                     
                        ( SELECT TOP 1
                                    UserID
                          FROM      Task.TblWorkflowActivityInstance
                                    INNER JOIN Task.TblTask ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                          WHERE     ActivityID = 5566011793824984477
                                    AND WokflowInstanceID = @WFID
                          ORDER BY  TaskID DESC
                        ) ,
                        @NationalCode,
						5,
						@PkFrm31548ID,
						@UserChosenFollowUpCode --update
						)  
            end
			select top 1 id from Tbl_CU_QuestionAnswer where WFIDPortal=@WFID
			order by id desc
    END

go

ALTER PROCEDURE [dbo].[SP_CU_GetGroupOrUserName_QuestionRefer]
@WFID AS BIGINT
AS
    BEGIN

        SELECT TOP 1
                GroupID, UniversityUserID
				,IsUniRefUser  --update
        FROM    dbo.Tbl_CU_QuestionRefer
        WHERE   WFID = @WFID
        ORDER BY Id DESC


    END


