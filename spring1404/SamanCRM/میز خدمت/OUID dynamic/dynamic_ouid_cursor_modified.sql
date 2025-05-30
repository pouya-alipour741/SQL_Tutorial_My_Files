CREATE PROCEDURE dbo.sp_Insert_OU_From_WebService
AS
BEGIN

	DECLARE @hierarchical_string NVARCHAR(MAX)
	DECLARE @hierarchical_stringID int
	DECLARE @ParentID INT 
 
	-- Cursor declaration
	DECLARE ou_cursor CURSOR FOR
	SELECT
		[ID],
		[DistinguishedName]				  
	FROM [Tbl_CU_ActiveDirectoryOUList_FromWebService]
	where [Name] not in(select OUName FROM Tbl_CU_ActiveDirectoryOUList_test)


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
		--	t2 as(
		--	SELECT 
		--		dbo.Fn_CU_FixPersianString((substring(value, 4, len(Value)))) AS SecondOU  
		--	FROM SplitOU
		--	WHERE rn = 2
		--	)
		--	select @ParentID = OUID
		--	from Tbl_CU_ActiveDirectoryOUList_test
		--	where OUName = (select SecondOU from t2);
		--print @ParentID;

		 --Clean OU= prefix
		SET @hierarchical_string = REPLACE(@hierarchical_string, 'OU=', '');

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
			where OUName = (select SecondOU from t2);
		print @ParentID;

		if isnull(@ParentID, 0) != 0
		begin
			insert into  Tbl_CU_ActiveDirectoryOUList_test([OUID], [OUName], [ParentID], [OUGUID], [adsPath], [GUID])
			select 
				(select max(OUID) + 1 from Tbl_CU_ActiveDirectoryOUList_test),
				[Name],
				@ParentID,
				[GUID],
				'LDAP://saman.com/' + DistinguishedName,
				'fb26af29-a948-4421-b454-144a8fc04ab9'
			from FromWebService_tbl
			where ID = @hierarchical_stringID
		end
		else
		begin
			print 'Could not find ParentID for' + @hierarchical_string
		end
		   
		FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID, @hierarchical_string;
	END

	CLOSE ou_cursor;
	DEALLOCATE ou_cursor;
END
