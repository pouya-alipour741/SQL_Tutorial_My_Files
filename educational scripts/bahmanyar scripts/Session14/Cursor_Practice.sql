--Q1:
use AdventureWorks2012
Go
Declare cursor_01 cursor 
for
	select HumanResources.Employee.JobTitle,count(HumanResources.Employee.MaritalStatus) as 'Married'
	from HumanResources.Employee
	group by HumanResources.Employee.JobTitle
Go
declare @JobTitle nvarchar(50),@Married nvarchar(50)

print '@JobTitle'+','+'@Married'
Open x
Fetch Next From x into @JobTitle,@Married
while @@FETCH_STATUS = 0
	Begin
	Print @make+' , '+@model
	Fetch Next from x into @make,@model
	End
Close x
Deallocate x
Go
--Q2:
select * from cars
Go
use [SofiaCarRental_v2.2]
Go
select Cars.Make,Cars.Model,isnull(RentalOrders.Days,0) as [days],isnull(Cars.Latitude,0) as latitude
from cars left join RentalOrders
on Cars.CarID=RentalOrders.CarRef
Go

create procedure sp_Changelatitude
as
begin
	declare x cursor 
	for select Cars.Make,Cars.Model,isnull(RentalOrders.Days,0) as [days],isnull(Cars.Latitude,0) as latitude
		from cars left join RentalOrders
		on Cars.CarID=RentalOrders.CarRef
		
	declare @make nvarchar(50),@model nvarchar(50),@latitude float,@day int
	open x
	fetch next from x into @make,@model,@latitude,@day
	while @@FETCH_STATUS=0
		begin
			if @day>3
				set @latitude =@latitude+10
			else
				set @latitude =@latitude-20
				update cars set latitude = @latitude Where Current of x
				--Where make=@make
	fetch next from x into @make,@model,@latitude,@day
end
close x
deallocate x
end
Go
exec sp_Changelatitude
Go
select * from cars
--Q3:
use AdventureWorks2012
Go
select S1.JobTitle,S1.Male,S2.Female, s1.male+s2.female as Total
From
	(select HumanResources.Employee.JobTitle as JobTitle,count(HumanResources.Employee.Gender) as 'Male'
	from HumanResources.Employee
	where HumanResources.Employee.Gender like 'm'
	group by JobTitle)S1
inner join
	(select HumanResources.Employee.JobTitle,count(HumanResources.Employee.Gender) as 'Female'
	from HumanResources.Employee
	where HumanResources.Employee.Gender like 'F'
	group by JobTitle)S2
on S1.JobTitle=s2.JobTitle
Go
alter procedure sp_Print_JobTitle
as
begin
	declare x cursor 
	for
		select S1.JobTitle,S1.Male,S2.Female, s1.male+s2.female as Total
		From
			(select HumanResources.Employee.JobTitle as JobTitle,count(HumanResources.Employee.Gender) as 'Male'
			from HumanResources.Employee
			where HumanResources.Employee.Gender like 'm'
			group by JobTitle)S1
		inner join
			(select HumanResources.Employee.JobTitle,count(HumanResources.Employee.Gender) as 'Female'
			from HumanResources.Employee
			where HumanResources.Employee.Gender like 'F'
			group by JobTitle)S2
		on S1.JobTitle=s2.JobTitle
		
	declare @JobTitle nvarchar(50),@Count_Male int,@Count_Female int,@Total int
	print '@JobTitle'
	print '***********'
	open x
	fetch next from x into @JobTitle ,@Count_Male ,@Count_Female ,@Total
	while @@FETCH_STATUS=0
		begin
			if @Count_Male <@Count_Female
				print @JobTitle
			
	fetch next from x into @JobTitle ,@Count_Male ,@Count_Female ,@total 
end
close x
deallocate x
end
Go
Exec sp_Print_JobTitle
--Q4:
use [SofiaCarRental_v2.2]
Go
CREATE PROCEDURE dbo.P_Create_Value 
    
AS
   alter table dbo.customers
	add Value tinyint

Go
exec dbo.P_Create_Value
go
select * from Customers
Go
create procedure sp_SetValue
as
begin
	declare x cursor 
	for 
	select Customers.CustomerID,Customers.Value,isnull(RentalOrders.CustomerRef,0) as CustomerRef
	from Customers left join RentalOrders
	on Customers.CustomerID=RentalOrders.CustomerRef
	declare @CustomerID int,@value int,@CustomerRef int
	open x
	fetch next from x into  @CustomerID,@value ,@CustomerRef
	while @@FETCH_STATUS=0
		begin
			if @CustomerRef<>0
				set @value =1
			else
				 set @value =0
				update Customers set Value=@value Where Current of x
			
	fetch next from x into @CustomerID,@value ,@CustomerRef
end
close x
deallocate x
end
Go
exec sp_SetValue
--Q5:
select * from sys.objects
Go
declare @ProcedureName varchar(500)
declare cursure_Q5 cursor 

for select [name] from sys.objects where type = 'p'
open cursure_Q5
fetch next from cursure_Q5 into @ProcedureName
while @@fetch_status = 0
begin
    exec('drop procedure ' + @ProcedureName)
    fetch next from cursure_Q5 into @ProcedureName
end
close cursure_Q5
deallocate cursure_Q5


