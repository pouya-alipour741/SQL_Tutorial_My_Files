USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_Insert_TBL_CU_StudentGetCertificateCode_EducationalRecords]    Script Date: 12/15/2024 5:45:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_CU_Insert_TBL_CU_StudentGetCertificateCode_EducationalRecords]
@GUID nvarchar(100),
@EducationPlace bigint,
@LastGradeID bigint,
@LastInstitueID bigint,
@LastCountryID bigint,
@LastUniversityID bigint,
@LastEducationFieldStudyID bigint,
@LastCertificateCode nvarchar(100),
@LastDegreeType nvarchar(100),
@LastEducationEndDate nvarchar(10),
@LastDegreeImage nvarchar(500),
@FileUpCommitmentCan nvarchar(500),
@PortalUserID bigint,
@ReqGradeID bigint,
@ReqInstituteID bigint,
@ReqUniID bigint
as
begin
declare @ApplierUserID bigint=(select top 1 ExternalUserId from Users.TblMemebrShips where UserId=@PortalUserID)
if not exists (select top 1 1 from TBL_CU_StudentGetCertificateCode_EducationalRecords  
               where GUID=@GUID and GradeID=@LastGradeID)
begin
insert into TBL_CU_StudentGetCertificateCode_EducationalRecords
        (GUID,
         EducationPlace,
		 GradeID,
		 InstituteID,
		 CountryID,
		 UniversityID,
		 EducationFieldStudyID,
		 CertificateCode,
		 DegreeType,
		 EducationEndDate,
		 DegreeImage,
		 FileUploadCommitmentCan,
		 PortalUserID,
		 ReqGradeID,
		 ReqInstituteID,
		 ReqUniID
		)
values (@GUID,
        @EducationPlace,
		@LastGradeID,
		@LastInstitueID,
		@LastCountryID,
		@LastUniversityID,
		@LastEducationFieldStudyID,
		@LastCertificateCode,
		@LastDegreeType,
		@LastEducationEndDate,
		@LastDegreeImage,
		@FileUpCommitmentCan,
		@ApplierUserID,
		@ReqGradeID,
		@ReqInstituteID,
		@ReqUniID
		)
end
select GETDATE()
end







