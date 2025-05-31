CREATE or alter PROCEDURE dbo.sp_cu_Update_OU_From_WebService
AS
BEGIN  

	DECLARE @hierarchical_string_update NVARCHAR(MAX)
	DECLARE @hierarchical_stringID_update int
	DECLARE @ParentID_update INT 
	declare @CounterSuccess_update int = 0
	declare @CounterFail_update int = 0
 
	-- Cursor declaration
	DECLARE ou_cursor CURSOR FOR
	SELECT
		[ID],
		[DistinguishedName]				  
	FROM [Tbl_CU_ActiveDirectoryOUList_FromWebService]
	where
		exists(select 1 from Tbl_CU_ActiveDirectoryOUList where OUName = [Name]
		and 'LDAP://saman.com/' + DistinguishedName != adsPath)

	OPEN ou_cursor;
	FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID_update, @hierarchical_string_update;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		--	WITH SplitOU AS (
		--	SELECT 
		--		value,
		--		ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
		--	FROM STRING_SPLIT(@hierarchical_string_update, 'OU=')  
		--	),
		--	CleanedOU as(
		--	SELECT 
		--		dbo.Fn_CU_FixPersianString((substring(value, 4, len(Value)))) AS SecondOU  
		--	FROM SplitOU
		--	WHERE rn = 2
		--	)
		--	select @ParentID_update = OUID
		--	from Tbl_CU_ActiveDirectoryOUList
		--	where OUName = (select SecondOU from CleanedOU);
		--print @ParentID_update;

		 --Clean OU= prefix
		
		SET @hierarchical_string_update = REPLACE(@hierarchical_string_update, 'OU=', '');

		--get ParentID
		WITH SplitOU AS (
			SELECT 
				value,
				ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
			FROM STRING_SPLIT(@hierarchical_string_update, ',')  
			),
			CleanedOU as(
			SELECT 
				dbo.Fn_CU_FixPersianString(value) AS SecondOU  
			FROM SplitOU
			WHERE rn = 2
			)
			SELECT @ParentID_update =
            CASE 
                WHEN EXISTS (
                    SELECT 1 FROM CleanedOU WHERE SecondOU LIKE '%DC=saman%'
                )
                THEN  1
                ELSE (
                    SELECT TOP 1 OUID
                    FROM Tbl_CU_ActiveDirectoryOUList
                    WHERE dbo.Fn_CU_FixPersianString(OUName) = (SELECT TOP 1 SecondOU FROM CleanedOU)
                )
            END;		
		
		--update records that have a different path in Tbl_CU_ActiveDirectoryOUList
		if isnull(@ParentID_update, 0) != 0
		begin
			set @CounterSuccess_update += 1
			update Tbl_CU_ActiveDirectoryOUList
			set
				ParentID = @ParentID_update,
				adsPath = 'LDAP://saman.com/' + DistinguishedName
			from Tbl_CU_ActiveDirectoryOUList_FromWebService
			where
				ID = @hierarchical_stringID_update	
				and OUName = [Name]
		end
		else
		begin
			set @CounterFail_update += 1
			print 'Could not find ParentID for' + @hierarchical_string_update +
			char(13) + 'with Web Service ID: ' + cast(@hierarchical_stringID_update as nvarchar(50))
		end
		   
		FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID_update, @hierarchical_string_update;
	END

	print 'Number of successfull updated records: ' + cast(@CounterSuccess_update as nvarchar(50))
	+ char(13) + 'and Number of failed records that could not find parentID: ' + cast(@CounterFail_update as nvarchar(50)) 

	CLOSE ou_cursor;
	DEALLOCATE ou_cursor;
END


