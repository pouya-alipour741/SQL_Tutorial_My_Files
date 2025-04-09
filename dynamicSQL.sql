declare @sql nvarchar(max),@agg varchar(50)

set @agg='TaskStatusID'
set @sql=N'select * from(
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
) x
pivot(count('+@agg+') for taskstatusname in([در حال انجام],[انجام شده],[ابطال شده])) pvt'

exec(@sql)


alter proc sp_dynamic @agg varchar(50)
as
begin
declare @sql nvarchar(max)

set @sql=N'select * from(
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
) x
pivot(count('+@agg+') for taskstatusname in([در حال انجام],[انجام شده],[ابطال شده])) pvt'
exec sp_executesql @sql
end

exec sp_dynamic 'TaskStatusID'



--
select top 1000 cast(CreateDate as date) CreateDate,s.TaskStatusID,TaskStatusName,count(s.TaskStatusName) over(partition by cast(CreateDate as date))
from task.tbltask t
join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID

select TaskStatusName from task.TblTaskStatus


--dynamic sql

declare @fromdate nvarchar(20)= '2023-01-08'
declare @todate nvarchar(20)= getdate()--'2012-01-12'

declare @sql nvarchar(max)


set @sql = N'select cast(CreateDate as date) CreateDate,[1] as ''درحال انجام'' ,
[2] as ''انجام شده'',
[4] as ''ابطال شده''
from (
select cast(CreateDate as date) CreateDate,WorkflowInstanceID,WorkflowInstanceStatusID
from Task.TblWorkflowInstance
where cast(CreateDate as date) between '''+@fromdate+''' and '''+@todate+'''
) x
pivot(count(WorkflowInstanceID ) for WorkflowInstanceStatusID in([1],[2],[4])
) pvt
order by CreateDate'

exec(@sql)

--sp dynamic sql
alter proc sp_dynamic2 @fromdate nvarchar(20),@todate nvarchar(20)
as
begin
	declare @sql nvarchar(max)

	set @sql = N'select cast(CreateDate as date) CreateDate,[1] as ''درحال انجام'' ,
	[2] as ''انجام شده'',
	[4] as ''ابطال شده''
	from (
	select cast(CreateDate as date) CreateDate,WorkflowInstanceID,WorkflowInstanceStatusID
	from Task.TblWorkflowInstance
	where cast(CreateDate as date) between '''+@fromdate+''' and '''+@todate+'''
	) x
	pivot(count(WorkflowInstanceID ) for WorkflowInstanceStatusID in([1],[2],[4])
	) pvt
	order by CreateDate'

	exec sp_executesql @sql 
end

exec sp_dynamic2 '2023-01-08','2024-01-08'



--sp dynamic Q2
create proc sp_dynamicQ2 @fromdate varchar(20),@todate varchar(20),@taskcount int
as
begin
	declare @sql nvarchar(max)
	set @sql=N'
	with cte as(
	select p.FullName,t.UserID,CreateDate,TaskStatusName,count(TaskID) over(partition by t.UserID) task_count
	from Task.TblTaskStatus s
	join task.TblTask t on t.TaskStatusID=s.TaskStatusID
	join Users.TblUsers u on u.UserId=t.UserID
	join Users.TblProfiles p on p.UserId=t.UserID
	where TaskStatusName = ''در حال انجام''
	and year(CreateDate) between '''+@fromdate+''' and '''+@todate+'''
	)
	select  * from cte
	where task_count>'''+@taskcount+'''
	'
	exec sp_executesql @sql

end

exec sp_dynamicQ2 '2009-01-08','2022-01-08',100



----variable parameter
DECLARE @Category NVARCHAR(50) = 'Electronics'; -- Example input for category
DECLARE @MinPrice DECIMAL(10, 2) = 100.00;      -- Example input for minimum price
DECLARE @SQL NVARCHAR(MAX);                     -- To hold the dynamic SQL query

-- Construct the dynamic SQL query
SET @SQL = '
    SELECT ProductID, ProductName, Category, Price
    FROM Products
    WHERE 1 = 1'; -- Always true condition for flexible query building

-- Add dynamic conditions based on input parameters
IF @Category IS NOT NULL
    SET @SQL = @SQL + ' AND Category = @CategoryParam';

IF @MinPrice IS NOT NULL
    SET @SQL = @SQL + ' AND Price >= @MinPriceParam';

-- Execute the dynamic SQL query using sp_executesql
EXEC sp_executesql 
    @SQL, 
    N'@CategoryParam NVARCHAR(50), @MinPriceParam DECIMAL(10, 2)', -- Declare parameters
    @CategoryParam = @Category, 
    @MinPriceParam = @MinPrice;




alter proc sp_dynamic_user_task
@fromdate date=null,
@todate date=null,
@taskname nvarchar(50)=null,
@viewdiff int=null
as
begin
	declare @sql nvarchar(max)
	set @sql=N'
	select p.UserId,FullName,count(t.TaskID) user_count
	from task.TblTask t join task.TblTaskStatus s on t.TaskStatusID=s.TaskStatusID
	join users.TblProfiles p on p.UserId=t.UserID where 1=1'
	if (@taskname is not null)
		set @sql+=N' and s.TaskStatusName =@tn'
		 
	if (@fromdate is not null and @todate is not null)
		set @sql+=
		N' and t.CreateDate between @fd and @td'
	if (@viewdiff is not null)
		set @sql+=
		N' and datediff(day,t.CreateDate,t.ViewDate)<= @vd'
	set @sql+=
	'group by p.UserId,FullName'

	exec sp_executesql @sql,
		N'@tn nvarchar(50),@td date, @fd date, @vd int',
		@tn=@taskname,@td=@todate,@fd=@fromdate,@vd=@viewdiff
end


exec sp_dynamic_user_task @fromdate='2018',@todate='2024',@taskname=null ,@viewdiff =null



ALTER PROC sp_dynamic_user_task
    @fromdate DATE = NULL,
    @todate DATE = NULL,
    @taskname NVARCHAR(50) = NULL,
    @viewdiff INT = NULL
AS
BEGIN
    DECLARE @sql NVARCHAR(MAX) = N'
    SELECT p.UserId, FullName, COUNT(t.TaskID) AS user_count
    FROM task.TblTask t
    JOIN task.TblTaskStatus s ON t.TaskStatusID = s.TaskStatusID
    JOIN users.TblProfiles p ON p.UserId = t.UserID
    WHERE 1 = 1'

    IF (@taskname IS NOT NULL)
        SET @sql += N' AND s.TaskStatusName = @tn'

    IF (@fromdate IS NOT NULL AND @todate IS NOT NULL)
        SET @sql += N' AND t.CreateDate BETWEEN @fd AND @td'

    IF (@viewdiff IS NOT NULL)
        SET @sql += N' AND DATEDIFF(DAY, t.CreateDate, t.ViewDate) <= @vd'

    SET @sql += N' GROUP BY p.UserId, FullName'

    EXEC sp_executesql 
        @sql,
        N'@tn NVARCHAR(50), @fd DATE, @td DATE, @vd INT',
        @tn = @taskname, @fd = @fromdate, @td = @todate, @vd = @viewdiff
END


