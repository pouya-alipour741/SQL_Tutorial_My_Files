--ising ssms snippets
CREATE FUNCTION [dbo].[FunctionName]
(
    @param1 int,
    @param2 char(5)
)
RETURNS @returntable TABLE 
(
	[c1] int,
	[c2] char(5)
)
AS
BEGIN
    INSERT @returntable
    SELECT @param1, @param2
    RETURN 
END


select *,
		hostname,
		loginame,
		nt_domain,
		Net_address
from sys.sysprocesses

select @@Spid

if exists(select * from Customers where len(CompanyName)>4)
print 'name too long'
else
print 'success'


--check
use faradars

alter table products
add constraint product_unitsinstuck_not_minus check(unitsinstock>0)


alter trigger sale_product_after_ins on sale after insert
as
begin
select ROW_NUMBER() over(order by product_id) as rw,product_id,quantity
into #temp
from inserted
declare @n int
set @n=1
while @n<=(select count(*) from inserted)
	begin
	declare @q int
	declare @pid int

	set @q=(select quantity from #temp where @n=rw)
	set @pid=(select product_id from #temp where @n=rw)
	update products
	set UnitsInStock-=@q where product_id=@pid
	set @n+=1
	end
end

--does not let minus quantity thanks to check
insert into sale
values (2,6,4500,20)



SELECT * FROM sysdatabases
SELECT * FROM syscacheobjects
SELECT * FROM sysconfigures
SELECT * FROM syslanguages
SELECT * FROM syslogins
SELECT * FROM sysmessages

SELECT * FROM sys.objects


sp_detach_db northwind 

select OBJECT_ID('customers')


--function to return total days of rent of a given car
alter function udf_GetTotalRent(
@car varchar(20)
)
returns varchar(50)
as
begin
	declare @total_rent varchar(50)
	if (@car in(select Make from Cars))
		begin
		set @total_rent = convert(varchar(50),(select sum(isnull(ro.Days,1)) as total_rent from RentalOrders ro right join Cars c
			on c.CarID=ro.CarID
			where c.make=@car)
			)
		end
	else
		begin
			set @total_rent = 'car not valid'
		end
		return @total_rent

end


select dbo.udf_GetTotalRent('opel')

select isnull(ro.Days,1) as total_rent from RentalOrders ro right join Cars c
			on c.CarID=ro.CarID
			where c.make='opel'

select DB_ID('SofiaCarRental_v2.2')
select object_ID(N'SofiaCarRental_v2.2.dbo.cars')
select object_ID(N'cars')



SET STATISTICS IO ON
SET STATISTICS TIME ON

--restore .bak
RESTORE FILELISTONLY
FROM DISK = 'D:\Pouya\SQL_Tutorial_My_Files\sample_database_backup\SofiaCarRental_v2.2.bak'

ALTER DATABASE AdventureWorks2014
SET SINGLE_USER WITH
ROLLBACK IMMEDIATE

RESTORE DATABASE YourDB
FROM DISK = 'D:\Pouya\SQL_Tutorial_My_Files\sample_database_backup\SofiaCarRental_v2.2.bak'
WITH MOVE 'SofiaCarRental_v2.2' TO 'D:\Pouya\SQL_Tutorial_My_Files\sample_database_backup\SofiaCarRental_v2.2.mdf',
MOVE 'SofiaCarRental_v2.2' TO 'D:\Pouya\SQL_Tutorial_My_Files\sample_database_backup\SofiaCarRental_v2.2.ldf'

--nassvr to open up server temps

EXEC sp_changedbowner 'SA' 


--to check if a certain table exist in db
IF EXISTS(SELECT object_id FROM SYS.objects where OBJECT_ID=OBJECT_ID('production.culturef'))
print 'table exist'
else
print 'table does not exist'

select OBJECT_ID('production.culture')

if (OBJECT_ID('production.culturf') is not null)
begin
print 'a'
end


--trigger note, cant use trigger on temp table, edit this later.
select * from sys.sysprocesses
select @@spid

select hostname,nt_domain,loginame,cmd net_address from sys.sysprocesses

with mod_person
as
(select row_number() over(order by businessentityid) as row_no,*
from person.Person)
select BusinessEntityID,PersonType,FirstName,LastName
into archive.dbo.temp
from mod_person where row_no<10 --could say our primary key<10

select * from archive.dbo.temp

select *
into #temp_log
from archive.dbo.temp

truncate table #temp_log

alter table #temp_log
add 
	hostname varchar(50),
	nt_domain varchar(50),
	loginame varchar(50),
	cmd varchar(50),
	net_address varchar(50),
	action_type varchar(50),
	action_date datetime

alter table #temp_log
drop column nt_domaIN

select * from #temp_log

if (OBJECT_ID('tempdb..#temp') is not null)
print 'deleted temp table'
drop table #temp



create trigger tr_log on archive.dbo.temp after delete
as
begin
	declare @id int
	declare @Ptype varchar(50)
	declare @fname varchar(50)
	declare @lname varchar(50)
	declare @hname varchar(50)
	declare @cmd varchar(50)
	declare @atype varchar(50)
 

	select @hname=hostname,@cmd=cmd
	from sys.sysprocesses
	where spid=@@SPID

	select @id= businessentityid from deleted
	select @ptype = persontype from deleted
	select @fname = firstname from deleted
	select @lname = lastname from deleted


	insert into #temp_log(businessentityid,persontype,firstname,lastname,hostname,cmd,action_type,action_date)
	values(@id,@Ptype,@fname,@lname,@hname,@cmd,'deleted',GETDATE())

end


delete from archive.dbo.temp
where businessentityid=1

select * from #temp_log
select * from temp

select hostname,cmd
	from sys.sysprocesses
	where spid=@@SPID


select EVENTDATA() 

SELECT EVENTDATA().value  
        ('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')  

select CURRENT_USER

--cast is similar to convert
select CAST(EVENTDATA() AS NVARCHAR(MAX))

CREATE TABLE Students
(
	StudentID VARCHAR(50)  PRIMARY KEY,
	FirstName NVARCHAR(100),
	LastName NVARCHAR(100),
	City NVARCHAR(100)
)

use faradars
bulk insert students
from 'D:\Pouya\Amoozesh SQL Querying Farsi\SQL Farsi Bahmanyar\sql\Session_13\Session13\students.txt'
with
(
	KEEPIDENTITY,
	FIRSTROW=1,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n'
)

SP_SPACEUSED customers

--cte recursive
use Northwind

--کارمندانی که در پایین ترین سطح قرار گرفته اند
;WITH CTE_Recursive AS
(
	--استخراج ریشه
	SELECT 
		EmployeeID,FirstName,
		LastName,ReportsTo,1 AS EmployeeLevel
	FROM Employees
	WHERE ReportsTo IS NULL

	UNION ALL
	--استخراج کارمندان زیر دست هر کارمند قبلی
	SELECT 
		E.EmployeeID,E.FirstName,
		E.LastName,E.ReportsTo,
		CTE_Recursive.EmployeeLevel + 1 
	FROM Employees E
	INNER JOIN CTE_Recursive
	ON E.ReportsTo =CTE_Recursive.EmployeeID
)
,CTE2 AS(
	SELECT 
		* ,
		DENSE_RANK() OVER(ORDER BY EmployeeLevel DESC) AS Rk
	FROM CTE_Recursive
)
SELECT * FROM CTE2
	WHERE RK=1