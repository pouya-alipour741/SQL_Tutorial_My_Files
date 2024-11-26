Create Table Students_Valid(
		Id int primary key not null identity(1,1),
		Name varchar(50)
		)
Go
Create Table Students_InValid(
		Id int primary key not null identity(1,1),
		Name varchar(50)
		)
Go
--Create Trigger:
CREATE TRIGGER utrg_InsertTrigger 
ON Students_Valid
INSTEAD OF INSERT
AS
	DECLARE @Name CHAR(1)
	SELECT @Name=LEFT(Name,1) FROM inserted
	IF (@Name='A')
		INSERT INTO Students_Valid 
			SELECT i.Name FROM inserted i
	ELSE
		INSERT INTO Students_Invalid 
			SELECT i.Name FROM inserted i

GO
INSERT Students_Valid (Name) VALUES('simin')
INSERT Students_Valid (Name) VALUES('Hamid')
GO
SELECT * FROM Students_Valid 
SELECT * FROM Students_Invalid 