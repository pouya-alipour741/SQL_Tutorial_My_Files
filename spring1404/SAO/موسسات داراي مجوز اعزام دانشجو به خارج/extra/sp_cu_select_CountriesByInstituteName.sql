create proc sp_cu_select_CountriesByInstituteName  --exec sp_cu_select_CountriesByInstituteName 2
	@ReturnInstituteTypeID int
as
begin
	if @ReturnInstituteTypeID = 1
	begin
		with cte as(
			select
				InstituteID,			
				(select LicenseInstituteName from tbl_Cu_Base_LicenseInstitute where LicenseInstituteID = InstituteID)  Institute,
				CountryID,
				(select CountrySchoolingPlaceName from Tbl_Cu_CountrySchoolingPlace where CountrySchoolingPlaceID = CountryID) ActivityArea,		
				ProvinceOffice,
				(select p.UniProvinceName from Tbl_Cu_UniversityProvince P where P.UniProvinceID=ProvinceOffice) ProvinceOfficeName,	
				CityOffice,
				(Select C.UniCityName From Tbl_Cu_UniversityCity C Where C.UniCityID=L.CityOffice) CityOfficeName,
				LicenseInstituteType,
				(select top 1 [Name] from Workflow.TblWorkflow where WorkflowId = l.LicenseInstituteType) InstituteType,				
				FirstNameAndLastName,
				FirstName2,
				PhoneNumber,
				EmailAddress,
				AddressOffice,
				IssueDateLicense,
				ExpirationDateLicense,
				Nationalcode,
				Nationalcode2
			from
				tbl_Cu_base_InstituteNameByCountry i
				join Tbl_Cu_Base_LicenseInstitute l on l.LicenseInstituteID = i.InstituteID
		),
		cte2 as(
		select
			InstituteID,
			STRING_AGG(CountryID, ',')  CountriesID,
			STRING_AGG(ActivityArea, ',')  countries
		from cte 
		group by InstituteID
		)
		select distinct
			cte.InstituteID,
			cte.Institute,
			cte.ProvinceOffice,
			cte.ProvinceOfficeName,
			cte.CityOffice,
			CityOfficeName,
			CountriesID,
			cte2.Countries,
			LicenseInstituteType,
			cte.InstituteType,
			FirstNameAndLastName,
			FirstName2,
			PhoneNumber,
			EmailAddress,
			AddressOffice,
			IssueDateLicense,
			ExpirationDateLicense,
			Nationalcode,
			Nationalcode2
		from cte2
		join cte on cte.InstituteID = cte2.InstituteID
		where LicenseInstituteType = 2000567
	end
	else
	begin
		with cte as(
			select
				InstituteID,			
				(select LicenseInstituteName from tbl_Cu_Base_LicenseInstitute where LicenseInstituteID = InstituteID)  Institute,
				CountryID,
				(select CountrySchoolingPlaceName from Tbl_Cu_CountrySchoolingPlace where CountrySchoolingPlaceID = CountryID) ActivityArea,		
				ProvinceOffice,
				(select p.UniProvinceName from Tbl_Cu_UniversityProvince P where P.UniProvinceID=ProvinceOffice) ProvinceOfficeName,	
				CityOffice,
				(Select C.UniCityName From Tbl_Cu_UniversityCity C Where C.UniCityID=L.CityOffice) CityOfficeName,
				LicenseInstituteType,
				(select top 1 [Name] from Workflow.TblWorkflow where WorkflowId = l.LicenseInstituteType) InstituteType,				
				FirstNameAndLastName,
				FirstName2,
				PhoneNumber,
				EmailAddress,
				AddressOffice,
				IssueDateLicense,
				ExpirationDateLicense,
				Nationalcode,
				Nationalcode2
			from
				tbl_Cu_base_InstituteNameByCountry i
				join Tbl_Cu_Base_LicenseInstitute l on l.LicenseInstituteID = i.InstituteID
		),
		cte2 as(
		select
			InstituteID,
			STRING_AGG(CountryID, ',')  CountriesID,
			STRING_AGG(ActivityArea, ',')  countries
		from cte 
		group by InstituteID
		)
		select distinct
			cte.InstituteID,
			cte.Institute,
			cte.ProvinceOffice,
			cte.ProvinceOfficeName,
			cte.CityOffice,
			CityOfficeName,
			CountriesID,
			cte2.Countries,
			LicenseInstituteType,
			cte.InstituteType,
			FirstNameAndLastName,
			FirstName2,
			PhoneNumber,
			EmailAddress,
			AddressOffice,
			IssueDateLicense,
			ExpirationDateLicense,
			Nationalcode,
			Nationalcode2
		from cte2
		join cte on cte.InstituteID = cte2.InstituteID
		where LicenseInstituteType = 94
	end
end


