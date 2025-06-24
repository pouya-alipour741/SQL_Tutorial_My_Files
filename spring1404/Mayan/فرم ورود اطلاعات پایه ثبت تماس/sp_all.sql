create table Tbl_CU_Base_ContactSubject
(
	ContactSubjectID int primary key identity(1,1) ,
	ContactSubject nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ContactSubject
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		ContactSubjectID,
		ContactSubject,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive		
	from Tbl_CU_Base_ContactSubject
end

go

insert into Tbl_CU_Base_ContactSubject
values
	('شکایات موجه', 1),
	('پیگیری و پشتیبانی', 1),
	('انتقادات و پیشنهادات', 1),
	('کسب اطلاعات', 1),
	('شکایات غیرموجه', 1),
	('خدمات جاده ای', 1)

go

create table Tbl_CU_Base_ContactSubjectLevelOne
(
	ContactSubjectLevelOneID int primary key identity(1,1) ,
	ContactSubjectID int,
	ContactSubjectLevelOne nvarchar(50),
	IsActive bit
)

go

insert into Tbl_CU_Base_ContactSubjectLevelOne(ContactSubjectID, ContactSubjectLevelOne, IsActive)
select 
	ContactSubjectID,
	SubjectLevelTitle,
	IsActive
from [ContactServerDB].[dbo].[Tbl_SubjectLevel]
where ParentID = 0

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ContactSubjectLevelOne
	@ContactSubjectID int
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		ContactSubjectLevelOneID,
		(select  ContactSubject from Tbl_CU_Base_ContactSubject where ContactSubjectID = o.ContactSubjectID) ContactSubject,
		ContactSubjectLevelOne,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive		
	from Tbl_CU_Base_ContactSubjectLevelOne	o
	where
		(ContactSubjectID = @ContactSubjectID or @ContactSubjectID in(-1, ''))
end

go

create table Tbl_CU_Base_ContactSubjectLevelTwo
(
	ContactSubjectLevelTwoID int primary key identity(1,1) ,
	ContactSubjectLevelOneID int ,
	ContactSubjectID int,
	ContactSubjectLevelTwo nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ContactSubjectLevelTwo
	@ContactSubjectID int,
	@ContactSubjectLevelOneID int
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		ContactSubjectLevelTwoID,
		(select  ContactSubject from Tbl_CU_Base_ContactSubject where ContactSubjectID = t.ContactSubjectID) ContactSubject,
		(select ContactSubjectLevelOne from Tbl_CU_Base_ContactSubjectLevelOne where ContactSubjectLevelOneID = t.ContactSubjectLevelOneID) ContactSubjectLevelOneID,		
		ContactSubjectLevelTwo,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive		
	from Tbl_CU_Base_ContactSubjectLevelTwo	t
	where
		(ContactSubjectID = @ContactSubjectID or @ContactSubjectID in(-1, '') ) and
		(ContactSubjectLevelOneID = @ContactSubjectLevelOneID or @ContactSubjectLevelOneID in(-1, '') )
end

go

create table Tbl_CU_Base_ContactSubjectLevelThree
(
	ContactSubjectLevelThreeID int primary key identity(1,1) ,
	ContactSubjectLevelTwoID int ,
	ContactSubjectLevelOneID int ,
	ContactSubjectID int,
	ContactSubjectLevelThree nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ContactSubjectLevelThree
	@ContactSubjectID int,
	@ContactSubjectLevelOneID int,
	@ContactSubjectLevelTwoID int
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		ContactSubjectLevelThreeID,
		(select  ContactSubject from Tbl_CU_Base_ContactSubject where ContactSubjectID = t.ContactSubjectID) ContactSubject,
		(select ContactSubjectLevelOne from Tbl_CU_Base_ContactSubjectLevelOne where ContactSubjectLevelOneID = t.ContactSubjectLevelOneID) ContactSubjectLevelOne,
		(select ContactSubjectLevelTwo from Tbl_CU_Base_ContactSubjectLevelTwo where ContactSubjectLevelTwoID = t.ContactSubjectLevelTwoID ) ContactSubjectLevelTwo,
		ContactSubjectLevelThree,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive		
	from Tbl_CU_Base_ContactSubjectLevelThree	t
	where
		(ContactSubjectID = @ContactSubjectID or @ContactSubjectID in(-1, '') ) and
		(ContactSubjectLevelOneID = @ContactSubjectLevelOneID or @ContactSubjectLevelOneID in(-1, '') ) and
		(ContactSubjectLevelTwoID = @ContactSubjectLevelTwoID or @ContactSubjectLevelTwoID in(-1, '') )
end

go

create table Tbl_CU_Base_ContactSubjectLevelFour
(
	ContactSubjectLevelFourID int primary key identity(1,1) ,
	ContactSubjectLevelThreeID int ,
	ContactSubjectLevelTwoID int ,
	ContactSubjectLevelOneID int ,
	ContactSubjectID int,
	ContactSubjectLevelFour nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ContactSubjectLevelFour
	@ContactSubjectID int,
	@ContactSubjectLevelOneID int,
	@ContactSubjectLevelTwoID int,
	@ContactSubjectLevelThreeID int
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		ContactSubjectLevelThreeID,
		(select  ContactSubject from Tbl_CU_Base_ContactSubject where ContactSubjectID = f.ContactSubjectID) ContactSubject,
		(select ContactSubjectLevelOne from Tbl_CU_Base_ContactSubjectLevelOne where ContactSubjectLevelOneID = f.ContactSubjectLevelOneID) ContactSubjectLevelOne,
		(select ContactSubjectLevelTwo from Tbl_CU_Base_ContactSubjectLevelTwo where ContactSubjectLevelTwoID = f.ContactSubjectLevelTwoID ) ContactSubjectLevelTwo,
		(select ContactSubjectLevelThree from Tbl_CU_Base_ContactSubjectLevelThree where ContactSubjectLevelThreeID = f.ContactSubjectLevelThreeID ) ContactSubjectLevelThree,
		ContactSubjectLevelFour,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive		
	from Tbl_CU_Base_ContactSubjectLevelFour f
	where
		(ContactSubjectID = @ContactSubjectID or @ContactSubjectID in(-1, '') ) and
		(ContactSubjectLevelOneID = @ContactSubjectLevelOneID or @ContactSubjectLevelOneID in(-1, '') ) and
		(ContactSubjectLevelTwoID = @ContactSubjectLevelTwoID or @ContactSubjectLevelTwoID in(-1, '') ) and
		(ContactSubjectLevelThreeID = @ContactSubjectLevelThreeID or @ContactSubjectLevelThreeID in(-1, '') )
end

go

create table Tbl_CU_Base_ProductionCompany
(
	CompanyID int primary key identity(1,1),
	CompanyName nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_ProductionCompany
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		CompanyID,
		CompanyName ,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive
	from Tbl_CU_Base_ProductionCompany 
end

go

create table Tbl_CU_Base_VehicleType
(
	VehicleID int primary key identity(1,1),
	VehicleName nvarchar(50),
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_VehicleType
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		VehicleID,
		VehicleName ,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive
	from Tbl_CU_Base_VehicleType 
end

go

create table Tbl_CU_Base_VehicleBodyAllocationToCompany
(
	VehicleBodyAllocationToCompanyID int primary key identity(1,1),
	VehicleBodyNumber int,
	IsActive bit
)

go

create or alter proc Sp_CU_Read_Tbl_CU_Base_VehicleBodyAllocationToCompany
	@CompanyID int,
	@VechileTypeID int
as
begin
	select
		ROW_NUMBER() over(order by (select null)) rownumber,
		VehicleBodyAllocationToCompanyID,
		VehicleBodyNumber ,
		(select CompanyName from Tbl_CU_Base_ProductionCompany where CompanyID = @CompanyID) CompanyType,
		(select VehicleName from Tbl_CU_Base_VehicleType where VehicleID = @VechileTypeID) VehicleName,
		case 
			when IsActive = 1 then 'فعال'
			else 'غیر فعال'
		end IsActive
	from Tbl_CU_Base_VehicleBodyAllocationToCompany 
end


--فرم پایه ها
go
create or alter proc Sp_CU_ContactSubject
	@ContactSubjectID int
as
begin
	select ContactSubject
	from Tbl_CU_Base_ContactSubject
	where ContactSubjectID = @ContactSubjectID
end

go

create or alter proc Sp_CU_ContactSubjectLevelOne
	@ContactSubjectLevelOneID int
as
begin
	select ContactSubjectLevelOne
	from Tbl_CU_Base_ContactSubjectLevelOne
	where ContactSubjectLevelOneID = @ContactSubjectLevelOneID
end

go

create or alter proc Sp_CU_ContactSubjectLevelTwo
	@ContactSubjectLevelTwoID int
as
begin
	select ContactSubjectLevelTwo
	from Tbl_CU_Base_ContactSubjectLevelTwo
	where ContactSubjectLevelTwoID = @ContactSubjectLevelTwoID
end

go

create or alter proc Sp_CU_ContactSubjectLevelThree
	@ContactSubjectLevelThreeID int
as
begin
	select ContactSubjectLevelThree
	from Tbl_CU_Base_ContactSubjectLevelThree
	where ContactSubjectLevelThreeID = @ContactSubjectLevelThreeID
end

go

--کمبوباکس ها
create or alter proc Sp_CU_GetContactSubject
as
begin
	select
		ContactSubjectID,
		ContactSubject
	from Tbl_CU_Base_ContactSubject	t
	where IsActive = 1
end

go

create or alter proc Sp_CU_GetContactSubjectLevelOne
	@ContactSubjectID int
as
begin
	select
		ContactSubjectLevelOneID,
		ContactSubjectLevelOne
	from Tbl_CU_Base_ContactSubjectLevelOne
	where
		ContactSubjectID = @ContactSubjectID 
		and IsActive = 1
end

go

create or alter proc Sp_CU_GetContactSubjectLevelTwo
	@ContactSubjectID int,
	@ContactSubjectLevelOneID int
as
begin
	select
		ContactSubjectLevelTwoID,
		ContactSubjectLevelTwo
	from Tbl_CU_Base_ContactSubjectLevelTwo	
	where
		ContactSubjectID = @ContactSubjectID and
		ContactSubjectLevelOneID = @ContactSubjectLevelOneID 
		and IsActive = 1
end

go

create or alter proc Sp_CU_GetContactSubjectLevelThree
	@ContactSubjectID int,
	@ContactSubjectLevelOneID int,
	@ContactSubjectLevelTwoID int
as
begin
	select
		ContactSubjectLevelThreeID,
		ContactSubjectLevelThree
	from Tbl_CU_Base_ContactSubjectLevelThree
	where
		ContactSubjectID = @ContactSubjectID  and
		ContactSubjectLevelOneID = @ContactSubjectLevelOneID and
		ContactSubjectLevelTwoID = @ContactSubjectLevelTwoID
		and IsActive = 1
end