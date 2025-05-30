create or alter proc sp_cu_insert_into_Tbl_CU_ActiveDirectoryOUList_from_webservice
as
begin
	DECLARE @hierarchical_string NVARCHAR(MAX) 
	declare @ParentID int

	set @hierarchical_string = replace(@hierarchical_string, 'OU=', '');

	WITH SplitOU AS (
		SELECT 
			value,
			ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
		FROM STRING_SPLIT(@hierarchical_string, ',')  
		),
		t2 as(
		SELECT 
			dbo.Fn_CU_FixPersianString(value) AS SecondOU  
		FROM SplitOU
		WHERE rn = 2
		)
		select @ParentID = OUID
		from Tbl_CU_ActiveDirectoryOUList_test
		where OUName = cast((select SecondOU from t2) as nvarchar(1000));
		print @ParentID


	 with FromWebService_tbl as(
			SELECT TOP (1000) [ID]
			  ,[Name]
			  ,[Path]
			  ,[DistinguishedName]
			  ,w.[GUID]
			  ,[Created]
		  FROM [Tbl_CU_ActiveDirectoryOUList_FromWebService] w
		  ),
		  ActiveDirectoryOUList_tbl as
		  (
			SELECT TOP (1000) [OUID]
			  ,[OUName]
			  ,[ParentID]
			  ,[OUGUID]
			  ,[adsPath]
			  ,[GUID]
			  ,[Tbl_CU_ActiveDirectoryOUListID]
			FROM [SamanCRM].[dbo].[Tbl_CU_ActiveDirectoryOUList_test]
		  )	
		  insert into  Tbl_CU_ActiveDirectoryOUList_test([OUID], [OUName], [ParentID], [OUGUID], [adsPath], [GUID])
		  select 
			(select max(OUID) + 1 from Tbl_CU_ActiveDirectoryOUList_test),
			[Name],
			@ParentID,
			[GUID],
			'LDAP://saman.com/' + DistinguishedName,
			'fb26af29-a948-4421-b454-144a8fc04ab9'
		  from FromWebService_tbl
		  where Name not in (select OUName from ActiveDirectoryOUList_tbl)
end



--exec sp_cu_insert_into_Tbl_CU_ActiveDirectoryOUList_from_webservice
	 

