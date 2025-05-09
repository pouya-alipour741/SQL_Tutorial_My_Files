USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_GetBranchExpertGroup_MedicalRiskAssessment]    Script Date: 02/11/1403 04:56:35 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_CU_GetBranchExpertGroup_MedicalRiskAssessment]  
@WFID BIGINT
AS
BEGIN
	DECLARE @BranchCode Bigint = (SELECT top 1 CodeSodur FROM Tbl_Cu_MedicalRiskAssessment_Log Where WFID = @WFID)
	DECLARE @RepCode Bigint = (SELECT top 1 CodeNamayandegi FROM Tbl_Cu_MedicalRiskAssessment_Log Where WFID = @WFID)
	if @RepCode = 1166
		select 15 as GroupID
	else
		Select TOP 1 GroupID from Tbl_CU_Base_ChartGroup
		where WorkflowID = 64 And RoleID = 9
		AND BranchCode = @BranchCode
END