--exec Sp_Cu_SearchInformation_Frm41612 @txtName=N'',@txtFamilyName=N'',@txtNationalCode=N'',@cmbWFIDStatus=N'-1',@cmbGrade=N'-1',@txtWFID=N'0',@CurrentUserId=N'1'

create proc Sp_Cu_SearchInformation_Frm41612
	@txtName nvarchar(50),
	@txtFamilyName nvarchar(50),
	@txtNationalCode nvarchar(10),
	@cmbWFIDStatus int,
	@cmbGrade int,
	@txtWFID bigint,
	@CurrentUserId int
as
begin
	declare @Len as int =(select top 1 len(username) from users.TblUsers where userid=@CurrentUserID) 
	declare @User_name as NVARCHAR(50) =(select case when @len=16 then substring(username,1,5) else substring(username,1,@len) end from users.TblUsers where userid=@CurrentUserID) 
    SET @txtName = dbo.Fn_CU_FixPersianString(@txtName);
    SET @txtFamilyName = dbo.Fn_CU_FixPersianString(@txtFamilyName);
	print @Len

	 IF EXISTS
    (
        SELECT top 1 1
        FROM Users.TblUsersGroups
        WHERE UserId = @CurrentUserID
              AND GroupId IN  (923,2,3)
    )

		begin
			with cte as(
				select 	top 1000			
					[Name],
					FamilyName,
					NationalCode,
					txtCertificateCode,
					WFID,
					(
					   SELECT EducationGradeTitle
					   FROM dbo.Tbl_Cu_EducationGrade
					   WHERE EducationGradeID = el.GradeID
				   ) as Grade,
				   (select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = el.StatusID) LogStatusTitle
			from
				Tbl_Cu_EncyclopediaEdit_Log el
			where
				(@cmbWFIDStatus = -1 or StatusID = @cmbWFIDStatus)
				and (@cmbGrade = -1 or GradeID = @cmbGrade)
			)
				select
					ROW_NUMBER() over(order by WFID desc) RowNumber,
					*
				from
					cte c
				where
					(@txtName = '' or c.[Name] like '%' + @txtName + '%')
					and (@txtFamilyName = '' or c.FamilyName like '%' + @txtFamilyName + '%')
					and (@txtNationalCode = '' or c.NationalCode like '%' + @txtNationalCode + '%')					
					and (@txtWFID = '' or c.WFID = @txtWFID)
		end
	else
		begin
			with cte as(
				select top 1000			
					[Name],
					FamilyName,
					NationalCode,
					txtCertificateCode,
					WFID,
					(
					   SELECT EducationGradeTitle
					   FROM dbo.Tbl_Cu_EducationGrade
					   WHERE EducationGradeID = el.GradeID
				   ) as Grade,
				   (select LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = el.StatusID) LogStatusTitle
			from
				Tbl_Cu_EncyclopediaEdit_Log el
			where
				(@cmbWFIDStatus = -1 or StatusID = @cmbWFIDStatus)
				and (@cmbGrade = -1 or GradeID = @cmbGrade)
				and RegUserID = @CurrentUserId
				--AND (
				--	(select case when @len=16 then substring(username,1,5) else substring(username,1,@len) end from users.TblUsers where userid=txtUserExpert) =  @User_name 
				--or  
				--	RegUserID = @CurrentUserID
				--	)
			)
				select
					ROW_NUMBER() over(order by WFID desc) RowNumber,
					*
				from
					cte c
				where
					(@txtName = '' or c.[Name] like '%' + @txtName + '%')
					and (@txtFamilyName = '' or c.FamilyName like '%' + @txtFamilyName + '%')
					and (@txtNationalCode = '' or c.NationalCode like '%' + @txtNationalCode + '%')
					and (@txtWFID = '' or c.WFID = @txtWFID)
		end
end

go 

create proc Sp_Cu_WFIDStatus_Frm41612
as
begin
	--select
	--	LogStatusID, LogStatusTitle
	--from
	--	Tbl_CU_LogStatus s
	--where
	--	LogStatusID in(select StatusID from Tbl_Cu_EncyclopediaEdit_Log)


	select
		LogStatusID, LogStatusTitle
	from
		Tbl_CU_LogStatus s
	where
		WID = 2000554
end


