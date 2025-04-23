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

