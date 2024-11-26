

CREATE TABLE Employee
(
	ID INT primary key  Identity(1,1),
	Name Varchar(50),
	Salary Money 
)
Go
INSERT INTO Employee VALUES ('Mina',1000);
INSERT INTO Employee VALUES ('Rick',1200);
INSERT INTO Employee VALUES ('John',1100);
INSERT INTO Employee VALUES ('Stephen',1300);
INSERT INTO Employee VALUES ('Maria',1400);
Go
--Create Logestic Table for Audit the main Table(Employee):
CREATE TABLE Employee_Audit
(
ID int,
Name varchar(50),
Salary money ,
Audit_Action varchar(100),
Audit_Timestamp datetime
)
Go


--Create After Insert Trigger:
alter TRIGGER trgAfterInsert ON [dbo].[Employee] 
FOR INSERT
AS
	declare @id int;
	declare @name varchar(50);
	declare @salary money;
	declare @audit_action varchar(100);
	
	select * from inserted
	select @id=i.ID from inserted i;	
	select @name=i.Name from inserted i;	
	select @salary=i.Salary from inserted i;	
	set @audit_action='Inserted Record -- After Insert Trigger.';

	insert into Employee_Audit
           (ID,Name,Salary,Audit_Action,Audit_Timestamp) 
	values(@id,@name,@salary,@audit_action,getdate());

	--PRINT 'AFTER INSERT trigger fired.'
GO
alter TRIGGER trgAfterDelete ON [dbo].[Employee] 
FOR delete
AS
	declare @id int;
	declare @name varchar(50);
	declare @salary money;
	declare @audit_action varchar(100);
	
	select * from deleted
	select @id=d.ID from deleted d;	
	select @name=d.Name from deleted d;	
	select @salary=d.Salary from deleted d;	
	set @audit_action='Deleted Record -- After Insert Trigger.';

	insert into Employee_Audit
           (ID,Name,Salary,Audit_Action,Audit_Timestamp) 
	values(@id,@name,@salary,@audit_action,getdate());

	--PRINT 'AFTER INSERT trigger fired.'
GO
--Insert Data to Employee:
 insert into Employee values('hadi',2500);
 Go 2

declare @id int 
select @id=id from Employee where name like 'hadi'
DELETE FROM Employee WHERE id=@id;
go

DELETE FROM Employee WHERE name like 'hadi';

 select * from Employee
 Go
 select * from Employee_Audit
 Go
 /*
These can be used as an interceptor for anything that anyone tried to do on our table or view.
 If you define an Instead Of trigger on a table for the Delete operation, they try to delete rows,
  and they will not actually get deleted (unless you issue another delete instruction from within the trigger)

INSTEAD OF TRIGGERS can be classified further into three types as:

INSTEAD OF INSERT Trigger.
INSTEAD OF UPDATE Trigger.
INSTEAD OF DELETE Trigger.
*/
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

use Test

delete from Employee where name='mina'
go
select * from Employee
go
select * from Employee_audit
go