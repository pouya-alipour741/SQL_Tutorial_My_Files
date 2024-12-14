USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_Select_UniversityName_FRM41607]    Script Date: 12/14/2024 6:17:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SP_CU_Select_UniversityName_FRM41607]  
@EducationPlace bigint,
@LastInstitude bigint,
@LastCountry bigint
as
	begin
		if @EducationPlace = 1
		begin
			select UniversityID,UniversityName
			from Tbl_CU_University
			where InstituteID = @LastInstitude
		end
		else if @EducationPlace = 2
			begin
				select ForeignInstituteID as UniversityID
				, ForeignInstituteName as UniversityName
				from Tbl_Cu_ForeignInstitute
				where CountrySchoolingPlaceID = @LastCountry
			end
		else
			select '' as UniversityID,
			'' as UniversityName
	end