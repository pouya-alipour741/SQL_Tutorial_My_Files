USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_InsertIntoQuestionRefer_IT_Observor]    Script Date: 14/11/1403 10:31:32 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,>
-- alter date: <alter ,1403-10-20,>
-- Description:	<Description,,>  
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_InsertIntoQuestionRefer_IT_Observor]  
@WFID AS BIGINT
--,@StatusID int
AS
BEGIN
declare @UserID AS BIGINT,		
 @IsAutomat AS BIT ,       
 @SendResultInfo bit,	
 @DesiredOfficeInfo bit,
 @OtherOrgInfo bit,
 @Result int,
 @SendToTazarv bit,
 @DesiredUnitInfo int,
 @ExpertUserIDInfo int,
 @Institude int,
 @University int,
 @DescInfo nvarchar(1000),
 @GroupID bigint,
 @Desc nvarchar(1000),
 @attachment nvarchar(2000)


set @IsAutomat = (select top 1 IsAutomat from Tbl_CU_QuestionAnswer where WFID = @WFID)

select 
	@UserID = Col_4949257785239518214,
	@SendResultInfo = Col_5581934880622446261,
	@DesiredOfficeInfo = Col_5319920761961862933,
	@OtherOrgInfo = col_5139528391810745165,
	@Result = col_4948200665753577473,
	@SendToTazarv = col_4731394453799451628,
	@DesiredUnitInfo = Col_5195609748428162630,
	@ExpertUserIDInfo = Col_5649431032226153954,
	@Institude = col_5208403737968325202,
	@University = col_5610076180504582867,
	@DescInfo = col_5409369756743812385,
	@GroupID = Col_5214184851893828049,
	@Desc = col_5409369756743812385,
	@attachment = col_4761793774768584392 
from
	Tbl_frm21041
where
	frm21041Id = (select PKFormID from task.TblFormInstance where FormID = 21041 and WorkflowInstanceId = @WFID)


IF NOT EXISTS(SELECT * FROM dbo.Tbl_CU_QuestionRefer
               WHERE WFID = @WFID)
	BEGIN
		INSERT INTO dbo.Tbl_CU_QuestionRefer         
		(
			ReferId,
			RegisteredDate,
			RegisteredTime,
			SendResult,
			DesiredOffice,
			OtherOrg,
			Result,                    
			SendToTazarv,     
			OrganizationId,     
			ExpertID,
			WFID,
			[Des],
			attachment,
			--StatusID,
			IsAutomat,
			InstitudeID,
			UniversityID,
			GroupID
		)
		SELECT @UserID,
			   dbo.MiladiToShamsi(GETDATE()),
			   convert(nvarchar(5),cast(getdate() as time)),
			   @SendResultInfo,
			   @DesiredOfficeInfo,
			   @OtherOrgInfo,
			   @Result,
			   @SendToTazarv,
			   @DesiredUnitInfo,
			   @ExpertUserIDInfo,
			   @WFID,
			   @DescInfo,
			   @attachment,
			   --@StatusID,
			   @IsAutomat,
			   @Institude,
			   @University,
			   @GroupID
	END 
else
	begin
		update dbo.Tbl_CU_QuestionRefer 
		set
			--ReferId = @UserID,
			RegisteredDate = (select dbo.MiladiToShamsi(GETDATE()) ),
			RegisteredTime = (select convert(nvarchar(5),cast(getdate() as time)) ),
			SendResult = @SendResultInfo,
			DesiredOffice = @DesiredOfficeInfo,
			OtherOrg = @OtherOrgInfo,
			Result = @Result ,                  
			SendToTazarv = @SendToTazarv ,  
			OrganizationId = @DesiredUnitInfo ,   
			ExpertID = @ExpertUserIDInfo,
			--WFID = @WFID,
			[Des] = @DescInfo,
			attachment = @attachment,
			--StatusID = StatusID,
			IsAutomat = @IsAutomat,
			InstitudeID = @Institude,
			--GroupID = @GroupID,
			UniversityID = @University
			
		where
			WFID = @WFID
	end
END 

