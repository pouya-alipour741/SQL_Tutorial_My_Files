USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_SelectPortalLogData]    Script Date: 12/4/2024 4:47:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Hosseini>
-- Create date: <1395/05/31>
-- Description:	<انتخاب فیلدهای یک رشته از نوع جیسون>
-- exec [dbo].[Sp_Cu_SelectJSONString] '{"UserId":"1","FirstName":"مهران","LastName":"درکاله","NationalCode":"0018275273","CountryStudy":"18","CityStudy":"تهران","InstitutionType":"17","Institution":"1","College":"شريف","EducationSystem":"2","EducationGrade":"14","IssuedOnEmploymentToEducation":"?? مرداد, ????","TrackingCode":"556","GroupEdcationInPersian":"3","DegreeInPersian":"3","OrientationInPersian":"","MajorOrginalLanguage":"کامپيوتر","OrientationOrginalLanguage":"کامپيوتر1","SchoolStartDate":"?? مرداد, ????","AverageFrom":"100","AverageTo":"200","IsVisa":"اقامت","VisaType":"1","IssuanceVisaDate":"?? مرداد, ????","CreditVisaDate":"?? مرداد, ????","AttachmentCertificateStudent":"","AttachmentOneSemester":"","DateOfEntry":"?? مرداد, ????","DateOfDeparture":"?? مرداد, ????","AttachmentOfEntry":"","AttachmentOfDeparture":"","MilitaryServiceStatus":"3","StartOfSchoolBreaks":"? شهريور, ????","EndDateAcademicBreaks":"? شهريور, ????","ExemptionNo":"111","TypeOfAppliCation":"2","BusyStudyingFrom":"? شهريور, ????","BusyStudyingTo":"? شهريور, ????","SemesterTuition":"14","RangeAccommodationFees":"6","BankName":"1","BranchName":"4","BranchCode":"5587","AddressBank":"سزسظ","MailFinancial":"test@gmail.com","TelFinancial":"test1","IBAN":"[845}","ABA":"[846]","Banker":"test4","Routing":"test5","Swift":"test6","Description":"ثبشبيش"}'
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_SelectPortalLogData] ---------------------
    @PortalLogID AS BIGINT
AS
    BEGIN
        IF @PortalLogID <= 0
            OR @PortalLogID NOT IN ( SELECT PortalLogID
                                     FROM   [dbo].[Tbl_Cu_PortalReceiveLog] )
            SELECT  NULL AS 'StartWorkFollow' ,
                    NULL AS 'RegDate' ,
                    NULL AS 'RegTime' ,
                    NULL AS 'FormID' ,
                    NULL AS 'PageID' ,
                    NULL AS 'UserID' ,
                    NULL AS 'WorkFlowID' ,
                    NULL AS 'IsCancel' ,
                    NULL AS 'IsEdite' ,
                    NULL AS 'EntryID' ,
                    NULL AS 'FirstName' ,
                    NULL AS 'LastName' ,
                    NULL AS 'NationalCode' ,
                    NULL AS 'CountryStudy' ,
                    NULL AS 'CityStudy' ,
                    NULL AS 'InstitutionType' ,
                    NULL AS 'Institution' ,
                    NULL AS 'College' ,
                    NULL AS 'EducationSystem' ,
                    NULL AS 'EducationGrade' ,
                    NULL AS 'IssuedOnEmploymentToEducation' ,
                    NULL AS 'TrackingCode' ,
                    NULL AS 'GroupEdcationInPersian' ,
                    NULL AS 'DegreeInPersian' ,
                    NULL AS 'OrientationInPersian' ,
                    NULL AS 'MajorOrginalLanguage' ,
                    NULL AS 'OrientationOrginalLanguage' ,
                    NULL AS 'SchoolStartDate' ,
                    NULL AS 'AverageFrom' ,
                    NULL AS 'AverageTo' ,
                    NULL AS 'IsVisa' ,
                    NULL AS 'VisaType' ,
                    NULL AS 'IssuanceVisaDate' ,
                    NULL AS 'CreditVisaDate' ,
                    NULL AS 'AttachmentCertificateStudent' ,
                    NULL AS 'AttachmentOneSemester' ,
                    NULL AS 'DateOfEntry' ,
                    NULL AS 'DateOfDeparture' ,
                    NULL AS 'AttachmentOfEntry' ,
                    NULL AS 'AttachmentOfDeparture' ,
                    NULL AS 'MilitaryServiceStatus' ,
                    NULL AS 'StartOfSchoolBreaks' ,
                    NULL AS 'EndDateAcademicBreaks' ,
                    NULL AS 'ExemptionNo' ,
                    NULL AS 'TypeOfAppliCation' ,
                    NULL AS 'BusyStudyingFrom' ,
                    NULL AS 'BusyStudyingTo' ,
                    NULL AS 'SemesterTuition' ,
                    NULL AS 'RangeAccommodationFees' ,
                    NULL AS 'BankName' ,
                    NULL AS 'BranchName' ,
                    NULL AS 'BranchCode' ,
                    NULL AS 'AddressBank' ,
                    NULL AS 'MailFinancial' ,
                    NULL AS 'TelFinancial' ,
                    NULL AS 'IBAN' ,
                    NULL AS 'ABA' ,
                    NULL AS 'Banker' ,
                    NULL AS 'Routing' ,
                    NULL AS 'Swift' ,
                    NULL AS 'Description' ,
                    NULL AS 'AttachmentSubmissionForml' ,
                    NULL AS 'AttachmentStudentAccommodation' ,
                    NULL AS 'AttachmentOtherDocuments1' ,
                    NULL AS 'AttachmentOtherDocuments2' ,
                    NULL AS 'AttachmentForm120' ,
                    NULL AS 'AttachmentMilitary',
				     NULL AS 'OtherFieldOfStudy',
					 '' AS 'CurrencyDate'


        ELSE
            BEGIN	
                IF ( OBJECT_ID('tempdb..#temp') IS NOT NULL )
                    BEGIN
                        DROP TABLE #Temp
                    END

                CREATE TABLE #Temp
                    (
                      element_id INT IDENTITY(1, 1)
                                     NOT NULL , /* internal surrogate primary key gives the order of parsing and the list order */
                      parent_ID INT ,/* if the element has a parent then it is in this column. The document is the ultimate parent, so you can get the structure from recursing from the document */
                      Object_ID INT ,/* each list or object has an object id. This ties all elements to a parent. Lists are treated as objects here */
                      NAME VARCHAR(MAX) ,/* the name of the object */
                      StringValue VARCHAR(MAX) NOT NULL ,/*the string representation of the value of the element. */
                      ValueType VARCHAR(10) NOT NULL /* the declared type of the value represented as a string in StringValue*/
                    )

                DECLARE @JsonString NVARCHAR(MAX) ,
                    @FirstObject INT , --the index of the first open bracket found in the JSON string
                    @OpenDelimiter INT ,--the index of the next open bracket found in the JSON string
                    @NextOpenDelimiter INT ,--the index of subsequent open bracket found in the JSON string
                    @NextCloseDelimiter INT ,--the index of subsequent close bracket found in the JSON string
                    @Type NVARCHAR(10) ,--whether it denotes an object or an array
                    @NextCloseDelimiterChar CHAR(1) ,--either a '}' or a ']'
                    @Contents NVARCHAR(MAX) , --the unparsed contents of the bracketed expression
                    @Start INT , --index of the start of the token that you are parsing
                    @end INT ,--index of the end of the token that you are parsing
                    @param INT ,--the parameter at the end of the next Object/Array token
                    @EndOfName INT ,--the index of the start of the parameter at end of Object/Array token
                    @token NVARCHAR(MAX) ,--either a string or object
                    @value NVARCHAR(MAX) , -- the value as a string
                    @name NVARCHAR(MAX) , --the name as a string
                    @parent_ID INT ,--the next parent ID to allocate
                    @lenJSON INT ,--the current length of the JSON String
                    @characters NCHAR(36) ,--used to convert hex to decimal
                    @result BIGINT ,--the value of the hex symbol being parsed
                    @index SMALLINT ,--used for parsing the hex value
                    @Escape INT --the index of the next escape character
   
                SET @JsonString = ( SELECT TOP 1
                                            [DataValue]
                                    FROM    [Tbl_Cu_PortalReceiveLog]
                                    WHERE   PortalLogID = @PortalLogID
                                  )
                DECLARE @Strings TABLE /* in this temporary table we keep all strings, even the names of the elements, since they are 'escaped' in a different way, and may contain, unescaped, brackets denoting objects or lists. These are replaced in the JSON string by tokens representing the string */
                    (
                      String_ID INT IDENTITY(1, 1) ,
                      StringValue NVARCHAR(MAX)
                    )
                SELECT--initialise the characters to convert hex to ascii
                        @characters = '0123456789abcdefghijklmnopqrstuvwxyz' ,
  /* firstly we process all strings. This is done because [{} and ] aren't escaped in strings, which complicates an iterative parse. */
                        @parent_ID = 0;
                WHILE 1 = 1 --forever until there is nothing more to do
                    BEGIN
                        SELECT  @Start = PATINDEX('%[^a-zA-Z]["]%',
                                                  @JsonString);--next delimited string
                        IF @Start = 0
                            BREAK --no more so drop through the WHILE loop
                        IF SUBSTRING(@JsonString, @Start + 1, 1) = '"'
                            BEGIN --Delimited Name
                                SET @Start = @Start + 1;
                                SET @end = PATINDEX('%[^\]["]%',
                                                    RIGHT(@JsonString,
                                                          LEN(@JsonString
                                                              + '|') - @Start));
                            END
                        IF @end = 0 --no end delimiter to last string
                            BREAK --no more
                        SELECT  @token = SUBSTRING(@JsonString, @Start + 1,
                                                   @end - 1)
      --now put in the escaped control characters
                        SELECT  @token = REPLACE(@token, FromString, ToString)
                        FROM    ( SELECT    '\"' AS FromString ,
                                            '"' AS ToString
                                  UNION ALL
                                  SELECT    '\\' ,
                                            '\'
                                  UNION ALL
                                  SELECT    '\/' ,
                                            '/'
                                  UNION ALL
                                  SELECT    '\b' ,
                                            CHAR(08)
                                  UNION ALL
                                  SELECT    '\f' ,
                                            CHAR(12)
                                  UNION ALL
                                  SELECT    '\n' ,
                                            CHAR(10)
                                  UNION ALL
                                  SELECT    '\r' ,
                                            CHAR(13)
                                  UNION ALL
                                  SELECT    '\t' ,
                                            CHAR(09)
                                ) substitutions
                        SELECT  @result = 0 ,
                                @Escape = 1
  --Begin to take out any hex escape codes
                        WHILE @Escape > 0
                            BEGIN
                                SELECT  @index = 0 ,
          --find the next hex escape sequence
                                        @Escape = PATINDEX('%\x[0-9a-f][0-9a-f][0-9a-f][0-9a-f]%',
                                                           @token)
                                IF @Escape > 0 --if there is one
                                    BEGIN
                                        WHILE @index < 4 --there are always four digits to a \x sequence  
                                            BEGIN
                                                SELECT --determine its value
                                                        @result = @result
                                                        + POWER(16, @index)
                                                        * ( CHARINDEX(SUBSTRING(@token,
                                                              @Escape + 2 + 3
                                                              - @index, 1),
                                                              @characters) - 1 ) ,
                                                        @index = @index + 1;
        
                                            END
                -- and replace the hex sequence by its unicode value
                                        SELECT  @token = STUFF(@token, @Escape,
                                                              6,
                                                              NCHAR(@result))
                                    END
                            END
      --now store the string away
                        INSERT  INTO @Strings
                                ( StringValue )
                                SELECT  @token
      -- and replace the string with a token
                        SELECT  @JsonString = STUFF(@JsonString, @Start,
                                                    @end + 1,
                                                    '@string'
                                                    + CONVERT(NVARCHAR(5), @@identity))
                    END
  -- all strings are now removed. Now we find the first leaf. 
                WHILE 1 = 1  --forever until there is nothing more to do
                    BEGIN
 
                        SELECT  @parent_ID = @parent_ID + 1
  --find the first object or list by looking for the open bracket
                        SELECT  @FirstObject = PATINDEX('%[{[[]%', @JsonString)--object or array
                        IF @FirstObject = 0
                            BREAK
                        IF ( SUBSTRING(@JsonString, @FirstObject, 1) = '{' )
                            SELECT  @NextCloseDelimiterChar = '}' ,
                                    @Type = 'object'
                        ELSE
                            SELECT  @NextCloseDelimiterChar = ']' ,
                                    @Type = 'array'
                        SELECT  @OpenDelimiter = @FirstObject
 
                        WHILE 1 = 1 --find the innermost object or list...
                            BEGIN
                                SELECT  @lenJSON = LEN(@JsonString + '|') - 1
  --find the matching close-delimiter proceeding after the open-delimiter
                                SELECT  @NextCloseDelimiter = CHARINDEX(@NextCloseDelimiterChar,
                                                              @JsonString,
                                                              @OpenDelimiter
                                                              + 1)
  --is there an intervening open-delimiter of either type?
                                SELECT  @NextOpenDelimiter = PATINDEX('%[{[[]%',
                                                              RIGHT(@JsonString,
                                                              @lenJSON
                                                              - @OpenDelimiter))--object
                                IF @NextOpenDelimiter = 0 --then we are done.
                                    BREAK
                                SELECT  @NextOpenDelimiter = @NextOpenDelimiter
                                        + @OpenDelimiter
                                IF @NextCloseDelimiter < @NextOpenDelimiter --we have found the next leaf
                                    BREAK
      --we prepare to walk the document further
                                IF SUBSTRING(@JsonString, @NextOpenDelimiter,
                                             1) = '{'
                                    SELECT  @NextCloseDelimiterChar = '}' ,
                                            @Type = 'object'
                                ELSE
                                    SELECT  @NextCloseDelimiterChar = ']' ,
                                            @Type = 'array'
                                SELECT  @OpenDelimiter = @NextOpenDelimiter
                            END
  /*and now we can parse out the list or name/value pairs. We first pull out the structure into the variable '@contents' and replace it in the JSON document with a token representing it.*/
                        SELECT  @Contents = SUBSTRING(@JsonString,
                                                      @OpenDelimiter + 1,
                                                      @NextCloseDelimiter
                                                      - @OpenDelimiter - 1)
                        SELECT  @JsonString = STUFF(@JsonString,
                                                    @OpenDelimiter,
                                                    @NextCloseDelimiter
                                                    - @OpenDelimiter + 1,
                                                    '@' + @Type
                                                    + CONVERT(NVARCHAR(5), @parent_ID))
 /*and do each name/value pair, or just value, in the case of an ordered value list.  */           
                        WHILE ( PATINDEX('%[A-Za-z0-9@+.e]%', @Contents) ) <> 0
                            BEGIN
                                IF @Type = 'Object' /*it will be a 0-n list containing a string followed by a string, number,boolean, or null*/
                                    BEGIN
                                        SELECT  @end = CHARINDEX(':',
                                                              ' ' + @Contents) /*if there is anything, it will be a string-based name.*/
                                        SELECT  @Start = PATINDEX('%[^A-Za-z@][@]%',
                                                              ' ' + @Contents)--find out what the token is
                                        SELECT  @token = SUBSTRING(' '
                                                              + @Contents,
                                                              @Start + 1,
                                                              @end - @Start
                                                              - 1) ,
                                                @EndOfName = PATINDEX('%[0-9]%',
                                                              @token) ,--and find out the number so as to fish out the string
                                                @param = RIGHT(@token,
                                                              LEN(@token)
                                                              - @EndOfName + 1)
                                        SELECT--separate the token from the contents of the structure (chop, chop0
                                                @token = LEFT(@token,
                                                              @EndOfName - 1) ,
                                                @Contents = RIGHT(' '
                                                              + @Contents,
                                                              LEN(' '
                                                              + @Contents
                                                              + '|') - @end
                                                              - 1)
          --now we get the string we have stored (names are stored as strings)
                                        SELECT  @name = StringValue
                                        FROM    @Strings
                                        WHERE   String_ID = @param --fetch the name
                                    END
                                ELSE --it is merely a value in an ordered list, without a name
                                    SELECT  @name = NULL 
                                SELECT  @end = CHARINDEX(',', @Contents)-- a string-token, object-token, list-token, number,boolean, or null
                                IF @end = 0 --then we're at the end of the list
                                    SELECT  @end = PATINDEX('%[A-Za-z0-9@+.e][^A-Za-z0-9@+.e]%',
                                                            @Contents + ' ')
                                            + 1
                                SELECT  @Start = PATINDEX('%[^A-Za-z0-9@+.e][A-Za-z0-9@+.e]%',
                                                          ' ' + @Contents)
                                SELECT --get the value and snip the contents
                                        @value = RTRIM(SUBSTRING(@Contents,
                                                              @Start,
                                                              @end - @Start)) ,
                                        @Contents = RIGHT(@Contents + ' ',
                                                          LEN(@Contents + '|')
                                                          - @end)
                                IF SUBSTRING(@value, 1, 7) = '@object'
                                    INSERT  INTO #Temp
                                            ( NAME ,
                                              parent_ID ,
                                              StringValue ,
                                              Object_ID ,
                                              ValueType
                                            )
                                            SELECT  @name ,
                                                    @parent_ID ,
                                                    SUBSTRING(@value, 8, 5) ,
                                                    SUBSTRING(@value, 8, 5) ,
                                                    'object'
                                ELSE
                                    IF SUBSTRING(@value, 1, 6) = '@array'
                                        INSERT  INTO #Temp
                                                ( NAME ,
                                                  parent_ID ,
                                                  StringValue ,
                                                  Object_ID ,
                                                  ValueType
                                                )
                                                SELECT  @name ,
                                                        @parent_ID ,
                                                        SUBSTRING(@value, 7, 5) ,
                                                        SUBSTRING(@value, 7, 5) ,
                                                        'array'
                                    ELSE
                                        IF SUBSTRING(@value, 1, 7) = '@string' --it is a string
                                            INSERT  INTO #Temp
                                                    ( NAME ,
                                                      parent_ID ,
                                                      StringValue ,
                                                      ValueType
                                                    )
                                                    SELECT  @name ,
                                                            @parent_ID ,
                                                            StringValue ,
                                                            'string'
                                                    FROM    @Strings
                                                    WHERE   String_ID = SUBSTRING(@value,
                                                              8, 5)
                                        ELSE
                                            IF @value IN ( 'true', 'false' )--a boolean!
                                                INSERT  INTO #Temp
                                                        ( NAME ,
                                                          parent_ID ,
                                                          StringValue ,
                                                          ValueType
                                                        )
                                                        SELECT
                                                              @name ,
                                                              @parent_ID ,
                                                              @value ,
                                                              'boolean'
                                            ELSE
                                                IF @value = 'null' --it is a null
                                                    INSERT  INTO #Temp
                                                            ( NAME ,
                                                              parent_ID ,
                                                              StringValue ,
                                                              ValueType
                                                            )
                                                            SELECT
                                                              @name ,
                                                              @parent_ID ,
                                                              @value ,
                                                              'null'
                                                ELSE
                                                    IF PATINDEX('%[^0-9]%',
                                                              @value) > 0 --a real number
                                                        INSERT
                                                              INTO #Temp
                                                              (
                                                              NAME ,
                                                              parent_ID ,
                                                              StringValue ,
                                                              ValueType
                                                              )
                                                              SELECT
                                                              @name ,
                                                              @parent_ID ,
                                                              @value ,
                                                              'real'
                                                    ELSE --it must be an INT
                                                        INSERT
                                                              INTO #Temp
                                                              (
                                                              NAME ,
                                                              parent_ID ,
                                                              StringValue ,
                                                              ValueType
                                                              )
                                                              SELECT
                                                              @name ,
                                                              @parent_ID ,
                                                              @value ,
                                                              'int'
 
                            END
                    END
--and so lastly we put the root into the hierarchy.
--INSERT INTO #Temp (NAME, parent_ID, StringValue, Object_ID, ValueType)
--  SELECT '-', NULL, '', @parent_id-1, @type

--SELECT * FROM #Temp
--create table #Temp
--(
--    ID int, 
--    Name Varchar(200), 
--	StringValue Varchar(250)
--)

                DECLARE @cols AS NVARCHAR(MAX) ,
                    @query AS NVARCHAR(MAX)

                SELECT  @cols = STUFF((SELECT   ',' + QUOTENAME(NAME)
                                       FROM     #Temp
                                       GROUP BY NAME ,
                                                element_id
                                       ORDER BY element_id
                        FOR           XML PATH('') ,
                                          TYPE
            ).value('.', 'NVARCHAR(MAX)'), 1, 1, '')

                SET @query = 'SELECT ' + @cols + ' from 
             (
                select StringValue, NAME
                from #Temp
            ) x
            pivot 
            (
                max(StringValue)
                for NAME in (' + @cols + ')
            ) p '

                EXECUTE(@query)

            END
    END 