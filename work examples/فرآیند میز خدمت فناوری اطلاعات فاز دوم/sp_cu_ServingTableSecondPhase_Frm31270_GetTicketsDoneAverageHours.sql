--exec sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours @FromDate=N'',@ToDate=N'1403/12/12'


alter proc sp_cu_ServingTableSecondPhase_Frm31270_GetTicketsDoneAverageHours
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
					isnull(case
						when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') != ''
						then datediff(MINUTE, RegDate, EghdamStartDate)  +  DATEDIFF(minute, RegTime , EghdamStartTime) 
						when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') = ''
						then datediff(MINUTE, @CurrentDate, EghdamStartDate)  +  DATEDIFF(minute, @CurrentTime, EghdamStartTime)					
					end, 0)
					+
					isnull(case
						when isnull(EghdamGroupStartDate, '') != '' and isnull(RegDate, '') != ''
						then datediff(MINUTE, RegDate, EghdamGroupStartDate)  +  DATEDIFF(minute, RegTime , EghdamGroupStartTime) 
						when isnull(EghdamGroupStartDate, '') != '' and isnull(RegDate, '') = ''
						then datediff(MINUTE, @CurrentDate, EghdamGroupStartDate)  +  DATEDIFF(minute, @CurrentTime, EghdamGroupStartTime)					
					end, 0)
					) 
				from
					Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log s	
			where
					s.WFID =  A.WFID 
					and RoleID in(4,6)  --شرط های کاربر اقدام کننده بودن
					and StatusActing != 2			
				) Actor_minutes
		FROM dbo.Tbl_Cu_ServingTableSecondPhaseHumanResource_Log A
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
			((sum(Actor_minutes) over() / count(*) over()) / (1.0 * 60)) TicketsInActorCartable_AverageTime  --total hours
		from
			cte
		)
		select
			ceiling(TicketsInActorCartable_AverageTime) as TicketsInActorCartable_AverageTime_WorkHours
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
	





