select EmployeeID,ReportsTo,*
from Employees

with cte as(
select
	EmployeeID, FirstName, LastName, ReportsTo
	,cast(EmployeeID as nvarchar) full_path
	,1 as lvl
from
	Employees
where
	ReportsTo is null
union all
select
	e.EmployeeID, e.FirstName, e.LastName, e.ReportsTo
	,cast(cte.full_path + '->' + cast(e.EmployeeID as nvarchar) as nvarchar) as full_path
	,lvl+ 1 as lvl
from
	Employees e
	join cte on cte.EmployeeID=e.ReportsTo
where
	CHARINDEX(cast(e.EmployeeID as nvarchar), cte.full_path) = 0  -- Prevent revisiting
)
select * from cte



--with cte as(
--select 
--	1 as [count]
--union all
--select 
--	[count] + 1 as [count]
--from 
--	cte
--where
--	[count] < 10
--)
--select * from cte



