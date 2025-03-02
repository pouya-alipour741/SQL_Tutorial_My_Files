--exec Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264 @FromDate=N'',@ToDate=N'1403/12/11',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'0',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'',@EndWFIDTo=N'',@Desc=N''

--exec sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours @FromDate=N'1403/12/11',@ToDate=N'1403/12/12'


create proc sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours
@FromDate nvarchar(10),
@ToDate nvarchar(10)
as
begin
	with cte as(
		select
			(select
					sum(case
						when isnull(t.EndDate, '') != '' then datediff(minute,t.CreateDate , t.EndDate) 
						else datediff(minute,t.CreateDate , getdate()) 
					end) --over() 
				from
					task.TblWorkflowInstance i
					join task.TblWorkflowActivityInstance ai on ai.WokflowInstanceID = i.WorkflowInstanceID
					join task.TblTask t on t.WorkflowActivityInstaceID = ai.WorkflowActivityInstanceID
					--join users.TblProfiles p on p.UserId = t.UserId	
				where
						i.WorkflowInstanceID =  A.WFID  
						and t.UserID in
									(select
										--(select UserID from users.TblUsers u where u.UserId = s.RegUserID)
										RegUserID
									from 
										Tbl_Cu_ServingTableSecondPhaseHistory_Log s
									where
										RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
										and StatusActing != 2)
					) Actor_hours
		FROM dbo.Tbl_Cu_ServingTableSecondPhase_Log A
		WHERE (
				@FromDate = ''
				OR RegDate >= @FromDate
			)
			AND
			(
				@ToDate = ''
				OR RegDate <= @ToDate
			)
	)
	select top 1
		--count(*) over() tickets_count,
		((sum(Actor_hours) over() / count(*) over()) / (1.0 * 60)) TicketsInActorCartable_AverageTime
		--,*
	from
		cte
end
	





