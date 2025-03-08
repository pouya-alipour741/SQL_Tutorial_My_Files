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
					when isnull(EghdamEndDate, '') != '' and isnull(RegDate, '') != ''
					then datediff(MINUTE, RegDate, EghdamEndDate)  +  DATEDIFF(minute, RegTime , EghdamEndTime) 
					when isnull(RegDate, '') != '' and isnull(EghdamEndDate, '') = ''  --تیکت همچنان در کارتابل اقدام کننده هست
					then datediff(MINUTE, RegDate, @CurrentDate)  +  DATEDIFF(minute, RegTime, @CurrentTime)					
				end
				)
			from
				Tbl_Cu_ServingTableSecondPhase_Log s
			where
				s.WFID =  A.WFID
				and (
						@FromDate = ''
						OR RegDate >= @FromDate
					)
					AND
					(
						@ToDate = ''
						OR RegDate <= @ToDate
					)
				) Actor_minutes
		FROM 
			Tbl_Cu_ServingTableSecondPhaseHistory_Log A
		WHERE 
			A.RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
			and A.StatusActing != 2	
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
	





