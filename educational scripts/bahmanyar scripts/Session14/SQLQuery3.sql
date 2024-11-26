--Session 14 Practices
use master
go
--Q1: دیتا بیسی به نام تست تولید شود و در آن جدول آیتم به فیلهای زیر تولید شود
drop database test
create database Test
use test
create table Item
(
Id int not null primary key identity(1,1),
Name nvarchar(50),
[Year] smallint,
[Day]	int,
Geo		float
)


CREATE TRIGGER SeedTable
    ON [dbo].[Item]
    FOR DELETE, INSERT, 
    AS
    BEGIN
    SET NOCOUNT ON
    END

