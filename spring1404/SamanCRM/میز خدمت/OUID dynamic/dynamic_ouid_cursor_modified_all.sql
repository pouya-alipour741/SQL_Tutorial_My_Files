CREATE or alter PROCEDURE dbo.sp_cu_Insert_Update_OU_From_WebService
AS
BEGIN
	--get back up 
	truncate table Tbl_CU_ActiveDirectoryOUList_BackUp

	set identity_insert Tbl_CU_ActiveDirectoryOUList_BackUp on

	insert into Tbl_CU_ActiveDirectoryOUList_BackUp([OUID], [OUName], [ParentID], [OUGUID], [adsPath], [GUID], [Tbl_CU_ActiveDirectoryOUListID])
	select *
	from Tbl_CU_ActiveDirectoryOUList

	set identity_insert Tbl_CU_ActiveDirectoryOUList_BackUp off;


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
		[GUID] not in(select OUGUID FROM Tbl_CU_ActiveDirectoryOUList)

	OPEN ou_cursor;
	FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID, @hierarchical_string;

	WHILE @@FETCH_STATUS = 0
	BEGIN
				
		SET @hierarchical_string = REPLACE(@hierarchical_string, 'OU=', '');

		--get ParentID
		WITH SplitOU AS (
			SELECT 
				value,
				ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
			FROM STRING_SPLIT(@hierarchical_string, ',')  
			),
			CleanedSecondOU as(
					SELECT 
						dbo.Fn_CU_FixPersianString(value) AS SecondOU  
					FROM SplitOU
					WHERE rn = 2
					),
			CleanedNonFirstOU as(
				SELECT 
					string_agg(dbo.Fn_CU_FixPersianString(value), ',') AS NonFirstOU  
				FROM SplitOU
				WHERE rn >= 2
				)
				SELECT @ParentID =
				CASE 
					WHEN EXISTS (
						SELECT 1 FROM CleanedSecondOU WHERE SecondOU LIKE '%DC=saman%'
					)
					THEN  1
					ELSE (
						SELECT TOP 1 OUID
						FROM Tbl_CU_ActiveDirectoryOUList
						WHERE replace(dbo.Fn_CU_FixPersianString(adsPath), 'OU=','') = (SELECT TOP 1 N'LDAP://saman.com/' + NonFirstOU FROM CleanedNonFirstOU)
					)
			end;		
		
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

	---Update if needed
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
	FROM [Tbl_CU_ActiveDirectoryOUList_FromWebService] w
	where
		exists(select 1 from Tbl_CU_ActiveDirectoryOUList where OUGUID = w.[GUID]
		and dbo.Fn_CU_FixPersianString('LDAP://saman.com/' + DistinguishedName) != dbo.Fn_CU_FixPersianString(adsPath)
			)

	OPEN ou_cursor;
	FETCH NEXT FROM ou_cursor INTO @hierarchical_stringID_update, @hierarchical_string_update;

	WHILE @@FETCH_STATUS = 0
	BEGIN
	
		 --Clean OU= prefix		
		SET @hierarchical_string_update = REPLACE(@hierarchical_string_update, 'OU=', '');

		--get ParentID
		WITH SplitOU AS (
			SELECT 
				value,
				ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS rn
			FROM STRING_SPLIT(@hierarchical_string_update, ',')  
			),
			CleanedSecondOU as(
					SELECT 
						dbo.Fn_CU_FixPersianString(value) AS SecondOU  
					FROM SplitOU
					WHERE rn = 2
					),
			CleanedNonFirstOU as(
				SELECT 
					string_agg(dbo.Fn_CU_FixPersianString(value), ',') AS NonFirstOU  
				FROM SplitOU
				WHERE rn >= 2
				)
				SELECT @ParentID_update =
				CASE 
					WHEN EXISTS (
						SELECT 1 FROM CleanedSecondOU WHERE SecondOU LIKE '%DC=saman%'
					)
					THEN  1
					ELSE (
						SELECT TOP 1 OUID
						FROM Tbl_CU_ActiveDirectoryOUList
						WHERE replace(dbo.Fn_CU_FixPersianString(adsPath), 'OU=','') = (SELECT TOP 1 N'LDAP://saman.com/' + NonFirstOU FROM CleanedNonFirstOU)
					)
			end;		
		
		--update records that have a different path in Tbl_CU_ActiveDirectoryOUList
		if isnull(@ParentID_update, 0) != 0
		begin
			set @CounterSuccess_update += 1
			update Tbl_CU_ActiveDirectoryOUList
			set
				ParentID = @ParentID_update,
				adsPath = 'LDAP://saman.com/' + DistinguishedName
			from Tbl_CU_ActiveDirectoryOUList_FromWebService w
			where
				ID = @hierarchical_stringID_update	
				and OUGUID = w.GUID
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


