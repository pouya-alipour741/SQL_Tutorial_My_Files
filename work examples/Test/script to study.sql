USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_GetApplicantInformationsInquiryOfDocuments]    Script Date: 12/9/2024 4:31:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec Sp_Cu_GetApplicantInformationsInquiryOfDocuments '2420046668',-1
-- exec Sp_Cu_GetApplicantInformationsInquiryOfDocuments @NationalCode=N'0682461407',@GradeID=N'-1'
--exec Sp_Cu_GetApplicantInformationsInquiryOfDocuments '1171159048 ',-1
--نام و نام خانوادگی، نام پدر، جنسیت، محل صدور شناسنامه، شماره شناسنامه،  تاریخ تولد، ملیت، مقطع، دانشگاه، رشته، شروع به تحصیل، نوع دوره، وضعیت تحصیلی، معدل، تاریخ پایان تحصیل، ترم ورود 
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_GetApplicantInformationsInquiryOfDocuments]
    @NationalCode AS NVARCHAR(10),
    @GradeID AS INT --,
--  @PersonCode AS NVARCHAR(50)
AS
BEGIN
    DECLARE @PersonCode AS NVARCHAR(50);
    SET @PersonCode = N'-1';
    IF @GradeID = -1
    BEGIN
        SET @GradeID = 1;
        WHILE (@GradeID <= 9)
        BEGIN
            PRINT @GradeID;
            DECLARE @Tbl AS TABLE
            (
                FirstName NVARCHAR(500),
                LastName NVARCHAR(500),
                FatherName NVARCHAR(500),
                Gender NVARCHAR(500),
                PlaceofIssuanceOfIdentityCard NVARCHAR(500), ---محل صدور شناسنامه
                SSNO NVARCHAR(500),
                Birthday NVARCHAR(500),
                Nationality NVARCHAR(500),
                Grade NVARCHAR(500),
                GradeID INT,
                UniversityCode INT,
                UniID NVARCHAR(500),
                field NVARCHAR(500),
                Orientaion NVARCHAR(500),
                NationalCode NVARCHAR(100),
                StartDate NVARCHAR(10),                      ---شروع به تحصیل
                CourseType NVARCHAR(50),                     ---نوع دوره
                EducationStatus NVARCHAR(500),               ----وضعیت تحصیلی
                Average NVARCHAR(500),                       --معدل
                EndDate NVARCHAR(100),                       ---تاریخ پایان تحصیل
                EntryYear NVARCHAR(100),                     ---ترم ورود
                ID INT,
                CertificateCode NVARCHAR(500),
                EducationStatusID INT,
                PersonCode NVARCHAR(50)
            );
            IF EXISTS
            (
                SELECT *
                FROM dbo.Tbl_Cu_InternalConfirmationEncyclopedia_LOG a
                    INNER JOIN dbo.Tbl_frm23 b
                        ON a.GUDID = b.Col_4681332402206326989
                WHERE Col_5152804083641078328 = @NationalCode
                      AND ISNULL(Col_5158779328045933769, '') <> ''
                      AND Col_5600732643984551485 = @GradeID
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT DISTINCT
                       Col_5600732643984551485,
                       (
                           SELECT TOP 1
                                  EducationFieldStudyID
                           FROM Tbl_Cu_EducationFieldStudy
                           WHERE EducationFieldStudyCode = Col_5660757382776469641
                                 AND EducationGradeID = Col_5600732643984551485
                       ),
                       Col_4948122936551706068,
                       ISNULL(Col_5338836346070025786, ''),
                       ISNULL(Col_4831715151043286283, ''),
                       ISNULL(Col_4810906559406540471, ''),
                       ISNULL(Col_4661030197821547466, ''),
                       ISNULL(Col_5613596289241947061, ''),
                       Col_5152804083641078328,
                       (
                           SELECT TOP 1
                                  [UniversityID]
                           FROM [dbo].[Tbl_CU_University]
                           WHERE [UniversityCode] =
                           (
                               SELECT SUBSTRING(UserName, CHARINDEX('_', UserName) + 1, 4)
                               FROM Users.TblUsers
                               WHERE UserId = Col_4777210068120831000
                           )
                       ),
                       1,
                       Col_5158779328045933769,
                                       --(SUBSTRING(Col_5293815495206963253, CHARINDEX('_', Col_5293815495206963253) + 1, 4)),
                       (
                           SELECT SUBSTRING(UserName, CHARINDEX('_', UserName) + 1, 4)
                           FROM Users.TblUsers
                           WHERE UserId = Col_4777210068120831000
                       ),
                       Col_5600732643984551485,
                       (
                           SELECT GenderTitle
                           FROM dbo.Tbl_Cu_Gender
                           WHERE GenderID = Col_5006525967994456880
                       ),
                       (
                           SELECT NationalityName
                           FROM dbo.Tbl_Cu_Nationality
                           WHERE NationalityID = Col_4841677831042539435
                       ),
                       Col_5056483329857536516,
                       '',             ---شروع به تحصیل
                       (
                           SELECT TOP 1
                                  EducationPeriodTypeName
                           FROM Tbl_Cu_EducationPeriodType
                           WHERE EducationPeriodTypeID = Col_4774107317479172287
                       ),
                       'فارغ التحصيل', ---وضعیت تحصیلی
                       Col_4754184727579585534,
                       Col_5674680098356104667,
                       Col_5487422693913142547,
                       6,
                       ''
                FROM dbo.Tbl_Cu_InternalConfirmationEncyclopedia_LOG a
                    INNER JOIN dbo.Tbl_frm23 b
                        ON a.GUDID = b.Col_4681332402206326989
                WHERE Col_5152804083641078328 = @NationalCode
                      AND ISNULL(Col_5158779328045933769, '') <> ''
                      AND Col_5600732643984551485 = @GradeID;
            END;
            -- select * from  @Tbl
            --------------------------------------------------------------------------------------------------------------------
            --  select * from  @Tbl
            IF EXISTS
            (
                SELECT *
                FROM Tbl_CU_InquiryEducation_LOG
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND EducationDegree = @GradeID
                      AND EducationDegree NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducation_LOG.UniversityCode=tb.UniversityCode AND tb.StartDate=Tbl_CU_InquiryEducation_LOG.EducationStartDate
                          )
						  --AND UniversityCode NOT IN
        --                  (
        --                      SELECT UniversityCode FROM @Tbl WHERE GradeID = @GradeID
        --                  )
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT
                    (
                        SELECT EducationGradeTitle
                        FROM dbo.Tbl_Cu_EducationGrade
                        WHERE EducationGradeID = EducationDegree
                    ),
                    FieldStudy,
                    Orientation,
                    [Name],
                    LastName,
                    FatherName,
                    SSID,
                    '',
                    NationalCode,
                    UniversityID,
                    2,
                    CertificateCode,
                    (
                        SELECT UniversityCode
                        FROM Tbl_CU_University U
                        WHERE U.UniversityID = Tbl_CU_InquiryEducation_LOG.UniversityID
                    ),
                    EducationDegree,
                     (
                       SELECT GenderTitle
                       FROM dbo.Tbl_Cu_Gender
                       WHERE GenderID = Tbl_CU_InquiryEducation_LOG.Gender
                   ),
                    'ایرانی',
                    BirthDate,
                    EducationStartDate,
                     (
                   SELECT TOP 1
                          EducationPeriodTypeName
                   FROM Tbl_Cu_EducationPeriodType
                   WHERE EducationPeriodTypeID = Tbl_CU_InquiryEducation_LOG.PeriodType
               ),
                    (select StudentStatusTitle from dbo.Tbl_Cu_StudentStatus WHERE StudentStatusID=EducationalStatus),
                    Avrage,
                    EducationEndDate,
                    Enteryear,
                    EducationalStatus,
                    ''
                FROM Tbl_CU_InquiryEducation_LOG
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND EducationDegree = @GradeID
                      AND EducationDegree NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducation_LOG.UniversityCode=tb.UniversityCode AND tb.StartDate=Tbl_CU_InquiryEducation_LOG.EducationStartDate
                          );
            END;
            ------------------------------------------------------------------------------------------------
            IF EXISTS
            (
                SELECT *
                FROM Tbl_Cu_MehrSystem_Log
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND GradeID = @GradeID
                      AND GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl
                          )
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT
                    (
                        SELECT TOP 1
                               X.EducationGradeTitle
                        FROM dbo.Tbl_Cu_EducationGrade X
                        WHERE X.EducationGradeID = GradeID
                    ),
                    SetValue,
                    NULL,
                    FirstName,
                    LastName,
                    NULL,
                    NULL,
                    NULL,
                    NationalCode,
                    InstituteOfDegree,
                    3,
                    CertificateCode,
                    ISNULL(ForeignUniversityID,0),
                    GradeID,
                    NULL,
                    'ایرانی',
                    BirthDate,
                    NULL,
                    NULL,
                    'فارغ التحصيل',
                    NULL,
                    NULL,
                    NULL,
                    6,
                    NULL
                FROM dbo.Tbl_Cu_MehrSystem_Log a
                WHERE a.NationalCode = @NationalCode
                      AND a.GradeID = @GradeID
                      AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl
                          );
            END;
			   --  select * from  @Tbl
            ---------------------------------------------------------------------------------------------------------------------
            IF EXISTS
            (
                SELECT *
                FROM Tbl_CU_RequestVerificationDocuments_LOG a
                    INNER JOIN Tbl_CU_CertificateCodeForAllUser b
                        ON a.WFID = b.WFID
                    INNER JOIN Tbl_CU_AttachmentVerificationDocuments_LOG c
                        ON a.WFID = c.WFID
                WHERE b.NationalCode = @NationalCode
                      AND c.RequestID IN ( 1, 6 )
                      AND a.GradeID = @GradeID
                      AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE  (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = a.UniversityID
                       )=tb.UniversityCode AND tb.StartDate=a.SchoolStartDate
                          )
            --And (
            --                     SELECT TOP 1
            --                            UniversityCode
            --                     FROM Tbl_CU_University U
            --                     WHERE U.UniversityID = a.UniversityID
            --                 ) NOt in(SELECT UniversityCode FROM @Tbl where GradeID=@GradeID)  
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT DISTINCT
                       a.GradeID,
                       a.FieldOfStudyID,
                       a.OrientationID,
                       (
                           SELECT TOP 1
                                  ISNULL(Name, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(LastName, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(FatherName, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(SSNO, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       '',
                       (
                           SELECT TOP 1
                                  NationalCode
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       a.UniversityID,
                       4,
                       c.CertificateCode,
                       (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = a.UniversityID
                       ),
                       a.GradeID,
                       (
                           SELECT TOP 1
                                  (
                                      SELECT TOP 1
                                             g.GenderTitle
                                      FROM dbo.Tbl_Cu_Gender g
                                      WHERE g.GenderID = ISNULL([dbo].[Tbl_Cu_ApplierProfile].GenderID, '')
                                  )
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  CASE
                                      WHEN IsIranianNationality = 1 THEN
                                          'ایرانی'
                                      ELSE
                                  (
                                      SELECT TOP 1
                                             Na.NationalityName
                                      FROM dbo.Tbl_Cu_Nationality Na
                                      WHERE Na.NationalityID = ISNULL(dbo.Tbl_Cu_ApplierProfile.CountryID, '')
                                  )
                                  END
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ShamsiBirthday
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       a.SchoolStartDate,
                       (
                           SELECT TOP 1
                                  EducationPeriodTypeDocName
                           FROM [dbo].[Tbl_Cu_Base_EducationPeriodTypeDoc]
                           WHERE EducationPeriodTypeDocID = [PeriodID]
                       ),
                       'فارغ التحصيل',
                       (
                           SELECT TOP 1
                                  EduAvarageFrom
                           FROM Tbl_Cu_ApplierEducation
                           WHERE UserPortalID = a.PortalUserID
                                 AND EduGradeID = @GradeID
                           ORDER BY ApplierEducationID DESC
                       ),
                       a.SchoolEndDate,
                       '',
                       6,
                       ''
                FROM Tbl_CU_RequestVerificationDocuments_LOG a
                    INNER JOIN Tbl_CU_AttachmentVerificationDocuments_LOG c
                        ON a.WFID = c.WFID
                WHERE
                (
                    SELECT TOP 1
                           NationalCode
                    FROM [dbo].[Tbl_Cu_ApplierProfile]
                    WHERE a.PortalUserID = UserPortalID
                    ORDER BY ApplierProfileID DESC
                )   = @NationalCode
                AND c.RequestID IN ( 1, 6 )
                AND a.GradeID = @GradeID
                AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE  (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = a.UniversityID
                       )=tb.UniversityCode AND tb.StartDate=a.SchoolStartDate
                          );
            --And   (
            --                      SELECT TOP 1
            --                             UniversityCode
            --                      FROM Tbl_CU_University U
            --                      WHERE U.UniversityID = a.UniversityID
            --                  ) NOt in(SELECT UniversityCode FROM @Tbl where GradeID=@GradeID)  
            END;
            ---------------------------------------------------------------------------------------------------------------------------------------
              -- select * from  @Tbl
            DECLARE @NewGradeID AS INT;
            SET @NewGradeID =
            (
                SELECT CASE
                           WHEN @GradeID IN ( 1, 6 ) THEN
                               1
                           WHEN @GradeID IN ( 2, 7 ) THEN
                               2
                           WHEN @GradeID IN ( 3, 8 ) THEN
                               3
                           WHEN @GradeID IN ( 4, 5, 9 ) THEN
                               4
                       END
            );
            IF EXISTS
            (
                SELECT *
                FROM Tbl_Cu_Certification_Arzeshnameh_LOG a
                    INNER JOIN [dbo].[Tbl_Cu_CheckCommision_LOG] b
                        ON a.WFID = b.WFID
                WHERE
                (
                    SELECT TOP 1
                           NationalCode
                    FROM [dbo].[Tbl_Cu_ApplierProfile]
                    WHERE b.PortalUserID = UserPortalID
                    ORDER BY ApplierProfileID DESC
                )   = @NationalCode
                AND b.GradeID NOT IN
                    (
                        SELECT
                            (
                                SELECT TOP 1
                                       Commision_GradeID
                                FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                                WHERE BaseGradeID = GradeID
                            )
                        FROM @Tbl tb 
                    )
                AND b.GradeID IN
                    (
                        SELECT TOP 1
                               Commision_GradeID
                        FROM [dbo].Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                        WHERE BaseGradeID = @NewGradeID
                    )
                AND ISNULL(CertificateCodeGovahi, '') != ''
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT DISTINCT
                       b.GradeID,
                       CASE
                           WHEN ISNULL(FieldOfStudyID, 0) > 0
                                AND b.WFID > 1734312 THEN
                           (
                               SELECT TOP 1
                                      EducName
                               FROM dbo.Tbl_Cu_EducationFieldOfStudyTitle
                               WHERE FieldTitleID IN ( b.FieldOfStudyID )
                           )
                           WHEN ISNULL(FieldOfStudyID, 0) > 0
                                AND b.WFID <= 1734312 THEN
                           (
                               SELECT TOP 1
                                      EducationFieldStudyTitle
                               FROM dbo.Tbl_Cu_EducationFieldStudy
                               WHERE Tbl_Cu_EducationFieldStudy.EducationFieldStudyID IN ( FieldOfStudyID )
                           )
                           ELSE
                               OtherFieldStudy
                       END,
                       CASE
                           WHEN ISNULL(OrientationID, 0) > 0 THEN
                           (
                               SELECT TOP 1
                                      CASE
                                          WHEN OrientationTitle = 'گرايش ندارد' THEN
                                              ''
                                          ELSE
                                              '(' + OrientationTitle + ')'
                                      END
                               FROM dbo.Tbl_Cu_Orientation
                               WHERE Tbl_Cu_Orientation.OrientationID IN ( OrientationID )
                           )
                           ELSE
                               OtherOrientation
                       END,
                       (
                           SELECT TOP 1
                                  ISNULL(Name, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE b.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(LastName, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE b.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(FatherName, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE b.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ISNULL(SSNO, '')
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE b.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       '',
                       (
                           SELECT TOP 1
                                  NationalCode
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE b.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  CASE
                                      WHEN txtNewUniName IS NULL
                                           OR txtNewUniName = '' THEN
                                          UniversityFarsi
                                      ELSE
                                          txtNewUniName
                                  END
                           FROM Tbl_Cu_EvaluationQualifications_LOG
                           WHERE Tbl_Cu_EvaluationQualifications_LOG.WFID = a.WFID
                                 AND EvaluationQualificationsID IN
                                     (
                                         SELECT MAX(EvaluationQualificationsID)
                                         FROM dbo.Tbl_Cu_EvaluationQualifications_LOG
                                         WHERE Tbl_Cu_EvaluationQualifications_LOG.WFID = a.WFID
                                     )
                       ),
                       5,
                       CertificateCodeGovahi,
                       '',
                       (
                           SELECT TOP 1
                                  BaseGradeID
                           FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                           WHERE Commision_GradeID = GradeID
                       ),
                       (
                           SELECT TOP 1
                                  (
                                      SELECT TOP 1
                                             g.GenderTitle
                                      FROM dbo.Tbl_Cu_Gender g
                                      WHERE g.GenderID = ISNULL([dbo].[Tbl_Cu_ApplierProfile].GenderID, '')
                                  )
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  CASE
                                      WHEN IsIranianNationality = 1 THEN
                                          'ایرانی'
                                      ELSE
                                  (
                                      SELECT TOP 1
                                             Na.NationalityName
                                      FROM dbo.Tbl_Cu_Nationality Na
                                      WHERE Na.NationalityID = ISNULL(dbo.Tbl_Cu_ApplierProfile.CountryID, '')
                                  )
                                  END
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  ShamsiBirthday
                           FROM [dbo].[Tbl_Cu_ApplierProfile]
                           WHERE a.PortalUserID = UserPortalID
                           ORDER BY ApplierProfileID DESC
                       ),
                       (
                           SELECT TOP 1
                                  StartEducationShamsiDate
                           FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                           WHERE EV.WFID = b.WFID
                           ORDER BY EvaluationQualificationsID DESC
                       ),
                       '',
                       'فارغ التحصيل',
                       (
                           SELECT TOP 1
                                  GPA
                           FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                           WHERE EV.WFID = b.WFID
                           ORDER BY EvaluationQualificationsID DESC
                       ),
                       (
                           SELECT TOP 1
                                  GraduationShamsiDate
                           FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                           WHERE EV.WFID = b.WFID
                           ORDER BY EvaluationQualificationsID DESC
                       ),
                       '',
                       6,
                       ''
                FROM Tbl_Cu_Certification_Arzeshnameh_LOG a
                    INNER JOIN [dbo].[Tbl_Cu_CheckCommision_LOG] b
                        ON a.WFID = b.WFID
                WHERE
                (
                    SELECT TOP 1
                           NationalCode
                    FROM [dbo].[Tbl_Cu_ApplierProfile]
                    WHERE b.PortalUserID = UserPortalID
                    ORDER BY ApplierProfileID DESC
                )   = @NationalCode
                AND ISNULL(CertificateCodeGovahi, '') != ''
                AND b.GradeID NOT IN
                    (
                        SELECT
                            (
                                SELECT TOP 1
                                       Commision_GradeID
                                FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                                WHERE BaseGradeID = GradeID
                            )
                        FROM @Tbl
                    )
                AND b.GradeID IN
                    (
                        SELECT TOP 1
                               Commision_GradeID
                        FROM [dbo].Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                        WHERE BaseGradeID = @NewGradeID
                    );
            END;
            -----------------------------------------------------------------------------------------------------------------------------

            --	select * from  @Tbl
            IF EXISTS
            (
                SELECT *
                FROM Tbl_CU_InquiryEducationCertificate_LOG
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND EducationGrade = @GradeID
                      AND EducationGrade NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducationCertificate_LOG.UniversityID=tb.UniID AND tb.StartDate=Tbl_CU_InquiryEducationCertificate_LOG.EducationStartDate
                          )
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT EducationGrade,
                       FieldStudy,
                       Orientation,
                       [Name],
                       '',
                       FatherName,
                       SSID,
                       '',
                       NationalCode,
                       UniversityID,
                       6,
                       CertificateCode,
                       (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = Tbl_CU_InquiryEducationCertificate_LOG.UniversityID
                       ),
                       EducationGrade,
                       '',
                       'ایرانی',
                       BirthDate,
                       EducationStartDate,
                       '',
                       'فارغ التحصيل ',
                       '',
                       '',
                       '',
                       6,
                       ''
                FROM Tbl_CU_InquiryEducationCertificate_LOG
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND EducationGrade = @GradeID
                      AND EducationGrade NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducationCertificate_LOG.UniversityID=tb.UniID AND tb.StartDate=Tbl_CU_InquiryEducationCertificate_LOG.EducationStartDate
                          );
            END;
            ---------------------------------------------------------------------------------------------------
            --select * from  @Tbl
            IF EXISTS
            (
                SELECT *
                FROM Tbl_CU_Base_MinistryofScience
                WHERE NationalCode = @NationalCode
                      AND MsrtstudyLevelCode IN
                          (
                              SELECT [MsrtGradeID]
                              FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                              WHERE EducationGradeID = @GradeID
                          )
                      AND [UniversityId] NOT IN
                          (
                              SELECT UniversityCode FROM @Tbl tb WHERE tb.GradeID = @GradeID AND tb.StartDate=Tbl_CU_Base_MinistryofScience.StartDate
                          )
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT
                    (
                        SELECT TOP 1
                               MsrtEducationGradeTitle
                        FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                        WHERE MsrtstudyLevelCode = [MsrtGradeID]
                    ) studyLevelTitle,
                    CourseTitle,
                    '',
                    FirstName,
                    LastName,
                    FatherName,
                    IdentificationNumber,
                    IdentificationIssuedPlace,
                    NationalCode,
                    University,
                    7,
                    '',
                    [UniversityId],
                    (
                        SELECT TOP 1
                               [EducationGradeID]
                        FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                        WHERE MsrtstudyLevelCode = [MsrtGradeID]
                    ),
                    Gender,
                    Country,
                    BrithDate,
                    StartDate,
                    StudyingMode,
                    MsrtStudentStatus,
                    TotalAverage,
                    stopDate,
                    EnteranceTerm,
                    CASE
                        WHEN MsrtStudentStatusCode = 800000 THEN
                            1
                        WHEN MsrtStudentStatusCode IN ( 810005, 810003 ) THEN
                            4
                        WHEN MsrtStudentStatusCode IN ( 810007, 810001 ) THEN
                            6
                        WHEN MsrtStudentStatusCode = 810002 THEN
                            5
                        ELSE
                            ''
                    END,
                    PersonCode
                FROM Tbl_CU_Base_MinistryofScience
                WHERE NationalCode = @NationalCode
                      AND ISNULL(MsrtstudyLevelCode, '') != ''
                      AND MsrtstudyLevelCode IN
                          (
                              SELECT TOP 1
                                     [MsrtGradeID]
                              FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                              WHERE EducationGradeID = @GradeID
                          )
                      --   AND MsrtStudentStatusCode not in( 810005,810003)
                      AND [UniversityId] NOT IN
                          (
                              SELECT UniversityCode FROM @Tbl tb WHERE tb.GradeID = @GradeID AND tb.StartDate=Tbl_CU_Base_MinistryofScience.StartDate
                          )
                ORDER BY [MinistryofScienceID] DESC;
               --select * from  @Tbl
            END;
            ----------------------------------------------------------------------------------------------------------------------------------
            SET @GradeID = @GradeID + 1;


        END;
        -- select * from  @Tbl
        SELECT FirstName,
               LastName,
               FatherName,
               SSNO,
               PlaceofIssuanceOfIdentityCard,
               NationalCode,
               CASE
                   WHEN ID = 5 THEN
                   (
                       SELECT TOP 1
                              Commision_GradeName
                       FROM dbo.Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                       WHERE Commision_GradeID = GradeID
                   )
                   WHEN ID NOT IN ( 5, 7 ) THEN
                   (
                       SELECT TOP 1
                              EducationGradeTitle
                       FROM Tbl_Cu_EducationGrade
                       WHERE GradeID = EducationGradeID
                   )
                   ELSE
                       Grade
               END EducationGradeTitle,
               GradeID,
               CASE
                   --WHEN ID = 5 THEN
                   --    field
                   WHEN ID NOT IN (  5, 7 ,3 ) THEN
                   (
                       SELECT TOP 1
                              EducationFieldStudyTitle
                       FROM Tbl_Cu_EducationFieldStudy
                       WHERE EducationFieldStudyID = field
                   )
                   ELSE
                       field
               END EducationFieldStudyTitle,
               CASE
                   --WHEN ID = 5 THEN
                   --    Orientaion
                   WHEN ID NOT IN (  5, 7 ,3 ) THEN
                   (
                       SELECT TOP 1
                              OrientationTitle
                       FROM Tbl_Cu_Orientation
                       WHERE Orientaion = OrientationID
                   )
                   ELSE
                       Orientaion
               END OrientationTitle,
               CASE
                   WHEN ID NOT IN ( 5, 7 ,3) THEN
                   (
                       SELECT TOP 1
                              [UniversityName]
                       FROM [dbo].[Tbl_CU_University]
                       WHERE [UniversityID] = UniID
                   )
                   ELSE
                       UniID
               END University,
               UniversityCode,
               CertificateCode,
               CASE
                   WHEN ID = 1 THEN
                       'تایید دانشنامه'
                   WHEN ID = 2 THEN
                       'استعلام سوابق تحصیلی'
                   WHEN ID = 3 THEN
                       'فرآیند ویرایش اطلاعات مهر اداره دانش آموختگان'
                   WHEN ID = 4 THEN
                       'تایید مدارک جهت ترجمه'
                   WHEN ID = 5 THEN
                       'ارزشیابی'
                   WHEN ID = 6 THEN
                       'تایید مدارک جهت انتخابات'
                   WHEN ID = 7 THEN
                       'وزارت علوم'
                   ELSE
                       ' '
               END AS InquirySource,
               CAST(0 AS BIT) StartInquiryWF,
               Gender,
               Nationality,
               Birthday,
               StartDate,
               CourseType,
               EducationStatus,
               Average,
               EndDate,
               EntryYear,
               CASE
                   WHEN EducationStatusID = 810001 THEN
                       6
                   WHEN EducationStatusID = 800000 THEN
                       1
                   WHEN EducationStatusID = 810005 THEN
                       4
                   WHEN EducationStatusID = 810002 THEN
                       5
                   WHEN EducationStatusID = 810007 THEN
                       6
                   ELSE
                       EducationStatusID
               END EducationStatusID,
               PersonCode
        FROM @Tbl
     --   WHERE (LEN(CAST(UniversityCode AS NVARCHAR(50))) <= 10); 
		
		--or ( len(CAST(UniversityCode AS NVARCHAR(50)))=4 and SUBSTRING(CAST(UniversityCode AS NVARCHAR(50)), 1, 1) NOT IN ( 4 ) ))

    --AND (@PersonCode  in('','-1') OR PersonCode=@PersonCode);
    END;
    ELSE
    BEGIN
        IF EXISTS
        (
            SELECT *
            FROM dbo.Tbl_Cu_InternalConfirmationEncyclopedia_LOG a
                INNER JOIN dbo.Tbl_frm23 b
                    ON a.GUDID = b.Col_4681332402206326989
            WHERE Col_5152804083641078328 = @NationalCode
                  AND ISNULL(Col_5158779328045933769, '') <> ''
                  AND Col_5600732643984551485 = @GradeID
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT DISTINCT
                   Col_5600732643984551485,
                   (
                       SELECT TOP 1
                              EducationFieldStudyID
                       FROM Tbl_Cu_EducationFieldStudy
                       WHERE EducationFieldStudyCode = Col_5660757382776469641
                             AND EducationGradeID = Col_5600732643984551485
                   ),
                   Col_4948122936551706068,
                   ISNULL(Col_5338836346070025786, ''),
                   ISNULL(Col_4831715151043286283, ''),
                   ISNULL(Col_4810906559406540471, ''),
                   ISNULL(Col_4661030197821547466, ''),
                   ISNULL(Col_5613596289241947061, ''),
                   Col_5152804083641078328,
                   (
                       SELECT TOP 1
                              [UniversityID]
                       FROM [dbo].[Tbl_CU_University]
                       WHERE [UniversityCode] =
                       (
                           SELECT SUBSTRING(UserName, CHARINDEX('_', UserName) + 1, 4)
                           FROM Users.TblUsers
                           WHERE UserId = Col_4777210068120831000
                       )
                   ),
                   1,
                   Col_5158779328045933769,
                                   --(SUBSTRING(Col_5293815495206963253, CHARINDEX('_', Col_5293815495206963253) + 1, 4)),
                   (
                       SELECT SUBSTRING(UserName, CHARINDEX('_', UserName) + 1, 4)
                       FROM Users.TblUsers
                       WHERE UserId = Col_4777210068120831000
                   ),
                   Col_5600732643984551485,
                   (
                       SELECT GenderTitle
                       FROM dbo.Tbl_Cu_Gender
                       WHERE GenderID = Col_5006525967994456880
                   ),
                   (
                       SELECT NationalityName
                       FROM dbo.Tbl_Cu_Nationality
                       WHERE NationalityID = Col_4841677831042539435
                   ),
                   Col_5056483329857536516,
                   '',             ---شروع به تحصیل
                   (
                       SELECT TOP 1
                              EducationPeriodTypeName
                       FROM Tbl_Cu_EducationPeriodType
                       WHERE EducationPeriodTypeID = Col_4774107317479172287
                   ),
                   'فارغ التحصيل', ---وضعیت تحصیلی
                   Col_4754184727579585534,
                   Col_5674680098356104667,
                   Col_5487422693913142547,
                   6,
                   ''
            FROM dbo.Tbl_Cu_InternalConfirmationEncyclopedia_LOG a
                INNER JOIN dbo.Tbl_frm23 b
                    ON a.GUDID = b.Col_4681332402206326989
            WHERE Col_5152804083641078328 = @NationalCode
                  AND ISNULL(Col_5158779328045933769, '') <> ''
                  AND Col_5600732643984551485 = @GradeID;
        END;
        -- select * from  @Tbl
        --------------------------------------------------------------------------------------------------------------------
        -- select * from  @Tbl
        IF EXISTS
        (
            SELECT *
            FROM Tbl_CU_InquiryEducation_LOG
            WHERE ISNULL(CertificateCode, '') <> ''
                  AND NationalCode = @NationalCode
                  AND EducationDegree = @GradeID
                  AND EducationDegree NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducation_LOG.UniversityCode=tb.UniversityCode AND tb.StartDate=Tbl_CU_InquiryEducation_LOG.EducationStartDate
                          )
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT EducationDegree,
                   FieldStudy,
                   Orientation,
                   [Name],
                   LastName,
                   FatherName,
                   SSID,
                   '',
                   NationalCode,
                   UniversityID,
                   2,
                   CertificateCode,
                   (
                       SELECT UniversityCode
                       FROM Tbl_CU_University U
                       WHERE U.UniversityID = Tbl_CU_InquiryEducation_LOG.UniversityID
                   ),
                   EducationDegree,
                    (
                       SELECT GenderTitle
                       FROM dbo.Tbl_Cu_Gender
                       WHERE GenderID = Tbl_CU_InquiryEducation_LOG.Gender
                   ),
                   'ایرانی',
                   BirthDate,
                   EducationStartDate,
                    (
                   SELECT TOP 1
                          EducationPeriodTypeName
                   FROM Tbl_Cu_EducationPeriodType
                   WHERE EducationPeriodTypeID = Tbl_CU_InquiryEducation_LOG.PeriodType
               ),
                   (select StudentStatusTitle from dbo.Tbl_Cu_StudentStatus WHERE StudentStatusID=EducationalStatus),
                   Avrage,
                   EducationEndDate,
                   Enteryear,
                   EducationalStatus,
                   ''
            FROM Tbl_CU_InquiryEducation_LOG
            WHERE ISNULL(CertificateCode, '') <> ''
                  AND NationalCode = @NationalCode
                  AND EducationDegree = @GradeID
                  AND EducationDegree NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducation_LOG.UniversityCode=tb.UniversityCode AND tb.StartDate=Tbl_CU_InquiryEducation_LOG.EducationStartDate
                          );
        END;
        --select * from  @Tbl
                   ------------------------------------------------------------------------------------------------
            IF EXISTS
            (
                SELECT *
                FROM Tbl_Cu_MehrSystem_Log
                WHERE ISNULL(CertificateCode, '') <> ''
                      AND NationalCode = @NationalCode
                      AND GradeID = @GradeID
                      AND GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl
                          )
            )
            BEGIN
                INSERT INTO @Tbl
                (
                    Grade,
                    field,
                    Orientaion,
                    FirstName,
                    LastName,
                    FatherName,
                    SSNO,
                    PlaceofIssuanceOfIdentityCard,
                    NationalCode,
                    UniID,
                    ID,
                    CertificateCode,
                    UniversityCode,
                    GradeID,
                    Gender,
                    Nationality,
                    Birthday,
                    StartDate,
                    CourseType,
                    EducationStatus,
                    Average,
                    EndDate,
                    EntryYear,
                    EducationStatusID,
                    PersonCode
                )
                SELECT
                    (
                        SELECT TOP 1
                               X.EducationGradeTitle
                        FROM dbo.Tbl_Cu_EducationGrade X
                        WHERE X.EducationGradeID = GradeID
                    ),
                    SetValue,
                    NULL,
                    FirstName,
                    LastName,
                    NULL,
                    NULL,
                    NULL,
                    NationalCode,
                    InstituteOfDegree,
                    3,
                    CertificateCode,
                    ISNULL(ForeignUniversityID,0),
                    GradeID,
                    NULL,
                    'ایرانی',
                    BirthDate,
                    NULL,
                    NULL,
                    'فارغ التحصيل',
                    NULL,
                    NULL,
                    NULL,
                    6,
                    NULL
                FROM dbo.Tbl_Cu_MehrSystem_Log a
                WHERE a.NationalCode = @NationalCode
                      AND a.GradeID = @GradeID
                      AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl
                          );
            END;
			   --  select * from  @Tbl
            ---------------------------------------------------------------------------------------------------------------------
        IF EXISTS
        (
            SELECT *
            FROM Tbl_CU_RequestVerificationDocuments_LOG a
                INNER JOIN Tbl_CU_CertificateCodeForAllUser b
                    ON a.WFID = b.WFID
                INNER JOIN Tbl_CU_AttachmentVerificationDocuments_LOG c
                    ON a.WFID = c.WFID
            WHERE b.NationalCode = @NationalCode
                  AND c.RequestID IN ( 1, 6 )
                  AND a.GradeID = @GradeID
                  AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE  (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = a.UniversityID
                       )=tb.UniversityCode AND tb.StartDate=a.SchoolStartDate
                          )
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT DISTINCT
                   a.GradeID,
                   a.FieldOfStudyID,
                   a.OrientationID,
                   (
                       SELECT TOP 1
                              ISNULL(Name, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(LastName, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(FatherName, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(SSNO, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   '',
                   (
                       SELECT TOP 1
                              NationalCode
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   a.UniversityID,
                   4,
                   c.CertificateCode,
                   (
                       SELECT UniversityCode
                       FROM Tbl_CU_University U
                       WHERE U.UniversityID = a.UniversityID
                   ),
                   a.GradeID,
                   (
                       SELECT TOP 1
                              (
                                  SELECT TOP 1
                                         g.GenderTitle
                                  FROM dbo.Tbl_Cu_Gender g
                                  WHERE g.GenderID = ISNULL([dbo].[Tbl_Cu_ApplierProfile].GenderID, '')
                              )
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              CASE
                                  WHEN IsIranianNationality = 1 THEN
                                      'ایرانی'
                                  ELSE
                              (
                                  SELECT TOP 1
                                         Na.NationalityName
                                  FROM dbo.Tbl_Cu_Nationality Na
                                  WHERE Na.NationalityID = ISNULL(dbo.Tbl_Cu_ApplierProfile.CountryID, '')
                              )
                              END
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ShamsiBirthday
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   a.SchoolStartDate,
                   (
                       SELECT TOP 1
                              EducationPeriodTypeDocName
                       FROM [dbo].[Tbl_Cu_Base_EducationPeriodTypeDoc]
                       WHERE EducationPeriodTypeDocID = [PeriodID]
                   ),
                   'فارغ التحصيل ',
                   (
                       SELECT TOP 1
                              EduAvarageFrom
                       FROM Tbl_Cu_ApplierEducation
                       WHERE UserPortalID = a.PortalUserID
                             AND EduGradeID = @GradeID
                       ORDER BY ApplierEducationID DESC
                   ),
                   a.SchoolEndDate,
                   '',
                   6,
                   ''
            FROM Tbl_CU_RequestVerificationDocuments_LOG a
                INNER JOIN Tbl_CU_AttachmentVerificationDocuments_LOG c
                    ON a.WFID = c.WFID
            WHERE
            (
                SELECT TOP 1
                       NationalCode
                FROM [dbo].[Tbl_Cu_ApplierProfile]
                WHERE a.PortalUserID = UserPortalID
                ORDER BY ApplierProfileID DESC
            )   = @NationalCode
            AND c.RequestID IN ( 1, 6 )
            AND a.GradeID = @GradeID
            AND a.GradeID NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE  (
                           SELECT TOP 1
                                  UniversityCode
                           FROM Tbl_CU_University U
                           WHERE U.UniversityID = a.UniversityID
                       )=tb.UniversityCode AND tb.StartDate=a.SchoolStartDate
                          );
        END;
        ---------------------------------------------------------------------------------------------------------------------------------------
        -- select * from  @Tbl

        SET @NewGradeID =
        (
            SELECT CASE
                       WHEN @GradeID IN ( 1, 6 ) THEN
                           1
                       WHEN @GradeID IN ( 2, 7 ) THEN
                           2
                       WHEN @GradeID IN ( 3, 8 ) THEN
                           3
                       WHEN @GradeID IN ( 4, 5, 9 ) THEN
                           4
                   END
        );
        IF EXISTS
        (
            SELECT *
            FROM Tbl_Cu_Certification_Arzeshnameh_LOG a
                INNER JOIN [dbo].[Tbl_Cu_CheckCommision_LOG] b
                    ON a.WFID = b.WFID
            WHERE
            (
                SELECT TOP 1
                       NationalCode
                FROM [dbo].[Tbl_Cu_ApplierProfile]
                WHERE b.PortalUserID = UserPortalID
                ORDER BY ApplierProfileID DESC
            )   = @NationalCode
            AND b.GradeID NOT IN
                (
                    SELECT
                        (
                            SELECT Commision_GradeID
                            FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                            WHERE BaseGradeID = GradeID
                        )
                    FROM @Tbl
                )
            AND b.GradeID IN
                (
                    SELECT Commision_GradeID
                    FROM [dbo].Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                    WHERE BaseGradeID = @NewGradeID
                )
            AND ISNULL(CertificateCodeGovahi, '') != ''
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT DISTINCT
                   b.GradeID,
                   CASE
                       WHEN ISNULL(FieldOfStudyID, 0) > 0
                            AND b.WFID > 1734312 THEN
                       (
                           SELECT TOP 1
                                  EducName
                           FROM dbo.Tbl_Cu_EducationFieldOfStudyTitle
                           WHERE FieldTitleID IN ( b.FieldOfStudyID )
                       )
                       WHEN ISNULL(FieldOfStudyID, 0) > 0
                            AND b.WFID <= 1734312 THEN
                       (
                           SELECT TOP 1
                                  EducationFieldStudyTitle
                           FROM dbo.Tbl_Cu_EducationFieldStudy
                           WHERE Tbl_Cu_EducationFieldStudy.EducationFieldStudyID IN ( FieldOfStudyID )
                       )
                       ELSE
                           OtherFieldStudy
                   END,
                   CASE
                       WHEN ISNULL(OrientationID, 0) > 0 THEN
                       (
                           SELECT TOP 1
                                  CASE
                                      WHEN OrientationTitle = 'گرايش ندارد' THEN
                                          ''
                                      ELSE
                                          '(' + OrientationTitle + ')'
                                  END
                           FROM dbo.Tbl_Cu_Orientation
                           WHERE Tbl_Cu_Orientation.OrientationID IN ( OrientationID )
                       )
                       ELSE
                           OtherOrientation
                   END,
                   (
                       SELECT TOP 1
                              ISNULL(Name, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE b.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(LastName, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE b.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(FatherName, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE b.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ISNULL(SSNO, '')
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE b.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   '',
                   (
                       SELECT TOP 1
                              NationalCode
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE b.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              CASE
                                  WHEN txtNewUniName IS NULL
                                       OR txtNewUniName = '' THEN
                                      UniversityFarsi
                                  ELSE
                                      txtNewUniName
                              END
                       FROM Tbl_Cu_EvaluationQualifications_LOG
                       WHERE Tbl_Cu_EvaluationQualifications_LOG.WFID = a.WFID
                             AND EvaluationQualificationsID IN
                                 (
                                     SELECT MAX(EvaluationQualificationsID)
                                     FROM dbo.Tbl_Cu_EvaluationQualifications_LOG
                                     WHERE Tbl_Cu_EvaluationQualifications_LOG.WFID = a.WFID
                                 )
                   ),
                   5,
                   CertificateCodeGovahi,
                   '',
                   (
                       SELECT BaseGradeID
                       FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                       WHERE Commision_GradeID = GradeID
                   ),
                   (
                       SELECT TOP 1
                              (
                                  SELECT TOP 1
                                         g.GenderTitle
                                  FROM dbo.Tbl_Cu_Gender g
                                  WHERE g.GenderID = ISNULL([dbo].[Tbl_Cu_ApplierProfile].GenderID, '')
                              )
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              CASE
                                  WHEN IsIranianNationality = 1 THEN
                                      'ایرانی'
                                  ELSE
                              (
                                  SELECT TOP 1
                                         Na.NationalityName
                                  FROM dbo.Tbl_Cu_Nationality Na
                                  WHERE Na.NationalityID = ISNULL(dbo.Tbl_Cu_ApplierProfile.CountryID, '')
                              )
                              END
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              ShamsiBirthday
                       FROM [dbo].[Tbl_Cu_ApplierProfile]
                       WHERE a.PortalUserID = UserPortalID
                       ORDER BY ApplierProfileID DESC
                   ),
                   (
                       SELECT TOP 1
                              StartEducationShamsiDate
                       FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                       WHERE EV.WFID = b.WFID
                       ORDER BY EvaluationQualificationsID DESC
                   ),
                   '',
                   'فارغ التحصيل ',
                   (
                       SELECT TOP 1
                              GPA
                       FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                       WHERE EV.WFID = b.WFID
                       ORDER BY EvaluationQualificationsID DESC
                   ),
                   (
                       SELECT TOP 1
                              GraduationShamsiDate
                       FROM dbo.Tbl_Cu_EvaluationQualifications_LOG EV
                       WHERE EV.WFID = b.WFID
                       ORDER BY EvaluationQualificationsID DESC
                   ),
                   '',
                   6,
                   ''
            FROM Tbl_Cu_Certification_Arzeshnameh_LOG a
                INNER JOIN [dbo].[Tbl_Cu_CheckCommision_LOG] b
                    ON a.WFID = b.WFID
            WHERE
            (
                SELECT TOP 1
                       NationalCode
                FROM [dbo].[Tbl_Cu_ApplierProfile]
                WHERE b.PortalUserID = UserPortalID
                ORDER BY ApplierProfileID DESC
            )   = @NationalCode
            AND ISNULL(CertificateCodeGovahi, '') != ''
            AND b.GradeID NOT IN
                (
                    SELECT
                        (
                            SELECT Commision_GradeID
                            FROM Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                            WHERE BaseGradeID = GradeID
                        )
                    FROM @Tbl
                )
            AND b.GradeID IN
                (
                    SELECT Commision_GradeID
                    FROM [dbo].Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                    WHERE BaseGradeID = @NewGradeID
                );
        END;
        -----------------------------------------------------------------------------------------------------------------------------

        --	select * from  @Tbl
        IF EXISTS
        (
            SELECT *
            FROM Tbl_CU_InquiryEducationCertificate_LOG
            WHERE ISNULL(CertificateCode, '') <> ''
                  AND NationalCode = @NationalCode
                  AND EducationGrade = @GradeID
                  AND EducationGrade NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducationCertificate_LOG.UniversityID=tb.UniID AND tb.StartDate=Tbl_CU_InquiryEducationCertificate_LOG.EducationStartDate
                          )
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT EducationGrade,
                   FieldStudy,
                   Orientation,
                   [Name],
                   '',
                   FatherName,
                   SSID,
                   '',
                   NationalCode,
                   UniversityID,
                   6,
                   CertificateCode,
                   (
                       SELECT UniversityCode
                       FROM Tbl_CU_University U
                       WHERE U.UniversityID = Tbl_CU_InquiryEducationCertificate_LOG.UniversityID
                   ),
                   EducationGrade,
                   '',
                   'ایرانی',
                   BirthDate,
                   EducationStartDate,
                   '',
                   'فارغ التحصيل ',
                   '',
                   '',
                   '',
                   6,
                   ''
            FROM Tbl_CU_InquiryEducationCertificate_LOG
            WHERE ISNULL(CertificateCode, '') <> ''
                  AND NationalCode = @NationalCode
                  AND EducationGrade = @GradeID
                  AND EducationGrade NOT IN
                          (
                              SELECT GradeID FROM @Tbl tb WHERE Tbl_CU_InquiryEducationCertificate_LOG.UniversityID=tb.UniID AND tb.StartDate=Tbl_CU_InquiryEducationCertificate_LOG.EducationStartDate
                          );
        END;
        ---------------------------------------------------------------------------------------------------
        --  select * from  @Tbl
        IF EXISTS
        (
            SELECT *
            FROM Tbl_CU_Base_MinistryofScience
            WHERE NationalCode = @NationalCode
                  AND MsrtstudyLevelCode IN
                      (
                          SELECT [MsrtGradeID]
                          FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                          WHERE EducationGradeID = @GradeID
                      )
                  AND [UniversityId] NOT IN
                      (
                           SELECT UniversityCode FROM @Tbl tb WHERE tb.GradeID = @GradeID AND tb.StartDate=Tbl_CU_Base_MinistryofScience.StartDate
                      )
        )
        BEGIN
            INSERT INTO @Tbl
            (
                Grade,
                field,
                Orientaion,
                FirstName,
                LastName,
                FatherName,
                SSNO,
                PlaceofIssuanceOfIdentityCard,
                NationalCode,
                UniID,
                ID,
                CertificateCode,
                UniversityCode,
                GradeID,
                Gender,
                Nationality,
                Birthday,
                StartDate,
                CourseType,
                EducationStatus,
                Average,
                EndDate,
                EntryYear,
                EducationStatusID,
                PersonCode
            )
            SELECT
                (
                    SELECT TOP 1
                           MsrtEducationGradeTitle
                    FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                    WHERE MsrtstudyLevelCode = [MsrtGradeID]
                ) studyLevelTitle,
                CourseTitle,
                '',
                FirstName,
                LastName,
                FatherName,
                IdentificationNumber,
                IdentificationIssuedPlace,
                NationalCode,
                University,
                7,
                '',
                [UniversityId],
                (
                    SELECT TOP 1
                           [EducationGradeID]
                    FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                    WHERE MsrtstudyLevelCode = [MsrtGradeID]
                ),
                Gender,
                Country,
                BrithDate,
                StartDate,
                StudyingMode,
                MsrtStudentStatus,
                TotalAverage,
                stopDate,
                EnteranceTerm,
                CASE
                    WHEN MsrtStudentStatusCode = 800000 THEN
                        1
                    WHEN MsrtStudentStatusCode IN ( 810005, 810003 ) THEN
                        4
                    WHEN MsrtStudentStatusCode IN ( 810007, 810001 ) THEN
                        6
                    WHEN MsrtStudentStatusCode = 810002 THEN
                        5
                    ELSE
                        ''
                END,
                PersonCode
            FROM Tbl_CU_Base_MinistryofScience
            WHERE NationalCode = @NationalCode
                  AND ISNULL(MsrtstudyLevelCode, '') != ''
                  AND MsrtstudyLevelCode IN
                      (
                          SELECT TOP 1
                                 [MsrtGradeID]
                          FROM [dbo].[Tbl_Cu_MsrtEducationGrade]
                          WHERE EducationGradeID = @GradeID
                      )
                  --   AND MsrtStudentStatusCode not in( 810005,810003)
                  AND [UniversityId] NOT IN
                      (
                           SELECT UniversityCode FROM @Tbl tb WHERE tb.GradeID = @GradeID AND tb.StartDate=Tbl_CU_Base_MinistryofScience.StartDate
                      )
            ORDER BY [MinistryofScienceID] DESC;


        END;
        --select * FROM @Tbl
       SELECT FirstName,
               LastName,
               FatherName,
               SSNO,
               PlaceofIssuanceOfIdentityCard,
               NationalCode,
               CASE
                   WHEN ID = 5 THEN
                   (
                       SELECT TOP 1
                              Commision_GradeName
                       FROM dbo.Tbl_Cu_Base_CommisionGrade_Arzeshyabi
                       WHERE Commision_GradeID = GradeID
                   )
                   WHEN ID NOT IN ( 5, 7 ) THEN
                   (
                       SELECT TOP 1
                              EducationGradeTitle
                       FROM Tbl_Cu_EducationGrade
                       WHERE GradeID = EducationGradeID
                   )
                   ELSE
                       Grade
               END EducationGradeTitle,
               GradeID,
               CASE
                   --WHEN ID = 5 THEN
                   --    field
                   WHEN ID NOT IN (  5, 7 ,3 ) THEN
                   (
                       SELECT TOP 1
                              EducationFieldStudyTitle
                       FROM Tbl_Cu_EducationFieldStudy
                       WHERE EducationFieldStudyID = field
                   )
                   ELSE
                       field
               END EducationFieldStudyTitle,
               CASE
                   --WHEN ID = 5 THEN
                   --    Orientaion
                   WHEN ID NOT IN (  5, 7 ,3 ) THEN
                   (
                       SELECT TOP 1
                              OrientationTitle
                       FROM Tbl_Cu_Orientation
                       WHERE Orientaion = OrientationID
                   )
                   ELSE
                       Orientaion
               END OrientationTitle,
               CASE
                   WHEN ID NOT IN ( 5, 7 ,3) THEN
                   (
                       SELECT TOP 1
                              [UniversityName]
                       FROM [dbo].[Tbl_CU_University]
                       WHERE [UniversityID] = UniID
                   )
                   ELSE
                       UniID
               END University,
               UniversityCode,
               CertificateCode,
               CASE
                   WHEN ID = 1 THEN
                       'تایید دانشنامه'
                   WHEN ID = 2 THEN
                       'استعلام سوابق تحصیلی'
                   WHEN ID = 3 THEN
                       'فرآیند ویرایش اطلاعات مهر اداره دانش آموختگان'
                   WHEN ID = 4 THEN
                       'تایید مدارک جهت ترجمه'
                   WHEN ID = 5 THEN
                       'ارزشیابی'
                   WHEN ID = 6 THEN
                       'تایید مدارک جهت انتخابات'
                   WHEN ID = 7 THEN
                       'وزارت علوم'
                   ELSE
                       ' '
               END AS InquirySource,
               CAST(0 AS BIT) StartInquiryWF,
               Gender,
               Nationality,
               Birthday,
               StartDate,
               CourseType,
               EducationStatus,
               Average,
               EndDate,
               EntryYear,
               CASE
                   WHEN EducationStatusID = 810001 THEN
                       6
                   WHEN EducationStatusID = 800000 THEN
                       1
                   WHEN EducationStatusID = 810005 THEN
                       4
                   WHEN EducationStatusID = 810002 THEN
                       5
                   WHEN EducationStatusID = 810007 THEN
                       6
                   ELSE
                       EducationStatusID
               END EducationStatusID,
               PersonCode
        FROM @Tbl
        WHERE (LEN(CAST(UniversityCode AS NVARCHAR(50))) <= 10); --or ( len(CAST(UniversityCode AS NVARCHAR(50)))=4 and SUBSTRING(CAST(UniversityCode AS NVARCHAR(50)), 1, 1) NOT IN ( 4 ) ))
    --	AND (@PersonCode  in('','-1')  OR PersonCode=@PersonCode);
    END;



END;


--select *  FROM Tbl_CU_Base_MinistryofScience where NationalCode='1171159048'


--select * from
-- Tbl_Cu_Certification_Arzeshnameh_LOG a
--            INNER JOIN [dbo].[Tbl_Cu_CheckCommision_LOG] b
--                ON a.WFID = b.WFID
--        WHERE ISNULL(CertificateCodeGovahi, '') != ''

--		select * from Tbl_Cu_ApplierProfile where UserPortalID=321578
