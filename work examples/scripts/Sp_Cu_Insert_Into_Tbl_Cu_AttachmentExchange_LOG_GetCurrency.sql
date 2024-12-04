USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Insert_Into_Tbl_Cu_AttachmentExchange_LOG_GetCurrency]    Script Date: 12/4/2024 3:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Kiani>
-- Create date: <1395/06/08>
-- Description:	<واردن کردن لینک فایل پیوست در جدول مربوطه>
-- =============================================
ALTER  PROCEDURE [dbo].[Sp_Cu_Insert_Into_Tbl_Cu_AttachmentExchange_LOG_GetCurrency] --294,352-- 51,23
    @WFID AS BIGINT ,
    @PortalLogID AS BIGINT
AS
    BEGIN
        SET NOCOUNT ON;
        DECLARE @RegDate NVARCHAR(10) ,
            @RegTime NVARCHAR(10) ,
            @AttachmentCertificateStudent NVARCHAR(2000) ,
            @AttachmentOneSemester NVARCHAR(2000) ,
            @AttachmentSubmissionForml NVARCHAR(2000) ,
            @AttachmentStudentAccommodation NVARCHAR(2000) ,
            @AttachmentOtherDocuments1 NVARCHAR(2000) ,
            @AttachmentOtherDocuments2 NVARCHAR(2000) ,
            @AttachmentForm120 NVARCHAR(2000) ,
            @AttachmentMilitary NVARCHAR(2000)  ,
			@AttachmentSubmissionForml2 AS NVARCHAR(2000) ,
			@AttachmentSubmissionForml3 AS NVARCHAR(2000) ,
			@AttachmentEducationalVisa   AS NVARCHAR(2000) ,
			@AttachmentLanguage AS NVARCHAR(2000),
			@AttachFrmTuition NVARCHAR(2000)

        DECLARE @PortalUserID AS BIGINT= ISNULL(( SELECT TOP 1
                                                            PortalUserID
                                                  FROM      dbo.Tbl_Cu_PortalReceiveLog
                                                  WHERE     WorkFlowInstanceID = @WFID
                                                            AND IsCancel = 0
                                                ), 0)
        DECLARE @tbl AS TABLE
            (
              RegDate NVARCHAR(10) ,
              RegTime NVARCHAR(10) ,
              AttachmentCertificateStudent NVARCHAR(2000) ,
              AttachmentOneSemester NVARCHAR(2000) ,
              AttachmentSubmissionForml NVARCHAR(2000) ,
              AttachmentStudentAccommodation NVARCHAR(2000) ,
              AttachmentOtherDocuments1 NVARCHAR(2000) ,
              AttachmentOtherDocuments2 NVARCHAR(2000) ,
              AttachmentForm120 NVARCHAR(2000) ,
              AttachmentMilitary NVARCHAR(2000) ,
			  AttachmentSubmissionForml2  NVARCHAR(2000) ,
			  AttachmentSubmissionForml3 NVARCHAR(2000) ,
			  AttachmentEducationalVisa NVARCHAR(2000)	,
			  AttachmentLanguage NVARCHAR(2000),
			  AttachFrmTuition NVARCHAR(2000)
            ) 
        DECLARE @jSon AS NVARCHAR(MAX) = ''
        SET @jSon = dbo.FN_CU_GetJsonForPortalLogID(@PortalLogID)   
        IF @jSon = ''
            RETURN
			
        PRINT @jSon
        CREATE TABLE #tb_AttachmentExchange ( Tazarv_ID INT )
        EXEC dbo.Sp_GenerateJsonTable '#tb_AttachmentExchange', @jSon

        SELECT  @RegDate = dbo.MiladiToShamsi(Date) ,
                @RegTime = SUBSTRING(time,1,5) ,
                @AttachmentCertificateStudent = AttachmentCertificateStudent ,
                @AttachmentOneSemester = AttachmentOneSemester ,
                @AttachmentSubmissionForml = AttachmentSubmissionForml ,
                @AttachmentStudentAccommodation = AttachmentStudentAccommodation ,
                @AttachmentOtherDocuments1 = AttachmentOtherDocuments1 ,
                @AttachmentOtherDocuments2 = AttachmentOtherDocuments2 ,
                @AttachmentForm120 = AttachmentForm120 ,
                @AttachmentMilitary = AttachmentMilitary ,
				@AttachmentSubmissionForml2  = AttachmentSubmissionForml2  ,
			    @AttachmentSubmissionForml3 = AttachmentSubmissionForml3 ,
				@AttachmentEducationalVisa = AttachmentEducationalVisa ,
				@AttachmentLanguage= AttachmentLanguage ,
				@AttachFrmTuition = AttachFrmTuition
        FROM    #tb_AttachmentExchange
        
        DECLARE @Count AS INT ,
		@Count1 AS INT ,
		@Count2 AS INT ,
		@Count3 AS INT ,
		@Count4 AS INT ,
		@Count5 AS INT,
		@Count6 AS INT,
		@Count7 AS INT,
		@Count8 AS INT,
		@Count9 AS INT,
		@Count10 AS INT ,
		@Count11 AS INT ,
		@Index AS INT =1

		SET @Count1  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentCertificateStudent,',') 
						 WHERE Token <> ''
                       )
		SET @Count2  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentOneSemester,',') 
						 WHERE Token <> ''
                       )
		SET @Count3  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml,',') 
						 WHERE Token <> ''
                       )
		SET @Count4  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentStudentAccommodation,',') 
						 WHERE Token <> ''
                       )
		SET @Count5  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentOtherDocuments1,',') 
						 WHERE Token <> ''
                       )
		SET @Count6  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentOtherDocuments2,',') 
						 WHERE Token <> ''
                       )
		SET @Count7  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentForm120,',') 
						 WHERE Token <> ''
                       )
		SET @Count8  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentMilitary,',') 
						 WHERE Token <> ''
                       )
		SET @Count9  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml2,',') 
						 WHERE Token <> ''
                       )
		SET @Count10  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml3,',') 
						 WHERE Token <> ''
                       )
		SET @Count11  = ( SELECT    COUNT(*)
                         FROM      dbo.Fn_CU_SplitString(@AttachFrmTuition,',') 
						 WHERE Token <> ''
                       )

        SET @Count = @Count1
        IF @Count < @Count2
            SET @Count = @Count2
        ELSE
            SET @Count = @Count
	    IF @Count < @Count3
            SET @Count = @Count3
        ELSE
            SET @Count = @Count
	    IF @Count < @Count4
            SET @Count = @Count4
        ELSE
            SET @Count = @Count
		IF @Count < @Count5
            SET @Count = @Count5
        ELSE
            SET @Count = @Count
		IF @Count < @Count6
            SET @Count = @Count6
        ELSE
            SET @Count = @Count
		IF @Count < @Count7
            SET @Count = @Count7
        ELSE
            SET @Count = @Count
		IF @Count < @Count8
            SET @Count = @Count8
        ELSE
            SET @Count = @Count
		IF @Count < @Count9
            SET @Count = @Count9
        ELSE
            SET @Count = @Count
		IF @Count < @Count10
            SET @Count = @Count10
        ELSE
            SET @Count = @Count

       IF @Count < @Count11
            SET @Count = @Count11
        ELSE
            SET @Count = @Count

	     
		 
        WHILE @Count > = @Index
            BEGIN
                INSERT  INTO @tbl
                        ( RegDate ,
                          RegTime ,
                          AttachmentCertificateStudent ,
                          AttachmentOneSemester ,
                          AttachmentSubmissionForml ,
                          AttachmentStudentAccommodation ,
                          AttachmentOtherDocuments1 ,
                          AttachmentOtherDocuments2 ,
                          AttachmentForm120 ,
                          AttachmentMilitary ,
                          AttachmentSubmissionForml2 ,
                          AttachmentSubmissionForml3 ,
						  AttachmentEducationalVisa ,
						  AttachmentLanguage,
						  AttachFrmTuition
		                )
                        SELECT @RegDate,
							@RegTime,
							   ( SELECT     Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentCertificateStudent,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentOneSemester,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentStudentAccommodation,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentOtherDocuments1,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentOtherDocuments2,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentForm120,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentMilitary,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml2,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ) ,
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentSubmissionForml3,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ),
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentEducationalVisa,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ),
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachmentLanguage,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                ),
                                ( SELECT    Token
                                  FROM      dbo.Fn_CU_SplitString(@AttachFrmTuition,
                                                              ',')
                                  WHERE     RowID = @Index
                                            AND Token <> ''
                                )
								
                SET @Index = @Index + 1
            END 
    IF EXISTS ( SELECT  *
                FROM    Tbl_Cu_AttachmentGetCurrency_LOG
                WHERE   WFID = @WFID )
        DELETE  FROM Tbl_Cu_AttachmentGetCurrency_LOG
        WHERE   WFID = @WFID
    ELSE
        PRINT ''
 ----------------------------------------------------------------------------------------   
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentLanguage, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
							CASE WHEN UPPER(SUBSTRING(tb.AttachmentLanguage,
                                                      LEN(tb.AttachmentLanguage)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentLanguage
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentLanguage,
                                                  LEN(tb.AttachmentLanguage)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentLanguage,
                                                     LEN(tb.AttachmentLanguage)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentLanguage,
                                                     LEN(tb.AttachmentLanguage)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentLanguage,
                                                     LEN(tb.AttachmentLanguage)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentLanguage
                             ELSE ''
                        END ,
                        'تصویر مدرک آزمون زبان' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentLanguage, '') <> ''
     ELSE
        PRINT 'هیچی'

     ----------------------------------------------------------------------------------------   1

	      IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachFrmTuition, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
							CASE WHEN UPPER(SUBSTRING(tb.AttachFrmTuition,
                                                      LEN(tb.AttachFrmTuition)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentLanguage
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachFrmTuition,
                                                  LEN(tb.AttachFrmTuition)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachFrmTuition,
                                                     LEN(tb.AttachFrmTuition)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachFrmTuition,
                                                     LEN(tb.AttachFrmTuition)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachFrmTuition,
                                                     LEN(tb.AttachFrmTuition)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachFrmTuition
                             ELSE ''
                        END ,
                        'فرم شهریه' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachFrmTuition, '') <> ''
     ELSE
        PRINT 'هیچی'
     ----------------------------------------------------------------------------------------   1
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentSubmissionForml, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml,
                                                      LEN(tb.AttachmentSubmissionForml)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentSubmissionForml
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml,
                                                  LEN(tb.AttachmentSubmissionForml)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml,
                                                     LEN(tb.AttachmentSubmissionForml)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml,
                                                     LEN(tb.AttachmentSubmissionForml)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml,
                                                     LEN(tb.AttachmentSubmissionForml)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentSubmissionForml
                             ELSE ''
                        END ,
                        'پیوست فرم تعهدنامه-شماره یک' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentSubmissionForml, '') <> ''
     ELSE
        PRINT 'هیچی'
 ----------------------------------------------------------------------------------------   1
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentEducationalVisa, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
							CASE WHEN UPPER(SUBSTRING(tb.AttachmentEducationalVisa,
                                                      LEN(tb.AttachmentEducationalVisa)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentEducationalVisa
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentEducationalVisa,
                                                  LEN(tb.AttachmentEducationalVisa)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentEducationalVisa,
                                                     LEN(tb.AttachmentEducationalVisa)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentEducationalVisa,
                                                     LEN(tb.AttachmentEducationalVisa)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentEducationalVisa,
                                                     LEN(tb.AttachmentEducationalVisa)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentEducationalVisa
                             ELSE ''
                        END ,
                        'پیوست تصویر برگه ویزای تحصیلی' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentEducationalVisa, '') <> ''
     ELSE
        PRINT 'هیچی'
----------------------------------------------------------------------------------------  
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentSubmissionForml2, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml2,
                                                      LEN(tb.AttachmentSubmissionForml2)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentSubmissionForml2
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml2,
                                                  LEN(tb.AttachmentSubmissionForml2)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml2,
                                                     LEN(tb.AttachmentSubmissionForml2)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml2,
                                                     LEN(tb.AttachmentSubmissionForml2)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml2,
                                                     LEN(tb.AttachmentSubmissionForml2)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentSubmissionForml2
                             ELSE ''
                        END ,
                        'پیوست فرم تعهدنامه-شماره دو' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentSubmissionForml2, '') <> ''
     ELSE
        PRINT 'هیچی'
----------------------------------------------------------------------------------------  
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentSubmissionForml3, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml3,
                                                      LEN(tb.AttachmentSubmissionForml3)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentSubmissionForml3
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentSubmissionForml3,
                                                  LEN(tb.AttachmentSubmissionForml3)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml3,
                                                     LEN(tb.AttachmentSubmissionForml3)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml3,
                                                     LEN(tb.AttachmentSubmissionForml3)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentSubmissionForml3,
                                                     LEN(tb.AttachmentSubmissionForml3)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentSubmissionForml3
                             ELSE ''
                        END ,
                        'پیوست فرم تعهدنامه-شماره سه' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentSubmissionForml3, '') <> ''
     ELSE
        PRINT 'هیچی'
		---------------------------------------------------------------------------   2
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentStudentAccommodation, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentStudentAccommodation,
                                                      LEN(tb.AttachmentStudentAccommodation)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentStudentAccommodation
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentStudentAccommodation,
                                                  LEN(tb.AttachmentStudentAccommodation)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentStudentAccommodation,
                                                     LEN(tb.AttachmentStudentAccommodation)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentStudentAccommodation,
                                                     LEN(tb.AttachmentStudentAccommodation)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentStudentAccommodation,
                                                     LEN(tb.AttachmentStudentAccommodation)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentStudentAccommodation
                             ELSE ''
                        END ,
                        'پیوست اقامت دانشجویی-کارت دانشجویی' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentStudentAccommodation, '') <> ''
     ELSE
        PRINT 'هیچی'
------------------------------------------------------------------------------------------------------  3
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentOtherDocuments1, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentOtherDocuments1,
                                                      LEN(tb.AttachmentOtherDocuments1)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentOtherDocuments1
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentOtherDocuments1,
                                                  LEN(tb.AttachmentOtherDocuments1)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments1,
                                                     LEN(tb.AttachmentOtherDocuments1)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments1,
                                                     LEN(tb.AttachmentOtherDocuments1)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments1,
                                                     LEN(tb.AttachmentOtherDocuments1)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentOtherDocuments1
                             ELSE ''
                        END ,
                        'پیوست سایرمدارک 1' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentOtherDocuments1, '') <> ''
     ELSE
        PRINT 'هیچی'
--------------------------------------------------------------------------------------------   4
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentOtherDocuments2, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentOtherDocuments2,
                                                      LEN(tb.AttachmentOtherDocuments2)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentOtherDocuments2
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentOtherDocuments2,
                                                  LEN(tb.AttachmentOtherDocuments2)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments2,
                                                     LEN(tb.AttachmentOtherDocuments2)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments2,
                                                     LEN(tb.AttachmentOtherDocuments2)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentOtherDocuments2,
                                                     LEN(tb.AttachmentOtherDocuments2)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentOtherDocuments2
                             ELSE ''
                        END ,
                        'پیوست سایرمدارک 2' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentOtherDocuments2, '') <> ''
     ELSE
        PRINT 'هیچی'
------------------------------------------------------------------------------------------ 5
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentForm120, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentForm120,
                                                      LEN(tb.AttachmentForm120)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentForm120
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentForm120,
                                                  LEN(tb.AttachmentForm120)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentForm120,
                                                     LEN(tb.AttachmentForm120)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentForm120,
                                                     LEN(tb.AttachmentForm120)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentForm120,
                                                     LEN(tb.AttachmentForm120)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentForm120
                             ELSE ''
                        END ,
                        'Iپیوست فرم20' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentForm120, '') <> ''
     ELSE
        PRINT 'هیچی'
-----------------------------------------------------------------------------------------  6
     IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentMilitary, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )
                SELECT  @WFID ,
                        @PortalLogID ,
						CASE WHEN UPPER(SUBSTRING(tb.AttachmentMilitary,
                                                      LEN(tb.AttachmentMilitary)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentMilitary
                                 ELSE ''
                            END ,-----------------------------------------------------------
                        CASE WHEN UPPER(SUBSTRING(tb.AttachmentMilitary,
                                                  LEN(tb.AttachmentMilitary)
                                                  - 2, 4)) = 'JPG'
                                  OR UPPER(SUBSTRING(tb.AttachmentMilitary,
                                                     LEN(tb.AttachmentMilitary)
                                                     - 3, 4)) = 'JPEG'
                                  OR UPPER(SUBSTRING(tb.AttachmentMilitary,
                                                     LEN(tb.AttachmentMilitary)
                                                     - 2, 4)) = 'JPE'
                                  OR UPPER(SUBSTRING(tb.AttachmentMilitary,
                                                     LEN(tb.AttachmentMilitary)
                                                     - 2, 4)) = 'PNG'
                             THEN tb.AttachmentMilitary
                             ELSE ''
                        END ,
                        'پیوست مدرک نظام وظیفه' ,
                        RegDate ,
                        SUBSTRING(RegTime, 1, 5)
                FROM    @tbl tb
                WHERE   ISNULL(tb.AttachmentMilitary, '') <> ''
     ELSE
        PRINT 'هیچی'
---------------------------------------------------------------------------

     IF EXISTS ( SELECT *
                 FROM   @tbl
                 WHERE  ISNULL(AttachmentOneSemester, '') <> ''
                        AND ISNULL(AttachmentCertificateStudent, '') <> '' )
        BEGIN 
            PRINT 'هردو'
            INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                    ( WFID ,
                      PortalLogID ,
					  AttachmetLinkPDF ,
                      AttachmetLinkJPG ,
                      CertificateName ,
                      RegDate ,
                      RegTime
                    )
                    SELECT  @WFID ,
                            @PortalLogID ,
                            CASE WHEN UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                      LEN(tb.AttachmentOneSemester)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentOneSemester
                                 ELSE ''
                            END ,-----------------------------------------------------------
                            CASE WHEN UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                      LEN(tb.AttachmentOneSemester)
                                                      - 2, 4)) = 'JPG'
                                      OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                         LEN(tb.AttachmentOneSemester)
                                                         - 3, 4)) = 'JPEG'
                                      OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                         LEN(tb.AttachmentOneSemester)
                                                         - 2, 4)) = 'JPE'
                                      OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                         LEN(tb.AttachmentOneSemester)
                                                         - 2, 4)) = 'PNG'
                                 THEN tb.AttachmentOneSemester
                                 ELSE ''
                            END ,
                            'گواهی شهریه نیم سال تحصیلی' ,
                            RegDate ,
                            SUBSTRING(RegTime, 1, 5)
                    FROM    @tbl tb
            INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                    ( WFID ,
                      PortalLogID ,
                      AttachmetLinkPDF ,
                      AttachmetLinkJPG ,
                      CertificateName ,
                      RegDate ,
                      RegTime
                    )
                    SELECT  @WFID ,
                            @PortalLogID ,
                            CASE WHEN UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                      LEN(tb.AttachmentCertificateStudent)
                                                      - 2, 4)) = 'PDF'
                                 THEN tb.AttachmentCertificateStudent
                                 ELSE ''
                            END ,-----------------------------------------------------------
                            CASE WHEN UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                      LEN(tb.AttachmentCertificateStudent)
                                                      - 2, 4)) = 'JPG'
                                      OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                         LEN(tb.AttachmentCertificateStudent)
                                                         - 3, 4)) = 'JPEG'
                                      OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                         LEN(tb.AttachmentCertificateStudent)
                                                         - 2, 4)) = 'JPE'
                                      OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                         LEN(tb.AttachmentCertificateStudent)
                                                         - 2, 4)) = 'PNG'
                                 THEN tb.AttachmentCertificateStudent
                                 ELSE ''
                            END ,
                            'تصویر پذیرش تحصیلی' ,
                            RegDate ,
                            SUBSTRING(RegTime, 1, 5)
                    FROM    @tbl tb
        END	
     ELSE
        IF EXISTS ( SELECT  *
                    FROM    @tbl
                    WHERE   ( ISNULL(AttachmentOneSemester, '') <> '' )
                            AND AttachmentCertificateStudent LIKE '' )
            BEGIN
                PRINT 'نیم ترم'
                INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                        ( WFID ,
                          PortalLogID ,
                          AttachmetLinkPDF ,
                          AttachmetLinkJPG ,
                          CertificateName ,
                          RegDate ,
                          RegTime
                        )
                        SELECT  @WFID ,
                                @PortalLogID ,
                                CASE WHEN UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                          LEN(tb.AttachmentOneSemester)
                                                          - 2, 4)) = 'PDF'
                                     THEN tb.AttachmentOneSemester
                                     ELSE ''
                                END ,-----------------------------------------------------------
                                CASE WHEN UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                          LEN(tb.AttachmentOneSemester)
                                                          - 2, 4)) = 'JPG'
                                          OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                             LEN(tb.AttachmentOneSemester)
                                                             - 3, 4)) = 'JPEG'
                                          OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                             LEN(tb.AttachmentOneSemester)
                                                             - 2, 4)) = 'JPE'
                                          OR UPPER(SUBSTRING(tb.AttachmentOneSemester,
                                                             LEN(tb.AttachmentOneSemester)
                                                             - 2, 4)) = 'PNG'
                                     THEN tb.AttachmentOneSemester
                                     ELSE ''
                                END ,
                                'گواهی شهریه نیم سال تحصیلی' ,
                                RegDate ,
                                SUBSTRING(RegTime, 1, 5)
                        FROM    @tbl tb
						WHERE ISNULL(AttachmentOneSemester, '') <> ''
            END	
        ELSE
                BEGIN
                    PRINT 'اشتغال به تحصیل'
                    INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                            ( WFID ,
                              PortalLogID ,
                              AttachmetLinkPDF ,
                              AttachmetLinkJPG ,
                              CertificateName ,
                              RegDate ,
                              RegTime
                            )
                            SELECT  @WFID ,
                                    @PortalLogID ,
                                    CASE WHEN UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                              LEN(tb.AttachmentCertificateStudent)
                                                              - 2, 4)) = 'PDF'
                                         THEN tb.AttachmentCertificateStudent
                                         ELSE ''
                                    END ,-----------------------------------------------------------
                                    CASE WHEN UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                              LEN(tb.AttachmentCertificateStudent)
                                                              - 2, 4)) = 'JPG'
                                              OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                              LEN(tb.AttachmentCertificateStudent)
                                                              - 3, 4)) = 'JPEG'
                                              OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                              LEN(tb.AttachmentCertificateStudent)
                                                              - 2, 4)) = 'JPE'
                                              OR UPPER(SUBSTRING(tb.AttachmentCertificateStudent,
                                                              LEN(tb.AttachmentCertificateStudent)
                                                              - 2, 4)) = 'PNG'
                                         THEN tb.AttachmentCertificateStudent
                                         ELSE ''
                                    END ,
                                    'تصویر گواهی اشتغال به تحصیل ' ,
                                    RegDate ,
                                    SUBSTRING(RegTime, 1, 5)
                            FROM    @tbl tb
							WHERE  ISNULL(AttachmentCertificateStudent ,'') <> ''
                END	

	 DROP TABLE #tb_AttachmentExchange
    END 
