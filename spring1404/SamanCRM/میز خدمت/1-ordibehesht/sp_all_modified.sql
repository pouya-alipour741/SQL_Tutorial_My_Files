﻿-----------------------
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
		(SELECT GroupName FROM USERS.TBLGROUPS WHERE GROUPID=FieldManager) FieldManager --update			  		
    FROM [dbo].[Tbl_CU_Base_FieldValue_FRM167]
    WHERE FieldSubjectID = @FieldSubjectID
end

go

alter proc sp_cu_getFieldManagerData_frm167
@txtGetFieldManagerID int
as
begin
	select
		(SELECT GroupName FROM USERS.TBLGROUPS WHERE GROUPID=@txtGetFieldManagerID) FieldManager 			  		
end

go

ALTER PROCEDURE [dbo].[Sp_CU_InsertInto_Tbl_CU_Base_DetermineRequestAcc_FRM141]
    @SubGroupID AS INT,
    @RequestKindID AS INT,
    @RequestSubjectID AS INT,
    @UserID AS BIGINT,
    @rbnHierarchy AS BIT,
    @rbnPersonAcc AS BIT,
    @rbnManagerConfirmation bit,
    @chkActive3 AS BIT,
    @HierarchyLevel AS INT,
    @rbnNotAcc AS BIT,
    @rbnToLevel AS BIT,
    @rbnOnlyLevel AS BIT,
    @txtHierarchyOnlyLevel AS INT,
    @cmbLocation AS INT
	  
AS
BEGIN

    INSERT INTO Tbl_CU_Base_DetermineRequestAcc_FRM141
    (
        [SubGroupID],
        [RequestKindID],
        [RequestSubjectID],
        [rbnHierarchy],
        [rbnPersonAcc],
		rbnManagerConfirmation, 
        [chkActive3],
        [txtUserID3],
        HierarchyLevel,
        rbnNotAcc,
        rbnToLevel,
        rbnOnlyLevel,
        HierarchyOnlyLevel,
        cmbLocation,
        IsSecondPhase
    )
    SELECT @SubGroupID,
           @RequestKindID,
           @RequestSubjectID,
           @rbnHierarchy,
           @rbnPersonAcc,
		   @rbnManagerConfirmation, 
           @chkActive3,
           @UserID,
           @HierarchyLevel,
           @rbnNotAcc,
           @rbnToLevel,
           @rbnOnlyLevel,
           @txtHierarchyOnlyLevel,
           @cmbLocation,
           1
    SELECT GETDATE() AS Res;

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
				when rbnManagerConfirmation = 1 then
					'تایید مدیر رشته'
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
           CAST(HierarchyOnlyLevel AS nvarchar(10)) HierarchyOnlyLevel

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

ALTER PROCEDURE [dbo].[Sp_Cu_TaskName_ServingTableSecondPhase] @WFID AS BIGINT
AS
BEGIN
	
	declare @GUID nvarchar(50) = (select GUIDD from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)
	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID and FieldID in(select FieldSubjectID from Tbl_CU_Base_FieldSubject_FRM157 where NeedManagerConfirmation = 1))
	declare @txtMultyData nvarchar(50) = (select top 1 MultyData from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID and FieldID in(select FieldSubjectID from Tbl_CU_Base_FieldSubject_FRM157 where NeedManagerConfirmation = 1))
	declare @RequestSubjectID int = (select cmbRequestSubject from Tbl_Cu_ServingTableSecondPhase_Log where WFID = @wfid)

	DECLARE @SelectInfo AS BIT,
            @IsNeedCertificate AS BIT,
			@rbnMultipleValues AS BIT
    SELECT @SelectInfo = SelectInfo,
           @IsNeedCertificate = IsNeedCertificate,
		   @rbnMultipleValues = rbnMultipleValues
    FROM [dbo].[Tbl_CU_Base_FieldSubject_FRM157]
    WHERE FieldSubjectID in(select FieldSubjectID from Tbl_CU_Base_FieldSubject_FRM157 where NeedManagerConfirmation = 1)
	and RequestSubjectID = @RequestSubjectID;

    SELECT 'بررسی جهت تایید' + '-' + ISNULL(
                                     (
                                         SELECT TOP 1
                                             X.SubGroupTitle
                                         FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                         WHERE X.SubGroupID = A.cmbSubGroup
                                     ),
                                     ''
                                           ) + '-' + ISNULL(
                                                     (
                                                         SELECT TOP 1
                                                             X.RequestKindTitle
                                                         FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                         WHERE X.RequestKindID = A.cmbRequestKind
                                                     ),
                                                     ''
                                                           ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
        --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '')
        AS TaskName1,
           ------------------------------------------------------------
           'ثبت اقدام' + '-' + ISNULL(
                               (
                                   SELECT TOP 1
                                       X.SubGroupTitle
                                   FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                   WHERE X.SubGroupID = A.cmbSubGroup
                               ),
                               ''
                                     ) + '-' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.RequestKindTitle
                                                   FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                   WHERE X.RequestKindID = A.cmbRequestKind
                                               ),
                                               ''
                                                     ) + '-' + ISNULL(
                                                               (
                                                                   SELECT TOP 1
                                                                       X.RequestSubjectName
                                                                   FROM Tbl_CU_Base_RequestSubject_FRM155 X
                                                                   WHERE X.RequestSubjectID = A.cmbRequestSubject
                                                               ),
                                                               ''
                                                                     ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName2,
           ------------------------------------------------------------
           'ارجاع شده توسط اقدام کننده دیگر' + '-' + ISNULL(
                                                     (
                                                         SELECT TOP 1
                                                             X.SubGroupTitle
                                                         FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                         WHERE X.SubGroupID = A.cmbSubGroup
                                                     ),
                                                     ''
                                                           ) + '-' + ISNULL(
                                                                     (
                                                                         SELECT TOP 1
                                                                             X.RequestKindTitle
                                                                         FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                                         WHERE X.RequestKindID = A.cmbRequestKind
                                                                     ),
                                                                     ''
                                                                           ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName3,
           ------------------------------------------------------------
           'مشاهده نتیجه اقدام ' + '-' + ISNULL(
                                         (
                                             SELECT TOP 1
                                                 X.SubGroupTitle
                                             FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                             WHERE X.SubGroupID = A.cmbSubGroup
                                         ),
                                         ''
                                               ) + '-' + ISNULL(
                                                         (
                                                             SELECT TOP 1
                                                                 X.RequestKindTitle
                                                             FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                             WHERE X.RequestKindID = A.cmbRequestKind
                                                         ),
                                                         ''
                                                               ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           -- + '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName4,
           ------------------------------------------------------------
           'درخواست در حال انجام ' + '-' + ISNULL(
                                           (
                                               SELECT TOP 1
                                                   X.SubGroupTitle
                                               FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                               WHERE X.SubGroupID = A.cmbSubGroup
                                           ),
                                           ''
                                                 ) + '-' + ISNULL(
                                                           (
                                                               SELECT TOP 1
                                                                   X.RequestKindTitle
                                                               FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                               WHERE X.RequestKindID = A.cmbRequestKind
                                                           ),
                                                           ''
                                                                 ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           -- + '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName5,
           ------------------------------------------------------------
           'بررسی نتیجه اقدام  ' + '-' + ISNULL(
                                         (
                                             SELECT TOP 1
                                                 X.SubGroupTitle
                                             FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                             WHERE X.SubGroupID = A.cmbSubGroup
                                         ),
                                         ''
                                               ) + '-' + ISNULL(
                                                         (
                                                             SELECT TOP 1
                                                                 X.RequestKindTitle
                                                             FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                             WHERE X.RequestKindID = A.cmbRequestKind
                                                         ),
                                                         ''
                                                               ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName6,
           ------------------------------------------------------------
           'تکمیل اطلاعات لازم ' + '-' + ISNULL(
                                         (
                                             SELECT TOP 1
                                                 X.SubGroupTitle
                                             FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                             WHERE X.SubGroupID = A.cmbSubGroup
                                         ),
                                         ''
                                               ) + '-' + ISNULL(
                                                         (
                                                             SELECT TOP 1
                                                                 X.RequestKindTitle
                                                             FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                             WHERE X.RequestKindID = A.cmbRequestKind
                                                         ),
                                                         ''
                                                               ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName7,
           ------------------------------------------------------------
           'ثبت نظرات درخواست میز خدمت ' + '-' + ISNULL(
                                                 (
                                                     SELECT TOP 1
                                                         X.SubGroupTitle
                                                     FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                     WHERE X.SubGroupID = A.cmbSubGroup
                                                 ),
                                                 ''
                                                       ) + '-' + ISNULL(
                                                                 (
                                                                     SELECT TOP 1
                                                                         X.RequestKindTitle
                                                                     FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                                     WHERE X.RequestKindID = A.cmbRequestKind
                                                                 ),
                                                                 ''
                                                                       ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '')
           AS TaskName8,
           ------------------------------------------------------------
           'مشاهده نظرات ارجاع گیرنده' + '-' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.SubGroupTitle
                                                   FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                   WHERE X.SubGroupID = A.cmbSubGroup
                                               ),
                                               ''
                                                     ) + '-' + ISNULL(
                                                               (
                                                                   SELECT TOP 1
                                                                       X.RequestKindTitle
                                                                   FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                                   WHERE X.RequestKindID = A.cmbRequestKind
                                                               ),
                                                               ''
                                                                     ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName9,
           ------------------------------------------------------------
           'بررسی جهت تاییدیه درخواست میز خدمت ' + '-' + ISNULL(
                                                         (
                                                             SELECT TOP 1
                                                                 X.SubGroupTitle
                                                             FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                             WHERE X.SubGroupID = A.cmbSubGroup
                                                         ),
                                                         ''
                                                               ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestKindTitle
                 FROM Tbl_CU_Base_RequestKind_FRM153 X
                 WHERE X.RequestKindID = A.cmbRequestKind
             ),
             ''
                   ) + '-' + ISNULL(
                             (
                                 SELECT TOP 1
                                     X.RequestSubjectName
                                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                                 WHERE X.RequestSubjectID = A.cmbRequestSubject
                             ),
                             ''
                                   ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName10,
           ------------------------------------------------------------
           'مشاهده نتیجه تاییدیه  ' + '-' + ISNULL(
                                            (
                                                SELECT TOP 1
                                                    X.SubGroupTitle
                                                FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                WHERE X.SubGroupID = A.cmbSubGroup
                                            ),
                                            ''
                                                  ) + '-' + ISNULL(
                                                            (
                                                                SELECT TOP 1
                                                                    X.RequestKindTitle
                                                                FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                                WHERE X.RequestKindID = A.cmbRequestKind
                                                            ),
                                                            ''
                                                                  ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           -- + '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName11,
           ------------------------------------------------------------
           'مشاهده توضیحات تکمیلی ' + '-' + ISNULL(
                                            (
                                                SELECT TOP 1
                                                    X.SubGroupTitle
                                                FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                                WHERE X.SubGroupID = A.cmbSubGroup
                                            ),
                                            ''
                                                  ) + '-' + ISNULL(
                                                            (
                                                                SELECT TOP 1
                                                                    X.RequestKindTitle
                                                                FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                                WHERE X.RequestKindID = A.cmbRequestKind
                                                            ),
                                                            ''
                                                                  ) + '-'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.RequestSubjectName
                 FROM Tbl_CU_Base_RequestSubject_FRM155 X
                 WHERE X.RequestSubjectID = A.cmbRequestSubject
             ),
             ''
                   ) + '-' + 'ثبت شده توسط:' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.FullName
                                                   FROM Users.TblProfiles X
                                                   WHERE X.UserId = A.RegUserID
                                               ),
                                               ''
                                                     )
           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '') 
           AS TaskName12,
           ------------------------------------------------------------
           'ثبت اقدام' + '-' + ISNULL(
                               (
                                   SELECT TOP 1
                                       X.SubGroupTitle
                                   FROM [Tbl_CU_Base_SubGroups_FRM151] X
                                   WHERE X.SubGroupID = A.cmbSubGroup
                               ),
                               ''
                                     ) + '-' + ISNULL(
                                               (
                                                   SELECT TOP 1
                                                       X.RequestKindTitle
                                                   FROM Tbl_CU_Base_RequestKind_FRM153 X
                                                   WHERE X.RequestKindID = A.cmbRequestKind
                                               ),
                                               ''
                                                     ) + '-' + ISNULL(
                                                               (
                                                                   SELECT TOP 1
                                                                       X.RequestSubjectName
                                                                   FROM Tbl_CU_Base_RequestSubject_FRM155 X
                                                                   WHERE X.RequestSubjectID = A.cmbRequestSubject
                                                               ),
                                                               ''
                                                                     )

           --+ '-' + +'به کد پیگیری ' + ISNULL(CAST(@WFID AS NVARCHAR(50)), '')
           + '-' + +'اقدام کننده :'
           + +ISNULL(
              (
                  SELECT X.FullName FROM Users.TblProfiles X WHERE X.UserId = A.EghdamUserId
              ),
              ''
                    ) + '-' + 'ثبت شده توسط:'
           + ISNULL(
             (
                 SELECT TOP 1
                     X.FullName
                 FROM Users.TblProfiles X
                 WHERE X.UserId = A.RegUserID
             ),
             ''
                   ) AS TaskName13,
			------------------------------------------------------------
			'بررسی جهت تایید:' +
			isnull((select top 1 SubGroupTitle from Tbl_CU_Base_SubGroups_FRM151 where SubGroupID = a.cmbSubGroup), '') + '-' +
			isnull((select top 1 RequestKindTitle from Tbl_CU_Base_RequestKind_FRM153 where RequestKindID = a.cmbRequestKind), '') + '-' +
			case
				when @SelectInfo = 1 then (select top 1 RequestSubjectName from Tbl_CU_Base_RequestSubject_FRM155 where RequestSubjectID = a.cmbRequestSubject)
				when @rbnMultipleValues = 1 then (select top 1 dbo.[Fn_CU_Tbl_CU_Base_FieldValue_FRM167_Title](MultyData) from Tbl_Cu_ServingTableField_Log where GUIDD=@GUID and FieldID in(select FieldSubjectID from Tbl_CU_Base_FieldSubject_FRM157 where NeedManagerConfirmation = 1))
			end + '-' +		
			isnull((select top 1 FieldValueTitle from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID), '') + '-' +
			'ثبت شده توسط:' +
			isnull((select top 1 FullName from users.TblProfiles where UserId = a.RegUserID), '') 
			--+ '-به کد پیگیری ' + isnull(cast(@wfid as nvarchar(50)),'') 
				as TaskName14

    FROM dbo.Tbl_Cu_ServingTableSecondPhase_Log A
    WHERE WFID = @WFID;
END;

go

----------
ALTER PROCEDURE [dbo].[Sp_Cu_Update_Tbl_Cu_ServingTableField_Log]
    @ItemID AS BIGINT,
    @FileUploadCertificate AS NVARCHAR(2000),
    @FieldValueTitle AS NVARCHAR(1000),
    @FieldValueID AS INT,
    @FieldValueDate AS NVARCHAR(10),
	@txtMultipleValues AS NVARCHAR(100)
AS
BEGIN
    DECLARE @FieldID AS INT = (
                                  SELECT TOP 1
                                      X.FieldID
                                  FROM Tbl_Cu_ServingTableField_Log X
                                  WHERE X.ServingTableFieldID = @ItemID
                              );


    DECLARE @SelectInfo AS BIT,
            @IsNeedCertificate AS BIT,
			@rbnMultipleValues AS BIT
    SELECT @SelectInfo = SelectInfo,
           @IsNeedCertificate = IsNeedCertificate,
		   @rbnMultipleValues = rbnMultipleValues
    FROM [dbo].[Tbl_CU_Base_FieldSubject_FRM157]
    WHERE FieldSubjectID = @FieldID;

    IF (@SelectInfo = 1)
    BEGIN
        UPDATE dbo.Tbl_Cu_ServingTableField_Log
        SET FieldValueID = @FieldValueID,
            FileUploadCertificate = @FileUploadCertificate
        --CASE
        --              WHEN @IsNeedCertificate = 1 THEN
        --                  @FileUploadCertificate
        --              ELSE
        --                  ''
        --          END
        WHERE ServingTableFieldID = @ItemID;

		select convert(nvarchar,GETDATE(),21) Res --update
        --SELECT GETDATE() AS Res;

    END;
    ELSE IF (@rbnMultipleValues = 1)
    BEGIN
        UPDATE dbo.Tbl_Cu_ServingTableField_Log
        SET MultyData = @txtMultipleValues,
            FileUploadCertificate = @FileUploadCertificate
        WHERE ServingTableFieldID = @ItemID;
        SELECT GETDATE() AS Res;
    END;
    ELSE
    BEGIN


        DECLARE @ItemType INT = (
                                    SELECT TOP 1
                                        ItemType
                                    FROM [dbo].[Tbl_CU_Base_FieldSubject_FRM157]
                                    WHERE FieldSubjectID = @FieldID
                                );

        IF (@ItemType = 3)
        BEGIN

            UPDATE dbo.Tbl_Cu_ServingTableField_Log
            SET FieldValueTitle = @FieldValueDate,
                FileUploadCertificate = @FileUploadCertificate
            WHERE ServingTableFieldID = @ItemID;

        END;



        ELSE IF (@ItemType = 8)
        BEGIN


            IF (ISNUMERIC(@FieldValueTitle) = 1)
                SET @FieldValueTitle = dbo.InsertComma(@FieldValueTitle);

            UPDATE dbo.Tbl_Cu_ServingTableField_Log
            SET FieldValueTitle = @FieldValueTitle,
                FileUploadCertificate = @FileUploadCertificate
            WHERE ServingTableFieldID = @ItemID;

        END;

        ELSE
        BEGIN
            UPDATE dbo.Tbl_Cu_ServingTableField_Log
            SET FieldValueTitle = @FieldValueTitle,
                FileUploadCertificate = @FileUploadCertificate
            WHERE ServingTableFieldID = @ItemID;
        END;

        SELECT 
			convert(nvarchar,GETDATE(),21) Res,  --update
			--GETDATE() AS Res,
               1 AS clear;

    END;

END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_Insert_Update_Tbl_Cu_ServingTableSecondPhase_Log]
    @WFID AS BIGINT,
    @LogstatusID AS INT
AS
BEGIN
    DECLARE @RegDate AS NVARCHAR(10),
            @RegTime AS NVARCHAR(5),
            @RegUserID AS BIGINT,
            @FullName AS NVARCHAR(100),
            @ServiceLocation AS NVARCHAR(100),
            @OrganizationUnit AS NVARCHAR(100),
            @OrganizationPost AS NVARCHAR(100),
            @PhoneNumber AS NVARCHAR(50),
            @FollowUpCode AS NVARCHAR(50),
            @Address AS NVARCHAR(2000),
            @rbnAccSeconder AS BIT,
            @rbnNotAccSeconder AS BIT,
            @rbnReferencerbnAccSeconder AS BIT,
            @ReferenceUserSeconder AS BIGINT,
            @DescSeconder AS NVARCHAR(2000),
            @rbnAccReference AS BIT,
            @rbnNotAccReference AS BIT,
            @DescReference AS NVARCHAR(2000),
            @StatusActing AS INT,
            @DateActing AS NVARCHAR(10),
            @TimeActing AS NVARCHAR(5),
            @ChkReferenceActing AS BIT,
            @ReferenceActing AS INT,
            @ReferenceUserActing AS BIGINT,
            @DescActing AS NVARCHAR(2000),
            @rbnAccActions AS BIT,
            @rbnNotAccActions AS BIT,
            @ScoreActions AS INT,
            @DescActions AS NVARCHAR(2000),
            @AttachmentActions AS NVARCHAR(1000),
            @RequestDesc AS NVARCHAR(2000),
            @GUIDD AS NVARCHAR(100),
            @OUChart AS INT,
            @chkUserIsBranch AS BIT,
            @cmbSubGroup AS INT,
            @cmbRequestKind AS INT,
            @cmbRequestSubject AS INT,
            @EghdamRegDate AS NVARCHAR(10),
            @EghdamRegTime AS NVARCHAR(5),
            @EghdamRegUser AS BIGINT,
			@MessageNumber AS NVARCHAR(50)
			
    SELECT @RegDate = Col_5150238976164030821,
           @RegTime = Col_5209939103483890987,
           @RegUserID = Col_5758762721732505115,
           @FullName = Col_5329520347459779938,
           @ServiceLocation = Col_5035903570341991895,
           @OrganizationUnit = Col_4797625139975453820,
           @OrganizationPost = Col_4850327712077035454,
           @PhoneNumber = Col_5281861071186097962,
           @FollowUpCode = Col_5263373270007817469,
           @Address = Col_5761211021147188750,
           @rbnAccSeconder = Col_5433095950633073955,
           @rbnNotAccSeconder = Col_5558469775321616550,
           @rbnReferencerbnAccSeconder = Col_4684667365755274354,
           @ReferenceUserSeconder = Col_5265233019818142125,
           @DescSeconder = Col_5181720467505861532,
           @rbnAccReference = Col_5218958864821998426,
           @rbnNotAccReference = Col_5093058697085053446,
           @DescReference = Col_5704711095539514666,
           @StatusActing = Col_4881570594048707352,
           @DateActing = Col_4973100433102665678,
           @TimeActing = Col_4804226963426195138,
           @ChkReferenceActing = Col_5150378410502021558,
           @ReferenceActing = Col_4936620095668202831,
           @ReferenceUserActing = Col_5506921329922687913,
           @DescActing = Col_4888789270628417469,
           @rbnAccActions = Col_5738523675897553270,
           @rbnNotAccActions = Col_5724648397005188929,
           @ScoreActions = Col_5259992753776356314,
           @DescActions = Col_4999118027321972736,
           @AttachmentActions = Col_4636532424394902227,
           @RequestDesc = Col_5206491520355753398,
           @GUIDD = Col_4995533338641167379,
           @OUChart = Col_5474736857145248079,
           @chkUserIsBranch = Col_5464357723432469235,
           @cmbSubGroup = Col_4838564445226209905,
           @cmbRequestKind = Col_4647773901884335145,
           @cmbRequestSubject = Col_5266482798981468614,
           @EghdamRegDate = Col_4973100433102665678,
           @EghdamRegTime = Col_4804226963426195138,
           @EghdamRegUser = Col_4786962185969475179,
		   @MessageNumber = Col_4826610513644201043
    FROM dbo.Tbl_frm243
    WHERE frm243Id IN (
                          SELECT MAX(PKFormID)
                          FROM Task.TblFormInstance
                          WHERE WorkflowInstanceId = @WFID
                                AND FormID = 243
                      );

	declare @cmbFieldValueID int = (select top 1 FieldValueID from Tbl_Cu_ServingTableField_Log where GUIDD=@GUIDD and FieldID in(select FieldSubjectID from Tbl_CU_Base_FieldSubject_FRM157 where NeedManagerConfirmation = 1))
	declare @ManagerGroupID int = (select top 1 FieldManager from Tbl_CU_Base_FieldValue_FRM167 where FieldValueID = @cmbFieldValueID )

    IF NOT EXISTS
    (
        SELECT *
        FROM [dbo].Tbl_Cu_ServingTableSecondPhase_Log
        WHERE WFID = @WFID
    )
    BEGIN
        PRINT 'Insert';
        INSERT INTO dbo.Tbl_Cu_ServingTableSecondPhase_Log
        (
            WFID,
            StatusID,
            RegDate,
            RegTime,
            RegUserID,
            FullName,
            ServiceLocation,
            OrganizationUnit,
            OrganizationPost,
            PhoneNumber,
            FollowUpCode,
            [Address],
            rbnAccSeconder,
            rbnNotAccSeconder,
            rbnReferencerbnAccSeconder,
            ReferenceUserSeconder,
            DescSeconder,
            rbnAccReference,
            rbnNotAccReference,
            DescReference,
            StatusActing,
            DateActing,
            TimeActing,
            ChkReferenceActing,
            ReferenceActing,
            ReferenceUserActing,
            DescActing,
            rbnAccActions,
            rbnNotAccActions,
            ScoreActions,
            DescActions,
            AttachmentActions,
            RequestDesc,
            GUIDD,
            OUChart,
            UserIsBranch,
            cmbSubGroup,
            cmbRequestKind,
            cmbRequestSubject,
            EghdamRegDate,
            EghdamRegTime,
            EghdamRegUser,
			MessageNumber,
			ManagerGroupID
        )
        VALUES
        (@WFID, @LogstatusID, @RegDate, @RegTime, @RegUserID, @FullName, @ServiceLocation, @OrganizationUnit,
         @OrganizationPost, @PhoneNumber, @FollowUpCode, @Address, @rbnAccSeconder, @rbnNotAccSeconder,
         @rbnReferencerbnAccSeconder, @ReferenceUserSeconder, @DescSeconder, @rbnAccReference, @rbnNotAccReference,
         @DescReference, @StatusActing, @DateActing, @TimeActing, @ChkReferenceActing, @ReferenceActing,
         @ReferenceUserActing, @DescActing, @rbnAccActions, @rbnNotAccActions, @ScoreActions, @DescActions,
         @AttachmentActions, @RequestDesc, @GUIDD, @OUChart, @chkUserIsBranch, @cmbSubGroup, @cmbRequestKind,
         @cmbRequestSubject, @EghdamRegDate, @EghdamRegTime, @EghdamRegUser,@MessageNumber,@ManagerGroupID);
    END;
    ELSE
    BEGIN
        PRINT 'Update';
        UPDATE [dbo].Tbl_Cu_ServingTableSecondPhase_Log
        SET StatusID = @LogstatusID,
            FullName = @FullName,
            ServiceLocation = @ServiceLocation,
            OrganizationUnit = @OrganizationUnit,
            OrganizationPost = @OrganizationPost,
            PhoneNumber = @PhoneNumber,
            [Address] = @Address,
            rbnAccSeconder = @rbnAccSeconder,
            rbnNotAccSeconder = @rbnNotAccSeconder,
            rbnReferencerbnAccSeconder = @rbnReferencerbnAccSeconder,
            ReferenceUserSeconder = @ReferenceUserSeconder,
            DescSeconder = @DescSeconder,
            rbnAccReference = @rbnAccReference,
            rbnNotAccReference = @rbnNotAccReference,
            DescReference = @DescReference,
            StatusActing = @StatusActing,
            DateActing = @DateActing,
            TimeActing = @TimeActing,
            ChkReferenceActing = @ChkReferenceActing,
            ReferenceActing = @ReferenceActing,
            ReferenceUserActing = @ReferenceUserActing,
            DescActing = @DescActing,
            rbnAccActions = @rbnAccActions,
            rbnNotAccActions = @rbnNotAccActions,
            ScoreActions = @ScoreActions,
            DescActions = @DescActions,
            AttachmentActions = @AttachmentActions,
            RequestDesc = @RequestDesc,
            EghdamRegDate = @EghdamRegDate,
            EghdamRegTime = @EghdamRegTime,
            EghdamRegUser = @EghdamRegUser,
			MessageNumber = @MessageNumber,
			ManagerGroupID = @ManagerGroupID
        WHERE WFID = @WFID;
    END;
END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_GetLoadEghamUserData_Frm243_Second]
    @WFID AS BIGINT,
    @USerID AS BIGINT
AS
BEGIN
    DECLARE @ActivityID AS BIGINT = (
                                        SELECT TOP 1
                                            ActivityID
                                        FROM Task.TblTask A
                                            INNER JOIN Task.TblWorkflowActivityInstance B
                                                ON B.WorkflowActivityInstanceID = A.WorkflowActivityInstaceID
                                        WHERE B.WokflowInstanceID = @WFID
                                        ORDER BY WorkflowActivityInstanceID DESC
                                    );
    IF @ActivityID IN ( 4639899204487608222, 4688350513976241778, 5529627593530161329 ,5760703753242481217,5277194098677019382,5668524312688005374,5543669233492574758,
						4899859524410969349,5079824808279464787) --مدیر تایید کننده دو بخش اشخاص تایید کننده و سلسله مراتبی 
    BEGIN
        SELECT dbo.fn_CU_MiladiToShamsi(GETDATE()) AS RegDate,
               CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS RegTime,
               @USerID AS UserID,
               @ActivityID AS ActivityID;
    END;
    ELSE
    BEGIN
        SELECT '' AS RegDate,
               '' AS RegTime,
               0 AS UserID,
               0 AS ActivityID
        FROM Tbl_Cu_ServingTableSecondPhase_Log
        WHERE WFID = @WFID;
    END;
END;

go

ALTER PROCEDURE [dbo].[Sp_Cu_Read_Tbl_Cu_ServingTableSecondPhaseHistory_Log] @WFID AS BIGINT
AS
BEGIN
    DECLARE @StatusActing AS INT = (
                                       SELECT TOP 1
                                           R.StatusActing
                                       FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log R
                                       WHERE R.ServingTableSecondPhaseHistoryID =
                                       (
                                           SELECT TOP 1
                                               X.ServingTableSecondPhaseHistoryID - 1
                                           FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
                                           WHERE X.WFID = @WFID
                                                 AND X.RoleID = 6
                                           ORDER BY X.ServingTableSecondPhaseHistoryID DESC
                                       )
                                   );
    PRINT @StatusActing;
    SELECT X.ServingTableSecondPhaseHistoryID,
           ----------------------------------------------------
           CASE
               WHEN X.RoleID = 6
                    AND @StatusActing = 2 THEN
                   'پیمانکار'
               ----------------------------------------------------
               WHEN X.RoleID = 5
                    AND NOT EXISTS
                            (
                                SELECT TOP 1
                                    *
                                FROM Task.TblTask A
                                    INNER JOIN Task.TblWorkflowActivityInstance B
                                        ON B.WorkflowActivityInstanceID = A.WorkflowActivityInstaceID
                                WHERE B.WokflowInstanceID = @WFID
                                      AND B.ActivityID = 5254867846087093257
                            ) THEN
               (
                   SELECT TOP 1
                       S.FullName
                   FROM Users.TblProfiles S
                   WHERE S.UserId =
                   (
                       SELECT TOP 1
                           SD.RegUserID
                       FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log SD
                       WHERE SD.WFID = X.WFID
                             AND SD.RoleID = 1
                   )
               )
               ----------------------------------------------------
               --WHEN X.RoleID = 5
               --     AND EXISTS
               --         (
               --             SELECT TOP 1
               --                 *
               --             FROM Task.TblTask A
               --                 INNER JOIN Task.TblWorkflowActivityInstance B
               --                     ON B.WorkflowActivityInstanceID = A.WorkflowActivityInstaceID
               --             WHERE B.WokflowInstanceID = @WFID
               --                   AND B.ActivityID = 5254867846087093257
               --         ) THEN
               --(
               --    SELECT TOP 1 S.FullName FROM Users.TblProfiles S WHERE S.UserId = 1
               --)
               ----------------------------------------------------
               ELSE
           (
               SELECT TOP 1
                   S.FullName
               FROM Users.TblProfiles S
               WHERE S.UserId = X.RegUserID
           )
           END AS FullName,
           ----------------------------------------------------
           CASE
               WHEN X.RoleID IN ( 1, 5 ) THEN
                   'ثبت کننده'
               WHEN X.RoleID = 2 THEN
                   'تایید کننده'
				when RoleID = 7 THEN
					'مدیر رشته'
               WHEN X.RoleID = 3 THEN
                   'ارجاع گیرنده'
        
       WHEN X.RoleID = 6
                    AND @StatusActing = 2 THEN
                   'پیمانکار'
               WHEN X.RoleID IN ( 4, 6 ) THEN
                   'اقدام کننده'
               WHEN X.RoleID = 20 THEN
                   'مدیر سیستم'
               WHEN X.RoleID IN(30,31,32) THEN
                   'مدیر'
           END AS Rolee,
           ----------------------------------------------------
           CASE
               ----------------------------
               WHEN X.RoleID IN(30,31,32) THEN
                   'تخصیص کاربر جدید: ' + 'از :' + ' ' +
                   (
                       SELECT TOP 1
                           S.FullName
                       FROM Users.TblProfiles S
                       WHERE S.UserId = X.ReferenceActing
                   ) + ' ' + 'به  :' + ' ' +
                   (
                       SELECT TOP 1
                           S.FullName
                       FROM Users.TblProfiles S
                       WHERE S.UserId = X.StatusActing
                   )
               ----------------------------
               WHEN X.ActivityID = 4867931382758811148 THEN
                   ' ثبت درخواست'
               ----------------------------
               WHEN X.RoleID in (2,7)
                    AND X.RbnNotAcc = 1 THEN
                   ' عدم تایید درخواست'
               WHEN X.RoleID = 20 THEN
                   'برگرداندن کار به کارتابل گروهی'
               WHEN X.RoleID = 5
                    AND X.ActivityID = 4884468010782323506 THEN
                   'درج اطلاعات تکمیلی'
               ----------------------------
               WHEN X.RoleID = 5
                    AND X.RbnNotAcc = 1 THEN
                   ' عدم تایید اقدامات'
               ----------------------------
               WHEN X.RoleID = 5
                    AND X.RbnAcc = 1 THEN
                   'تایید اقدامات' + ' ' + 'امتیاز:' +
                   (
                       SELECT TOP 1
                           s.ServingTableScoreTitle
                       FROM dbo.Tbl_Cu_Base_ServingTableScore s
                       WHERE s.ServingTableScoreID = X.StatusActing
                   )
               WHEN X.RoleID in (2,7)
                    AND X.RbnReference = 1 THEN
                   'ارجاع جهت نظرخواهی'
               ----------------------------
               WHEN X.RoleID = 4
                    AND X.ReferenceActing = 2
                    AND X.RbnReference = 1 THEN
                   'ارجاع جهت نظرخواهی'
               ----------------------------
               WHEN X.RoleID = 6
                    AND X.StatusActing = 1 THEN
                   'شروع مجدد'
               ----------------------------
               WHEN X.RoleID = 4
                    AND X.StatusActing = 2 THEN
                   'در انتظار پیمانکار'
               ----------------------------
               WHEN X.RoleID = 6
                    AND @StatusActing = 2 THEN
                   'پاسخ پیمانکار'
               WHEN X.RoleID = 6
                    AND @StatusActing = 1 THEN
                   'شروع مجدد'
               ----------------------------
               WHEN X.RoleID = 4
                    AND X.ReferenceActing = 1
                    AND X.RbnReference = 1 THEN
                   'ارجاع جهت اخذ تاییدیه'
               ----------------------------
               WHEN X.RoleID = 4
                    AND X.ReferenceActing = 3
                    AND X.RbnReference = 1 THEN
                   'ارجاع جهت اقدام'
               ----------------------------
               WHEN X.RoleID = 4 THEN
               (
                   SELECT TOP 1
                       S.StatusPublicDescItems
                   FROM Tbl_CU_Base_StatusPublicServiceDesc S
                   WHERE S.StatusPublicDescID = X.StatusActing
               )
               ----------------------------
               WHEN X.RoleID = 6 THEN
    
           (
                   SELECT TOP 1
                       S.StatusPublicDescItems
                   FROM Tbl_CU_Base_StatusPublicServiceDesc S
                   WHERE S.StatusPublicDescID =
                   (
                       SELECT TOP 1
                           G.StatusActing
                       FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log G
                       WHERE G.ServingTableSecondPhaseHistoryID =
                       (
                           SELECT TOP 1
                               F.ServingTableSecondPhaseHistoryID - 1
                           FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log F
                           WHERE F.RoleID = 6
                                 AND F.WFID = X.WFID
                           ORDER BY F.ServingTableSecondPhaseHistoryID DESC
                       )
                   )
               )
               ----------------------------
               WHEN X.RoleID in (2,7)
                    AND X.RbnAcc = 1 THEN
                   'تایید درخواست'			
               ----------------------------
			   WHEN X.RoleID in (2,7)
                    AND X.RbnNotAcc = 1 THEN
                   'عدم تایید درخواست'	  --update
			   ----------------------------
               WHEN X.ActivityID IN ( 5624706779067406565, 4633504046651884851, 5404828863396726991 ) THEN
                   'ثبت نظر'
               ----------------------------
               WHEN X.ActivityID IN ( 5685073198307059256 )
                    AND X.RbnAcc = 1 THEN
                   'تایید'
               ----------------------------
               WHEN X.ActivityID IN ( 5685073198307059256 )
                    AND X.RbnNotAcc = 1 THEN
                   'عدم تایید'
               ----------------------------
           END AS Actionn,
           ----------------------------------------------------
           CASE
               WHEN X.ActivityID IN ( 4867931382758811148, 5624706779067406565 ) THEN
                   ' '
               WHEN X.RoleID in (2,7)
                    AND X.RbnNotAcc = 1 THEN
                   ' '
               WHEN (
                        X.RoleID = 2
                        AND X.RbnReference = 1
                    )
                    OR
                    (
                        X.RoleID = 4
                        AND X.ReferenceActing IN (2,3)
                        AND X.RbnReference = 1
                    ) THEN
               (
                   SELECT TOP 1
                       S.FullName
                   FROM Users.TblProfiles S
                   WHERE S.UserId = X.RbnReferenceUserID
               )
               WHEN (
                        X.RoleID = 4
                        AND X.ReferenceActing =1
                        AND X.RbnReference = 1
						AND ISNULL(X.MultyReferenceActing,'') =  ''
                    ) THEN
               (
                   SELECT TOP 1
                       S.FullName
                   FROM Users.TblProfiles S
                   WHERE S.UserId = X.RbnReferenceUserID
               )
               WHEN (
                        X.RoleID = 4
                        AND X.ReferenceActing =1
                        AND X.RbnReference = 1
						AND ISNULL(X.MultyReferenceActing,'') <>  ''
                    ) THEN
               (
                   SELECT dbo.[Fn_CU_ReferralUserServingTable_Title](MultyReferenceActing)
               )
           END AS Reference,
           ----------------------------------------------------
           X.RegDate,
           ----------------------------------------------------
           X.RegTime,
           ----------------------------------------------------
           X.UserDesc,
           ----------------------------------------------------
           CASE
               WHEN
               (
                   X.RoleID
               ) = 1 THEN
                   '#FA8072'
               ELSE
                   '#C0C0C0'
           END AS AnsweredColor
    FROM Tbl_Cu_ServingTableSecondPhaseHistory_Log X
    WHERE WFID = @WFID
    ORDER BY X.ServingTableSecondPhaseHistoryID;
END;


go

ALTER PROCEDURE [dbo].[Sp_Cu_CheckExists_DetermineRequestAcc_New]
    @cmbRequestSubject3 AS INT,
    @cmbLocation AS INT,
    @rbnPersonAccMain AS BIT,
    @rbnHierarchyMain AS BIT,
	@rbnManagerConfirmationMain bit
AS
BEGIN
    DECLARE @rbnHierarchy AS BIT = (
                                       SELECT TOP 1
                                           rbnHierarchy
                                       FROM Tbl_CU_Base_DetermineRequestAcc_FRM141
                                       WHERE RequestSubjectID = @cmbRequestSubject3
                                             AND cmbLocation = @cmbLocation
                                             AND chkActive3 = 1
                                             AND IsSecondPhase = 1
                                   );
    DECLARE @rbnPersonAcc AS BIT = (
                                       SELECT TOP 1
                                           rbnPersonAcc
                                       FROM Tbl_CU_Base_DetermineRequestAcc_FRM141
                                       WHERE RequestSubjectID = @cmbRequestSubject3
                                             AND cmbLocation = @cmbLocation
                                             AND chkActive3 = 1
                                             AND IsSecondPhase = 1
                                   );
	DECLARE @rbnManagerConfirmation AS BIT = (
                                       SELECT TOP 1
                                           rbnManagerConfirmation
                                       FROM Tbl_CU_Base_DetermineRequestAcc_FRM141
                                       WHERE RequestSubjectID = @cmbRequestSubject3
                                             AND cmbLocation = @cmbLocation
                                             AND chkActive3 = 1
                                             AND IsSecondPhase = 1
                                   );
    IF NOT EXISTS
    (
        SELECT TOP 1
            rbnHierarchy
        FROM Tbl_CU_Base_DetermineRequestAcc_FRM141
        WHERE RequestSubjectID = @cmbRequestSubject3
              AND cmbLocation = @cmbLocation
              AND chkActive3 = 1
              AND IsSecondPhase = 1
    )
    BEGIN
        SELECT CAST(0 AS BIT) AS Res;
    END;
    ELSE IF (@rbnHierarchy = 1 AND @rbnPersonAccMain = 1)
    BEGIN
        SELECT CAST(0 AS BIT) AS Res;
    END;
    ELSE IF (@rbnPersonAccMain = 1 AND @rbnPersonAcc = 1)
    BEGIN
        SELECT CAST(0 AS BIT) AS Res;
    END;
    ELSE
    BEGIN
        SELECT CAST(0 AS BIT) AS Res;
    END;

END;

go

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
				  and rbnManagerConfirmation != 1 
        );
        SELECT DetermineRequestAccID,
               rbnNotAcc,
               rbnPersonAcc,
               rbnHierarchy,
			   rbnManagerConfirmation,
               txtUserID3,
               rbnToLevel,
               HierarchyLevel,
               HierarchyOnlyLevel
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
               HierarchyOnlyLevel
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
               0 HierarchyOnlyLevel;
    END;
END;


go

ALTER PROCEDURE [dbo].[Sp_Cu_GetLoadEghamUserData_Frm243_Third]
    @WFID AS BIGINT,
    @USerID AS BIGINT
AS
BEGIN
    DECLARE @ActivityID AS BIGINT = (
                                        SELECT TOP 1
                                            ActivityID
                                        FROM Task.TblTask A
                                            INNER JOIN Task.TblWorkflowActivityInstance B
                                                ON B.WorkflowActivityInstanceID = A.WorkflowActivityInstaceID
                                        WHERE B.WokflowInstanceID = @WFID
                                        ORDER BY WorkflowActivityInstanceID DESC
                                    );
    IF @ActivityID IN ( 4889258265612070744, 5624706779067406565, 5404828863396726991, 4633504046651884851,
                        5685073198307059256
						,4849433516226528353 -- manager referral
                      )
    BEGIN
        SELECT dbo.fn_CU_MiladiToShamsi(GETDATE()) AS RegDate,
               CAST(CONVERT(TIME, GETDATE()) AS NVARCHAR(5)) AS RegTime,
               @USerID AS UserID,
               @ActivityID AS ActivityID;
    END;
    ELSE
    BEGIN
        SELECT '' AS RegDate,
               '' AS RegTime,
               0 AS UserID,
               0 AS ActivityID
        FROM Tbl_Cu_ServingTableSecondPhase_Log
        WHERE WFID = @WFID;
    END;
END;
















