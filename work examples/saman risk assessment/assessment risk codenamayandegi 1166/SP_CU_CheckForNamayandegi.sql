USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_CheckForNamayandegi]    Script Date: 02/11/1403 04:55:27 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_CU_CheckForNamayandegi]
@WFID bigint
AS
BEGIN
	DECLARE @CodeNamayandegi nvarchar(50) = (SELECT Top 1 CodeNamayandegi from Tbl_Cu_MedicalRiskAssessment_Log where WFID = @WFID)
	if @CodeNamayandegi = 1166
		SELECT 0 as NamayandegiID 
	else if (CAST(@CodeNamayandegi as int) in (select NamayandegiID FROM Tbl_Cu_NamayandegieKhaseVahedeSodour where [status] = 1 ))
		BEGIN
			SELECT Top 1 NamayandegiID 
			FROM Tbl_Cu_NamayandegieKhaseVahedeSodour
			Where NamayandegiID = CAST(@CodeNamayandegi as int) AND [status] = 1				
		END
	ELSE
		BEGIN
			SELECT 0 As NamayandegiID
		END

		--select * from Tbl_Cu_NamayandegieKhaseVahedeSodour
END