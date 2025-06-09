create or alter proc SP_CU_RadioButtonsState_Controller_frm51624
	@rbnEducationalDegreeValidity bit,
	@rbnOtherDegreesValidity bit,
	@rbnInfoOnly bit,
	@rbnOrgsUniPresenation bit
as
begin
	if @rbnOtherDegreesValidity = 1
		select 1 as InquiryButtonState
	else if (@rbnEducationalDegreeValidity = 1 and @rbnInfoOnly = 1) or (@rbnEducationalDegreeValidity = 1 and @rbnOrgsUniPresenation = 1)
		select 1 as InquiryButtonState
	else
		select 0 as InquiryButtonState
end

go

create or alter proc SP_CU_Mandatory_OrgsComboboxes_frm51624
	@rbnOrgsUniPresenation bit,
	@cmbOrgType int,
	@cmbOrgName int
as
begin
	if (@rbnOrgsUniPresenation = 1 and @cmbOrgType = -1) or  (@rbnOrgsUniPresenation = 1 and @cmbOrgName = -1)
		select 1 as res
	else
		select 0 as res
end



----modify current sp
go

ALTER PROC [dbo].[SP_CU_EnabletxtOtherUnit_StudentCertification]
@RequestedOrganizationID INT
AS
BEGIN
       DECLARE @RequestedOrganizationsName NVARCHAR(500) = (
                                                            SELECT 
                                                                    RequestedOrganizationsName
                                                            FROM Tbl_Cu_Base_RequestedOrganizations
                                                            WHERE RequestedOrganizationsID = @RequestedOrganizationID
														 )
       IF dbo.Fn_CU_FixPersianString(@RequestedOrganizationsName) = dbo.Fn_CU_FixPersianString('سایر')
              SELECT 1 AS Res
       ELSE
              SELECT 0 AS Res
END

go

ALTER PROCEDURE [dbo].[SP_CU_Insert_TBL_CU_InquiryCertificateCode]
    @CertificateCode NVARCHAR(50),
    @InquiryDegrees BIT,
    @confirmationForInformation BIT,
    @ConfirmationForpresentation BIT,
    @Others BIT,
    @OrganizationType INT,
    @OrganizationName INT,
    @Descr NVARCHAR(2000)
AS
BEGIN
    INSERT INTO TBL_CU_InquiryCertificateCode_LOG
    (
        CertificateCode,
        InquiryDegrees,
        confirmationForInformation,
        ConfirmationForpresentation,
        Others,
        OrganizationType,
        OrganizationName,
        [Descript],
        RegDate,
        RegTime
    )
    VALUES
    (@CertificateCode, @InquiryDegrees, @confirmationForInformation, @ConfirmationForpresentation, @Others,
     @OrganizationType, @OrganizationName, @Descr, dbo.MiladiToShamsi(GETDATE()), dbo.OnlyTime(GETDATE()));

    CREATE TABLE #tbl3
    (
        link NVARCHAR(2000)
    );

    INSERT INTO #tbl3
    EXEC [dbo].[Sp_Cu_GetCertificateInfoForAllWorkFlow] @CertificateCode;  --'14012321855372435147'

    IF EXISTS (SELECT * FROM #tbl3 WHERE link = '') 
        SELECT CAST(1 AS BIT) AS codeIsValid,
		'کد استعلام موجود نیست' as LinkTitle,
        link AS DocLink
        FROM #tbl3;

   else if  
   ((select top 1 WID from TBL_CU_InquiryCertificateCode_LOG where CertificateCode=@CertificateCode order by InquiryCertificateCodeID desc) in (159,42,154,57))
   and ((select top 1 InquiryDegrees from TBL_CU_InquiryCertificateCode_LOG where CertificateCode=@CertificateCode order by InquiryCertificateCodeID desc)=1)
        SELECT CAST(1 AS BIT) AS codeIsValid,
		'مدرک تحصیلی نامعتبر' as LinkTitle,
        link AS DocLink
        FROM #tbl3;

    ELSE
        SELECT CAST(0 AS BIT) AS codeIsValid,
		'دریافت مدرک تحصیلی' as LinkTitle,
        link AS DocLink
        FROM #tbl3;

      

--SELECT 'https://Portalreport.saorg.ir/SAOBPMServices/bpms/ShowLetter?reportID=249&portalEntryID=14012283861429010350&workflowInstanceID=6111958&PortalUserID=-1' AS DocLink
END;


