--select  * from task.TblSuspendTask
----where WorkflowInstanceId >= 2500000
--order by WorkflowInstanceId

---------------
create proc sp_cu_UpdateTblSuspendTask @number int
as
	begin
		update task.TblSuspendTask
		set CanRecoverd = 1
		where WorkflowInstanceId >= @number
	end


exec sp_cu_UpdateTblSuspendTask >= 2500000


--last N%
create proc sp_cu_UpdateTblSuspendTaskLastNtile @LastNtilePercent int
as
	begin
		with ranked_SuspendTask as(
			select  NTILE(10) over(order by workflowinstanceid) n_tile,*
			from task.TblSuspendTask
		)
		update task.TblSuspendTask
		set CanRecoverd = 1
		from 
			ranked_SuspendTask
		where
			ranked_SuspendTask.SuspendTaskId = TblSuspendTask.SuspendTaskId
			and ranked_SuspendTask.n_tile = @LastNtilePercent
	end

--update last 10%
exec sp_cu_UpdateTblSuspendTaskLastNtile 10


----------
select  * from task.TblSuspendTask
order by WorkflowInstanceId





