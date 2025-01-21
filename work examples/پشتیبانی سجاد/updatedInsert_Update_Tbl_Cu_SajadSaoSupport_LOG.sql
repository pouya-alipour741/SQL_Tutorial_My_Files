USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_SajadSaoSupport_LOG]    Script Date: 02/11/1403 11:45:06 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,bahreyni>
-- ALTER date: <1403/10/23> 
-- Description:	<Insert And Update Tbl_Cu_DiplomaForeignStudents_LOG>
-- =============================================
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
            @FirstRefer AS BIGINT,
			@Priority AS INT
			--,@SendResultInfo bit, --------------------------جدید
			--@OrganizationReferral bit, 
			--@UniversityReferral bit  	
			--,@Institude int
			--,@University int

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
                @FinalDesc = Col_5656188629762278570 ,
                @GUID = Col_5190992840719060449 ,
				@Priority = Col_5274322539269778963,
                @FirstRefer = ( SELECT top 1 b.UserID
                                FROM    Task.TblTask b
                                        INNER JOIN Task.TblWorkflowActivityInstance a ON a.WorkflowActivityInstanceID = b.WorkflowActivityInstaceID
                                WHERE   a.ActivityID = 5215090122552527259
                                        AND a.WokflowInstanceID = @WFID
                              )
				--,@SendResultInfo = col_5581934880622446261, -----------------------جدید	
				--@OrganizationReferral = col_5319920761961862933,
				--@UniversityReferral = Col_5139528391810745165   
				--,@Institude = col_5208403737968325202
				--,@University = col_5610076180504582867

        FROM    dbo.Tbl_frm21041
        WHERE   frm21041Id IN ( SELECT top 1  PKFormID
                                FROM    Task.TblFormInstance
                                WHERE   WorkflowInstanceId = @WFID
                                        AND FormID = 21041 )

         if   EXISTS(select top 1 1 from [dbo].[Tbl_Cu_SajadDoneTaskLog] where [WFID]=@WFID)   
		 begin
		 set @FinalDesc=(select top 1 [Descript] from [dbo].[Tbl_Cu_SajadDoneTaskLog] where [WFID]=@WFID)
		 update dbo.Tbl_frm21041
		 set Col_5656188629762278570=@FinalDesc
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
                          FirstReferID,
						  PriorityID
						  --,SendResultInfo,  ----------------------جدید
						  --ReferralToOrganization,
						  --ReferralToUni
						  --,Institude,
						  --University
						  
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
                          @FirstRefer,
						  @Priority
						  --,@SendResultInfo,   ----------------------جدید
						  --@OrganizationReferral,
						  --@UniversityReferral
						  --,@Institude,
						  --@University
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
                        FirstReferID = @FirstRefer,
						RegisteredUserId=@UserID,
						PriorityID=@Priority
						--,SendResultInfo = @SendResultInfo,  ----------------------جدید
						--ReferralToOrganization = @OrganizationReferral,
						--ReferralToUni = @UniversityReferral	
						--,Institude = @Institude,
						--University = @University
                WHERE   WFID = @WFID
            END		

    END

