drop PROCEDURE dbo.CreateGTM
drop table ProductGroup
drop table ProductType
drop table ProductModel
go
CREATE PROCEDURE dbo.CreateGTM 
      
AS
   
BEGIN

	BEGIN tran
	
		BEGIN try
			create table ProductGroup
			(
			ID int primary key not null identity(1,1),
			Name varchar(50)
			) 

			create table ProductType
			(
			ID int primary key not null identity(1,1),
			ProductGroupRef int foreign key references ProductGroup(ID) not null,
			Name varchar(50)
			) 

			create table ProductModel
			(
			ID int primary key not null identity(1,1),
			ProductTypeRef int foreign key references ProductType(ID) not null,
			Name varchar(50)
			)	
			Print('Create Tables GMT Done')
			commit
		END try
			
		BEGIN catch
			Print('Create Tables GMT failed')
			rollback
		END catch
END
 
go
 exec CreateGTM
 go

--Q2: هر هر رکورد یک داده درج کند
CREATE PROCEDURE dbo.Sample_Procedure 
    @P_Group varchar(50),
    @P_Type varchar(50)  
--	@P_Model varchar(50)
AS
	
    insert into ProductGroup(Name)  values (@P_Group)
	declare @id int
	set @id=(select p.ID from ProductGroup p where p.Name like @P_Group)

	insert into ProductType(ProductGroupRef,Name)  values (@id ,@P_Type)
	
	

exec 	dbo.Sample_Procedure 'Pc' , 'asus'
exec 	dbo.Sample_Procedure 'Mobile' , 'Samsung'

select * from ProductGroup
select * from ProductType

	insert into ProductGroup(Name)  values ('Mobile')
	insert into ProductType(ProductGroupRef,Name)  values (select @id=p.ID from ProductGroup p where p.Name like 'Mobile' ,Name)

--: تمرین تریگر



create table StValid
(
ID int primary key not null identity(1,1),
Name varchar(50)
)
create table StnValid
(
ID int primary key not null identity(1,1),
Name varchar(50)
)

CREATE TRIGGER trgInsteadOfDelete ON [dbo].[StValid] 
INSTEAD OF INSERT
AS	
	declare @name varchar(50);
		
	select @id=d.ID from deleted d;
	select @name=d.Name from deleted d;
	select @salary=d.Salary from deleted d;

	BEGIN
		if(@salary>1200)
		begin
			RAISERROR('Cannot delete where salary > 1200',16,1);
			ROLLBACK;
		end
		else
		begin
			delete from Employee where ID=@id;
			COMMIT;
			insert into Employee_Audit(ID,Name,Salary,Audit_Action,Audit_Timestamp)
			values(@id,@name,@salary,'Deleted -- Instead Of Delete Trigger.',getdate());
			PRINT 'Record Deleted -- Instead Of Delete Trigger.'
		end
	END
GO


 
 CREATE PROCEDURE dbo.FillProductGTM 
     
AS
    
BEGIN

	insert into ProductGroup( Name) values ('Mobile')
	insert into ProductType()values ('PC')
	insert into ProductGroup values ('Tablet') 
	select * from ProductGroup

END

exec FillGTM 
go

select * from ProductGroup
select 'Hadi', 'Sahrivar'
