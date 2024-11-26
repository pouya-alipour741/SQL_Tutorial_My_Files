--Q1:

alter TRIGGER trgAfterDelete ON [dbo].[Employee] 
FOR Delete
AS
begin
	declare @id int;
	declare @name varchar(50);
	declare @salary money;
	declare @audit_action varchar(100);

	select @id=d.ID from deleted d;	
	select @name=d.Name from deleted d;	
	select @salary=d.Salary from deleted d;	
	set @audit_action='Deleted Record ';

	insert into Employee_Audit
           (ID,Name,Salary,Audit_Action,Audit_Timestamp) 
	values(@id,@name,@salary,@audit_action,getdate());
end
Go



insert into Employee(Name,Salary)
values('Ali',200),
	  ('Ali',1000)
Go
delete from Employee where Employee.Name like 'Ali'
delete from Employee_Audit
Go
select * from Employee
select * from Employee_Audit
--Q2:
create Table Person(
		Id int primary key not null identity(1,1),
		FName varchar(50),
		LName varchar(50),
		Age int ,
		salary int)
Go
create Table Person_Log(
		Id int primary key not null identity(1,1),
		PersonId int,
		FName varchar(50),
		LName varchar(50),
		Age int ,
		salary int,
		HostName varchar(500),
		LoginName varchar(500),
		NT_Domain varchar(500),
		Net_Address varchar(500),
		ActionType varchar(50),
		ActionDate Date)
Go

CREATE TRIGGER TrgPersonLog
    ON [dbo].[Person]
    FOR delete
    AS
    BEGIN
	declare @PersonId int
	declare	@FName varchar(50)
	declare	@LName varchar(50)
	declare	@Age int 
	declare	@salary int
	declare	@HostName varchar(500)
	declare	@LoginName varchar(500)
	declare	@NT_Domain varchar(500)
	declare	@Net_Address varchar(500)
	declare	@ActionType varchar(50)
	declare	@ActionDate Date
	select
		@HostName = hostname,
		@LoginName = loginame,
		@NT_Domain = nt_domain,
		@Net_Address = Net_address
	from sys.sysprocesses
	where spid = @@Spid
	
		select @PersonId = d.Id from deleted d;
		select	@FName= d.FName from deleted d;
		select	@LName= d.LName from deleted d;
		select	@Age= d.Age from deleted d;
		select	@salary= d.salary from deleted d;
	
	Insert into Person_Log(PersonId,FName,LName,Age,HostName,LoginName,NT_Domain,Net_Address,ActionType,ActionDate)
	values(@PersonId,@FName,@LName,@Age,@HostName,@LoginName,@NT_Domain,@Net_Address,'Delete',GETDATE())
    END
Go
--Q3:
CREATE TRIGGER trgInsteadOfDelete ON [dbo].[Employee] 
INSTEAD OF DELETE
AS
	declare @id int;
	declare @name varchar(50);
	declare @salary money;
	
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
--Q4:
Create Trigger TempDelete on Test03
Instead of Delete
as
Begin
	Update Table_Name
		Set Status = 1
	From Test03 Inner Join (Select * From Deleted)D 
	on test03.ID = k.ID
End
Go

delete from Employee where ID=4

select * from Employee_audit
--Q5:
create table UserAccounts (Id int primary key identity(1,1),Name Varchar(50),Password varchar(32))
Go
create trigger Password_Validation on UserAccounts
For Insert,Update
as
begin
	if exists (Select * from UserAccounts where LEN(Password)<8 )
	begin
		RollBack
		Raiserror('Wrong Password',16,1)
	end
end
Go
insert into UserAccounts
	values('bahmanyar','123')
Go