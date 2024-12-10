select top 1000 * from Tbl_Cu_ApplierProfile


----ds load data
alter PROCEDURE sp_cu_profile_from_Tbl_Cu_ApplierProfile @UserPotalID bigint   --debug >> not recalling data correctly
AS
BEGIN
	select 
		top 1 Name, LastName, ShamsiBirthday, NationalCode
		, (case when MaritalStatusID=1 then '„Ã—œ' when MaritalStatusID=2 then '„ ⁄Â·' end) MaritalStatusID
	from
		Tbl_Cu_ApplierProfile
	where
		UserPortalID= @UserPotalID
END
GO

exec sp_cu_profile_from_Tbl_Cu_ApplierProfile 1

select 
		Name, LastName, ShamsiBirthday, NationalCode, (case when MaritalStatusID=1 then '„Ã—œ' when MaritalStatusID=2 then '„ ⁄Â·' end) MaritalStatusID
	from
		Tbl_Cu_ApplierProfile
	where
		UserPortalID= 1


select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Tbl_Cu_ApplierProfile'
and COLUMN_NAME = ''

----
select
	top 1000 * 
from
	Tbl_Cu_ApplierProfile
where
	MaritalStatusID = 1


--gender
alter PROCEDURE Sp_Cu_Read_Tbl_Cu_Gender_Frm31557
AS
BEGIN
    select
		GenderID, GenderTitle
	from
		Tbl_Cu_Gender
END;


--province already created
--ALTER PROCEDURE [dbo].[Sp_Cu_Select_Province]
--AS
--    BEGIN
--        SET NOCOUNT ON;
--        SELECT  UniProvinceName ,
--                UniProvinceID
--        FROM    dbo.Tbl_Cu_UniversityProvince
--    END

---- built in
--ALTER PROCEDURE [dbo].[Sp_Cu_SelectCity_ByProvinceID]  --
--    @ProvinceID AS INT
--AS
--    BEGIN
--        SET NOCOUNT ON;
--        SELECT  UniCityName ,
--                UniCityID
--        FROM    dbo.Tbl_Cu_UniversityCity
--        WHERE   ProvinceID = @ProvinceID
--    END

--select * from dbo.Tbl_Cu_UniversityCity


-----built in
--ALTER PROC [dbo].[SP_CU_GetNewGUID] @txtGUID AS NVARCHAR(100)
--AS
--BEGIN
--    IF (ISNULL(@txtGUID, 0) <= '0')
--        SELECT NEWID() as GUDID;
--    ELSE
--        SELECT @txtGUID as GUDID;
--END;


--dsfield
--alter proc sp_cu_StudentGrade_frm41607
--as
--	begin
--		select 
--			*
--		from
--			Tbl_Cu_EducationGrade
--		where
--			educationGradeID not in(10,11,12,13,14,15)
--	end



--DSInstitute
--alter procedure [dbo].[Sp_Cu_Select_Tbl_Cu_Institute_FRM31557]
--as
--begin
--	select 
--		*
--	from
--		Tbl_Cu_Institute
--	where
--		InstituteID in (6,8,9,2,3,1)
			
--end


--dsUniversity
--ALTER PROCEDURE [dbo].[Sp_Cu_Select_university_By_UniTypeCode]
--@UniTypeCode AS INT
--AS
--BEGIN
--	SET NOCOUNT ON;
--	SELECT * FROM dbo.Tbl_CU_University
--	WHERE InstituteID =@UniTypeCode --OR @UniTypeCode<=0
--END


--select ExternalUserId from users.TblMemebrShips where ExternalUserId is not null


--select NationalCode from Tbl_Cu_ApplierProfile where NationalCode is not null and NationalCode != ''


--exec Sp_Cu_GetApplicantInformationsInquiryOfDocuments_CertificateCode 0012060151

--SELECT *
--FROM [dbo].[Tbl_Cu_MsrtEducationGrade]



--dsEducationPlace
--ALTER procedure [dbo].[SP_CU_Select_TBL_CU_Base_EducationPlace]
--as
--begin
--select * from TBL_CU_Base_EducationPlace
--end


--exec Sp_Cu_Read_Grade_Frm31557 1, 8, N'9f4477a3-45fe-4d74-9874-4bbf9519b4fb'




create proc sp_cu_fixed_GetNewGUID @txtGUID nvarchar(100)
as
begin
	if (isnull(@txtGUID, 0) < 0)
		select NEWID() as guid
	else
		select @txtGUID as guid 
end

exec sp_test_guid -1





alter proc sp_cu_schooling_country 
as
begin
	select	CountrySchoolingPlaceID, CountrySchoolingPlaceName
	from Tbl_Cu_CountrySchoolingPlace 
end


exec sp_cu_schooling_country



exec SP_CU_Select_UniversityName_FRM31557 



--dsLastUni
create proc sp_cu_last_university
as
	begin
		select InstituteID, InstituteName
		from Tbl_Cu_Institute
	end


exec sp_cu_last_university



--
create proc sp_cu_Check_last_university 
@lastuniID bigint,
@educationPlaceID bigint
as
	begin
		if @educationPlaceID = 1 and (isnull(@lastuniID, '') = '' or isnull(@lastuniID, '-1') = -1)
			select cast(1 as bit) res
		else
			select cast(0 as bit) res
	end


--
create proc sp_cu_Check_last_country
@lastCountryID bigint,
@educationPlaceID bigint
as
	begin
		if @educationPlaceID = 2 and (isnull(@lastCountryID, '') = '' or isnull(@lastCountryID, '-1') = -1)
			select cast(1 as bit) res
		else
			select cast(0 as bit) res
	end

