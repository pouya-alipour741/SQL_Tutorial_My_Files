begin tran;

declare @UserID int 
declare @TaskID int


declare myCursor cursor for 
select   UserID, TaskID
from task.TblTask t
	join task.TblWorkflowActivityInstance a on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where --ActivityType = 'TZHumanActivity' and
	 t.UserID = 1875
	and t.TaskStatusID != 2

open myCursor
fetch next from myCursor
into @UserID, @TaskID


while @@FETCH_STATUS = 0
	begin
		update task.TblTask 
		set UserID = 1958
		where TaskID = @TaskID
			
		fetch next from myCursor
		into @UserID, @TaskID
	end
close myCursor
deallocate myCursor


commit


---------------

