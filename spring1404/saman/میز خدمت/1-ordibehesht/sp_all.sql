alter table Tbl_CU_Base_FieldValue_FRM167
add FieldManager int

go

create proc sp_cu_check_FieldSubjectID_frm167
@txtFieldSubjectID
as
begin
	if @txtFieldSubjectID in(15,505)
		select 1 
	else
		select 0
end


go

