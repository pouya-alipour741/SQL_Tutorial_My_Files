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