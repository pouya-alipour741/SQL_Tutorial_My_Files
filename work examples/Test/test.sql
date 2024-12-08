create table [archive].dbo.test_frm41606
(
	id int primary key identity(1,1),
	name varchar(20),
	last varchar(20)
)


select * from [archive].dbo.test_frm41606



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


-------
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



