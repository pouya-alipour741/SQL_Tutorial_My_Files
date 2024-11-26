use AdventureWorks2014
Go
--Q1:
select distinct( p.FirstName+' '+p.MiddleName+' '+p.LastName) as PersonFullName
from Person.Person p
Go
select distinct( isnull(p.FirstName,'**')+' '+isnull(p.MiddleName,'?' )+' '+isnull(p.LastName,'*')) as PersonFullName
from Person.Person p

Go
select distinct p.FirstName,p.MiddleName,p.LastName
from Person.Person p
where p.FirstName like 'A. S%' or p.LastName like 'Wright'
Go
--Q2:
select count(distinct e.JobTitle)
from HumanResources.Employee e
Go
--Q3:
SELECT 
	ProductID,Name,ProductNumber,Color
FROM Production.Product
ORDER BY Color ASC
GO
--Q4:
select Q2.CustomerName,Q1.OrderNumber
from
(select c.CustomerID,count(oh.CustomerID) as OrderNumber
from Sales.SalesOrderHeader oh right join Sales.Customer c
on oh.CustomerID=c.CustomerID
group by c.CustomerID)Q1
inner join
(select c.CustomerID,isnull(p.FirstName,'**')+' '+isnull(p.MiddleName,'?' )+' '+isnull(p.LastName,'*') as CustomerName
from Person.Person p inner join Sales.Customer c
on p.BusinessEntityID=c.PersonID)Q2
on Q1.CustomerID=Q2.CustomerID
--Q5:
SELECT TOP 3
	SalesOrderID,
	CustomerID,
	OrderDate
FROM Sales.SalesOrderHeader 
ORDER BY SalesOrderID DESC
GO
select   Q2.CustomerName
from
	(select top 5 oh.SalesOrderID, c.CustomerID
		from Sales.SalesOrderHeader oh inner join Sales.Customer c
		on oh.CustomerID=c.CustomerID
		order by oh.SalesOrderID desc)Q1
inner join
	(select c.CustomerID,isnull(p.FirstName,'**')+' '+isnull(p.MiddleName,'?' )+' '+isnull(p.LastName,'*') as CustomerName
	from Person.Person p inner join Sales.Customer c
	on p.BusinessEntityID=c.PersonID)Q2
on Q1.CustomerID=Q2.CustomerID
Go
--Q6:
select c.Name,count(s.StateProvinceID) as StateNumbers
from Person.CountryRegion c left  join Person.StateProvince s
on c.CountryRegionCode=s.CountryRegionCode
group by c.Name
order by StateNumbers desc
Go
--Q7:
select count(c.CountryRegionCode)
from person.CountryRegion c
where c.Name in (
				select c.Name
				from Person.CountryRegion c left  join Person.StateProvince s
				on c.CountryRegionCode=s.CountryRegionCode
				group by c.Name
				having count(s.StateProvinceID) =0
				)

Go
--Q8:
select S1.JobTitle,S1.Male,S2.Female, s1.male+s2.female as Total
From
	(select e.JobTitle as JobTitle,count(e.Gender) as 'Male'
	from HumanResources.Employee e
	where e.Gender like 'm'
	group by JobTitle)S1
inner join
	(select e.JobTitle,count(e.Gender) as 'Female'
	from HumanResources.Employee e
	where e.Gender like 'F'
	group by JobTitle)S2
on S1.JobTitle=s2.JobTitle
Go
--Q9:
select e.OrganizationLevel,count(e.Gender) as Females
from HumanResources.Employee e
group by e.OrganizationLevel
Go
--Q10:
select q1.Gender,q1.Married,q2.Single,q1.Married+q2.Single as Total
from
	(select e.gender as Gender,count(e.MaritalStatus) as Married
		from HumanResources.Employee e
		where e.MaritalStatus like 'M'
		group by e.Gender)Q1
inner join
	(select e.gender as Gender,count(e.MaritalStatus) as Single
		from HumanResources.Employee e
		where e.MaritalStatus like 's'
		group by e.Gender)Q2
on q1.Gender=q2.Gender
Go
--Q11:
select S1.JobTitle,S1.Male_SickLeaveHours,S2.Female_SickLeaveHours, s1.Male_SickLeaveHours+s2.Female_SickLeaveHours as Total
From
	(select e.JobTitle as JobTitle,Sum(e.SickLeaveHours) as 'Male_SickLeaveHours'
	from HumanResources.Employee e
	where e.Gender like 'm'
	group by JobTitle)S1
inner join
	(select e.JobTitle,Sum(e.SickLeaveHours) as 'Female_SickLeaveHours'
	from HumanResources.Employee e
	where e.Gender like 'F'
	group by JobTitle)S2
on S1.JobTitle=s2.JobTitle
Go