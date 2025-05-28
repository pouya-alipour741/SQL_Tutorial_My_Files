DECLARE @hierarchical_string NVARCHAR(MAX) = N'OU=‘«ŒÂ «’·Ì,OU= Œ’Ì’ «—“,OU=ÌÊ—Ê,OU=test 3rd';
DECLARE @OU NVARCHAR(200);
DECLARE @Level INT = 0;
DECLARE @ParentID INT = -1;  -- Start with root

-- Clean OU= prefix
SET @hierarchical_string = REPLACE(@hierarchical_string, 'OU=', '');

-- Temp table to hold split OUs with level ordering
DECLARE @OUList TABLE (
    rn INT IDENTITY(1,1),
    OUName NVARCHAR(200)
);

-- Fill table with split OUs
INSERT INTO @OUList (OUName)
SELECT LTRIM(RTRIM(dbo.Fn_CU_FixPersianString(value)))
FROM STRING_SPLIT(@hierarchical_string, ',')
WHERE LTRIM(RTRIM(value)) <> '';

-- Cursor declaration
DECLARE ou_cursor CURSOR FOR
SELECT OUName FROM @OUList ORDER BY rn;

OPEN ou_cursor;
FETCH NEXT FROM ou_cursor INTO @OU;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Check if OU already exists under the current parent
    IF NOT EXISTS (
        SELECT 1
        FROM Tbl_CU_ActiveDirectoryOUList_test
        WHERE OUName = @OU AND ParentID = @ParentID
    )
    BEGIN
        -- Insert new OU under the current parent
        INSERT INTO Tbl_CU_ActiveDirectoryOUList_test (
            OUID, OUName, ParentID, OUGUID, adsPath, GUID
        )
        SELECT 
            ISNULL((SELECT MAX(OUID) FROM Tbl_CU_ActiveDirectoryOUList_test), 0) + 1,
            @OU,
            @ParentID,
            NEWID(),
            'LDAP://saman.com/' + @OU,  -- optional full DN path
            NEWID();
    END

    -- Update ParentID to the inserted or existing record's ID
    SELECT @ParentID = OUID
    FROM Tbl_CU_ActiveDirectoryOUList_test
    WHERE OUName = @OU AND ParentID = @ParentID;

    FETCH NEXT FROM ou_cursor INTO @OU;
END

CLOSE ou_cursor;
DEALLOCATE ou_cursor;
