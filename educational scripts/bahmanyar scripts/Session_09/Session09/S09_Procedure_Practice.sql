--Q1:
use [SofiaCarRental_v2.2]
Go
Alter proc usp_BulkInsert
as
begin
IF object_id('Test') is not null
   Create Table Test(
			Id int Primary key not null identity(1,1),
			Code int,
			Name varchar(50)
			)
ELSE
    PRINT 'Not accounted for'
	


declare @x int
set @x=2000
while @x>=0
	begin
		insert into Test(Code,name)
			values(@x,'ali mohammad Bahmanyar')
		set @x =@x-1
	end
end
Go
exec usp_BulkInsert
Go
 usp_BulkInsert
Go
select * from Test
Go
--Q2:







drop table person
Go
Create table Person(
				Id int Primary key not null identity(1,1),
				Code int not null,
				FName varchar(50),
				LName varchar(50)
				)
Go
--Type 1:
Alter proc Insert_AutoCode(@FName varchar(50),@LName varchar(50))
as
begin
	declare @Code int
	set @Code=0
	if ((select max(code) from person) is not  null)
		begin
			set @Code=(Select max(code) from person)
			set @Code =@Code+1
		end
	
	IF( (select max(code) from person) is null )
		BEGIN

		set @Code =@Code+1 

		END

	insert into person (Code,FName,LName)
		values(@code,@fname,@lname)

end
Go
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--Type 2:
create proc Insert_AutoCode_2(@FName varchar(50),@LName varchar(50),@Age int)
as
begin
	declare @Code int
	set @code=(select max(code) from person)
	set @Code = isnull(@code,0)+1
	insert into person 
		values(@code,@fname,@lname,@age)

end

Go
exec Insert_AutoCode 'Alimohammad','Bahmanyar'
exec Insert_AutoCode 'Fatemeh','Masomifar'
select * from person