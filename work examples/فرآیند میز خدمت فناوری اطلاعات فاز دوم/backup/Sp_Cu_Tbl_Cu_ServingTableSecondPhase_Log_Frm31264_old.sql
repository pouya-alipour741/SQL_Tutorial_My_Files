USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264]    Script Date: 3/2/2025 9:19:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,>
-- Create date: <Create ,98/03/04,>
--exec [dbo].[Sp_Cu_AdvancedSearchPublicServiceDesk_Frm188]  '','','-1','-1','-1'
--exec Sp_Cu_AdvancedSearchPublicServiceDesk_Frm188 @FromDate=N'1399/02/26',@ToDate=N'1399/03/26',@SubGroupID=N'-1',@RequestKindID=N'-1',@RequestSubjectID=N'-1',@WFID=N'',@RegUserID=N'-1',@ActionUserID=N'-1',@Status=N'-1',@EndWFIDFrom=N'1399/03/01',@EndWFIDTo=N'1399/03/26',@Desc=N''
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_Tbl_Cu_ServingTableSecondPhase_Log_Frm31264]
    @FromDate AS NVARCHAR(10),
    @ToDate AS NVARCHAR(10),
    @SubGroupID AS INT,
    @RequestKindID AS INT,
    @RequestSubjectID AS INT,
    @WFID AS BIGINT,
    @RegUserID AS BIGINT,
    @ActionUserID AS BIGINT,
    @Status AS INT,
    @EndWFIDFrom AS NVARCHAR(10),
    @EndWFIDTo AS NVARCHAR(10),
    @Desc AS NVARCHAR(100)
AS
BEGIN
    EXEC Sp_Cu_CalCulateTime_Frm31264_New @FromDate,@ToDate
    IF (@Status = 8)
    BEGIN
        SELECT TOP 1000
            ROW_NUMBER() OVER (ORDER BY t.ServingTableID ASC) AS RowNO,
            *
        FROM
        (
            SELECT
                -------------------------------------------------
                A.ServingTableID,
                -------------------------------------------------
                A.WFID,
                -------------------------------------------------
                A.FullName,
                -------------------------------------------------
                A.RequestDesc AS [Description],
                -------------------------------------------------
                (
                    SELECT TOP 1
                        (
                            SELECT TOP 1
                                S.FullName
                            FROM Users.TblProfiles S
                            WHERE S.UserId = X.RegUserID
                        )
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS EghadmFullName,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        X.RegUserID
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS EghadmUserID,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        S.StatusPublicDescItems
                    FROM Tbl_CU_Base_StatusPublicServiceDesc S
                    WHERE S.StatusPublicDescID =
                    (
                        SELECT TOP 1
                            X.StatusActing
                        FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                        WHERE X.RoleID = 4
                              AND X.WFID = A.WFID
                        ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                    )
                ) AS StatusPublicDesc,
                -------------------------------------------------
                A.StatusActing AS cmbStatusEghdamat,
                -------------------------------------------------
                A.RegDate AS prdRegDate,
                -------------------------------------------------
                A.RegTime AS prtRegTime,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        dbo.fn_CU_MiladiToShamsi(CreateDate)
                    FROM Task.TblWorkflowActivityInstance
                        INNER JOIN Task.TblTask
                            ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                    WHERE WokflowInstanceID = A.WFID
                          AND ActivityID IN ( 4782972985427111846, 5443268012818330002 )
                ) AS RegDate,
                (
                    SELECT TOP 1
                        (
                            SELECT TOP 1
                                S.ServingTableScoreTitle
                            FROM dbo.Tbl_Cu_Base_ServingTableScore S
                            WHERE S.ServingTableScoreID = X.StatusActing
                        )
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 5
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS ServingTableScoreTitle,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        dbo.fn_CU_MiladiToShamsi(EndDate)
                    FROM Task.TblWorkflowActivityInstance
                        INNER JOIN Task.TblTask
                            ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                    WHERE WokflowInstanceID = A.WFID
                          AND ActivityID IN ( 4782972985427111846, 5443268012818330002 )
                    ORDER BY TaskID DESC
                ) AS NextDate,
                ------------------------------------------------
                (
                    SELECT TOP 1
                        X.RegTime
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS RegTime,

                -------------------------------------------------
                (
                    SELECT dbo.fn_CU_MiladiToShamsi(EndDate)
                    FROM Task.TblWorkflowInstance
                    WHERE WorkflowInstanceID = A.WFID
                ) AS EndDate,
                -------------------------------------------------

                cmbRequestSubject,
                -------------------------------------------------
                (SELECT top 1 RequestSubjectName FROM [dbo].[Tbl_CU_Base_RequestSubject_FRM155] BRS where BRS.RequestSubjectID = cmbRequestSubject) AS txtRequestSubject,
                -------------------------------------------------
                A.RegUserID,
                -------------------------------------------------
                cmbRequestKind,
                -------------------------------------------------
				(SELECT top 1 RequestKindTitle FROM Tbl_CU_Base_RequestKind_FRM153 BRK where BRK.RequestKindID = cmbRequestKind) AS txtRequestKind,
                -------------------------------------------------
                cmbSubGroup,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        S.DateDifff
                    FROM Tbl_Cu_AllDateServiceDesk_Log S
                    WHERE S.WFID = A.WFID
                ) Datedifff,
                A.StatusID
            -------------------------------------------------
            FROM dbo.Tbl_Cu_ServingTableSecondPhase_Log A
        ) t
        WHERE (
                  @FromDate = ''
                  OR t.RegDate >= @FromDate
              )
              AND
              (
                  @ToDate = ''
                  OR t.RegDate <= @ToDate
              )
              AND
              (
                  @EndWFIDFrom = ''
                  OR t.EndDate >= @EndWFIDFrom
              )
              AND
              (
                  @EndWFIDTo = ''
                  OR t.EndDate <= @EndWFIDTo
              )
              AND
              (
                  @SubGroupID = '-1'
                  OR @SubGroupID = t.cmbSubGroup
              )
              AND
              (
                  @RequestKindID = '-1'
                  OR @RequestKindID = t.cmbRequestKind
              )
              AND
              (
                  @RequestSubjectID = '-1'
                  OR @RequestSubjectID = t.cmbRequestSubject
              )
              AND
              (
                  @RegUserID = '-1'
                  OR @RegUserID = t.RegUserID
              )
              AND
              (
                  @ActionUserID = '-1'
                  OR @ActionUserID = t.EghadmUserID
              )
              AND
              (
                  @Status = '-1'
                  OR @Status = t.cmbStatusEghdamat
              )
              AND
              (
                  @Desc = ''
                  OR t.[Description] LIKE '%' + @Desc + '%'
              )
              AND
              (
                  @WFID = '0'
                  OR @WFID = t.WFID
              )
              AND WFID NOT IN (
                                  SELECT WorkflowInstanceID
                                  FROM Task.TblWorkflowInstance
                                  WHERE WorkflowInstanceStatusID = 3
                              )
              AND t.StatusID IN ( 194, 195, 196, 197, 199 )
        ORDER BY t.ServingTableID ASC;
    END;
    ELSE
    BEGIN
        SELECT TOP 1000
            ROW_NUMBER() OVER (ORDER BY t.ServingTableID ASC) AS RowNO,
            *
        FROM
        (
            SELECT
                -------------------------------------------------
                A.ServingTableID,
                -------------------------------------------------
                A.WFID,
                -------------------------------------------------
                A.FullName,
                -------------------------------------------------
                A.RequestDesc AS [Description],
                -------------------------------------------------
                (
                    SELECT TOP 1
                        (
                            SELECT TOP 1
                                S.FullName
                            FROM Users.TblProfiles S
                            WHERE S.UserId = X.RegUserID
                        )
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS EghadmFullName,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        X.RegUserID
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS EghadmUserID,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        S.StatusPublicDescItems
                    FROM Tbl_CU_Base_StatusPublicServiceDesc S
                    WHERE S.StatusPublicDescID =
                    (
                        SELECT TOP 1
                            X.StatusActing
                        FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                        WHERE X.RoleID = 4
                              AND X.WFID = A.WFID
                        ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                    )
                ) AS StatusPublicDesc,
                -------------------------------------------------
                A.StatusActing AS cmbStatusEghdamat,
                -------------------------------------------------
                A.RegDate AS prdRegDate,
                -------------------------------------------------
                A.RegTime AS prtRegTime,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        dbo.fn_CU_MiladiToShamsi(CreateDate)
                    FROM Task.TblWorkflowActivityInstance
                        INNER JOIN Task.TblTask
                            ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                    WHERE WokflowInstanceID = A.WFID
                          AND ActivityID IN ( 4782972985427111846, 5443268012818330002 )
                ) AS RegDate,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        dbo.fn_CU_MiladiToShamsi(EndDate)
                    FROM Task.TblWorkflowActivityInstance
                        INNER JOIN Task.TblTask
                            ON TblTask.WorkflowActivityInstaceID = TblWorkflowActivityInstance.WorkflowActivityInstanceID
                    WHERE WokflowInstanceID = A.WFID
                          AND ActivityID IN ( 4782972985427111846, 5443268012818330002 )
                    ORDER BY TaskID DESC
                ) AS NextDate,
                ------------------------------------------------
                (
                    SELECT TOP 1
                        X.RegTime
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 4
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS RegTime,
                ------------------------------------------------
                (
                    SELECT TOP 1
                        (
                            SELECT TOP 1
                                S.ServingTableScoreTitle
                            FROM dbo.Tbl_Cu_Base_ServingTableScore S
                            WHERE S.ServingTableScoreID = X.StatusActing
                        )
                    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                    WHERE X.RoleID = 5
                          AND X.WFID = A.WFID
                    ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                ) AS ServingTableScoreTitle,
                -------------------------------------------------
                (
                    SELECT dbo.fn_CU_MiladiToShamsi(EndDate)
                    FROM Task.TblWorkflowInstance
                    WHERE WorkflowInstanceID = A.WFID
                ) AS EndDate,
                -------------------------------------------------

                cmbRequestSubject,
                -------------------------------------------------
                (SELECT top 1 RequestSubjectName FROM [dbo].[Tbl_CU_Base_RequestSubject_FRM155] BRS where BRS.RequestSubjectID = cmbRequestSubject) AS txtRequestSubject,
                -------------------------------------------------
                A.RegUserID,
                -------------------------------------------------
                cmbRequestKind,
                -------------------------------------------------
				(SELECT top 1 RequestKindTitle FROM Tbl_CU_Base_RequestKind_FRM153 BRK where BRK.RequestKindID = cmbRequestKind) AS txtRequestKind,
                -------------------------------------------------
                cmbSubGroup,
                -------------------------------------------------
                (
                    SELECT TOP 1
                        S.DateDifff
                    FROM Tbl_Cu_AllDateServiceDesk_Log S
                    WHERE S.WFID = A.WFID
                ) Datedifff
            -------------------------------------------------
            FROM dbo.Tbl_Cu_ServingTableSecondPhase_Log A
        ) t
        WHERE (
                  @FromDate = ''
                  OR t.RegDate >= @FromDate
              )
              AND
              (
                  @ToDate = ''
                  OR t.RegDate <= @ToDate
              )
              AND
              (
                  @EndWFIDFrom = ''
                  OR t.EndDate >= @EndWFIDFrom
              )
              AND
              (
                  @EndWFIDTo = ''
                  OR t.EndDate <= @EndWFIDTo
              )
              AND
              (
                  @SubGroupID = '-1'
                  OR @SubGroupID = t.cmbSubGroup
              )
              AND
              (
                  @RequestKindID = '-1'
                  OR @RequestKindID = t.cmbRequestKind
              )
              AND
              (
                  @RequestSubjectID = '-1'
                  OR @RequestSubjectID = t.cmbRequestSubject
              )
              AND
              (
                  @RegUserID = '-1'
                  OR @RegUserID = t.RegUserID
              )
              AND
              (
                  @ActionUserID = '-1'
                  OR @ActionUserID = t.EghadmUserID
              )
              AND
              (
                  @Status = '-1'
                  OR @Status = t.cmbStatusEghdamat
              )
              AND
              (
                  @Desc = ''
                  OR t.[Description] LIKE '%' + @Desc + '%'
              )
              AND
              (
                  @WFID = '0'
                  OR @WFID = t.WFID
              )
              AND WFID NOT IN (
                                  SELECT WorkflowInstanceID
                                  FROM Task.TblWorkflowInstance
                                  WHERE WorkflowInstanceStatusID = 3
                              )
        ORDER BY t.ServingTableID ASC;
    END;


END;
