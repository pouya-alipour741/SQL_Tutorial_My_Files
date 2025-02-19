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


--جدول فرم مدیریت کاربران دانشگاه    --note:what if @GroupTypeID = -1
alter proc sp_cu_GetUserinfo_frm41611   --change like to =
@UserID int,
@GroupTypeID int
as
begin
	declare @UserName nvarchar(30) = (select UserName from users.TblUsers where UserId = @UserID)
	
	declare @SymbolicUser nvarchar(30) = (
						select 
							case
								when charindex('_', @UserName) > 0 then
									Group_Symbol + substring(cast(@UserName as nvarchar(50)), charindex('_', @UserName) + 1, len(@UserName)) 
								else
									Group_Symbol + cast(@UserID as nvarchar(50) )
							end
						from
							Tbl_Cu_Base_GroupType_Symbol
						where
							GroupTypeID = @GroupTypeID
					   )
	
	declare @User nvarchar(30) = (
						select 
							case
								when charindex('_', @UserName) > 0 then
									substring(cast(@UserName as nvarchar(50)), charindex('_', @UserName) + 1, len(@UserName)) 
								else
									@UserID 
							end
					   )
	if @GroupTypeID != -1
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
				UserName like '%' + 'DV_'+ @User + '%'
				or UserName like '%' + 'FE_'+ @User + '%'
				or UserName like '%' + 'AL_'+ @User + '%'
				or UserName like '%' + 'ALPR_'+ @User + '%'
				or UserName like '%' + 'SCEDU_'+ @User + '%'
				or UserName like '%' + 'SCE_'+ @User + '%'  
				or UserName like '%' + 'SCS_'+ @User + '%'
				or UserName like '%' + 'Chh1_'+ @User + '%'
				or UserName like '%' + 'chc1_'+ @User + '%'   
		end
		
end


go	


--select * from users.TblMemebrShips  --comment, cellphone

--select * from users.TblProfiles  --fullname, unitName, NationalCode

--select * from users.TblUsers --UserName   



--جدول فرم تعریف کاربر
create proc sp_cu_DefineNewUser_frm41611 
@UserId int,
@UserTypeID int,
@NationalCode int,
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(100) --پست سازمانی
as
begin
	declare @UserName nvarchar(30) = (
										select
											Group_Symbol + cast(@UserId as nvarchar(30))
										from
											Tbl_Cu_Base_GroupType_Symbol
										where
											GroupTypeID = @UserTypeID
									 )


	insert into users.TblUsers(UserName, GUID)
	values(@UserName, NEWID())

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
             createdate,
             lastlogindate,
             lastpasswordchangeddate,
             lastlogoutdate,
             islockedout,
             failedpasswordattemptcount,
             failedpasswordanswerattemptcount)
	values  (@identity,
            @MobileNo,
            @Comment,
			'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA==',  --password: 12345
			0,
			'',
			Getdate(),
			'',
			'',
			'',
			0,
			0,
			0) 

end

go

--12345
--MVSo5JS1ZlkmOHwCisl6x2Vd+lT7h0fpTVrYwWhoX23xUnZzfbT+eu9eWhYJuskHIZ2WBBkINcd8BVX/aydn4g==

--123
--mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA==


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
	UnitName nvarchar(50)
)

go

--log
create proc sp_cu_Tbl_Cu_UniversityUsersManagement_DefineNewUser_Log
@primary_UserID int,
@RegUser int,
@UserTypeID int,
@OldNationalCode int,
@OldFullName nvarchar(50),
@OldMobileNo nvarchar(11),
@OldComment nvarchar(50), --شماره تلفن ثابت اداری
@OldUnitName nvarchar(100) --پست سازمانی
as
begin
	insert into Tbl_Cu_UniversityUsersManagement_log
	(	UserID,
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		ActionType,  --1: add 2:disable 3:change pass 4:update
		OldNationalCode,
		OldFullName,
		OldMobileNo,
		OldComment,
		OldUnitName
	)
	select 
		@primary_UserID,
		(dbo.miladitoshamsi(getdate())),
		cast(convert(time,getdate())as nvarchar(5)),
		@RegUser,
		@UserTypeID,
		1, --کاربر جدید
		@OldNationalCode,
		@OldFullName,
		@OldMobileNo,
		@OldComment,
		@OldUnitName		
end

go

--تغییر پسورد به 123
create proc sp_cu_ChangePassTo_123_frm41611  
@User int
as
begin
	--declare @old_password nvarchar(100) = (select password from users.TblMemebrShips where UserId = @User)

	update users.TblMemebrShips
	set Password = 'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA=='  --password: 123
	where UserId = @User

	--declare @new_password nvarchar(100) = (select password from users.TblMemebrShips where UserId = @User)
	--select @old_password as old_password, @new_password as new_password
end

go


create proc sp_cu_Tbl_Cu_InsertInto_UniversityUsersManagement_ChangePass_Log
@primary_UserID int,
@RegUser int,
@UserTypeID int,
@NationalCode int,
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(100) --پست سازمانی
as
begin
	insert into Tbl_Cu_UniversityUsersManagement_log
	(	UserID,
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		ActionType,  --1: add 2:disable 3:change pass 4:update
		NationalCode,
		FullName,
		MobileNo,
		Comment,
		UnitName
	)
	select 
		@primary_UserID,
		(dbo.miladitoshamsi(getdate())),
		cast(convert(time,getdate())as nvarchar(5)),
		@RegUser,
		@UserTypeID,
		4, --تغییر رمز
		@NationalCode,
		@FullName,
		@MobileNo,
		@Comment,
		@UnitName		
end


go


--غیر فعال سازی
create proc sp_cu_DisableUser_frm41611
@user int
as
begin
	update users.TblProfiles
	set Enabled = 0
	where UserId = @User
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
	declare @UserName nvarchar(30) = (
										select
											Group_Symbol + cast(@UserId as nvarchar(30))
										from
											Tbl_Cu_Base_GroupType_Symbol
										where
											GroupTypeID = @UserTypeID
									 )

	declare @OldUserName nvarchar(30)  = (select UserName from users.TblUsers where UserId = @User)
	declare @oldFullName nvarchar(50) = (select FullName from users.TblProfiles where UserId = @User)
	declare @OldUnitName nvarchar(100) = (select UnitName from users.TblProfiles where UserId = @User)
	declare @OldNationalCode nvarchar(10) = (select NationalCode from users.TblProfiles where UserId = @User)
	declare @OldCellPhone nvarchar(11) = (select CellPhone from users.tblmemebrships where UserId = @User)
	declare @OldComment nvarchar(50) = (select Comment from users.tblmemebrships where UserId = @User)

	update users.TblUsers
	set 
		UserName = @UserName
	where
		UserId = @User

	update users.TblProfiles
	set
		FullName = @FullName,
		UnitName = @UnitName,
		NationalCode = @NationalCode
	where
		UserId = @User

	update users.tblmemebrships
	set
        CellPhone = @MobileNo,
        Comment = @Comment
	where
		UserId = @User

	insert into Tbl_Cu_UniversityUsersManagement_log
	(	UserID,
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		ActionType,  --1: add 2:disable 3:change pass 4:update
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
 
go


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