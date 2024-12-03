create proc sp_tbl_cu_log @WFID
as
begin
	insert into tbl_cu_log
	select
		frm32,
		@WFID bigint,
		col_4323489 as [],
		GETDATE() regDate,
		col_87439857 regUser

	from
		tbl.frm...  f
		join task.tblforminstance i 
	where 
		frm in (select pk from task.tblforminstance where formid = 2 and workflowinstanceid = @WFID)
end




