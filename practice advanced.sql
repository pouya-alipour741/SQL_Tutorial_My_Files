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

with cte as(
select col1,
col1 - ROW_NUMBER() over(order by col1) grp from Island_numeric)
select min(col1) s_range,max(col1) e_range
from cte
group by grp

--
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

with cte as(
select col1,
dateadd(day,-1*ROW_NUMBER() over(order by col1),Col1) grp
from Island_Date)
select min(col1) s,max(col1) e
from cte
group by grp


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
from Gap_Numeric)
select col1+1 s,
nxt-1 e
from cte
where nxt-col1>1


--
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
select col1,
lead(col1) over(order by col1) nxt
from Gap_Date)
select dateadd(day,1,Col1),
dateadd(day,1,nxt)
from cte
where DATEDIFF(day,col1,nxt)>1



