USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041]    Script Date: 16/11/1403 05:46:50 ب.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Bahreyni>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_Read_Tbl_Cu_Base_SaoReadyAnswer_Frm21041]
--    @ReadyAnswer INT,
--    @Id BIGINT,
--    @WFID AS BIGINT
@cmbReadyAnswer int
AS
BEGIN
--    IF ISNULL(@ReadyAnswer, '-1') <> -1
--    BEGIN
--        SELECT TOP 1
--            Answer
--        FROM Tbl_Cu_Base_SaoReadyAnswer
--        WHERE ReadSaoAnswerID = @ReadyAnswer;
--    END;
--    ELSE IF (ISNULL(@Id, 0) <> 0)
--    BEGIN
--        SELECT [Des] 
--        FROM Tbl_CU_QuestionRefer
--        WHERE Id = @Id;
--    END;
--    ELSE IF
--    (
--        SELECT TOP 1
--            ISNULL(Col_5409369756743812385, '') AS Answer
--        FROM Tbl_frm21041 A
--        WHERE A.frm21041Id =
--        (
--            SELECT TOP 1
--                X.PKFormID
--            FROM Task.TblFormInstance X
--            WHERE X.FormID = 21041
--                  AND X.WorkflowInstanceId = @WFID
--        )
--    ) <> ''
--    BEGIN
--        SELECT TOP 1
--            Col_5409369756743812385 AS Answer
--        FROM Tbl_frm21041 A
--        WHERE A.frm21041Id =
--        (
--            SELECT TOP 1
--                X.PKFormID
--            FROM Task.TblFormInstance X
--            WHERE X.FormID = 21041
--                  AND X.WorkflowInstanceId = @WFID
--        );
--    END;
--	ELSE
--    BEGIN
--        SELECT TOP 1
--            'با سلام و احترام' AS Answer
--    END;
	select   --آپدیت
		 Response
	from
		sp_cu_PremadeResponses	
	where
		PremadeResponses_ID = @cmbReadyAnswer
END;


