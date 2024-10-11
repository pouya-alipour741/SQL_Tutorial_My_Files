--temp tables

create table #temp_employee(
employeeid int,
jobTitle varchar(100),
Salary int
)

insert into #temp_employee
select EmployeeID,Title,Extension
from northwind.dbo.Employees

select * from #temp_employee

drop table  if exists #temp_employee


--trim/ltrim/rtrim
select trim(CompanyName)
from Customers

--replace
select replace(regiondescription,'ern','')
from Region

select *
from Region

--substring
select substring(regiondescription,1,3) --(column,start idx,how many to go)
from Region

select *
from Region

--lower() upper()


--lead() and lag() youtube SQL University

select*,lead(UnitPrice) over(partition by categoryid order by unitprice desc) as next_price
from Products

select*,case
lag(UnitPrice) over(partition by categoryid order by unitprice desc) as next_price
from Products