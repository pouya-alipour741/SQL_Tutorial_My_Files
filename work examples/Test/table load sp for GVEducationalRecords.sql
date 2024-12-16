select *
from 
	TBL_CU_StudentGetCertificateCode_EducationalRecords S 



create proc sp_cu_load_tbl_cu_StudentEducationaRecord_frm41607
@GUID nvarchar(100)
--,@PortalUserID bigint --not needed
,@ReqGradeID bigint
as
	begin

		select 
			ROW_NUMBER() over(order by educationalrecordsid) radif
			,EducationalRecordsID

			,(select EducationPlace from TBL_CU_Base_EducationPlace where EducationPlaceID = s.EducationPlace) EducationPlace

			,case when educationplace = 1
			then (select EducationGradeTitle from Tbl_Cu_EducationGrade where EducationGradeID = s.EducationPlace)
			else (select Commision_GradeName from Tbl_Cu_Base_CommisionGrade_Arzeshyabi where Commision_GradeID = s.GradeID) end Grade_ID

			,(select InstituteName from Tbl_Cu_Institute where InstituteID=s.InstituteID) InstituteName

			,(select CountrySchoolingPlaceName from Tbl_Cu_CountrySchoolingPlace where CountrySchoolingPlaceID = s.CountryID) CountrySchoolingPlaceName
			
			,case when educationplace = 1
			then (select UniversityName from Tbl_CU_University where UniversityID = s.UniversityID)
			else (select ForeignInstituteName from Tbl_Cu_ForeignInstitute where ForeignInstituteID = s.UniversityID) end UniversityName

			,(select HesTitle from Tbl_Cu_Base_EducationFieldStudyHes where EducationFieldStudyHesID = s.EducationFieldStudyID) EducationFieldStudy

			,CertificateCode
			,DegreeType
			,EducationEndDate
			,DegreeImage

			,case when isnull(DegreeImage, '-1#') = '-1#' 
			then ''
			else 'مدرک تحصیلی' end as title

			,FileUploadCommitmentCan

			,case when isnull(FileUploadCommitmentCan, '-1#') = '-1#' 
			then ''
			else 'گواهی لغو تعهد آموزش و پرورش' end as title

		from 
			TBL_CU_StudentGetCertificateCode_EducationalRecords S 
		where
			GUID = @guid and ReqGradeID = @ReqGradeID

		
	end


