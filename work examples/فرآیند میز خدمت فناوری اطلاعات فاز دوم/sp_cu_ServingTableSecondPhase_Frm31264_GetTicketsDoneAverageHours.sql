--exec sp_cu_ServingTableSecondPhase_Frm31264_GetTicketsDoneAverageHours @FromDate=N'',@ToDate=N'1403/12/12'


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
			where
				h.WFID =  s.WFID
				and (h.RoleID = 6 and h.StatusActing != 2 or h.RoleID = 4)  --شرط های کاربر اقدام کننده بودن	
				and ActivityID in(4782972985427111846, 5443268012818330002)
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
	





