select e.JobTitle,
	sum(e.VacationHours)+SUM(e.SickLeaveHours) as 'TotalVacation'
from HumanResources.Employee e
group by e.JobTitle 
order by TotalVacation desc
Go
select e.JobTitle,
	sum(e.VacationHours+e.SickLeaveHours) as 'TotalVacation'
from HumanResources.Employee e
group by e.JobTitle
order by TotalVacation desc
Go

select * from HumanResources.Employee
select HumanResources.Employee.BirthDate from HumanResources.Employee