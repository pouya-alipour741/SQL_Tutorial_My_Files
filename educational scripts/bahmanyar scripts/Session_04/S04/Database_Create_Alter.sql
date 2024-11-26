
USE master
GO
--Check Master for  our db existance or not?
IF DB_ID('Commercial')>0
BEGIN
	--Make db as single user db
	ALTER DATABASE Commercial SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	--Delete db
	DROP DATABASE Commercial
END	
GO

--Create db in default path
CREATE DATABASE Commercial
GO
--config db as a default db for this session
USE Commercial
GO
--Create schema
CREATE SCHEMA Person
GO
CREATE TABLE person.Person
(
	Id int primary key not null identity(1,1),
	Name varchar(50)

)
GO
--Adding Primary key to created db
ALTER TABLE Geographics.State ADD CONSTRAINT PK_States  PRIMARY KEY CLUSTERED (StateCode)
GO

--Add composite primary key (Id,Code)
ALTER TABLE Person.Person ADD CONSTRAINT PK_City  PRIMARY KEY CLUSTERED (Id,Code)
GO
--Add Foregin key 
ALTER TABLE Geographics.City ADD CONSTRAINT FK_City_State FOREIGN KEY(StateCode) REFERENCES Geographics.State(StateCode)
	ON UPDATE  NO ACTION 
	ON DELETE  NO ACTION 
GO
