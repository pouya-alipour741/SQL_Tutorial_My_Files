CREATE or alter PROCEDURE dbo.sp_cu_Insert_OU_From_WebService
AS
BEGIN

	DECLARE @hierarchical_string NVARCHAR(MAX)
	DECLARE @hierarchical_stringID int
	DECLARE @ParentID INT 
	declare @CounterSuccess int = 0
	declare @CounterFail int = 0
 
	-- Cursor declaration
	DECLARE ou_cursor CURSOR FOR
	SELECT
		[ID],
		[DistinguishedName]				  
	FROM [Tbl_CU_ActiveDirectoryOUList_FromWebService]
	where
		[Name] not in(select OUName FROM Tbl_CU_ActiveDirectoryOUList)
	

	OPEN ou_cursor;
	FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID, @hierarchical_string;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		--	WITH SplitOU AS (
		--	SELECT 
		--		value,
		--		ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
		--	FROM STRING_SPLIT(@hierarchical_string, 'OU=')  
		--	),
		--	CleanedOU as(
		--	SELECT 
		--		dbo.Fn_CU_FixPersianString((substring(value, 4, len(Value)))) AS SecondOU  
		--	FROM SplitOU
		--	WHERE rn = 2
		--	)
		--	select @ParentID = OUID
		--	from Tbl_CU_ActiveDirectoryOUList
		--	where OUName = (select SecondOU from CleanedOU);
		--print @ParentID;

		 --Clean OU= prefix
		
		SET @hierarchical_string = REPLACE(@hierarchical_string, 'OU=', '');

		--get ParentID
		WITH SplitOU AS (
			SELECT 
				value,
				ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
			FROM STRING_SPLIT(@hierarchical_string, ',')  
			),
			CleanedOU as(
			SELECT 
				dbo.Fn_CU_FixPersianString(value) AS SecondOU  
			FROM SplitOU
			WHERE rn = 2
			)
			SELECT @ParentID =
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
		
		--insert records individually and skip if it could not find ParentID with a warning message	
		if isnull(@ParentID, 0) != 0
		begin
			set @CounterSuccess += 1
			insert into  Tbl_CU_ActiveDirectoryOUList([OUID], [OUName], [ParentID], [OUGUID], [adsPath], [GUID])
			select 
				(select max(OUID) + 1 from Tbl_CU_ActiveDirectoryOUList),
				[Name],
				@ParentID,
				[GUID],
				'LDAP://saman.com/' + DistinguishedName,
				'fb26af29-a948-4421-b454-144a8fc04ab9'
			from Tbl_CU_ActiveDirectoryOUList_FromWebService
			where ID = @hierarchical_stringID
		end
		else
		begin
			set @CounterFail += 1
			print 'Could not find ParentID for' + @hierarchical_string +
			char(13) + 'with Web Service ID: ' + cast(@hierarchical_stringID as nvarchar(50))
		end
		   
		FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID, @hierarchical_string;
	END

	print 'Number of successfull inserted records: ' + cast(@CounterSuccess as nvarchar(50))
	+ char(13) + 'and Number of failed records that could not find parentID: ' + cast(@CounterFail as nvarchar(50)) 

	CLOSE ou_cursor;
	DEALLOCATE ou_cursor;
END


