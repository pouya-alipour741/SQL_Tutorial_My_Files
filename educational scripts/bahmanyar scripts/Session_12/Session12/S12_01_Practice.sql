--Q1:

alter PROCEDURE dbo.usp_CreateTables 
     
AS
begin
 begin tran
	begin try
		begin tran
			BEGIN TRY
		CREATE TABLE PartGroup
			(
				Id int primary key not null identity(1,1),
				Code int ,
				Name varchar(50),
			)
		commit tran
	END TRY
	BEGIN CATCH
		print 'Error in PartGroup '
		ROLLBACK TRAN
	END CATCH

		begin tran
			BEGIN TRY
		CREATE TABLE PartType
			(
				Id int primary key not null identity(1,1),
				PartGroupRef int foreign key references partroup (Id) not null,
				Code int ,
				Name varchar(50),
			)
		commit tran
	END TRY
	BEGIN CATCH
		print 'Error in PartType '
		ROLLBACK TRAN
	END CATCH
		begin tran
			BEGIN TRY
		CREATE TABLE PartModel
			(
				Id int primary key not null identity(1,1),
				PartTypeRef int foreign key references parttype (Id) not null,
				Code int ,
				Name varchar(50),
				Price money,
				Amount smallmoney,
				StackSerialNumber int 
			)
		commit tran
	END TRY
	BEGIN CATCH
		print 'Error in PartModel '
		ROLLBACK TRAN
	END CATCH
	commit tran
	end try
	BEGIN CATCH
		print 'RollBack All '
		ROLLBACK TRAN
	END CATCH

end
Go
usp_CreateTables
Go