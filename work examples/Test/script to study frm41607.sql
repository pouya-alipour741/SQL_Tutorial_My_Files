USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_Visible_EducationalRecords_FRM31557]    Script Date: 12/9/2024 4:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_CU_Visible_EducationalRecords_FRM31557]
@ReqGradeID bigint,
--@ReqInstituteID bigint,
--@ReqUniversityId bigint,
@ChckSecondLable bit,
@ReqUniversityID bigint,
@PortalUserID bigint
as
begin

declare @ChckVisibleLables bit
declare @ApplierUserID bigint=(select ExternalUserId from users.TblMemebrShips where UserId=@PortalUserID)
Declare @NationalCode nvarchar(10)=(select top 1 NationalCode from Tbl_Cu_ApplierProfile where UserPortalID=@ApplierUserID order by ApplierProfileID desc)

declare @TBL as table
(
              RowNO bigint,
			  ID bigint,
              EducationGradeTitle nvarchar(200),
              GradeID bigint,
              University nvarchar(200),
              UniID bigint,
              UniversityCode bigint,
              InstituteName nvarchar(200),
              InstituteID bigint,
              EducationFieldStudyTitle nvarchar(200),
              EducationFieldStudyID bigint,
              CertificateCode nvarchar(100),
              InquirySource nvarchar(100),
              DegreeType nvarchar(100),
              DegreeImage nvarchar(1000),
              linkname nvarchar(1000),
              WFID bigint,
              StartDate nvarchar(10),
              EndDate nvarchar(10)
			  --avrage nvarchar(10)

)

insert into @TBL
exec [Sp_Cu_GetApplicantInformationsInquiryOfDocuments_CertificateCode] @NationalCode


if exists (select top 1 1 from @TBL
           where GradeID=@ReqGradeID and UniID=@ReqUniversityID )
begin
set @ChckVisibleLables=cast(1 as bit)
end

else
begin
set @ChckVisibleLables=cast(0 as bit)
end
--------------------------------------------------------------------
if (@ReqGradeID='' or @ReqGradeID='-1') 
--or (@ReqInstituteID='' or @ReqInstituteID='-1') or (@ReqUniversityId='' or @ReqUniversityId='-1'))--عدم انتخاب فیلدهای اجباری
begin
select cast(0 as bit) as res
end
---------------
else if @ReqGradeID in (1,2,3,4,5,6,16)--مقاطع متصل به دیپلم
begin
select cast(0 as bit) as res
end
---------------
else if @ChckVisibleLables=1--کد صحت دارد
begin

if @ChckSecondLable=0--عدم انتخاب دورشته ای هستم  
begin
select cast(0 as bit) as res
end

else
begin
select cast(1 as bit) as res
end
end
---------------
else
begin
select cast(1 as bit) as res
end
end




