--exec Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource @FromDate=N'',@ToDate=N'1403/12/11'

alter PROCEDURE [dbo].[Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource]
    @FromDate AS NVARCHAR(10),
    @ToDate AS NVARCHAR(10)
AS
BEGIN
	declare @CurrentDate nvarchar(10) = (select dbo.MiladiToShamsi(GETDATE()))
	declare @CurrentTime nvarchar(5) = (select convert(nvarchar(5),cast(getdate() as time)));

	select 
		*,
		ceiling(AvgTimeTicketsDonePerUser) AvgTimeTicketsDonePerUser_WorkDays
	from(
		select
			*,
			case
				when SumAll != 0 then (Actor_hours_sum / SumAll)
				else 0
			end AvgTimeTicketsDonePerUser
		from(
			SELECT
				(
					SELECT TOP 1
						X.FullName
					FROM Users.TblProfiles X
					WHERE X.UserId = AQ.RegUserID
				) AS FullName,
				SUM(AQ.HalShode) AS HalShode,
				SUM(AQ.RadShode) AS RadShode,
				SUM(AQ.Tekrari) AS Tekrari,
				SUM(AQ.Peymankar) AS Peymankar,
				(SUM(AQ.HalShode) + SUM(AQ.RadShode) + SUM(AQ.Tekrari) + SUM(AQ.Peymankar)) AS SumAll
				,sum(Actor_minutes) / 60.0 Actor_hours_sum
			FROM
			(
				SELECT X.RegUserID,
					   CASE
						   WHEN X.StatusActing = 5 THEN
							   1
						   ELSE
							   0
					   END AS HalShode,
					   CASE
						   WHEN X.StatusActing = 4 THEN
							   1
						   ELSE
							   0
					   END AS RadShode,
					   CASE
						   WHEN X.StatusActing = 6 THEN
							   1
						   ELSE
							   0
					   END AS Tekrari,
					   CASE
						   WHEN X.StatusActing IN ( 1, 2, 7 ) THEN
							   1
						   ELSE
							   0
					   END AS Peymankar,
						   (select
								sum(
								case
									when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') != ''
									then dbo.FN_CU_CalculateWorkingHours(EghdamStartDate, EghdamStartTime, RegDate, RegTime)
									when isnull(EghdamStartDate, '') != '' and isnull(RegDate, '') = ''  --تیکت همچنان در کارتابل اقدام کننده هست
									then dbo.FN_CU_CalculateWorkingHours(EghdamStartDate, EghdamStartTime, @CurrentDate, @CurrentTime)
								end
								) 
								from
									Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log h	
								where
									h.WFID =  B.WFID 
									and (h.RoleID = 6 and h.StatusActing != 2 or h.RoleID = 4)  --شرط های کاربر اقدام کننده بودن	
									and ActivityID in(4782972985427111846, 5443268012818330002)
							) Actor_minutes
				FROM dbo.Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log X
					INNER JOIN
					(
						SELECT *
						FROM dbo.Tbl_Cu_ServingTableSecondPhaseHumanResource_Log S
						WHERE S.StatusID IN ( 203, 207, 208, 200 )
							  AND
							  (
								  @FromDate = ''
								  OR RegDate >= @FromDate
							  )
							  AND
							  (
								  @ToDate = ''
								  OR RegDate <= @ToDate
							  )
					) AS B
						ON X.WFID = B.WFID
				WHERE X.ServingTableSecondPhaseHistoryID IN (
																SELECT MAX(S.ServingTableSecondPhaseHistoryID)
																FROM Tbl_Cu_ServingTableSecondPhaseHumanResourceHistory_Log S
																WHERE S.RoleID = 4
																GROUP BY S.WFID
															)
			) AS AQ
			GROUP BY AQ.RegUserID
		) AQ2
	) AQ3

END;
