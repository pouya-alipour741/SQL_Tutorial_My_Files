USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_CheckAgentGroupOrAgentUser_MedicalRiskAssessment]    Script Date: 02/11/1403 04:52:08 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_CU_CheckAgentGroupOrAgentUser_MedicalRiskAssessment]
@WFID BIGINT
AS
BEGIN
	DECLARE @Res bit
	DECLARE @CodeNamayandegi int = (SELECT CAST(CodeNamayandegi AS int) FROM Tbl_Cu_MedicalRiskAssessment_Log Where WFID = @WFID)
	if @CodeNamayandegi = 1166
	begin
		set @Res = 1
		select
			15 as AgentGroupID,
			0 AS AgentUserID,
			CAST(@Res AS BIT) AS Res
	end
	else IF (@CodeNamayandegi in (Select AgentId from Tbl_CU_Base_Agent_ChartGroup where WID = 64)) -- کارتابل گروهی
	BEGIN
		set @Res = 1
		Select 
			GroupId AS AgentGroupID,
			0 AS AgentUserID,
			CAST(@Res AS BIT) AS Res
		from Tbl_CU_Base_Agent_ChartGroup where WID = 64 and AgentId = @CodeNamayandegi
	END

	ELSE -- کارتابل شخصی
	BEGIN
		set @Res = 0
		Select 
			0 AS AgentGroupID,
			UserId AS AgentUserID,
			CAST(@Res AS BIT) AS Res
		from Users.TblProfiles where PersonnelCode = @CodeNamayandegi
	END
END
