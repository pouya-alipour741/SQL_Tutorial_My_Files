select * from dbo.bookauthor;

select * from Log.TblEventLog

alter view V_bookauthor as
select * from Log.TblEventLog
where datediff(day, date, getdate())<50;

select * from V_bookauthor;


/*derived table*/
/*پنجمین کمترین*/
select top 1 * from (select top 5 * from Log.TblEventLog order by EventLogId asc) as fifth
order by EventLogId desc;

--more examples
select * from (
select *
from Tbl_CU_226
where Col_10093 like 'LED%') as LED
order by Col_9792
;

--common table expression
with LED
as
(select *
from Tbl_CU_226
where Col_10093 like 'LED%')
select * from LED order by Col_10093;

select * from LED; --already expired table

--table valued functions
--note for calling this function we don't need prefix schema eg. dbo
create function 
fn_specific_prod(@product nvarchar(40))
returns table
as
return (select * from Tbl_CU_226
where Col_10093=@product);

select * from fn_specific_prod('Hypec');

--another ex
/*چندمین کمترین*/
select * from Log.TblEventLog order by EventLogId asc;
select Parameters,count(Parameters) as [count] from Log.TblEventLog group by Parameters;

create function
fn_TopKalaN(@n int)
returns table
as
return(select top 1 * from
(select top (@n) Parameters from Log.TblEventLog group by Parameters) as nth
order by Parameters desc
)
;

alter function
fn_TopKalaN(@n int)
returns table
as
return(select top 1 * from
(select top (@n) UserId from Log.TblEventLog group by UserId order by UserId) as nth
order by UserId desc
)
;

select * from fn_TopKalaN(9);

--compare function with this command:
select UserId from Log.TblEventLog group by UserId order by UserId asc;

--synonyms
select * from dbo.members;

--creating another method to call
create synonym m
for dbo.members
go
select * from m;

--changing schema
create schema mem
go
alter schema mem
transfer dbo.members

select * from mem.members;

create synonym dbo.members
for mem.members;

--left and right buitin funcs
--Extract n characters from a string (starting from left)
select * from mem.members
where left(email,2)='al'  --can write N'al' to include upperletter as well
;

select * from mem.members
where right(email,3) ='com'
;

--اختلاف حداقل و حداکثر دو بازه تاریخ
select DATEDIFF(year, PlanEndDate, PlanStartDate) 
select DATEDIFF(year, max(PlanEndDate), min(PlanEndDate)) 
from dbo.Tbl_Cu_Plan
;
select max(PlanEndDate) from dbo.Tbl_Cu_Plan
select min(PlanEndDate) from dbo.Tbl_Cu_Plan where PlanEndDate=''

