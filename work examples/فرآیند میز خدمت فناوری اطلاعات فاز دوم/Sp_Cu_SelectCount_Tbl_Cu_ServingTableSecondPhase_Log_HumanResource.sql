--exec Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource @FromDate=N'1401/12/05',@ToDate=N'1403/12/11'

create PROCEDURE [dbo].[Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource]
    @FromDate AS NVARCHAR(10),
    @ToDate AS NVARCHAR(10)
AS
BEGIN
	select 
		*,
		cast(
				floor(AvgTimeTicketsDonePerUser / 8) as nvarchar(50)
				) + ' روز کاری'
			+ cast(
				ceiling(AvgTimeTicketsDonePerUser % 8) as nvarchar(10)
				)
			+ ' ساعت'
	from(
		select
			*,
			(Actor_hours_sum / SumAll) AvgTimeTicketsDonePerUser
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
				,sum(Actor_hours) / 60.0 Actor_hours_sum
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
						   WHEN X.StatusActing = 4 THEN
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
								sum(case
									when isnull(t.EndDate, '') != '' then datediff(minute,t.CreateDate , t.EndDate) 
									else datediff(minute,t.CreateDate , getdate()) 
								end)
							from
								task.TblWorkflowInstance i
								join task.TblWorkflowActivityInstance ai on ai.WokflowInstanceID = i.WorkflowInstanceID
								join task.TblTask t on t.WorkflowActivityInstaceID = ai.WorkflowActivityInstanceID
								--join users.TblProfiles p on p.UserId = t.UserId	
							where
								 i.WorkflowInstanceID =  B.WFID
								 and t.UserID in
											(select
												RegUserID
											from 
												Tbl_Cu_ServingTableSecondPhaseHistory_Log s
											where
												RoleID in(4,6)  --شرط ها? کاربر اقدام کننده بودن
												and StatusActing != 2
												--and s.WFID = x.WFID
												)
								) Actor_hours
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
