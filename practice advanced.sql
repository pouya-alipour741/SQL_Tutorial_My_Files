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



--
use archive
create table Company (
    companyId int identity(1,1)
,   companyName varchar(100)
,   zipcode varchar(10) 
,   constraint PK_Company primary key (companyId)
)
GO

create table Person (
    personId int identity(1,1)
,   personName varchar(100)
,   companyId int
,   constraint FK_Person_CompanyId foreign key (companyId) references dbo.Company(companyId)
,   constraint PK_Person primary key (personId)
)
GO

insert Company
select 'ABC Company', '19808' union
select 'XYZ Company', '08534' union
select '123 Company', '10016'


insert Person
select 'Alan', 1 union
select 'Bobby', 1 union
select 'Chris', 1 union
select 'Xavier', 2 union
select 'Yoshi', 2 union
select 'Zambrano', 2 union
select 'Player 1', 3 union
select 'Player 2', 3 union
select 'Player 3', 3 


select * from Person
select * from Company


select personId,tmp.* from Person
cross apply
(select * from Company
where person.companyId=Company.companyId
) tmp

select * from Person
cross join
(select * from Company
) tmp


/* using CROSS APPLY */
select * 
from Person p
cross apply (
    select *
    from Company c
    where p.companyid = c.companyId
) Czip


/* the equivalent query using INNER JOIN */
select *
from Person p
inner join Company c on p.companyid = c.companyId

--findingn managers in tbs
use TBSSimNew
go
create proc sp_getManagertest
as
begin
with cte as(
select p.UserId,FullName,ug.GroupId,GroupName,ROW_NUMBER() over(partition by fullname order by (select null)) rn
from users.TblProfiles p 
join users.tblusersgroups ug on ug.userid=p.userid
join users.tblgroups g on g.groupid=ug.groupid
where  GroupName like N'%مدیر%'
)
select *
from cte
where rn=1
end



--sub
select * from users.TblProfiles
where UserId in(select userid from users.TblUsersGroups
where GroupId in(select GroupId from users.TblGroups 
where GroupName like N'%مدیر%'))
order by FullName;


--row number
with cte as(
select p.UserId,FullName,ug.GroupId,GroupName,ROW_NUMBER() over(partition by fullname order by (select null)) rn
from users.TblProfiles p 
join users.tblusersgroups ug on ug.userid=p.userid
join users.tblgroups g on g.groupid=ug.groupid
where  GroupName like N'%مدیر%'
)
select *
from cte
where rn=1


--distinct
select distinct p.UserId,FullName
from users.TblProfiles p 
join users.tblusersgroups ug on ug.userid=p.userid
join users.tblgroups g on g.groupid=ug.groupid
where  GroupName like N'%مدیر%'

--is admin in personel list
select * from users.TblUsersGroups
select * from users.TblUsers
select * from users.TblGroups


select u.UserName,* from users.TblGroups g
join users.TblUsersGroups ug on g.GroupId=ug.GroupId
join users.TblUsers u on u.UserId=ug.UserId
where GroupName like N'پرسنل'
and 'admin' in (select u.UserName from users.TblUsers);


select *
from users.TblUsers
where UserId in(select UserId from users.TblUsersGroups where GroupId in 
(select GroupId from users.TblGroups
where GroupName like N'پرسنل')
)
and username='admin';


--simulate rank function
select ShippedDate,
RANK() over(order by ShippedDate) rk
from orders
where ShippedDate is not null
order by ShippedDate


select ShippedDate,
(select count(distinct ShippedDate) from Orders o2
where o2.ShippedDate<=o1.ShippedDate
) rnk
from orders o1
where ShippedDate is not null
order by ShippedDate


with cte as(
select ShippedDate,
ROW_NUMBER() over(order by ShippedDate) rn,
count(*) over(partition by ShippedDate) cnt
from orders
where ShippedDate is not null)
select *,
rn-cnt+1 rnk
from cte
order by ShippedDate


use tbssimnew

--find the most concurrent tasks

--method 1 window function
with cte as(
select
	taskid, createdate, 1 as conc
from
	task.tbltask t
union all
select
	taskid, enddate, -1 as conc
from
	task.tbltask t
),
cte2 as(
	select *, sum(conc) over(partition by taskid order by createdate, conc rows between unbounded preceding and current row) conc_sum
	from cte
)
select
	taskid, max(conc_sum) max_conc_sum
from
	cte2
group by
	taskid



--method 2 sub query
with cte as(
select
	taskid, CreateDate,
	(select count(*) from task.tbltask t2
	where t2.taskid = t1.taskid
	and t2.enddate >= t1.createdate
	and t2.createdate > t1.createdate) num_concurrent
from
	task.tbltask t1
)
select taskid, max(num_concurrent) 
from cte
group by
	taskid


