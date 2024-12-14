create table Tbl_CU_Test
(	
	id int primary key identity(2,1),
	university varchar(20) ,
	institude varchar(20),
	status int check(status = 1 or status = 2 ),	
)



--Alter table Tbl_CU_Test alter column university nvarchar(20)
--Alter table Tbl_CU_Test alter column institude nvarchar(20)
Alter table Tbl_CU_Test alter column st nvarchar(20)


select * from Tbl_CU_Test

alter table Tbl_CU_Test

select
	*
from
	INFORMATION_SCHEMA.TABLE_CONSTRAINTS
where
	TABLE_NAME = 'Tbl_CU_Test'

alter table Tbl_CU_Test
drop constraint CK__Tbl_CU_Te__statu__26DDA490

select top 1000 * from dbo.Tbl_CU_University


--
alter proc sp_cu_read_base_college_test
as
	begin
		select
			t.id, u.UniversityName, i.InstituteName, t.status
		from
			Tbl_CU_Test t
			left join Tbl_CU_University u on t.university = u.UniversityID
			left join Tbl_Cu_Institute i on t.institude = i.InstituteID
	end

exec sp_cu_read_base_college_test

select * from Tbl_Cu_Institute

select * from Tbl_CU_University


--same cost
--select
--			t.id, u.UniversityName, i.InstituteName, t.status, t.wfid
--		from
--			Tbl_CU_Test t
--			left join Tbl_CU_University u on t.university = u.UniversityID
--			left join Tbl_Cu_Institute i on t.institude = i.InstituteID;

--select
--		t.id,
--		(select UniversityName from Tbl_CU_University where t.university = UniversityID) UniversityName
--		,(select InstituteName from Tbl_Cu_Institute i where t.institude = i.InstituteID) InstituteName
--		,t.status, t.wfid
--from
--	Tbl_CU_Test t

exec sp_cu_read_base_college_test