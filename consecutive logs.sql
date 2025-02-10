--select more than 3 consecutive logs

WITH NumberedLogs AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY UserID ORDER BY LogTime) 
           - DENSE_RANK() OVER (PARTITION BY UserID, LogType ORDER BY LogTime) AS LogGroup
    FROM LogTable
)
SELECT UserID, LogType, COUNT(*) AS ConsecutiveCount
FROM NumberedLogs
GROUP BY UserID, LogType, LogGroup
HAVING COUNT(*) >= 3;


-------------consecutive states
select distinct TABLE_NAME from INFORMATION_SCHEMA.COLUMNS

use [SofiaCarRental_v2.2]

go

--select * from Customers


with cte as(
select
	State, country,
	lead(state) over(order by country) next_state,
	case
		when State = lead(state) over(order by country) then state
	end repeated_states
from Customers
)
select *
from cte 
where repeated_states is not null


---repeated hourly salaries per title 
use [SofiaCarRental_v2.2]

go
--select * from Employees


with cte as(
select
	FullName,title, HourlySalary,
	lead(HourlySalary) over(partition by title order by title) next_HourlySalary,
	case
		when HourlySalary = lead(HourlySalary) over(partition by title order by title) then HourlySalary
	end repeated_HourlySalary
from Employees
)
select *
from cte 
where repeated_HourlySalary is not null


---3 consecutive repeated hourly salaries 
use [SofiaCarRental_v2.2]

go
--select * from Employees


with cte as(
select
	FullName,title, HourlySalary,
	lead(HourlySalary) over(order by title) next_HourlySalary,
	case
		when HourlySalary = lead(HourlySalary) over(order by title) and HourlySalary = lead(HourlySalary,2) over(order by title) then HourlySalary
	end repeated_HourlySalary
from Employees
)
select *
from cte 
where repeated_HourlySalary is not null