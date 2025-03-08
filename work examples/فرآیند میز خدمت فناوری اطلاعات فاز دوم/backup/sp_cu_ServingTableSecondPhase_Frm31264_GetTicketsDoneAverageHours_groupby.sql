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
			sum(
				case
					when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') != ''
					then datediff(MINUTE, EghdamStartDate, RegDate)  +  DATEDIFF(minute , EghdamStartTime, RegTime) 
					when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') = ''  --تیکت همچنان در کارتابل اقدام کننده هست
					then datediff(MINUTE, EghdamStartDate, @CurrentDate)  +  DATEDIFF(minute, EghdamStartTime, @CurrentTime)					
				end
			) Actor_minutes
		from
			Tbl_Cu_ServingTableSecondPhaseHistory_Log h
		where
				(
					@FromDate = ''
					OR EghdamStartDate >= @FromDate
				)
				AND
				(
					@ToDate = ''
					OR EghdamStartDate <= @ToDate
					)
			and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and StatusActing != 2	
			and ActivityID in(4782972985427111846, 5443268012818330002)
		group by
			wfid
				
	),
	cte2 as(
		select top 1
			((sum(Actor_minutes) over() / count(*) over()) / 60.0) TicketsInActorCartable_AverageTime  --total hours
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
	





