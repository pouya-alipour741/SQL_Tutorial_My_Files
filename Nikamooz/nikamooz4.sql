--Query1
SELECT
	*,
	SUM(OrderQty) OVER( PARTITION BY productid
				   ORDER BY productid ) AS Total
FROM production.WorkOrder
GO

/*
تمرین کلاسی
. و با هر روش دلخواه بنویسید Framing را بدون استفاده از Query1
*/
----with sub
select *,
(select sum(OrderQty) from production.WorkOrder w2 where w2.ProductID=w1.ProductID and w2.ProductID<=w1.ProductID) total
from production.WorkOrder w1
order by ProductID desc



--Query2
SELECT
	*,
	SUM(OrderQty) OVER( PARTITION BY productid
				   ORDER BY startdate ) AS Total
FROM production.WorkOrder
where ProductID=999
GO
--with sub
select *,
(select sum(OrderQty) from production.WorkOrder w2 where w2.ProductID=w1.ProductID and w2.StartDate<=w1.StartDate) total
from production.WorkOrder w1
where ProductID=999
order by total


--island
drop table if exists Island_numeric

create table Island_numeric(
col1 int primary key constraint positive_col1 check(col1>0)
)

insert into Island_numeric(col1)
values
(2),(3),(11),(12),(13),(27),(33),(34),(35),(42);

select * from Island_numeric

select *,ROW_NUMBER() over(order by col1) rn from Island_numeric

/*
Island_Numeric با توجه به مقادیر موجود در جدول
:به‌صورت زیر خواهد بود Island محدوده

Range_Start   Range_End
-----------  -----------
    2           3
    11          13
    27          27
    33          35
	42			42
*/


select col1,
(select min(col1) from Island_numeric i2 where i2.col1>=i1.col1
and exists(select 1 from Island_numeric i3 where i3.col1!=i2.col1+1)
) grp
from Island_numeric i1;

select col1,
(select min(col1) from Island_numeric i2 where i2.col1>=i1.col1
and not exists(select 1 from Island_numeric i3 where i3.col1=i2.col1+1)
) grp
from Island_numeric i1

--cte
with cte as(
select col1,
(select min(col1) from Island_numeric i2 where i2.col1>=i1.col1
and not exists(select 1 from Island_numeric i3 where i3.col1=i2.col1+1)
) grp
from Island_numeric i1
)
select min(col1) range_start,max(col1) range_end
from cte
group by grp


--derived
select min(col1) range_start,max(col1) range_end from(
select col1,
(select min(col1) from Island_numeric i2 where i2.col1>=i1.col1
and not exists(select 1 from Island_numeric i3 where i3.col1=i2.col1+1)
) grp
from Island_numeric i1 ) x
group by grp

--wf method
/*
Island_Numeric با توجه به مقادیر موجود در جدول
:به‌صورت زیر خواهد بود Island محدوده

Range_Start   Range_End
-----------  -----------
    2           3
    11          13
    27          27
    33          35
	42			42
*/

select * from Island_numeric

select col1,
col1 - ROW_NUMBER() over(order by col1) grp
from Island_numeric

--answer
with cte as(
select col1,
col1 - ROW_NUMBER() over(order by col1) grp
from Island_numeric
)
select min(col1) start_range
,max(col1) end_range
from cte
group by grp


--without grp by, not worth it
with cte as(
select col1,
col1 - ROW_NUMBER() over(order by col1) grp
from Island_numeric
),
cte2 as(
select min(col1) over(partition by grp) start_range
,max(col1) over(partition by grp) end_range
from cte),
cte3 as(
select start_range,end_range,ROW_NUMBER() over(partition by start_range order by start_range) rn
from cte2)
select * from cte3
where rn=1



--practice again
with cte as(
select col1,
col1-ROW_NUMBER() over(order by col1) rn
from Island_numeric)
select min(col1) st
,max(col1) ed
from cte
group by rn


select * from task.tbltask

select TaskID,TaskName,max(TaskStatusID) mx
from task.TblTask
group by TaskID,TaskName




DROP TABLE IF EXISTS dbo.Island_Date;
GO

CREATE TABLE dbo.Island_Date
(
  Col1 DATE NOT NULL PRIMARY KEY
);
GO

INSERT INTO dbo.Island_Date(Col1)
VALUES
	('20180402'),
	('20180403'),
	('20180407'),
	('20180408'),
	('20180409'),
	('20180411'),
	('20180415'),
	('20180416'),
	('20180417'),
	('20180428');
GO

select * from Island_Date

/*
Island_Date با توجه به مقادیر موجود در جدول
:به‌صورت زیر خواهد بود Island محدوده

Range_Start   Range_End
-----------   ----------
2018-04-02    2018-04-03
2018-04-07    2018-04-09
2018-04-11    2018-04-11
2018-04-15    2018-04-17
2018-04-28    2018-04-28
*/

select col1,
DATEADD(day,-1*ROW_NUMBER() over(order by col1),col1) grp,
-1*ROW_NUMBER() over(order by col1) spice
from Island_Date


with cte as(
select col1,
dateadd(day,-ROW_NUMBER() over(order by col1),col1) grp
from Island_Date)
select min(col1) min_range,
max(col1) max_range
from cte
group by grp


--lag
/*
تمرین کلاسی
.کوئری زیر را با روش دلخواه بازنویسی کنید

SELECT
	custid, orderdate, orderid, val,
	LAG(Val) OVER( PARTITION BY custid 
				   ORDER BY orderdate, orderid ) AS Prv_Val
FROM Sales.OrderValues;
GO
*/


select * from task.TblWorkflowInstance


select top 1000 WorkflowInstanceID,CreateDate,StarterUserID,Interval,
lag(CreateDate) over(partition by StarterUserID order by CreateDate) prev_cr_date
from task.TblWorkflowInstance

/*
تمرین کلاسی
.کوئری زیر را با روش دلخواه بازنویسی کنید

SELECT
	custid, orderdate, orderid, val,
	LAG(Val) OVER( PARTITION BY custid 
				   ORDER BY orderdate, orderid ) AS Prv_Val
FROM Sales.OrderValues;
GO
*/


select top 1000 WorkflowInstanceID,CreateDate,StarterUserID,Interval,
ROW_NUMBER() over(partition by StarterUserID order by CreateDate) prev_val
from task.TblWorkflowInstance


--alt method not working
with cte as(
select top 1000 WorkflowInstanceID,CreateDate,StarterUserID,Interval,
ROW_NUMBER() over(order by StarterUserID,CreateDate) prev_val
from task.TblWorkflowInstance
)
select top 1000 cte.WorkflowInstanceID,cte.CreateDate,cte.StarterUserID,cte.Interval,cte.prev_val
from cte
left join cte c on cte.StarterUserID=c.StarterUserID
and cte.prev_val=c.prev_val+1 



--alt
select top 1000 WorkflowInstanceID,cast(CreateDate as date) CreateDate,StarterUserID,Interval,
min(cast(CreateDate as date)) over(partition by StarterUserID order by WorkflowInstanceID,Interval
rows between 1 preceding and 1 preceding) prev_val
from task.TblWorkflowInstance


--compare
select top 1000 WorkflowInstanceID,cast(CreateDate as date) CreateDate,StarterUserID,Interval,
lag(cast(CreateDate as date)) over(partition by StarterUserID order by WorkflowInstanceID,Interval) prev_val
from task.TblWorkflowInstance


/*
تمرین کلاسی
.کوئری زیر را با روش دلخواه بازنویسی کنید

SELECT
	custid, orderdate, orderid, val,
	LEAD(Val) OVER( PARTITION BY custid 
				    ORDER BY orderdate, orderid ) AS Nxt_Val
FROM Sales.OrderValues;
GO
*/

select WorkflowInstanceId,cast(CreateDate as date) createdate,starteruserid,interval,
min(cast(CreateDate as date)) over(partition by starteruserid order by WorkflowInstanceID,Interval
rows between 1 following and 1 following) next_date
from task.TblWorkflowInstance


select WorkflowInstanceId,cast(CreateDate as date) createdate,starteruserid,interval,
lead(cast(CreateDate as date)) over(partition by starteruserid order by WorkflowInstanceID,Interval) next_date
from task.TblWorkflowInstance


--gap
DROP TABLE IF EXISTS dbo.Gap_Numeric;
GO

CREATE TABLE dbo.Gap_Numeric
(
	Col1 INT PRIMARY KEY
);
GO

INSERT INTO dbo.Gap_Numeric(Col1)
VALUES
	(2),(3),(7),(8),(9),(11),(15),(16),(17),(28);
GO

SELECT * FROM dbo.Gap_Numeric;

/*
Gap_Numeric با توجه به‌مقادیر موجود در جدول
:به‌صورت زیر خواهد بود Gap محدوده

Range_Start   Range_End
-----------  -----------
    4           6
    10          10
    12          14
    18          27
*/


with cte as(
select col1,
lead(col1) over(order by col1) nxt
from Gap_Numeric
)
select Col1+1 col,
nxt-1 nxt
from cte
where nxt-col1>1


--Gap & Date Values
DROP TABLE IF EXISTS dbo.Gap_Date;
GO

CREATE TABLE dbo.Gap_Date
(
  Col1 DATE PRIMARY KEY
);
GO

INSERT INTO dbo.Gap_Date(Col1)
VALUES
	('20120202'),
	('20120203'),
	('20120207'),
	('20120208'),
	('20120209'),
	('20120211'),
	('20120215'),
	('20120216'),
	('20120217'),
	('20120228');
GO

SELECT * FROM dbo.Gap_Date;
GO

/*
Gap_Date با توجه به‌مقادیر موجود در جدول
:به‌صورت زیر خواهد بود Gap محدوده

Range_Start  Range_End
-----------  ----------
2012-02-04   2012-02-06
2012-02-10   2012-02-10
2012-02-12   2012-02-14
2012-02-18   2012-02-27
*/

with cte as(
select Col1,lead(col1) over(order by col1) nxt
from Gap_Date)
select 
dateadd(day,1,col1) Range_Start,
dateadd(day,-1,col1) Range_End
from cte
where datediff(day,Col1,nxt)>1


--filtering
/*
:می‌خواهیم به‌ازای کارمند شماره 9 و در سال 2017 کوئری زیر را بنویسیم
نیم‌سال دوم همان سال qty هرماه نسبت به میانگین qty محاسبه اختلاف

empid   ordermonth   qty     Diff
-----   ----------  -----   ------
  9     2017-01-01   74      -13 
  9     2017-03-01   137      50	 
  9     2017-04-01   52      -35 
  9     2017-05-01   8       -79 
  9     2017-06-01   161      74	 
  9     2017-07-01   4       -83 
  9     2017-08-01   98       11	 
  9     2017-09-01   93       6	 
  9     2017-10-01   24      -63 
  9     2017-11-01   222     135 
  9     2017-12-01   82      -5	 

*/

select top 1000 * from Task.TblTask
select top 1000 * from  Users.TblUsers
select top 1000 * from  Users.TblProfiles
select top 1000 * from  Task.TblTaskStatus
select top 1000 * from  Task.TblWorkflowInstance
select top 1000 * from  Workflow. TblWorkflow


select *
from  Workflow. TblWorkflow w
join Users.TblUsers u on u.UserId=w.WorkflowAdmin
join task.TblWorkflowInstance i on i.WorkflowId=w.WorkflowId


/*
:می‌خواهیم به‌ازای کارمند شماره 9 و در سال 2017 کوئری زیر را بنویسیم
نیم‌سال دوم همان سال qty هرماه نسبت به میانگین qty محاسبه اختلاف

empid   ordermonth   qty     Diff
-----   ----------  -----   ------
  9     2017-01-01   74      -13 
  9     2017-03-01   137      50	 
  9     2017-04-01   52      -35 
  9     2017-05-01   8       -79 
  9     2017-06-01   161      74	 
  9     2017-07-01   4       -83 
  9     2017-08-01   98       11	 
  9     2017-09-01   93       6	 
  9     2017-10-01   24      -63 
  9     2017-11-01   222     135 
  9     2017-12-01   82      -5	 

*/

select e.EmployeeID,OrderDate,Quantity,
Quantity - avg(case when MONTH(OrderDate)>6 then Quantity end) over() diff
from Employees e
join Orders o on e.EmployeeID=o.EmployeeID
join [Order Details] od on od.OrderID=o.OrderID
where orderdate between '1996' and '1997'



--group by and wf
/*
تمرین کلاسی
.را به ساده‌ترین شکل ممکن بازنویسی کنید Query2-1
*/
WITH CTE
AS
(
	-- محاسبه مجموع مبالغ هر کارمند
	SELECT
		empid,
		SUM(val) AS Sum_Emp
	FROM Sales.OrderValues
	GROUP BY empid
)
SELECT
	empid,
	Sum_Emp AS Sum_Emp,
	SUM(Sum_Emp) OVER() AS Sum_All,
	Sum_Emp - SUM(Sum_Emp) OVER() AS Diff,
	Sum_Emp / SUM(Sum_Emp) OVER() * 100 AS Prcnt
FROM CTE;
GO



--distinct aggregate
/*
،اکنون می‌خواهیم بدانیم که مشتری 1 در هر لحظه با چه تعداد کارمند در ارتباط بوده است
:یعنی خروجی به‌صورت زیر باشد

custid   empid   orderdate    Num_Cust
------- ------- ------------ -----------
  1       6      2017-08-25      1
  1       4      2017-10-03      2
  1       4      2017-10-13      2
  1       1      2018-01-15      3
  1       1      2018-03-16      3
  1       3      2018-04-09      4


اما کوئری زیر به‌ازای هر ثبت‌سفارش، عملیات شمارش را انجام داده
،و اگر مشتری‌ای در تاریخ دیگر هم با کارمندی که قبلا شمارش شده
.ثبت‌سفارش داشته باشد آن را مجددا شمارش می‌کند
*/

-- .می‌شود NULL با استفاده از ترفند زیر مقادیر تکراری مشتری-کارمند
WITH CTE
AS
(
	SELECT
	custid, empid, orderdate,
	CASE
		WHEN ROW_NUMBER() OVER( PARTITION BY custid, empid
								ORDER BY orderdate ) = 1
		THEN empid END AS Distinct_Emp
	FROM Sales.OrderValues
		WHERE custid = 1
)
SELECT
	custid, empid, orderdate,
	COUNT(Distinct_Emp) OVER( PARTITION BY custid
							  ORDER BY orderdate ) AS Num_Cust
FROM CTE;