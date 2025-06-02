with cte as(
	SELECT        dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.GUID, dbo.Tbl_CU_ActiveDirectoryOUList.OUGUID, dbo.Tbl_CU_ActiveDirectoryOUList.OUName, dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.Name, 
							 dbo.Tbl_CU_ActiveDirectoryOUList.adsPath, dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.DistinguishedName
	FROM            dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService LEFT OUTER JOIN
							 dbo.Tbl_CU_ActiveDirectoryOUList 
																									 ON dbo.Fn_CU_FixPersianString(dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.Name) = dbo.Fn_CU_FixPersianString(dbo.Tbl_CU_ActiveDirectoryOUList.OUName)
																									and dbo.Fn_CU_FixPersianString(dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.DistinguishedName) = dbo.Fn_CU_FixPersianString(substring(dbo.Tbl_CU_ActiveDirectoryOUList.adsPath,18,110000))
	WHERE        (dbo.Tbl_CU_ActiveDirectoryOUList.OUGUID <> dbo.Tbl_CU_ActiveDirectoryOUList_FromWebService.GUID)
		
		)
		update Tbl_CU_ActiveDirectoryOUList 
		set OUGUID = cte.[GUID]
		from cte  
		where
			cte.ouguid = Tbl_CU_ActiveDirectoryOUList.OUGUID
			and cte.adsPath = Tbl_CU_ActiveDirectoryOUList.adsPath