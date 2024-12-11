USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_CU_UpdateUniExpertInfo_Tbl_Cu_StudentGetCertificateCode_LOG]    Script Date: 12/11/2024 3:37:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_CU_UpdateUniExpertInfo_Tbl_Cu_StudentGetCertificateCode_LOG] @WFID AS BIGINT
AS
BEGIN
    DECLARE @UniExpertUserID AS BIGINT,
            @UniExpertRegDate AS NVARCHAR(10),
            @UniExpertRegTime AS NVARCHAR(10);
    SELECT TOP 1
           @UniExpertUserID = UserID,
           @UniExpertRegDate = dbo.MiladiToShamsi([EndDate]),
           @UniExpertRegTime= [dbo].[OnlyTime]([EndDate])
    FROM Task.TblTask
        JOIN Task.TblWorkflowActivityInstance
            ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
    WHERE WokflowInstanceID = @WFID
          AND (ActivityID in( 4910355282208743946,5757727470121932595) )
    ORDER BY Task.TblTask.TaskID DESC;

    UPDATE dbo.Tbl_Cu_StudentGetCertificateCode_LOG
    SET UniExpertUserID = @UniExpertUserID,
        UniExpertRegDate = @UniExpertRegDate,
        UniExpertRegTime = @UniExpertRegTime
    WHERE WFID = @WFID;
	select @UniExpertUserID as UniExpertUserID


END;


