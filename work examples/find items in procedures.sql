--get similar items in all stored procedures
select * from sys.procedures
where OBJECT_DEFINITION(object_id) like N'%institudeID%'


--get datatypes
EXEC sp_describe_first_result_set N'YourStoredProcedureNameHere'