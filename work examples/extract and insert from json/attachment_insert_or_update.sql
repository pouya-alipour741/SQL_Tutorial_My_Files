--sp
eXEC Sp_Cu_Insert_Into_Tbl_Cu_AttachmentExchange_LOG_GetCurrency @WorkflowInstanceId,$PL_PortalLogID
EXEC [dbo].[Sp_Cu_SelectPortalLogData] $PL_PortalLogID


--tables
--select from dbo.Tbl_Cu_PortalReceiveLog
--attaches to dbo.Tbl_Cu_AttachmentGetCurrency_LOG

--important parts of code

--dbo.Tbl_Cu_PortalReceiveLog
SELECT  *
        FROM      dbo.Tbl_Cu_PortalReceiveLog
        WHERE     WorkFlowInstanceID = @WFID
                AND IsCancel = 0


---dbo.Sp_GenerateJsonTable  with cursor and dynamic query
CREATE TABLE #tb_AttachmentExchange ( Tazarv_ID INT )
        EXEC dbo.Sp_GenerateJsonTable '#tb_AttachmentExchange', @jSon

        SELECT  @RegDate = dbo.MiladiToShamsi(Date) ...


---dbo.parseJSon(@jSon)
SELECT Name,StringValue FROM dbo.parseJSon(@jSon)
			WHERE parent_id IS NOT NULL
			ORDER BY element_id


--dependiong on different conditions attaches to dbo.Tbl_Cu_AttachmentGetCurrency_LOG
IF EXISTS ( SELECT *
                 FROM   @tbl T
                 WHERE  ISNULL(AttachmentMilitary, '') != '' )
        INSERT  INTO dbo.Tbl_Cu_AttachmentGetCurrency_LOG
                ( WFID ,
                  PortalLogID ,
				  AttachmetLinkPDF ,
                  AttachmetLinkJPG ,
                  CertificateName ,
                  RegDate ,
                  RegTime
                )



select
	top 1000 *
from
	dbo.Tbl_Cu_PortalReceiveLog
where
	PortalLogID = 756163;


select
	top 1000 *
from
	Tbl_Cu_AttachmentGetCurrency_LOG
where
	PortalLogID = 756163


exec Sp_CU_GetYearMonthDays_Frm1_GetCurrency '1990','01',


----for update
UPDATE  dbo.Tbl_Cu_GetCurrencyForStudent_LOG
        SET     PkForm31143ID = @PkForm1ID ...
		WHERE   PortalLogID = @PortalLogID





---
 --SELECT  @RegDate = dbo.MiladiToShamsi(Date) ,
 --               @RegTime = SUBSTRING(time,1,5)

