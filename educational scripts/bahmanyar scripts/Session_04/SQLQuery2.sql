use [Session04]
go
select * from test1
go
create table test1
(
Id int not null primary key identity(1,1),
Code int ,
Name varchar(50)
)
go

--ADD Column Last Name 
alter table test1
add LName varchar(50)
go

--Delet colunm LName
alter  table test1
drop column LName
go

--ADD Column Last Name & Age
alter table test 1
add LName varchar(50)
alter table test1
add age int
go

-- Edite age to Age
alter table test1
alter column Age int
go

--ADD Column Email
alter table test1
add Email varchar(50)
go
--Edit Column Email
alter table test1
alter column Email varchar(100)
go

--Add Phone number with data type [int]
alter table test1
add Phone int
go
--Add Phone Check
alter table test1
add check (Phone like '[0-9][0-9]')
go


-- delete constraint CK_Phone
alter table test1
drop constraint CK_Phone
go

-- Edit data TYpe Phone {int to varchar(20)]
alter table test1
alter  column Phone varchar(20)  
go
-- add constraint CK_Phone on Phone
alter table test1
add constraint CK_Phone check ( Phone like '[0-9][0-9]')
go 
-- Edit constraint CK_Phone 
alter table test1
drop constraint CK_Phone
go
--alter constraint CK_Phone check ( Phone like '[0-9][0-9][0-9][0-9]')

alter table test1
add  constraint CK_Phone check ( Phone like '[0-9][0-9][0-9][0-9]')
go 


--Set Constrants @
--ADD Column Last Name & Age
--alter table test1
--alter column Email varchar(100) not null 
--alter constraint CK_Email 
--alter check (Email like '[0-9][0-9][0-9]');
--go
--Add Date default
alter table test1
alter COLUMN Name add DEFAULT 'hadi'
go

print GETDATE()