USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Insert_Into_Tbl_CU_PortalRequestStatus]    Script Date: 12/4/2024 5:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Kiani>
-- ALTER date: <1395/06/07>
-- Description:	<Insert Into Tbl_CU_PortalRequestStatus> 
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_Insert_Into_Tbl_CU_PortalRequestStatus] --49,21,1
    @WFID AS BIGINT,
    @PortalLogID AS BIGINT,
    @PortalUserID AS BIGINT,
    @PortalEntryID AS BIGINT
AS
BEGIN
    SET @PortalEntryID =
    (
        SELECT TOP 1
            X.PortalEntryID
        FROM dbo.Tbl_Cu_PortalReceiveLog X
        WHERE X.WorkFlowInstanceID = @WFID
        ORDER BY X.PortalLogID DESC
    );
    SET NOCOUNT ON;
    IF NOT EXISTS
    (
        SELECT top 1 1
        FROM Tbl_CU_PortalRequestStatus
        WHERE WorkFlowInstanceID = @WFID
    )
    BEGIN
        PRINT 'First';
        INSERT INTO dbo.Tbl_CU_PortalRequestStatus
        (
            PortalLogID,
            PortalUserID,
            WorkFlow,
            WorkFlowInstanceID,
            FollowUpCode,
            PortalEntryID
        )
        SELECT @PortalLogID,
               @PortalUserID,
               (
                   SELECT TOP 1
                       WorkflowID
                   FROM Task.TblWorkflowInstance
                   WHERE WorkflowInstanceID = @WFID
               ),
               @WFID,
               FollowUpCode,
               @PortalEntryID
        FROM dbo.Tbl_CU_FollowUpCode
        WHERE PortalLogID = @PortalLogID;
    END;
    ELSE
    BEGIN
        PRINT 'Second';
        INSERT INTO dbo.Tbl_CU_PortalRequestStatus
        (
            PortalLogID,
            PortalUserID,
            WorkFlow,
            WorkFlowInstanceID,
            FollowUpCode,
            PortalEntryID
        )
        SELECT @PortalLogID,
               @PortalUserID,
               (
                   SELECT TOP 1
                       WorkflowID
                   FROM Task.TblWorkflowInstance
                   WHERE WorkflowInstanceID = @WFID
               ),
               @WFID,
               FollowUpCode,
               @PortalEntryID
        FROM dbo.Tbl_CU_FollowUpCode
        WHERE WFID = @WFID
        GROUP BY FollowUpCode;
    END;
END;



