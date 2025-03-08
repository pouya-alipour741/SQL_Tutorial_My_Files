--exec sp_cu_GetUserinfo_frm41611 Admin_1091, 1


--exec SP_CU_TemporaryResetPassword 'Admin_1091'

--select * from users.TblUsers
--where UserName = 'Admin_1091'

--insert into
--	form.TblSearchFormAccessPermission(FormId, UserId)
--values
--	(41611, 1)
--exec SP_CU_TemporaryResetPassword '0059697326'
--select * from users.TblUsers where userid=2058
--select * from users.TblUsersGroups where GroupId=852
--select * from users.TblGroups where GroupId=852

--select *
--from users.TblProfiles p
--join users.TblUsers u on u.UserId = p.UserId
--where FullName like N'%کد صحت%'
----where UserName like N'%dv_%'

/*
مرکز آموزش زبان فارسی جامعه الزهراـ تایید مدارک  DV_99117

دانشگاه تهران-لغو تعهد  fe_1070

فاطمه مختاری- دانشگاه صنعتی شریف- کد صحت  al_1110_0058781595
کد صحت دانشگاه پیام نور-  معاون آموزشی  گيلان  ALPR_3000_33

 کارشناس آموزش-دانشگاه تبریز-عفت احمدی  SCEDU_9324
کارشناس کمیسیون دانشگاه امیر کبیر   -  SCE_1102
دبیر کمیسیون-آموزشكده فنی و حرفه ای پسران گرگان - SCS_5087

دانشگاه فرهنگيان - پرديس آزادگان نير _کارنامه سلامت جسم  Chh1_6001
دانشگاه فرهنگيان - پرديس آزادگان نير _کارنامه سلامت روان  chc1_6001
*/

--select * from Tbl_Cu_Base_GroupType_Symbol

create table Tbl_Cu_Base_GroupType_Symbol
(
	GroupTypeID int primary key identity(1,1),
	GroupType nvarchar(50),
	Group_Symbol nvarchar(10)
)


go


insert into Tbl_Cu_Base_GroupType_Symbol
values
	('تایید مدارک دانشگاهی جهت ترجمه رسمی', 'DV_'),
	('لغو تعهد آموزش رایگان', 'FE_'),
	('کد صحت - کارشناس دانشگاه', 'AL_'),
	('کد صحت - رییس دانشگاه', 'ALPR_'),
	('کمیسیون موارد خاص - کارشناس آموزش', 'SCEDU_'),
	('کمیسیون موارد خاص - کارشناس کمیسیون', 'SCE_'),
	('کمیسیون موارد خاص - دبیر کمیسیون', 'SCS_'),
	('کارنامه سلامت جسم', 'Chh1_'),
	('کارنامه سلامت روان', 'chc1_')

go


create table Tbl_Cu_UniversityUsersManagement_log
(
	UserID int,
	RegDate nvarchar(10),
	RegTime nvarchar(5),
	RegUser int,
	UserTypeID int,
	ActionType int,
	NationalCode nvarchar(10),
	FullName nvarchar(50),
	MobileNo nvarchar(11),
	Comment nvarchar(50),
	UnitName nvarchar(100)
)


go

--group type
create proc sp_cu_UserType_frm41611   
as
begin
	
	select
		GroupTypeID, GroupType
	from
		Tbl_Cu_Base_GroupType_Symbol
end


go 


--جدول فرم مدیریت کاربران دانشگاه    
create proc sp_cu_GetUserinfo_frm41611   --change like to =
@UserID int,
@GroupTypeID int
as
begin
	declare @UserName nvarchar(30) = (select UserName from users.TblUsers where UserId = @UserID)
	
	declare @SymbolicUser nvarchar(30) = (
						select 
							Group_Symbol + substring(@UserName, charindex('_', @UserName) + 1, len(@UserName)) 
							--case
							--	when charindex('_', @UserName) > 0 then
							--		Group_Symbol + substring(cast(@UserName as nvarchar(50)), charindex('_', @UserName) + 1, len(@UserName)) 
							--	else
							--		Group_Symbol + cast(@UserID as nvarchar(50) )
							--end
						from
							Tbl_Cu_Base_GroupType_Symbol
						where
							GroupTypeID = @GroupTypeID
					   )
	
	declare @Subbed_User nvarchar(30) = (
						select  
							substring(@UserName , charindex('_', @UserName) + 1, len(@UserName))							
										)
	
	if @GroupTypeID not in (-1, '')
		begin
			select
				p.UserId,UserName, FullName
			from
				users.TblProfiles p
				join users.TblUsers u on u.UserId = p.UserId
			where
				UserName like '%' + @SymbolicUser + '%'
		end
	else
		begin
			select
				p.UserId, UserName, FullName
			from
				users.TblProfiles p
				join users.TblUsers u on u.UserId = p.UserId
			where
				UserName like '%' + 'DV_'+ @Subbed_User + '%'
				or UserName like '%' + 'FE_'+ @Subbed_User + '%'
				or UserName like '%' + 'AL_'+ @Subbed_User + '%'
				or UserName like '%' + 'ALPR_'+ @Subbed_User + '%'
				or UserName like '%' + 'SCEDU_'+ @Subbed_User + '%'
				or UserName like '%' + 'SCE_'+ @Subbed_User + '%'  
				or UserName like '%' + 'SCS_'+ @Subbed_User + '%'
				or UserName like '%' + 'Chh1_'+ @Subbed_User + '%'
				or UserName like '%' + 'chc1_'+ @Subbed_User + '%'   
		end
		
end


go	


--select * from users.TblMemebrShips  --comment, cellphone

--select * from users.TblProfiles  --fullname, unitName, NationalCode

--select * from users.TblUsers --UserName   



--جدول فرم تعریف کاربر
create proc sp_cu_DefineNewUser_frm41611_and_Log  
@UserId int,
@UserTypeID int,
@NationalCode nvarchar(10),
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(100) --پست سازمانی
as
begin
	declare @UserName nvarchar(30) = (select UserName from users.TblUsers where UserId = @UserID)


	declare @Subbed_User nvarchar(30) = (
						select 
							substring(@UserName , charindex('_', @UserName) + 1, len(@UserName))
					   )


	declare @SymbolicUserName nvarchar(30) = (
										select
											Group_Symbol + @Subbed_User
										from
											Tbl_Cu_Base_GroupType_Symbol
										where
											GroupTypeID = @UserTypeID
									 )

	if not exists(select 1 from users.TblUsers where UserName like @SymbolicUserName)
		begin
			insert into users.TblUsers(UserName, GUID)
			values(@SymbolicUserName, NEWID())

			declare @identity int = @@identity

			insert into users.TblProfiles(UserId,FullName, UnitName, NationalCode, [Enabled])
			values(@identity,@FullName, @UnitName, @NationalCode, 1)

			insert into users.tblmemebrships
					(userid,
					 cellphone,
					 comment,
					 [password],
					 passwordformat,
					 passwordsalt,
					 PasswordQuestion,
					 PasswordAnswer,
					 createdate,
					 IsLoged,
					 lastlogindate,
					 lastpasswordchangeddate,
					 lastlogoutdate,
					 islockedout,
					 failedpasswordattemptcount,
					 failedpasswordanswerattemptcount,
					 SessionCount,
					 IsSHA
					 )
			values  (@identity,
					@MobileNo,
					@Comment,
					--'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA==',   --password: 123
					'MVSo5JS1ZlkmOHwCisl6x2Vd+lT7h0fpTVrYwWhoX23xUnZzfbT+eu9eWhYJuskHIZ2WBBkINcd8BVX/aydn4g==',  --password: 12345
					0,
					'',
					'',
					'',
					Getdate(),
					1,
					Getdate(),
					Getdate(),
					Getdate(),
					0,
					0,
					0,
					100,
					1
					)

			INSERT  INTO [Users].[TblApplicationModuleTrustee]
                ( [UserId] ,
                  [GroupId] ,
                  [RoleId] ,
                  [ApplicationModuleId]
                )
                SELECT  @identity ,
                        NULL ,
                        NULL ,
                        22
			
			insert into Tbl_Cu_UniversityUsersManagement_log
			(	UserID,
				RegDate,
				RegTime,
				RegUser,
				UserTypeID,
				ActionType,  
				NationalCode,
				FullName,
				MobileNo,
				Comment,
				UnitName
			)
			select 
				@identity,
				(dbo.miladitoshamsi(getdate())),
				cast(convert(time,getdate())as nvarchar(5)),
				@UserId,
				@UserTypeID,
				1, --کاربر جدید
				@NationalCode,
				@FullName,
				@MobileNo,
				@Comment,
				@UnitName
		end

end




--log
--create proc sp_cu_Tbl_Cu_UniversityUsersManagement_DefineNewUser_Log
--@primary_UserID int,
--@RegUser int,
--@UserTypeID int,
--@OldNationalCode int,
--@OldFullName nvarchar(50),
--@OldMobileNo nvarchar(11),
--@OldComment nvarchar(50), --شماره تلفن ثابت اداری
--@OldUnitName nvarchar(100) --پست سازمانی
--as
--begin
--	insert into Tbl_Cu_UniversityUsersManagement_log
--	(	UserID,
--		RegDate,
--		RegTime,
--		RegUser,
--		UserTypeID,
--		ActionType,  
--		OldNationalCode,
--		OldFullName,
--		OldMobileNo,
--		OldComment,
--		OldUnitName
--	)
--	select 
--		@primary_UserID,
--		(dbo.miladitoshamsi(getdate())),
--		cast(convert(time,getdate())as nvarchar(5)),
--		@RegUser,
--		@UserTypeID,
--		1, --کاربر جدید
--		@OldNationalCode,
--		@OldFullName,
--		@OldMobileNo,
--		@OldComment,
--		@OldUnitName		
--end

go

--تغییر پسورد به 123
create proc sp_cu_ChangePassTo_123_frm41611_And_Log  
@User int,
@RegUser int,
@UserTypeID int
as
begin

	update users.TblMemebrShips
	set Password = 'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA=='  --password: 123
	where UserId = @User

	declare @oldFullName nvarchar(50) = (select FullName from users.TblProfiles where UserId = @User)
	declare @OldUnitName nvarchar(100) = (select UnitName from users.TblProfiles where UserId = @User)
	declare @OldNationalCode nvarchar(10) = (select NationalCode from users.TblProfiles where UserId = @User)
	declare @OldCellPhone nvarchar(11) = (select CellPhone from users.tblmemebrships where UserId = @User)
	declare @OldComment nvarchar(50) = (select Comment from users.tblmemebrships where UserId = @User)

	insert into Tbl_Cu_UniversityUsersManagement_log
	(	UserID,
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		ActionType,  
		NationalCode,
		FullName,
		MobileNo,
		Comment,
		UnitName
	)
	select 
		@User,
		(dbo.miladitoshamsi(getdate())),
		cast(convert(time,getdate())as nvarchar(5)),
		@RegUser,
		@UserTypeID,
		4, --تغییر رمز
		@OldNationalCode,
		@oldFullName,
		@OldCellPhone,
		@OldComment,
		@OldUnitName	

end

go


--create proc sp_cu_Tbl_Cu_InsertInto_UniversityUsersManagement_ChangePass_Log
--@primary_UserID int,
--@RegUser int,
--@UserTypeID int,
--@NationalCode int,
--@FullName nvarchar(50),
--@MobileNo nvarchar(11),
--@Comment nvarchar(50), --شماره تلفن ثابت اداری
--@UnitName nvarchar(100) --پست سازمانی
--as
--begin
--	insert into Tbl_Cu_UniversityUsersManagement_log
--	(	UserID,
--		RegDate,
--		RegTime,
--		RegUser,
--		UserTypeID,
--		ActionType,  
--		NationalCode,
--		FullName,
--		MobileNo,
--		Comment,
--		UnitName
--	)
--	select 
--		@primary_UserID,
--		(dbo.miladitoshamsi(getdate())),
--		cast(convert(time,getdate())as nvarchar(5)),
--		@RegUser,
--		@UserTypeID,
--		4, --تغییر رمز
--		@NationalCode,
--		@FullName,
--		@MobileNo,
--		@Comment,
--		@UnitName		
--end


--go


--غیر فعال سازی
create proc sp_cu_DisableUser_frm41611_And_Log 
@user int,
@UserId int,
@UserTypeID int
as
begin
	update users.TblProfiles
	set Enabled = 0
	where UserId = @User


	update users.TblMemebrShips
	set IsLockedOut = 1
	where UserId = @User

	declare @oldFullName nvarchar(50) = (select FullName from users.TblProfiles where UserId = @User)
	declare @OldUnitName nvarchar(100) = (select UnitName from users.TblProfiles where UserId = @User)
	declare @OldNationalCode nvarchar(10) = (select NationalCode from users.TblProfiles where UserId = @User)
	declare @OldCellPhone nvarchar(11) = (select CellPhone from users.tblmemebrships where UserId = @User)
	declare @OldComment nvarchar(50) = (select Comment from users.tblmemebrships where UserId = @User)

	insert into Tbl_Cu_UniversityUsersManagement_log
	(	UserID,
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		ActionType,  
		NationalCode,
		FullName,
		MobileNo,
		Comment,
		UnitName
	)
	select 
		@User,
		(dbo.miladitoshamsi(getdate())),
		cast(convert(time,getdate())as nvarchar(5)),
		@UserId,
		@UserTypeID,
		3, --غیر فعال سازی
		@OldNationalCode,
		@oldFullName,
		@OldCellPhone,
		@OldComment,
		@OldUnitName	
end

go

--ویرایش
create proc sp_cu_UpdateUser_frm41611   
@User int, --table selected row user id
@UserId int,
@UserTypeID int,
@NationalCode nvarchar(10),
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(100) --پست سازمانی
as
begin
	declare @OldUserName nvarchar(30)  = (select UserName from users.TblUsers where UserId = @User)
	declare @oldFullName nvarchar(50) = (select FullName from users.TblProfiles where UserId = @User)
	declare @OldUnitName nvarchar(100) = (select UnitName from users.TblProfiles where UserId = @User)
	declare @OldNationalCode nvarchar(10) = (select NationalCode from users.TblProfiles where UserId = @User)
	declare @OldCellPhone nvarchar(11) = (select CellPhone from users.tblmemebrships where UserId = @User)
	declare @OldComment nvarchar(50) = (select Comment from users.tblmemebrships where UserId = @User)

	if @NationalCode != ''
		update users.TblProfiles
		set
			NationalCode = @NationalCode
		where
			UserId = @User
	if @FullName != ''
		update users.TblProfiles
		set
			FullName = @FullName
		where
			UserId = @User
	if @MobileNo != ''
		update users.tblmemebrships
		set
			CellPhone = @MobileNo
		where
			UserId = @User
	if @Comment != ''
		update users.tblmemebrships
		set
			Comment = (select  'شماره تلفن ثابت اداری:' + char(13) + @Comment )
		where
			UserId = @User
	if @UnitName != ''
		update users.TblProfiles
		set
			UnitName = @UnitName
		where
			UserId = @User
	
	--update users.TblProfiles
	--set
	--	FullName = @FullName,
	--	UnitName = @UnitName,
	--	NationalCode = @NationalCode
	--where
	--	UserId = @User

	--update users.tblmemebrships
	--set
 --       CellPhone = @MobileNo,
 --       Comment = @Comment
	--where
	--	UserId = @User
	if (@NationalCode != '' or @FullName != '' or @MobileNo != '' or @Comment != '' or @UnitName != '')
		begin
			insert into Tbl_Cu_UniversityUsersManagement_log
			(	UserID,
				RegDate,
				RegTime,
				RegUser,
				UserTypeID,
				ActionType,  
				NationalCode,
				FullName,
				MobileNo,
				Comment,
				UnitName
			)
			select 
				@User,
				(dbo.miladitoshamsi(getdate())),
				cast(convert(time,getdate())as nvarchar(5)),
				@UserId,
				@UserTypeID,
				2, --ویرایش
				@OldNationalCode,
				@OldFullName,
				@OldCellPhone,
				@OldComment,
				@OldUnitName	
		end
 end 
 
go


create proc sp_cu_ActionTypes_frm41611 
as
begin
	select 1 as id, 'کاربر جدید' as title
	union
	select 2 as id, 'ویرایش' as title
	union
	select 3 as id, 'غیر فعال سازی' as title
	union
	select 4 as id, 'تغییر رمز به 123' as title

end

go

create proc sp_cu_ReadLog_frm41611
@UserID int,
@ActionType int
as
begin
	    declare @UserName nvarchar(30) = (select UserName from users.TblUsers where UserId = @UserID)


	    declare @Subbed_User nvarchar(30) = (
						select 
							substring(@UserName , charindex('_', @UserName) + 1, len(@UserName))
										);

		with cte as(
					select top 1000			
						(select UserName from users.TblUsers where UserId = u.UserID) UserName,
						RegDate,
						RegTime,
						(select FullName from users.TblProfiles where UserId = RegUser) RegUser,
						case 
							when ActionType = 1 then 'کاربر جدید'
							when ActionType = 2 then 'ویرایش'
							when ActionType = 3 then 'غیر فعال سازی'
							when ActionType = 4 then 'تغییر رمز به 123'
						end ActionType,
						NationalCode,
						FullName,
						MobileNo,
						Comment,
						UnitName
					from 
						Tbl_Cu_UniversityUsersManagement_log u
					where
						(@ActionType in (-1, '') or ActionType = @ActionType)
				   )
			select
				row_number() over(order by RegDate desc, RegTime desc) rownumber,
				*
			from
				cte
			where
				UserName like '%' + @Subbed_User + '%'
end

go

create proc sp_cu_chkValidateDefineUser_frm41611 
@cmbUserType int
as
begin
	if @cmbUserType in( -1, '')
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
end

go

create PROC [dbo].[SP_CU_CheckValidNationalCode_Frm41611]
@NationalCode NVARCHAR(10)
AS
BEGIN
	IF ((select [dbo].[Is_A_Valid_National_ID] (@NationalCode)) = 0)
		SELECT 1 AS Res
	ELSE
		SELECT 0 AS Res
END


go


create PROC [dbo].[SP_CU_CheckValidMobilePhone_Frm41611]
@PhoneNumber NVARCHAR(11)
AS
BEGIN
	IF (@PhoneNumber LIKE '09[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' or @PhoneNumber = '')
		SELECT 0 AS Res
	ELSE
		SELECT 1 AS Res
END

go

create PROC [dbo].[SP_CU_CheckRepeatedUser_Frm41611]
@UserID int,
@UserTypeID int
AS
BEGIN
	declare @UserName nvarchar(30) = (select UserName from users.TblUsers where UserId = @UserID)


	declare @Subbed_User nvarchar(30) = (
						select 
							substring(@UserName , charindex('_', @UserName) + 1, len(@UserName))
					   )

	declare @SymbolicUserName nvarchar(30) = (
										select
											Group_Symbol + @Subbed_User
										from
											Tbl_Cu_Base_GroupType_Symbol
										where
											GroupTypeID = @UserTypeID
									 )

	if not exists(select 1 from users.TblUsers where UserName like @SymbolicUserName)
		SELECT cast(0 as bit) AS Res
	ELSE
		SELECT cast(1 as bit) AS Res
END


go

create PROC [dbo].[SP_CU_CheckIfFullNameEmpty_Frm41611]
@txtFullName NVARCHAR(50)
AS
BEGIN
	IF @txtFullName = ''
		SELECT cast(1 as bit) AS Res
	ELSE
		SELECT cast(0 as bit) AS Res
END

go

create proc sp_cu_checkAlreadyDisabled_frm41611
@User int
as
begin
	if (select Enabled from users.TblProfiles where UserId = @User) = 0
		and (select IsLockedOut from users.TblMemebrShips where UserId = @User) = 1
		begin
			select cast(1 as bit) res
		end
	else
		select cast(0 as bit) res
end

go

create proc sp_cu_checkAlreadyPass123_frm41611  
@User int
as
begin
	if (select Password from users.TblMemebrShips where UserId = @User) = 'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA=='
		begin
			select 1 as res
		end
	else
		select 0 as res
end

--create proc sp_cu_Tbl_Cu_UniversityUsersManagement_UpdateUser_Log 
--@primary_UserID int,
--@RegUser int,
--@UserTypeID int,
--@OldNationalCode int,
--@OldFullName nvarchar(50),
--@OldMobileNo nvarchar(11),
--@OldComment nvarchar(50), --شماره تلفن ثابت اداری
--@OldUnitName nvarchar(100) --پست سازمانی
--as
--begin
--	insert into Tbl_Cu_UniversityUsersManagement_log
--	(	UserID,
--		RegDate,
--		RegTime,
--		RegUser,
--		UserTypeID,
--		ActionType,  --1: add 2:disable 3:change pass 4:update
--		OldNationalCode,
--		OldFullName,
--		OldMobileNo,
--		OldComment,
--		OldUnitName
--	)
--	select 
--		@primary_UserID,
--		(dbo.miladitoshamsi(getdate())),
--		cast(convert(time,getdate())as nvarchar(5)),
--		@RegUser,
--		@UserTypeID,
--		2, --ویرایش
--		@OldNationalCode,
--		@OldFullName,
--		@OldMobileNo,
--		@OldComment,
--		@OldUnitName		
--end


--go



--RegDate, RegTime, User
 --go

--create table tbl_cu_ChangePassTo_123
--(
--	UserID int,
--	old_password nvarchar(100),
--	new_password nvarchar(100)
--)

--go

--create proc sp_cu_ChangePassTo_123_log   --not done
--@UserID int,
--@old_password nvarchar(100),
--@new_password nvarchar(100)
--as
--begin
--	insert into tbl_cu_ChangePassTo_123
--	values(@UserID, @old_password, @new_password)

--end