--EXEC Sp_Cu_Insert_Into_Tbl_CU_PortalRequestStatus @WorkflowInstanceId,$PL_PortalLogID,$PL_PortalUserID,$PortalEntryID
--EXEC [dbo].[Sp_Cu_GetCountryID_ExchangeStudent_GetCurrency] @WorkflowInstanceId

--tables
--select from dbo.Tbl_Cu_PortalReceiveLog    sp:  Sp_Cu_Insert_Tbl_Cu_ExchangeStudent_LOG_GetCurrencys
--attaches to dbo.Tbl_Cu_AttachmentGetCurrency_LOG  sp: Sp_Cu_Insert_Into_Tbl_Cu_AttachmentExchange_LOG_GetCurrency  

--insert into dbo.Tbl_CU_PortalRequestStatus with sp: Sp_Cu_Insert_Into_Tbl_CU_PortalRequestStatus


select top 1000 * from dbo.Tbl_Cu_PortalReceiveLog 'insert into ' select top 1000 * from dbo.Tbl_Cu_GetCurrencyForStudent_LOG

'get data from json and insert into' select top 1000 * from Tbl_Cu_AttachmentGetCurrency_LOG  

select top 1000 * from dbo.Tbl_CU_PortalRequestStatus  >>   'insert FROM dbo.Tbl_CU_FollowUpCode that consist follow up code'



--update  with StoredProcedure [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_ExchangeStudent_LOG_GetCurrency]  from  dbo.Tbl_frm31143
--UPDATE  dbo.Tbl_Cu_GetCurrencyForStudent_LOG
        --SET     PkForm31143ID = @PkForm1ID ...

Sp_Cu_Update_Tbl_CU_PortalRequestStatus_PortalEntryID  >> 'EXEC Sp_Cu_SelectPortalLogData @PortalLogID '
--sp
Sp_Cu_Insert_Into_Tbl_CU_PortalRequestStatus


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

