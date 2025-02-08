--دریافت تاییدیه تحصیلی
create PROCEDURE [dbo].[Sp_Cu_GetUniExpert_StudentGetCertificateCode_Support]-- 8231037
    @UniID AS int,
	@group int output
AS
BEGIN
    SET NOCOUNT ON;
      DECLARE @ExpertID AS BIGINT,
            @GroupID AS BIGINT;

    --DECLARE @UniID AS BIGINT = (
    --                                    SELECT TOP 1
    --                                        reqUniIDGetCC
    --                                    FROM Tbl_Cu_StudentGetCertificateCode_Log X
    --                                   WHERE X.WFID = @WFID
				--					   order by StudentGetCertificateCodeID desc
    --                                )
				--					print @UniID
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

---فرآیند لغو تعهد آموزش رايگان
create PROCEDURE [dbo].[Sp_Cu_Get_Group_ForUni_CommitmentCancellationGroup_Support]  ----------------------------------
    @UniID AS BIGINT,
	@group int output
AS
    BEGIN
        SET NOCOUNT ON;
        --DECLARE @UniID AS INT = ( SELECT TOP 1
        --                                    UniversityName
        --                          FROM      dbo.Tbl_Cu_CommitmentCancellationDetial_LOG
        --                          WHERE     WorkFlowInstanceID = @WFID
        --                                    AND ISNULL(UniversityName, 0) <> 0
        --                          ORDER BY  CommitmentCancellationDetID DESC
        --                        )

        PRINT @UniID
        IF @UniID NOT IN ( 170, 218, 226, 228, 232 )
            BEGIN
                DECLARE @GroupID AS BIGINT
                SET @GroupID = ISNULL(( SELECT TOP 1   
                                                CommitmentCancellationGroup
                                        FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                        WHERE   UniversityID = @UniID
                                      ), 680)
                SELECT  @GroupID AS GroupID
            END
        ELSE
            BEGIN

                SET @GroupID = ISNULL(( SELECT TOP 1  
                                                GroupID
                                        FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                        WHERE   UniversityID = @UniID
                                      ), 680)
                SELECT @GroupID AS GroupID
            END
       
    END
------------------فرصت تحقيقاتي دانشجويان دکتري

create PROCEDURE [dbo].[Sp_Cu_Select_Group_ForUn_Forsat_Support] --260631   ----------------------------------
    @PortalUserID AS BIGINT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @GroupID AS BIGINT,
            @GroupID_Financial AS BIGINT,
            @UniID AS INT,
            @UniKind AS INT;

    SET @UniKind =
    (
        SELECT TOP 1
            UniversityTypeID
        FROM dbo.Tbl_Cu_ApplierEducation
        WHERE UserPortalID = @PortalUserID
              AND EduGradeID IN ( 4, 5, 9 )
              AND EducationStatusID = 1
              AND InSideCountry = 1
              AND [UniversityTypeID] != 4
        ORDER BY ApplierEducationID DESC
    );
    PRINT @UniKind;
    PRINT @PortalUserID;
    IF @UniKind <> 2
    BEGIN
        SET @UniID =
        (
            SELECT TOP 1
                UniversityID
            FROM dbo.Tbl_Cu_ApplierEducation
            WHERE UserPortalID = @PortalUserID
                  AND EduGradeID IN ( 4, 5, 9 )
                  AND EducationStatusID = 1
                  AND InSideCountry = 1
                  AND [UniversityTypeID] != 4
            ORDER BY ApplierEducationID DESC
        );
        PRINT @UniID;
        SET @GroupID = ISNULL(
                       (
                           SELECT TOP 1
                               DoctoraResearchOppExpertGroupID
                           FROM dbo.Tbl_Cu_UniversityGroupDiploma
                           WHERE UniversityID = @UniID
                       ),
                       0
                             );
        SET @GroupID_Financial = ISNULL(
                                 (
                                     SELECT TOP 1
                                         DoctoraResearchOppExpertGroupID_Financial
                                     FROM dbo.Tbl_Cu_UniversityGroupDiploma
                                     WHERE UniversityID = @UniID
                                 ),
                                 0
                                       );

        PRINT @GroupID;
    END;


    ELSE
    BEGIN
	print 'پشتیبانی'
        SET @GroupID = 35481;
        SET @GroupID_Financial = 35481;

    END;
    IF NOT EXISTS
    (
        SELECT TOP 1
            GroupId
        FROM Users.TblUsersGroups
        WHERE GroupId = @GroupID
    )
        SELECT CAST(680 AS BIGINT) AS GroupID,
               CAST(680 AS BIGINT) AS GroupID_Financial;
    ELSE
        SELECT @GroupID AS GroupID,
               @GroupID_Financial AS GroupID_Financial;
END;


-----------------کميسيون موارد خاص دانشجويان داخل
Sp_Cu_Get_UniversityID_CommisionSpecialCasesInternalStudent


-----انتقال مهماني دانشجويان داخل نسخه نهايي
create PROCEDURE [dbo].[Sp_Cu_Get_UniversityID_TransmissionAndGuest]
@WFID AS BIGINT
AS
    BEGIN
        SET NOCOUNT ON;
        IF @WFID <= 1
            SELECT  CAST(680 AS BIGINT) AS 'UniversityOriginID' ,
                    CAST(680 AS BIGINT) 'DestinationUniversityID_1' ,
                    CAST(680 AS BIGINT) 'DestinationUniversityID_2' ,
                    CAST(0 AS BIT) AS 'NonDestination2'
        ELSE
            BEGIN	
                DECLARE @PortalLogID AS BIGINT= ISNULL(( SELECT
                                                              MAX(PortalLogID)
                                                         FROM dbo.Tbl_Cu_PortalReceiveLog
                                                         WHERE
                                                              WorkFlowInstanceID = @WFID
                                                              AND IsCancel = 0
                                                       ), 0)
                PRINT @PortalLogID

                DECLARE @UniversityOriginID AS INT ,
                    @DestinationUniversityID_1 AS INT ,
                    @DestinationUniversityID_2 AS INT ,
                    @DocShariyati1 AS INT ,
                    @DocShariyati2 AS INT 

                DECLARE @jSon AS NVARCHAR(MAX) = ''
                SET @jSon = dbo.FN_CU_GetJsonForPortalLogID(@PortalLogID)   
                IF @jSon = ''
                    RETURN

                PRINT @jSon


                CREATE TABLE #tb_GetUniIDTransmissionAndGuest ( Tazarv_ID INT )
                EXEC dbo.Sp_GenerateJsonTable '#tb_GetUniIDTransmissionAndGuest',
                    @jSon
                SELECT  @UniversityOriginID = ftiuniversityoforigin ,
                        @DestinationUniversityID_1 = ftiFirstNearestUniversity ,
                        @DestinationUniversityID_2 = ftiSecondNearestUniversity 
                        --@DocShariyati1 = ftiUniversityOne ,
                        --@DocShariyati2 = ftiUniversityTwo
                FROM    #tb_GetUniIDTransmissionAndGuest
				print @UniversityOriginID  
                 print   @DestinationUniversityID_1 
                 print   @DestinationUniversityID_2
				

                SELECT CASE WHEN @UniversityOriginID = 173 
				            THEN CAST(1048 AS BIGINT)
							WHEN @UniversityOriginID = 225 
				            THEN CAST(1062 AS BIGINT)
							ELSE   ISNULL(( SELECT TOP 1  TransmissionAndGuestGroupID
                                            FROM   dbo.Tbl_Cu_UniversityGroupDiploma
                                            WHERE  UniversityID = @UniversityOriginID 
                                          ), 680) 
							END AS UniversityOriginID ,---------------------------------------
                        CASE WHEN @DestinationUniversityID_1 = 173 
				             THEN CAST(1048 AS BIGINT)
							 WHEN @DestinationUniversityID_1 = 225 
				             THEN CAST(1062 AS BIGINT)
							 WHEN ISNULL(@DestinationUniversityID_1, 0) != 0
                             THEN isnull( ( SELECT TOP 1
                                            TransmissionAndGuestGroupID 
                                    FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                    WHERE   UniversityID = @DestinationUniversityID_1
                                  ),680 )
                             WHEN ISNULL(@DocShariyati1, 0) != 0
                             THEN isnull(( SELECT TOP 1
                                            TransmissionAndGuestGroupID 
                                    FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                    WHERE   UniversityID = @DocShariyati1
                                  ),680)
                             ELSE 680
                        END AS DestinationUniversityID_1 ,-----------------------------------------
                        CASE WHEN @DestinationUniversityID_2 = 173 
				             THEN CAST(1048 AS BIGINT)
							 WHEN @DestinationUniversityID_2 = 225 
				             THEN CAST(1062 AS BIGINT)
							 WHEN ISNULL(@DestinationUniversityID_2, 0) != 0
                             THEN isnull(( SELECT TOP 1
                                            TransmissionAndGuestGroupID 
                                    FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                    WHERE   UniversityID = @DestinationUniversityID_2
                                  ),680)
                             WHEN ISNULL(@DocShariyati2, 0) != 0
                             THEN isnull ( ( SELECT TOP 1
                                           TransmissionAndGuestGroupID 
                                    FROM    dbo.Tbl_Cu_UniversityGroupDiploma
                                    WHERE   UniversityID = @DocShariyati2
                                  ),680)
                             ELSE 680
                        END AS DestinationUniversityID_2 ,----------------------------------------------
                        CASE WHEN ISNULL(@DestinationUniversityID_2, 0) = 0
                                 -- AND ISNULL(@DocShariyati2, 0) = 0
                             THEN CAST(1 AS BIT)
                             ELSE CAST(0 AS BIT)
                        END AS NonDestination2
						
                DROP TABLE  #tb_GetUniIDTransmissionAndGuest
            END 
    END


---فرآيند کارنامه سلامت جسم دانشجويان
select  top 1 fphUniversityName
from [dbo].[Tbl_CU_HealthBodyAssessmentForEntranceStudents_LOG]
where wfid=@WorkflowInstanceId


----کارنامه سلامت روان دانشجويان
ALTER PROCEDURE [dbo].[Sp_Cu_GetUniversityID_MentalHealth]
    @WFID AS BIGINT ,
    @PortalLogID AS BIGINT
AS
    BEGIN
        SET NOCOUNT ON;
        IF ISNULL(@PortalLogID, 0) <= 1
            SELECT  0 AS UniversityID
        ELSE
            BEGIN	
                DECLARE @jSon AS NVARCHAR(MAX) = '';
                SET @jSon = dbo.FN_CU_GetJsonForPortalLogID(@PortalLogID);   
                IF @jSon = ''
                    RETURN;

                PRINT @jSon;
                CREATE TABLE #tb_MentalHealthUniversityID ( Tazarv_ID INT );
                EXEC dbo.Sp_GenerateJsonTable '#tb_MentalHealthUniversityID',
                    @jSon;
                SELECT  CAST(fmhUniversityName AS INT) AS UniversityID
                FROM    #tb_MentalHealthUniversityID
                DROP TABLE #tb_MentalHealthUniversityID
            END
    END 


---فرآيند دانشجويان سرآمد



