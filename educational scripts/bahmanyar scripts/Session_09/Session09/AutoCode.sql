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