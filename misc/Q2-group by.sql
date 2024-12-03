--select  top 100 * from task.TblTask

with cte as(
select
	p.fullname,t.userid,t.createdate,s.taskstatusname, count(taskid) over(partition by t.userid) task_count,
	ROW_NUMBER() over(partition by t.userid order by (select null)) rn
from
	task.TblTask t
	join users.TblProfiles p on t.UserID=p.UserId
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	t.TaskStatusID = 1
)
select * from cte
where task_count > 100
	and rn =1;

----------------------
declare @Temp table 
(
	userID int,
	Countt bigint,
	taskStatus int
)
insert into @Temp
select  UserID , Count(UserID),TaskStatusID from task.TblTask
where TaskStatusID = 1
group by UserID,TaskStatusID
having Count(UserID) > 100

select 
	A.userID,
	A.Countt,
	B.FullName,
	c.TaskStatusName
from @Temp A
inner join users.TblProfiles B
On A.userID = B.UserId
inner join task.TblTaskStatus C
On A.taskStatus = c.TaskStatusID;


--with cte
with cte as(
select  UserID , Count(UserID),TaskStatusID from task.TblTask
where TaskStatusID = 1
group by UserID,TaskStatusID
having Count(UserID) > 100
)
select 
	A.userID,
	A.Countt,
	B.FullName,
	c.TaskStatusName
from cte A
inner join users.TblProfiles B
On A.userID = B.UserId
inner join task.TblTaskStatus C
On A.taskStatus = c.TaskStatusID;



--adding createdate
declare @Temp table 
(
	userID int,
	Countt bigint,
	taskStatus int
)
insert into @Temp
select  UserID , Count(UserID),TaskStatusID from task.TblTask
where TaskStatusID = 1
group by UserID,TaskStatusID
having Count(UserID) > 100

select 
	A.userID,
	A.Countt,
	B.FullName,
	c.TaskStatusName
from @Temp A
inner join users.TblProfiles B
On A.userID = B.UserId
inner join task.TblTaskStatus C
On A.taskStatus = c.TaskStatusID;


------------------
select 
	x.*, s.taskstatusname
from
	task.tbltaskstatus
	join
	(select 
		userid, count(userid) task_count, taskstatusid
	from
		task.tbltask t 
	where
		taskstatusid = 1
	group by
		userid, taskstatusid) x x.taskstatusid = ts.taskstatusid
	having
		Count(UserID) > 100

---------------



