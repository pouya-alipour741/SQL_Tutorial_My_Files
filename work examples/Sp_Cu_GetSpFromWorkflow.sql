USE [SamanCRM]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Cu_GetSpFromWorkflow]    Script Date: 11/12/1403 03:01:34 È.Ù ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Bahreyni>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_GetSpFromWorkflow] --'',157
    @SpName AS NVARCHAR(MAX),
    @WFID AS BIGINT,
    @FormID AS BIGINT,
    @IsAlter AS BIT 
AS
BEGIN
    SET NOCOUNT ON;
    IF (@WFID = 0 AND @FormID = 0) -- Insert Sp Names NOT WorkFlowID
    BEGIN
   --     PRINT 1;
        DECLARE @count1 AS BIGINT = 1; -- Counter
        DECLARE @count2 AS BIGINT = (
                                        SELECT MAX(RowID) FROM dbo.Fn_CU_SplitString(@SpName, ',') -- Count OF Sp Names
                                    );
        WHILE (@count2 >= @count1)
        BEGIN

            DECLARE @definition AS NVARCHAR(MAX) -- Select Modify Code
                =   (
                        SELECT TOP 1
                            REPLACE(
                                       REPLACE(m.definition, N'ALTER PROCEDURE', N'CREATE PROCEDURE'),
                                       N'_IRIBCRM',
                                       N'_SamanCrm'
                                   ) + CHAR(13) + CHAR(10) + N'GO' --,(len(m.definition) - len(replace(m.definition, char(10), ''))) as lines_of_code
                        FROM sys.sql_modules m
                            INNER JOIN sys.objects o
                                ON m.object_id = o.object_id
                        WHERE o.[name] LIKE '%'
                                            +
                                            (
                                                SELECT LTRIM(RTRIM(REPLACE(
                                                                              REPLACE(
                                                                                         REPLACE(
                                                                                                    REPLACE(
                                                                                                               Token,
                                                                                                               CHAR(10),
                                                                                                               ''
                                                                                                           ),
                                                                                                    CHAR(13),
                                                                                                    ''
                                                                                                ),
                                                                                         CHAR(9),
                                                                                         ''
                                                                                     ),
                                                                              CHAR(160),
                                                                              ''
                                                                          )
                                                                  )
                                                            )
                                                FROM dbo.Fn_CU_SplitString(@SpName, ',')
                                                WHERE RowID = @count1
                                            ) + '%'
                        ORDER BY m.object_id DESC
                    );

            SET @count1 = @count1 + 1;
            DECLARE @Pos INT;

            --  SELECT @Pos = CHARINDEX(CHAR(13) + CHAR(10), @definition, 0);

            DECLARE @Counter INT;
            SET @Counter = 1;
            DECLARE @TotalPrints INT,
                    @Position AS INT = 0,
                    @SecondPosition AS INT = 4000;
            SET @TotalPrints = (LEN(@definition) / 4000) + 1;

            WHILE (@Counter <= @TotalPrints) -- Print Statment Not print more Than 4000Char For that We use This While To Print 4000 by 4000
            BEGIN

                PRINT SUBSTRING(@definition, @Position, @SecondPosition);
                SET @Counter = @Counter + 1;
                SET @Position = @Position + 4000;
                SET @SecondPosition = @SecondPosition + 4000;
            --SELECT LEN(@definition) 



            END;
        --SELECT LEN(@definition)
        END;

    END;
    ELSE IF (@WFID <> 0) -- Select Modify Code For OurWorkFlow
    BEGIN
    --    PRINT 2;
        DECLARE @XML AS XML = (
                                  SELECT CAST([Resource] AS XML)
                                  FROM Workflow.TblWorkflowResource
                                  WHERE WorkflowId = @WFID
                                        AND IsPublished = 1
                                        AND WorkflowResourceId =
                                        (
                                            SELECT MAX(WorkflowResourceId)
                                            FROM Workflow.TblWorkflowResource
                                            WHERE WorkflowId = @WFID
                                                  AND IsPublished = 1
                                            GROUP BY WorkflowId
                                        )
                              ); -- Select XML Value From TblWorkflowResource From Our WorkFlowID

        DECLARE @TBL1 AS TABLE
        (
            XmlValue NVARCHAR(MAX)
        );
        INSERT INTO @TBL1 -- Insert Our Xml To Table
        (
            XmlValue
        )
        SELECT UPPER(CAST(T.C.value('(DataContext)[1]', 'nvarchar(max)') AS NVARCHAR(MAX)))
        FROM @XML.nodes('/Workflow/DesignerItems/DesignerItem')T(C) -- Select Sp Names From WorkFlow Xml
        WHERE CHARINDEX('Command', CAST(T.C.value('(DataContext)[1]', 'nvarchar(max)') AS NVARCHAR(MAX))) <> 0; --If OurDataContext Doesent Have Command Do not Select IT
        DECLARE @TBL2 AS TABLE
        (
            RowID INT IDENTITY(1, 1) NOT NULL,
            XmlValue2 NVARCHAR(MAX)
        );
        INSERT INTO @TBL2 -- Insert INTO This Table Our Sp Name
        (
            XmlValue2
        )
        SELECT DISTINCT
            REPLACE(
                       SUBSTRING(
                                    XmlValue,
                                    CHARINDEX('SP_', XmlValue),
                                    CHARINDEX(
                                                 ' ',
                                                 RTRIM(SUBSTRING(XmlValue, CHARINDEX('SP_', XmlValue), LEN(XmlValue)))
                                             )
                                ),
                       ']',
                       ''
                   )
        FROM @TBL1;



        -- SELECT RowID,SUBSTRING(XmlValue2, 1, CHARINDEX(' ', RTRIM(XmlValue2)))
        -- FROM @TBL2;
        DECLARE @count3 AS BIGINT = 1; -- Counter
        DECLARE @count4 AS BIGINT = (
                                        SELECT COUNT(RTRIM(LTRIM(XmlValue2))) FROM @TBL2
                                    ); -- Max Of Our SpName
        WHILE (@count4 >= @count3)
        BEGIN
            DECLARE @definition1 AS NVARCHAR(MAX)
                =   (
                        SELECT TOP 1
                            CASE
                                WHEN @IsAlter = 1 THEN
                                    REPLACE(m.definition, N'CREATE', N'ALTER')+ CHAR(13) + CHAR(10) + N'GO'
                                WHEN @IsAlter = 0 THEN
                                    m.definition + CHAR(13) + CHAR(10) + N'GO'
                            END --,(len(m.definition) - len(replace(m.definition, char(10), ''))) as lines_of_code
                        FROM sys.sql_modules m
                            INNER JOIN sys.objects o
                                ON m.object_id = o.object_id
                        WHERE o.[name] LIKE '%' +
                                            (
                                                SELECT RTRIM(LTRIM(XmlValue2)) FROM @TBL2 WHERE RowID = @count3
                                            ) + '%'
                        ORDER BY m.object_id DESC
                    );


            SET @count3 = @count3 + 1;
            DECLARE @Pos1 INT;

            --  SELECT @Pos = CHARINDEX(CHAR(13) + CHAR(10), @definition, 0);

            DECLARE @Counter1 INT;
            SET @Counter1 = 1;
            DECLARE @TotalPrints1 INT,
                    @Position1 AS INT = 0,
                    @SecondPosition1 AS INT = 4000;
            SET @TotalPrints1 = (LEN(@definition1) / 4000) + 1;

            WHILE (@Counter1 <= @TotalPrints1)
            BEGIN

                PRINT SUBSTRING(@definition1, @Position1, @SecondPosition1);
                SET @Counter1 = @Counter1 + 1;
                SET @Position1 = @Position1 + 4000;
                SET @SecondPosition1 = @SecondPosition1 + 4000;
            --SELECT LEN(@definition) 



            END;
        END;

    END;

    ELSE IF (@FormID <> 0)
    BEGIN
     --   PRINT 3;
        DECLARE @XMLValue AS NVARCHAR(MAX) = (
                                                 SELECT [Resource]
                                                 FROM Form.TblForm
                                                 WHERE FormId = @FormID
                                                       AND IsActive = 1
                                             );
        DECLARE @count AS INT = 1;
        DECLARE @TBL3 AS TABLE
        (
            RowID INT IDENTITY(1, 1) NOT NULL,
            XmlValue3 NVARCHAR(MAX)
        );
        WHILE (CHARINDEX('Sp_', @XMLValue) != 0)
        BEGIN
            DECLARE @a AS BIGINT = (
                                       SELECT CHARINDEX('Sp_', @XMLValue)
                                   );
            DECLARE @c AS NVARCHAR(MAX) = (
                                              SELECT SUBSTRING(@XMLValue, @a, LEN(@XMLValue))
                                          );
            DECLARE @FormSp AS NVARCHAR(MAX)
                =
            (
                SELECT DISTINCT
                    REPLACE(
                               REPLACE(
                                          REPLACE(
                                                     REPLACE(
                                                                RTRIM(LTRIM(SUBSTRING(@c, 1, CHARINDEX(' ', @c) - 1))),
                                                                '">',
                                                                ' '
                                                            ),
                                                     ']',
                                                     ' '
                                                 ),
                                          '"',
                                          ' '
                                      ),
                               '(',
                               ' '
                           )
            ) + ' ';
            INSERT INTO @TBL3
            (
                XmlValue3
            )
            SELECT RTRIM(LTRIM(SUBSTRING(@FormSp, 1, CHARINDEX(' ', @FormSp))));
            DECLARE @b AS BIGINT = (CHARINDEX('"', @c));
            SET @XMLValue = (SUBSTRING(@c, @b, LEN(@c)));

            SET @count = @count + 1;
        END;
        DECLARE @count5 AS BIGINT = 1; -- Counter
        DECLARE @count6 AS BIGINT = (
                                        SELECT COUNT(RTRIM(LTRIM(XmlValue3))) FROM @TBL3
                                    ); -- Max Of Our SpName
        WHILE (@count6 >= @count5)
        BEGIN
            DECLARE @definition2 AS NVARCHAR(MAX)
                =   (
                        SELECT TOP 1
                            CASE
                                WHEN @IsAlter = 1 THEN
                                    REPLACE(m.definition, N'CREATE', N'ALTER')+ CHAR(13) + CHAR(10) + N'GO'
                                WHEN @IsAlter = 0 THEN
                                    m.definition + CHAR(13) + CHAR(10) + N'GO'
                            END --,(len(m.definition) - len(replace(m.definition, char(10), ''))) as lines_of_code --,(len(m.definition) - len(replace(m.definition, char(10), ''))) as lines_of_code
                        FROM sys.sql_modules m
                            INNER JOIN sys.objects o
                                ON m.object_id = o.object_id
                        WHERE o.[name] LIKE '%' +
                                            (
                                                SELECT RTRIM(LTRIM(XmlValue3)) FROM @TBL3 WHERE RowID = @count5
                                            ) + '%'
                        ORDER BY m.object_id DESC
                    );


            SET @count5 = @count5 + 1;
            DECLARE @Pos2 INT;

            --  SELECT @Pos = CHARINDEX(CHAR(13) + CHAR(10), @definition, 0);

            DECLARE @Counter2 INT;
            SET @Counter2 = 1;
            DECLARE @TotalPrints2 INT,
                    @Position2 AS INT = 0,
                    @SecondPosition2 AS INT = 4000;
            SET @TotalPrints2 = (LEN(@definition2) / 4000) + 1;

            WHILE (@Counter2 <= @TotalPrints2)
            BEGIN

                PRINT SUBSTRING(@definition2, @Position2, @SecondPosition2);
                SET @Counter2 = @Counter2 + 1;
                SET @Position2 = @Position2 + 4000;
                SET @SecondPosition2 = @SecondPosition2 + 4000;
            --SELECT LEN(@definition) 



            END;
        END;
    END;



END;

