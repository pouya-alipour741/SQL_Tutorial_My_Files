create database Session10
go
use Session10
go
create table Person
(
Id int primary key not null identity(1,1),
Name varchar(50),
SureName varchar(50),
Age tinyint,
[Address] varchar(50)
)