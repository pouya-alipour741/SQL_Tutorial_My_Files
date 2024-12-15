USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_Load_TBL_CU_StudentGetCertificateCode_EducationalRecords]    Script Date: 12/15/2024 3:35:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_CU_Load_TBL_CU_StudentGetCertificateCode_EducationalRecords]
@GUID nvarchar(100),
@PortalUserID bigint,
@ReqGradeID bigint
as
begin
select 
ROW_NUMBER() OVER ( ORDER BY EducationalRecordsID ) as Radif,
EducationalRecordsID,

(select P.EducationPlace from TBL_CU_Base_EducationPlace p where P.EducationPlaceID=S.EducationPlace)as EducationPlace,

case when EducationPlace=1 then
(select EducationGradeTitle from Tbl_Cu_EducationGrade where EducationGradeID=s.GradeID)
else (select Commision_GradeName from Tbl_Cu_Base_CommisionGrade_Arzeshyabi where Commision_GradeID=S.GradeID)end as GradeID,

(select i.InstituteName from Tbl_Cu_Institute i where i.InstituteID=s.InstituteID) as InstituteID,

(select CountrySchoolingPlaceName from Tbl_Cu_CountrySchoolingPlace where CountrySchoolingPlaceID=S.CountryID)as CountryID,

case when EducationPlace=1 then
(select u.UniversityName from Tbl_CU_University u where u.UniversityID=s.UniversityID)
else (select ForeignInstituteName from Tbl_Cu_ForeignInstitute where ForeignInstituteID=S.UniversityID) end as UniversityID,

(select HesTitle from Tbl_Cu_Base_EducationFieldStudyHes E where E.HesEducID=S.EducationFieldStudyID)as EducationFieldStudyID,

CertificateCode,

DegreeType,

EducationEndDate,

DegreeImage,

case when isnull(DegreeImage, '-1#')='-1#' then ''
else 'مدرک تحصیلی' end as DegreeImageTitle,

FileUploadCommitmentCan,

case when isnull(FileUploadCommitmentCan, '-1#')='-1#' then ''
else 'گواهی لغو تعهد آموزش و پرورش' end as FileUploadCommitmentCanTitle

from TBL_CU_StudentGetCertificateCode_EducationalRecords S   
where GUID=@GUID and ReqGradeID=@ReqGradeID
end

 
