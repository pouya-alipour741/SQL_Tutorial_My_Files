begin tran
	declare @wfid int

	declare UpdateCursor cursor for
	select
		WorkflowInstanceID
	from
		task.TblWorkflowInstance i
	where
		WorkflowId = 2000045   
		and WorkflowInstanceStatusID != 2
		and CreateDate < ''



	open UpdateCursor

	fetch next from UpdateCursor into @wfid

	while @@FETCH_STATUS = 0
		begin
	
			exec SP_TBS_CancelWorkflowInstance  @wfid

			update Tbl_CU_QuestionAnswer
			set StatusID = 1921
			where WFID = @wfid

			fetch next from UpdateCursor into @wfid
		end


	close UpdateCursor
	deallocate UpdateCursor