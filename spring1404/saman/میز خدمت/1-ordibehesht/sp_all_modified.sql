---------------------------
ALTER PROCEDURE [dbo].[Sp_CU_Read_Tbl_CU_Base_FieldValue_FRM167] @FieldSubjectID AS INT
AS
BEGIN
    SELECT ROW_NUMBER() OVER (ORDER BY FieldValueID ASC) AS Radif,
           FieldValueTitle,
           FieldValueID,
           CASE
               WHEN FieldValueStatus = 1 THEN
                   'فعال'
               ELSE
                   'غیرفعال'
           END AS FieldValueStatus,
           (
               SELECT FieldSubjectTitle
               FROM dbo.Tbl_CU_Base_FieldSubject_FRM157
               WHERE dbo.Tbl_CU_Base_FieldSubject_FRM157.FieldSubjectID = [dbo].[Tbl_CU_Base_FieldValue_FRM167].[FieldSubjectID]
           ) FieldSubjectTitle,
		   FieldManager --update
    FROM [dbo].[Tbl_CU_Base_FieldValue_FRM167]
    WHERE FieldSubjectID = @FieldSubjectID;

go
-----------------------------------
ALTER PROCEDURE [dbo].[Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141]
    @SubGroupID AS INT,
    @RequestKindID AS INT,
    @RequestSubjectID AS INT,
    @UserID AS BIGINT,
    @rbnHierarchy AS BIT,
    @rbnPersonAcc AS BIT,
    @chkActive3 AS BIT,
    @HierarchyLevel AS INT,
    @rbnNotAcc AS BIT,
    @rbnToLevel AS BIT,
    @rbnOnlyLevel AS BIT,
    @txtHierarchyOnlyLevel AS INT,
    @cmbLocation AS INT,
	@chkManagerConfirmation bit --
AS
BEGIN

    INSERT INTO Tbl_CU_Base_DetermineRequestAcc_FRM141
    (
        [SubGroupID],
        [RequestKindID],
        [RequestSubjectID],
        [rbnHierarchy],
        [rbnPersonAcc],
        [chkActive3],
        [txtUserID3],
        HierarchyLevel,
        rbnNotAcc,
        rbnToLevel,
        rbnOnlyLevel,
        HierarchyOnlyLevel,
        cmbLocation,
        IsSecondPhase,
		chkManagerConfirmation --
    )
    SELECT @SubGroupID,
           @RequestKindID,
           @RequestSubjectID,
           @rbnHierarchy,
           @rbnPersonAcc,
           @chkActive3,
           @UserID,
           @HierarchyLevel,
           @rbnNotAcc,
           @rbnToLevel,
           @rbnOnlyLevel,
           @txtHierarchyOnlyLevel,
           @cmbLocation,
           1,
		   @chkManagerConfirmation; --
    SELECT GETDATE() AS Res;

END;

go

----------------------------
ALTER PROCEDURE [dbo].[Sp_Cu_Select_DetermineRequestAccID] @WFID AS BIGINT
AS
BEGIN
    DECLARE @UserIsBranch AS BIT = (
                                       SELECT TOP 1
                                           UserIsBranch
                                       FROM Tbl_Cu_ServingTableSecondPhase_Log
                                       WHERE WFID = @WFID
                                   );
    DECLARE @cmbRequestSubject AS INT = (
                                            SELECT TOP 1
                                                cmbRequestSubject
                                            FROM Tbl_Cu_ServingTableSecondPhase_Log
                                            WHERE WFID = @WFID
                                        );
    PRINT @cmbRequestSubject;
    DECLARE @DetermineRequestAccID AS BIGINT;
    IF EXISTS
    (
        SELECT *
        FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
        WHERE RequestSubjectID = @cmbRequestSubject
              AND chkActive3 = 1
              AND IsSecondPhase = 1
              AND ISNULL(cmbLocation, -1) = -1
    )
    BEGIN
        SET @DetermineRequestAccID =
        (
            SELECT TOP 1 DetermineRequestAccID
            FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
            WHERE RequestSubjectID = @cmbRequestSubject
                  AND ISNULL(cmbLocation, -1) = -1
                  AND chkActive3 = 1
                  AND IsSecondPhase = 1
        );
        SELECT DetermineRequestAccID,
               rbnNotAcc,
               rbnPersonAcc,
               rbnHierarchy,
               txtUserID3,
               rbnToLevel,
               HierarchyLevel,
               HierarchyOnlyLevel,
			   chkManagerConfirmation
        FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
        WHERE DetermineRequestAccID = @DetermineRequestAccID
              AND chkActive3 = 1;
    END;
    ELSE IF EXISTS
    (
        SELECT *
        FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
        WHERE RequestSubjectID = @cmbRequestSubject
              AND chkActive3 = 1
              AND IsSecondPhase = 1
              AND ISNULL(cmbLocation, -1) <> -1
    )
    BEGIN

        IF (@UserIsBranch = 1)
        BEGIN
            SET @DetermineRequestAccID =
            (
                SELECT TOP 1 DetermineRequestAccID
                FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
                WHERE RequestSubjectID = @cmbRequestSubject
                      AND cmbLocation = 2
                      AND chkActive3 = 1
                      AND IsSecondPhase = 1
            );
        END;
        ELSE
        BEGIN
            BEGIN
                SET @DetermineRequestAccID =
                (
                    SELECT Top 1  DetermineRequestAccID
                    FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
                    WHERE RequestSubjectID = @cmbRequestSubject
                          AND cmbLocation = 1
                          AND chkActive3 = 1
                          AND IsSecondPhase = 1
                );
            END;
        END;
        UPDATE Tbl_Cu_ServingTableSecondPhase_Log
        SET DetermineRequestAccID = @DetermineRequestAccID
        WHERE WFID = @WFID;
        SELECT DetermineRequestAccID,
               rbnNotAcc,
               rbnPersonAcc,
               rbnHierarchy,
               txtUserID3,
               rbnToLevel,
               HierarchyLevel,
               HierarchyOnlyLevel,
			   chkManagerConfirmation
        FROM [Tbl_CU_Base_DetermineRequestAcc_FRM141]
        WHERE DetermineRequestAccID = @DetermineRequestAccID
              AND chkActive3 = 1;

    END;
    ELSE
    BEGIN
        SELECT 0 AS DetermineRequestAccID,
               CAST(1 AS BIT) AS rbnNotAcc,
               CAST(0 AS BIT) AS rbnPersonAcc,
               CAST(0 AS BIT) AS rbnHierarchy,
               0 txtUserID3,
               CAST(0 AS BIT) rbnToLevel,
               0 HierarchyLevel,
               0 HierarchyOnlyLevel,
			   0 chkManagerConfirmation;
    END;

END;

go

ALTER PROCEDURE [dbo].[Sp_CU_ReadFrom_Tbl_CU_Base_DetermineRequestAcc_FRM141]
    @SubGroupID AS INT,
    @RequestKindID AS INT,
    @RequestSubjectID AS INT,
    @rbnNotAcc AS BIT,
    @rbnPersonAcc AS BIT,
    @rbnHierarchy AS BIT
AS
BEGIN
    SELECT ROW_NUMBER() OVER (ORDER BY [DetermineRequestAccID] ASC) AS Radif,
           [DetermineRequestAccID],
           (
               SELECT TOP 1
                   SubGroupTitle
               FROM Tbl_CU_Base_SubGroups_FRM151 SG
               WHERE SG.SubGroupID = de.SubGroupID
           ) AS SubGroupTitle,
           (
               SELECT TOP 1
                   RequestKindTitle
               FROM Tbl_CU_Base_RequestKind_FRM153 RK
               WHERE RK.RequestKindID = de.RequestKindID
           ) AS RequestKindTitle,
           (
               SELECT TOP 1
                   RequestSubjectName
               FROM Tbl_CU_Base_RequestSubject_FRM155 RS
               WHERE RS.RequestSubjectID = DE.RequestSubjectID
           ) AS RequestSubjectName,
           (
               SELECT TOP 1
                   FullName
               FROM Users.TblProfiles TP
               WHERE TP.UserId = de.txtUserID3
           ) AS FullName,
           CASE
               WHEN rbnHierarchy = 1 THEN
                   'تایید سلسله مراتبی درخواست'
               WHEN rbnPersonAcc = 1 THEN
                   'اشخاص تایید کننده درخواست'
               WHEN DE.rbnNotAcc = 1 THEN
                   'بدون تایید'
           END AS HalatEntekhab,
           CASE
               WHEN chkActive3 = 1 THEN
                   'فعال'
               ELSE
                   'غیر فعال'
           END AS chkActive3,
           HierarchyLevel,
           (
               SELECT TOP 1
                   X.LocationTitle
               FROM dbo.Tbl_Cu_Base_Location X
               WHERE X.LocationID = DE.cmbLocation
           ) AS LocationTitle,
           CAST(HierarchyOnlyLevel AS nvarchar(10)),
		   chkManagerConfirmation --
    FROM [dbo].[Tbl_CU_Base_DetermineRequestAcc_FRM141] DE
    WHERE (
              @SubGroupID = -1
              OR SubGroupID = @SubGroupID
          )
          AND
          (
              @RequestKindID = -1
              OR RequestKindID = @RequestKindID
          )
          AND
          (
              @RequestSubjectID = -1
              OR RequestSubjectID = @RequestSubjectID
          )
          --AND
          --(
          --    @rbnNotAcc = 0
          --    OR DE.rbnNotAcc = @rbnNotAcc
          --)
          --AND
          --(
          --    @rbnPersonAcc = 0
          --    OR DE.rbnPersonAcc = @rbnPersonAcc
          --)
          --AND
          --(
          --    @rbnHierarchy = 0
          --    OR DE.rbnHierarchy = @rbnHierarchy
          --)
          AND DE.IsSecondPhase = 1;
END;

go










