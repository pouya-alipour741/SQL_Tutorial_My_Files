--exec sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours @FromDate=N'1403/11/14',@ToDate=N'1403/11/17'


alter proc sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours
@FromDate nvarchar(10), 
@ToDate nvarchar(10)
as
begin
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)));

	with cte as(
		select
			(select
				sum(
					case
						when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') != ''
						then dbo.FN_CU_CalculateWorkingHours(EghdamStartDate, EghdamStartTime, RegDate, RegTime)
						when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') = ''  --تیکت همچنان در کارتابل اقدام کننده هست
						then dbo.FN_CU_CalculateWorkingHours(EghdamStartDate, EghdamStartTime, @CurrentDate, @CurrentTime)
					end
					)
				--sum(
				--	case
				--		when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') != ''
				--		then datediff(MINUTE, EghdamStartDate, RegDate)  +  DATEDIFF(minute , EghdamStartTime, RegTime) 
				--		when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') = ''  --تیکت همچنان در کارتابل اقدام کننده هست
				--		then datediff(MINUTE, EghdamStartDate, @CurrentDate)  +  DATEDIFF(minute, EghdamStartTime, @CurrentTime)					
				--	end)
			from
				Tbl_Cu_ServingTableSecondPhaseHistory_Log h
				join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = h.WFID
				join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
			where
				h.WFID =  s.WFID
				and (h.RoleID = 6 and h.StatusActing != 2 or h.RoleID = 4)  --شرط های کاربر اقدام کننده بودن	
				and h.ActivityID in(4782972985427111846, 5443268012818330002)
				and TaskName like N'%اقدام%'  -- بدلیل وجود تسک های نامرتبط برای همان اکتیویتی در یک فرآیند محاسبات بدون این فیلتر برای دیتاهای قدیمی خراب می شد
				and a.ActivityID = h.ActivityID
				and t.UserID = h.RegUserID
			) Actor_minutes
		FROM 
			Tbl_Cu_ServingTableSecondPhase_Log s
		WHERE 
			(
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
			((sum(Actor_minutes) over() / count(*) over()) / 60.0) TicketsInActorCartable_AverageTime  --total hours
		from
			cte
		)
		select
			ceiling(TicketsInActorCartable_AverageTime)  as TicketsInActorCartable_AverageTime_WorkHours
		from   
			cte2
end
	





