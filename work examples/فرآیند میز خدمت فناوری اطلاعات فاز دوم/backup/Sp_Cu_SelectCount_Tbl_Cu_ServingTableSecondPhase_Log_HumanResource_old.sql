USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource]    Script Date: 13/12/1403 09:47:09 Þ.Ù ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Bahreyni>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- exec Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log 
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_SelectCount_Tbl_Cu_ServingTableSecondPhase_Log_HumanResource]
    @FromDate AS NVARCHAR(10),
    @ToDate AS NVARCHAR(10)
AS
BEGIN
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
               END AS Peymankar
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
    GROUP BY AQ.RegUserID;

END;
