select * from form.TblSearchFormAccessPermission
where formid = 31264

insert into form.TblSearchFormAccessPermission(FormId, UserId)
values(31264, 1)

exec Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264 @FromDate=N'',@ToDate=N'1403/12/11',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'0',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'',@EndWFIDTo=N'',@Desc=N''


select
	TaskName,
	t.CreateDate,
	t.EndDate,
	case
		when isnull(t.EndDate, '') != '' then datediff(MINUTE,t.CreateDate , t.EndDate) 
		else datediff(MINUTE,t.CreateDate , getdate()) 
	end hours_diff,	
	sum(case
		when isnull(t.EndDate, '') != '' then datediff(minute,t.CreateDate , t.EndDate) 
		else datediff(minute,t.CreateDate , getdate()) 
	end) over() total_actor_time, 
	p.FullName,
	p.UserId
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
	--join task.TblTaskStatus s on s.TaskStatusID = t.TaskStatusID
	--join task.TblWorkflowInstanceTrustee tr on tr.WorkflowInstanceId = i.WorkflowInstanceID
	join users.TblProfiles p on p.UserId = t.UserId	
where
	--WorkflowID = 62
	--and WorkflowInstanceStatusID = 2
	 i.WorkflowInstanceID = 1852996   -- = x.wfid  --1859455 - 1852996
	 and p.UserId <> 2
	 and p.UserID in( select
							(select UserID from users.TblUsers u where u.UserId = s.RegUserID)
						from 
							Tbl_Cu_ServingTableSecondPhaseHistory_Log s
						where
							RoleID in(4,6)
							and StatusActing != 2
						  )





------------------------------					
with cte as(

	,(select
		sum(case
			when isnull(t.EndDate, '') != '' then datediff(hour,t.CreateDate , t.EndDate) 
			else datediff(hour,t.CreateDate , getdate()) 
		end) --over() 
	from
		task.TblWorkflowInstance i
		join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
		join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
		join users.TblProfiles p on p.UserId = t.UserId	
	where
		 i.WorkflowInstanceID =    --  x.wfid
		 and p.UserID in
						(select
							(select UserID from users.TblUsers u where u.UserId = s.RegUserID)
						from 
							Tbl_Cu_ServingTableSecondPhaseHistory_Log s
						where
							RoleID in(4,6)
							and StatusActing != 2) ) Actor_hours,										 
	count(*) over() tickets_count
)
	select
		*,
		(sum(Actor_hours) over() / tickets_count) TicketsInActorCartable_AverageTime
	from cte



select * from Tbl_Cu_ServingTableSecondPhase_Log
select * from dbo.Tbl_Cu_ServingTableSecondPhase_Log

insert into form.TblSearchFormAccessPermission(FormId, UserId)
values(243, 1)


select *
from task.TblWorkflowInstance
where WorkflowInstanceID = 298661


exec Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264 @FromDate=N'1403/11/11',@ToDate=N'1403/12/12',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'0',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'',@EndWFIDTo=N'',@Desc=N''

select * from Tbl_Cu_ServingTableSecondPhaseHistory_Log

select * from Tbl_CU_Base_StatusPublicServiceDesc


----
DECLARE @input float = 12.933333;

DECLARE @hour int = FLOOR(@input);
DECLARE @minutes int = (SELECT (@input - FLOOR(@input)) * 60);

SELECT RIGHT('00' + CONVERT(varchar(2), @hour), 2) + ' ساعت'
+ RIGHT('00' + CONVERT(varchar(2), @minutes), 2) + ' دقیقه'


exec Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264 @FromDate=N'1403/12/12',@ToDate=N'1403/12/12',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'0',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'',@EndWFIDTo=N'',@Desc=N''


DECLARE @input float = 12.933333;

DECLARE @hour int = FLOOR(AvgTimeTicketsDonePerUser);
DECLARE @minutes int = (SELECT (AvgTimeTicketsDonePerUser - FLOOR(AvgTimeTicketsDonePerUser)) * 60);


SELECT RIGHT('00' + CONVERT(nvarchar(2), FLOOR(AvgTimeTicketsDonePerUser)), 2) + ' ساعت'
+ RIGHT('00' + CONVERT(nvarchar(2), (SELECT (AvgTimeTicketsDonePerUser - FLOOR(AvgTimeTicketsDonePerUser)) * 60)), 2) + ' دقیقه'