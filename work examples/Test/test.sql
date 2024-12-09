--create table [archive].dbo.test_frm41606
--(
--	id int primary key identity(1,1),
--	name varchar(20),
--	last varchar(20)
--)


--select * from [archive].dbo.test_frm41606


------------add button
alter PROCEDURE sp_testAdd_frm41606
@name varchar(20), @last varchar(20)
AS
BEGIN
	if not exists( select top 1 1 from [archive].dbo.test_frm41606 where name = @name and last = @last)
		begin
			insert into [archive].dbo.test_frm41606
			values(
				@name, @last
			)
		end
END
GO


-------check clear value
alter PROCEDURE sp_testcheck_frm41606
@name varchar(20), @last varchar(20)
AS
BEGIN
	if (isnull(@name, '') = '' or isnull(@last, '') = '')
		select cast(1 as bit) as res
	else
		select cast(0 as bit) as res
END
GO

exec sp_testcheck_frm41606 '', 'h'



-------
create PROCEDURE sp_testdelete_frm41606
@id int
AS
BEGIN
	delete from [archive].dbo.test_frm41606
	where id = @id
END
GO



--select * from TBL_CU_StudentGetCertificateCode_EducationalRecords



alter PROCEDURE sp_testcheckDelete_frm41606
@id int
AS 
BEGIN
	if (isnull(@id, '') = '' or isnull(@id, '-1') = '-1')
	--if @id not in(select id from [archive].dbo.test_frm41606)
		select cast(1 as bit) res
	else
		select cast(0 as bit) res		
END
GO

select * from [archive].dbo.test_frm41606

exec sp_testcheckDelete_frm41606 ''



--select * from Tbl_frm31557
--where frm31557Id in(select pkformid from task.TblFormInstance where FormID = 31386 and WorkflowInstanceId = 4031563)

--select * from task.tblforminstance

