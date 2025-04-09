USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log]    Script Date: 4/8/2025 9:04:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
--[dbo].[Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log] 92950,0
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log] @WFID AS BIGINT, @Flag bit
AS
BEGIN
declare @CustomerRecoveryKey bigint=(select top 1 isnull(CustomerRecoveryKey,0) from Tbl_CU_SalesLeads_Log where WFID=@WFID)
declare @ActivityID bigint=(select top 1 ActivityID from task.TblWorkflowActivityInstance
                            where WokflowInstanceID=@WFID order by WorkflowActivityInstanceID desc)
if @CustomerRecoveryKey=0
begin
print'1'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           RegDate,
           RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   '' as InsuranceGroupTitle,
            (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID)CityName,
           Descript,
		   ResultDesc,
		   ContactDate,
		   ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(0 as bit) as [Recovery],
		   '' as PolicyID
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else if @CustomerRecoveryKey<>0 and @Flag=0
begin
print '2'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           '' as RegDate,
           '' as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
          (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   '' as ContactDate,
		   '' as ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else if @CustomerRecoveryKey<>0 and @Flag=1 and @ActivityID=5534199145228840067
begin
print'3'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           dbo.MiladiToShamsi(GETDATE()) as RegDate,
           dbo.OnlyTime(GETDATE()) as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
           (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE 
InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   dbo.MiladiToShamsi(GETDATE()) as ContactDate,
		   dbo.OnlyTime(GETDATE()) as ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else
begin
print '4'
 SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           dbo.MiladiToShamsi(GETDATE()) as RegDate,
           dbo.OnlyTime(GETDATE()) as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
           (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   ContactDate,
		   ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
END;



