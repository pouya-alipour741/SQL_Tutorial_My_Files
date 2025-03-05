--exec sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours @FromDate=N'',@ToDate=N'1403/12/12'

alter proc sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours
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
					end)  
				from
					task.TblWorkflowInstance i
					join task.TblWorkflowActivityInstance ai on ai.WokflowInstanceID = i.WorkflowInstanceID
					join task.TblTask t on t.WorkflowActivityInstaceID = ai.WorkflowActivityInstanceID	
				where
						i.WorkflowInstanceID =  A.WFID  
						and ActivityID != 4867931382758811148 --در صورتی که کاربر ثبت کننده با اقدام کننده یکی باشد محاسبات بدون این شرط(تسک ثبت فرآیند) خراب می شود.
						and t.UserID in
									(select
										RegUserID
									from 
										Tbl_Cu_ServingTableSecondPhaseHistory_Log s
									where
										RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
										and StatusActing != 2
										and s.WFID = A.WFID
										)
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
	),
	cte2 as(
		select top 1
			((sum(Actor_hours) over() / count(*) over()) / (1.0 * 60)) TicketsInActorCartable_AverageTime  --total hours
		from
			cte
		)
		select
			ceiling(TicketsInActorCartable_AverageTime)  as TicketsInActorCartable_AverageTime_WorkHours
			--cast(
			--	floor(TicketsInActorCartable_AverageTime / 8) as nvarchar(50)
			--	) + 'روز کاری و '
			--+ cast(
			--	ceiling(TicketsInActorCartable_AverageTime % 8) as nvarchar(10)
			--	)
			--+ ' ساعت' as TicketsInActorCartable_AverageTime_WorkHours
		from   
			cte2
end
	





