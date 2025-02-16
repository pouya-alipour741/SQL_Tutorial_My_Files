
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

select * from Tbl_Cu_Base_GroupType_Symbol
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
create proc sp_cu_UserType_frm   ---rename
as
begin
	
	select
		GroupTypeID, GroupType
	from
		Tbl_Cu_Base_GroupType_Symbol
end


go 


--جدول فرم مدیریت کاربران دانشگاه
create proc sp_cu_GetUserinfo_frm   ---rename
@UserID int,
@GroupTypeID int
as
begin
	declare @SymbolicUser nvarchar(30) = (
						select 
							Group_Symbol + cast(@UserID as nvarchar(20))
						from
							Tbl_Cu_Base_GroupType_Symbol
						where
							GroupTypeID = @GroupTypeID
					   )
	select
		UserName, FullName
	from
		users.TblProfiles p
		join users.TblUsers u on u.UserId = p.UserId
	where
		UserName like @SymbolicUser
		
end


go	


select * from users.TblMemebrShips  --comment, cellphone

select * from users.TblProfiles  --fullname, unitName, NationalCode

select * from users.TblUsers --UserName   



--جدول فرم تعریف کاربر
create proc sp_cu_DefineNewUser_frm --rename --not done yet
@UserId int,
@UserTypeID int,
@NationalCode int,
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(50) --پست سازمانی
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

--تغییر پسورد به 123
create proc sp_cu_ChangePassTo_123_frm  --rename
@User int
as
begin
	select * from users.TblMemebrShips
	update users.TblMemebrShips
	set Password = 'mUZn0ldiJ3RTqovDmAzBGEL++ZndLPeYPMS+dpDdI+0F87vigzTECPE56skc01Pv1/QA0l45boXCqRjHj0/WCA=='
	where UserId = @User
end

go


--غیر فعال سازی
create proc sp_cu_DisableUser
@user int
as
begin
	update users.TblProfiles
	set Enabled = 0
	where UserId = @User
end


--ویرایش
create proc sp_cu_UpdateUser_frm --rename 
@User int, --table selected row user id
@UserId int,
@UserTypeID int,
@NationalCode int,
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(50) --پست سازمانی
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
	update users.TblUsers
	set 
		UserName = @UserName
	where UserId = @User

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
 end 
 

create table Tbl_Cu_DefineNewUser_Log
(
	RegDate nvarchar(10),
	RegTime nvarchar(5),
	RegUser int,
	UserTypeID int,
	NationalCode nvarchar(10),
	FullName nvarchar(50),
	MobileNo nvarchar(11),
	Comment nvarchar(50),
	UnitName nvarchar(50)
)

 --log
create proc sp_cu_DisableUser
@UserId int,
@UserTypeID int,
@NationalCode int,
@FullName nvarchar(50),
@MobileNo nvarchar(11),
@Comment nvarchar(50), --شماره تلفن ثابت اداری
@UnitName nvarchar(50) --پست سازمانی
as
begin
	insert into Tbl_Cu_DefineNewUser_Log
	(	
		RegDate,
		RegTime,
		RegUser,
		UserTypeID,
		NationalCode,
		FullName,
		MobileNo,
		Comment,
		UnitName
	)
	select 
		(dbo.miladitoshamsi(getdate())) RegDate,
		cast(convert(time,getdate())as nvarchar(5)) RegTime,
		@UserId,
		@UserTypeID,
		@NationalCode,
		@FullName,
		@MobileNo,
		@Comment,
		@UnitName		
end

--RegDate, RegTime, User
 