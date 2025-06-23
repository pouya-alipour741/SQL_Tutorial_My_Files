--get similar items in all stored procedures
select * from sys.procedures
where OBJECT_DEFINITION(object_id) like N'%institudeID%'


--get specific keywords in stored procedures
SELECT *
        FROM            INFORMATION_SCHEMA.ROUTINES
WHERE        (ROUTINE_DEFINITION LIKE N'%update Tbl_Cu_RequestLanguageExam_LOG%')


--get datatypes
EXEC sp_describe_first_result_set N'YourStoredProcedureNameHere'


