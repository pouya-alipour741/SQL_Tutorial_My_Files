USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_ExchangeStudent_LOG_GetCurrency]    Script Date: 12/7/2024 8:05:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Kiani>
-- Create date: <1395/05/05>
-- Description:	<Insert And Update Into dbo.Tbl_Cu_ExchangeStudent_LOG>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_ExchangeStudent_LOG_GetCurrency] --25497,36,15819,253913,0,1
    @WFID AS BIGINT ,
    @StatusID AS INT ,
    @PortalLogID AS BIGINT ,
    @PortalEntryID AS BIGINT ,
    @IsCancel AS INT ,
    @IsEdite AS INT
AS
    BEGIN
        SET NOCOUNT ON;

        DECLARE @PortalUserID AS BIGINT = ISNULL(( SELECT TOP 1
                                                            PortalUserID
                                                   FROM     dbo.Tbl_Cu_PortalReceiveLog
                                                   WHERE    WorkFlowInstanceID = @WFID
                                                 ), 0)
        DECLARE @PkForm1ID AS BIGINT ,
            @RegUserID AS BIGINT ,
            @IsNeedMoreQuality AS BIT ,
            @IsNotBelongHalfYear AS BIT ,
            @UploadFavorableFormatSystem AS BIT ,
            @IsMeritTime AS BIT ,
            @OnlyMastersAndPHD AS BIT ,
            @ObtainingCollegeDegree AS BIT ,
            @IranEnvoyConfirm AS BIT ,
            @UploadMilitaryDocumentStatus AS BIT ,
            @IsFieldMedicine AS BIT ,
            @IsCompleteObligation AS BIT ,
            @IsTrafficStatus AS BIT ,
            @IsStamp AS BIT ,
            @IsDateOfEntryAndExist AS BIT ,
            @ReqDescriptions AS NVARCHAR(MAX) ,
            @IsPersonalExpensesAcc AS BIT ,
            @IsPersonalExpensesReView AS BIT ,
            @IsPersonalExpensesReject AS BIT ,
            @PersonalExpensesDesc AS NVARCHAR(MAX) ,
            @IsExpertAcc AS BIT ,
            @IsExpertReview AS BIT ,
            @IsExpertReject AS BIT ,
            @ExperDesc AS NVARCHAR(MAX) ,
            @IsManagerAcc AS BIT ,
            @IsManagerReView AS BIT ,
            @IsManagerReject AS BIT ,
            @ManagerDesc AS NVARCHAR(MAX) ,
            @Yaddasht AS NVARCHAR(1000),
			@EndDateAcc AS NVARCHAR(11),
			@StartDateAcc AS NVARCHAR(11),
			@txtSum AS BIGINT

	---------------------------------------------------------------
        SELECT TOP 1
                @PkForm1ID = frm31143Id ,
                @RegUserID = Col_5264762919495042694 ,
                @IsNeedMoreQuality = Col_4617786299781381445 ,
                @IsNotBelongHalfYear = Col_4702123381975901836 ,
                @UploadFavorableFormatSystem = Col_4812470180601350146 ,
                @OnlyMastersAndPHD = Col_4857750740988921476 ,
                @ObtainingCollegeDegree = Col_5215606133943035791 ,
                @IranEnvoyConfirm = Col_4918825140466770414 ,
                @UploadMilitaryDocumentStatus = Col_4833114567245214892 ,
                @IsFieldMedicine = Col_4984513956317023319 ,
                @IsCompleteObligation = Col_5515398431882862611 ,
                @IsTrafficStatus = Col_4841853293149418986 ,
                @IsStamp = Col_5694995615475742080 ,
                @IsDateOfEntryAndExist = Col_5094147760665943626 ,
                @ReqDescriptions = Col_5218705017954777809 ,
                @IsPersonalExpensesAcc = Col_5732844853978631290 ,
                @IsPersonalExpensesReView = Col_5316191337446642906 ,
                @IsPersonalExpensesReject = Col_5542704676320310131 ,
                @PersonalExpensesDesc = Col_4669535619586924081 ,
                @IsExpertAcc = Col_4625244665515117188 ,
                @IsExpertReview = Col_5442894405953622740 ,
                @IsExpertReject = Col_4905133319436907002 ,
                @ExperDesc = Col_5392884482317804265 ,
                @IsManagerAcc = Col_5192232307012775418 ,
                @IsManagerReView = Col_4721448356638109843 ,
                @IsManagerReject = Col_5126376119377682099 ,
                @ManagerDesc = Col_5479842249297872016 ,
                @IsMeritTime = Col_5185507930656969286 ,
                @Yaddasht = Col_4619512680532576109,
				@EndDateAcc = col_5086595319451290300,
				@StartDateAcc = col_4764363127405403019,
				@txtSum=col_5402276204136414599
        FROM    dbo.Tbl_frm31143
        WHERE   frm31143Id IN ( SELECT  PKFormID
                            FROM    Task.TblFormInstance
                            WHERE   WorkflowInstanceId = @WFID
                                    AND FormID = 31143 )
		


			--if @StatusID=36
				--begin
				 
        --IF @PersonalExpensesDesc LIKE '%' + ',' + '%'
        --    SET @PersonalExpensesDesc = '' 
         
        DECLARE @strTemp AS NVARCHAR(MAX) = ISNULL(@PersonalExpensesDesc, '')
            + ','
        IF @IsNeedMoreQuality = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'گواهی اشتغال به تحصیل شما واضح و خوانا نیست با وضوح بیشتری آپلود نمایید , '
            END

        IF @IsNotBelongHalfYear = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'گواهی اشتغال به تحصیل متعلق به نیم سال جاری نمی باشد ,'
            END

        IF @UploadFavorableFormatSystem = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'گواهی اشتغال به تحصیل شما قابل رویت نیست فرمت مطلوب سامانه را آپلود نمایید ,'
            END

        IF @OnlyMastersAndPHD = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'طبق اعلام بانک مرکزی ج.ا.ا تهسیلات ارزی فقط به دانشجویان مقطع فوق لیسانس و دکتری ارائه می گردد ,'
            END

        IF @ObtainingCollegeDegree = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'تحصیل در دوره های زبان،پیش دانشگاهی و سایر دوره هایی که منجر به اخذ مدرک تحصیلی دانشگاهی نمی گردد ,'
            END
	
        IF @IranEnvoyConfirm = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'گواهی اشتغال به تحصیل تائید نمایندگی ایران در کشور محل تحصیل را ندارد,'
            END
	
        IF @IsCompleteObligation = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'فرم تکمیل شده تعهد آپلود نشده است ,'
            END
	
        IF @UploadMilitaryDocumentStatus = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'مدارک دال بر روشن شدن وضعیت نظام وظیفه را آپلود نمایید  ,'
            END
        IF @IsFieldMedicine = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'رشته شما جز رشته های پزشکی است به وزارت بهداشت مراجعه نمایید ,'
            END
        IF @IsTrafficStatus = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'وضعیت تردد شما به کشورمحل تحصیل نامشخص است ,'
            END
        IF @IsStamp = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'آپلود مهرهای ورود و خروج پاسپورت الزامی است ,'
            END
        IF @IsDateOfEntryAndExist = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'ثبت دقیق تاریخ های ورودی و خروجی از مرزهای ایران ,'
            END
        IF @IsMeritTime = 1
            BEGIN
                SET @strTemp = @strTemp
                    + 'شما از مدت مجاز ارز استحقاقی استفاده نموده اید ,'
            END


        SET @strTemp = SUBSTRING(@strTemp, 1, LEN(@strTemp) - 1)




			--	end

			--if @StatusID=83
			--	begin
        IF @ExperDesc LIKE '%' + ',' + '%'
            SET @ExperDesc = ''

        DECLARE @strTemp2 AS NVARCHAR(MAX) = ISNULL(@ExperDesc, '') + ','
        IF @IsNeedMoreQuality = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'گواهی اشتغال به تحصیل شما واضح و خوانا نیست با وضوح بیشتری آپلود نمایید , '
            END

        IF @IsNotBelongHalfYear = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'گواهی اشتغال به تحصیل متعلق به نیم سال جاری نمی باشد ,'
            END

        IF @UploadFavorableFormatSystem = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'گواهی اشتغال به تحصیل شما قابل رویت نیست فرمت مطلوب سامانه را آپلود نمایید ,'
            END

        IF @OnlyMastersAndPHD = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'طبق اعلام بانک مرکزی ج.ا.ا تهسیلات ارزی فقط به دانشجویان مقطع فوق لیسانس و دکتری ارائه می گردد ,'
            END

        IF @ObtainingCollegeDegree = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'تحصیل در دوره های زبان،پیش دانشگاهی و سایر دوره هایی که منجر به اخذ مدرک تحصیلی دانشگاهی نمی گردد ,'
            END
	
        IF @IranEnvoyConfirm = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'گواهی اشتغال به تحصیل تائید نمایندگی ایران در کشور محل تحصیل را ندارد,'
            END
	
        IF @IsCompleteObligation = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'فرم تکمیل شده تعهد آپلود نشده است ,'
            END
	
        IF @UploadMilitaryDocumentStatus = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'مدارک دال بر روشن شدن وضعیت نظام وظیفه را آپلود نمایید  ,'
            END
        IF @IsFieldMedicine = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'رشته شما جز رشته های پزشکی است به وزارت بهداشت مراجعه نمایید ,'
            END
        IF @IsTrafficStatus = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'وضعیت تردد شما به کشورمحل تحصیل نامشخص است ,'
            END
        IF @IsStamp = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'آپلود مهرهای ورود و خروج پاسپورت الزامی است ,'
            END
        IF @IsDateOfEntryAndExist = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'ثبت دقیق تاریخ های ورودی و خروجی از مرزهای ایران ,'
            END
        IF @IsMeritTime = 1
            BEGIN
                SET @strTemp2 = @strTemp2
                    + 'شما از مدت مجاز ارز استحقاقی استفاده نموده اید ,'
            END


        SET @strTemp2 = SUBSTRING(@strTemp2, 1, LEN(@strTemp2) - 1)

        IF @ManagerDesc LIKE '%' + ',' + '%'
            SET @ManagerDesc = ''
         
        DECLARE @strTemp3 AS NVARCHAR(MAX) = ISNULL(@ManagerDesc, '') + ','
        IF @IsNeedMoreQuality = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'گواهی اشتغال به تحصیل شما واضح و خوانا نیست با وضوح بیشتری آپلود نمایید , '
            END

        IF @IsNotBelongHalfYear = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'گواهی اشتغال به تحصیل متعلق به نیم سال جاری نمی باشد ,'
            END

        IF @UploadFavorableFormatSystem = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'گواهی اشتغال به تحصیل شما قابل رویت نیست فرمت مطلوب سامانه را آپلود نمایید ,'
            END

        IF @OnlyMastersAndPHD = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'طبق اعلام بانک مرکزی ج.ا.ا تهسیلات ارزی فقط به دانشجویان مقطع فوق لیسانس و دکتری ارائه می گردد ,'
            END

        IF @ObtainingCollegeDegree = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'تحصیل در دوره های زبان،پیش دانشگاهی و سایر دوره هایی که منجر به اخذ مدرک تحصیلی دانشگاهی نمی گردد ,'
            END
	
        IF @IranEnvoyConfirm = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'گواهی اشتغال به تحصیل تائید نمایندگی ایران در کشور محل تحصیل را ندارد,'
            END
	
        IF @IsCompleteObligation = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'فرم تکمیل شده تعهد آپلود نشده است ,'
            END
	
        IF @UploadMilitaryDocumentStatus = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'مدارک دال بر روشن شدن وضعیت نظام وظیفه را آپلود نمایید  ,'
            END
        IF @IsFieldMedicine = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'رشته شما جز رشته های پزشکی است به وزارت بهداشت مراجعه نمایید ,'
            END
        IF @IsTrafficStatus = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'وضعیت تردد شما به کشورمحل تحصیل نامشخص است ,'
            END
        IF @IsStamp = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'آپلود مهرهای ورود و خروج پاسپورت الزامی است ,'
            END
        IF @IsDateOfEntryAndExist = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'ثبت دقیق تاریخ های ورودی و خروجی از مرزهای ایران ,'
            END
        IF @IsMeritTime = 1
            BEGIN
                SET @strTemp3 = @strTemp3
                    + 'شما از مدت مجاز ارز استحقاقی استفاده نموده اید ,'
            END


        SET @strTemp3 = SUBSTRING(@strTemp3, 1, LEN(@strTemp3) - 1)
                         
	--------------------------------------------------------------------
      
        PRINT 'Update'
        UPDATE  dbo.Tbl_Cu_GetCurrencyForStudent_LOG
        SET     PkForm31143ID = @PkForm1ID ,
              --  RegUserID = @RegUserID ,
                PortalEntryID = @PortalEntryID ,
                IsCancel = CAST(@IsCancel AS BIT) ,
                IsEdite = CAST(@IsEdite AS BIT) ,
                IsNeedMoreQuality = @IsNeedMoreQuality ,
                IsNotBelongHalfYear = @IsNotBelongHalfYear ,
                UploadFavorableFormatSystem = @UploadFavorableFormatSystem ,
                OnlyMastersAndPHD = @OnlyMastersAndPHD ,
                ObtainingCollegeDegree = @ObtainingCollegeDegree ,
                IranEnvoyConfirm = @IranEnvoyConfirm ,
                UploadMilitaryDocumentStatus = @UploadMilitaryDocumentStatus ,
                IsFieldMedicine = @IsFieldMedicine ,
                IsCompleteObligation = @IsCompleteObligation ,
                IsMeritTime = @IsMeritTime ,
                IsTrafficStatus = @IsTrafficStatus ,
                IsStamp = @IsStamp ,
                IsDateOfEntryAndExist = @IsDateOfEntryAndExist ,
                ReqDescriptions = @ReqDescriptions ,
                IsPersonalExpensesAcc = @IsPersonalExpensesAcc ,
                IsPersonalExpensesReView = @IsPersonalExpensesReView ,
                IsPersonalExpensesReject = @IsPersonalExpensesReject ,
                PersonalExpensesDesc = @strTemp ,
                IsExpertAcc = @IsExpertAcc ,
                IsExpertReview = @IsExpertReview ,
                IsExpertReject = @IsExpertReject ,
                ExperDesc = @strTemp2 ,
                IsManagerAcc = @IsManagerAcc ,
                IsManagerReView = @IsManagerReView ,
                IsManagerReject = @IsManagerReject ,
                ManagerDesc = @strTemp3 ,
                StatusID = @StatusID ,
                Yaddasht = @Yaddasht ,
				EducationStartDateAcc = @StartDateAcc,
				EducationEndDateAcc = @EndDateAcc,
				txtSumExitEntry=@txtSum
        WHERE   PortalLogID = @PortalLogID
            	
    END
