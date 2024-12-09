select top 1000 * from Tbl_Cu_ApplierProfile


----ds load data
alter PROCEDURE sp_cu_profile_from_Tbl_Cu_ApplierProfile @UserPotalID bigint   --debug >> not recalling data correctly
AS
BEGIN
	select 
		top 1 Name, LastName, ShamsiBirthday, NationalCode, (case when MaritalStatusID=1 then '„Ã—œ' when MaritalStatusID=2 then '„ ⁄Â·' end) MaritalStatusID
	from
		Tbl_Cu_ApplierProfile
	where
		UserPortalID= @UserPotalID
END
GO

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
ALTER PROCEDURE [dbo].[Sp_Cu_Select_Province]
AS
    BEGIN
        SET NOCOUNT ON;
        SELECT  UniProvinceName ,
                UniProvinceID
        FROM    dbo.Tbl_Cu_UniversityProvince
    END

-- built in
ALTER PROCEDURE [dbo].[Sp_Cu_SelectCity_ByProvinceID]  --
    @ProvinceID AS INT
AS
    BEGIN
        SET NOCOUNT ON;
        SELECT  UniCityName ,
                UniCityID
        FROM    dbo.Tbl_Cu_UniversityCity
        WHERE   ProvinceID = @ProvinceID
    END

select * from dbo.Tbl_Cu_UniversityCity


---built in
ALTER PROC [dbo].[SP_CU_GetNewGUID] @txtGUID AS NVARCHAR(100)
AS
BEGIN
    IF (ISNULL(@txtGUID, 0) <= '0')
        SELECT NEWID() as GUDID;
    ELSE
        SELECT @txtGUID as GUDID;
END;


--
alter proc sp_cu_StudentGrade_frm41607
as
	begin
		select 
			*
		from
			Tbl_Cu_EducationGrade
		where
			educationGradeID not in(10,11,12,13,14,15)
	end
