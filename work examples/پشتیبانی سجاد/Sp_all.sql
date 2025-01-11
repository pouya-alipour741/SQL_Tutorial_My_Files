--SELECT Problem,
--        ProblemTypeID
--FROM Tbl_Cu_Base_ProblemTypeForAskQuestion
--where ProblemTypeID = 6


create PROCEDURE [dbo].[Sp_Cu_chkProblemTypeID_frm21041]
@ProblemType int
AS
BEGIN
	if @ProblemType = 6 --پیگیری پاسخ
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
   
END;

go

create PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode int
AS
BEGIN
	if @FollowUpCode not in(select FollowUpCode from Tbl_CU_QuestionAnswer where WFID in( @MainSubject))
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
END;

go
--create PROC [dbo].[Sp_CU_GetNonActiveWorkflow_SajadSupport]  --not used
--AS
--BEGIN

--      select WorkFlowID,WorkflowName  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
--	where WorkFlowID not in (153,155,81,66,42,2000564,2000553,84)
--	and IsActive=0 
--	order by OrderId
--END;

go

create PROCEDURE [dbo].[Sp_Cu_TaskName_SaoSupport] @WFID AS BIGINT  --اعمال نشده
AS
BEGIN
    DECLARE @MainSubject AS NVARCHAR(300) = (
                                                SELECT x.[Name]
                                                FROM Workflow.TblWorkflow x
                                                WHERE x.WorkflowId =
                                                (
                                                    SELECT TOP 1
                                                        MainSubjectID
                                                    FROM dbo.Tbl_CU_QuestionAnswer
                                                    WHERE WFID = @WFID
                                                    ORDER BY Id DESC
                                                )
                                            );

	declare @regUsername nvarchar(50) = (select top 1 FullName
							from Tbl_CU_QuestionAnswer l
							join users.TblProfiles p on l.RegisteredUserId = p.UserId
							where WFID = @WFID)

    SELECT CAST('پشتیبانی' AS NVARCHAR(MAX))+ '-' + @regUsername + '-'+isnull(@MainSubject,'') AS TASKNAME1,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + @regUsername +'-'+isnull(@MainSubject,'') AS TASKNAME2,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + @regUsername +'-'+isnull(@MainSubject,'') AS TASKNAME3,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + @regUsername +'-'+isnull(@MainSubject,'') AS TASKNAME4,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + @regUsername +'-'+isnull(@MainSubject,'') AS TASKNAME5;

END;


go



--alter proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041
--@userID int,
--@mainSubject int
--as
--begin
--	if exists(
--		select
--			1
--		from
--			task.TblWorkflowInstance
--		where
--			@mainSubject in(
--			  select WorkFlowID
--			  FROM dbo.Tbl_Cu_Base_WorkFlowInReqOrder
--			  where WorkFlowID not in (153,155,81,66,42,2000564,2000553,84)
--				  and IsActive=1)
--			and WorkflowInstanceStatusID = 1
--			and StarterUserID = @userID
--			)
--		begin
--			select cast(1 as bit) res
--		end
--	else
--		select cast(0 as bit) res
--end

go


--select * from users.TblProfiles
--where UserId =64505

select * from [Tbl_CU_QuestionAnswer]
--where wfid = 154


alter proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041
@userID int,
@mainSubject int
as
begin
	if exists(
		select 1
		from [Tbl_CU_QuestionAnswer] q
		join task.TblWorkflowInstance i on q.WFID = i.WorkflowInstanceID
		join Workflow.TblWorkflow w on w.WorkflowId = i.WorkflowID
		where 
			w.WorkflowId = @mainSubject
			and WorkflowInstanceStatusID = 1
			and PortalUserID = @userID
			)
		begin
			select cast(1 as bit) res
		end
	else
		select cast(0 as bit) res
end

--exec sp_cu_chk_NoRepeatedReqestPerUser_frm21041 64505,6452647

go


--SELECT     task.TblWorkflowInstance.WorkflowInstanceID,Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID, Task.TblWorkflowActivityInstance.ActivityID, Task.TblTask.UserID, Task.TblTask.TaskID, Task.TblTask.TaskName, 
--                      Task.TblTask.GroupID, Task.TblTask.TaskStatusID, Task.TblTask.WorkflowActivityInstaceID, Task.TblTask.FromTaskID, Task.TblTask.TaskPriorityID, Task.TblTask.ResponsibleUserID, 
--                      Task.TblTask.CreateDate, Task.TblTask.ViewDate, Task.TblTask.EndDate, Task.TblTask.IntervalTime, Task.TblTask.FolderId, Task.TblTask.UserID AS Expr1, Task.TblTask.RoleID, 
--                       Task.TblTask.IsSendforAll, Task.TblWorkflowActivityInstance.ResualtConditionID
--FROM         Task.TblTask INNER JOIN
--                      Task.TblWorkflowActivityInstance ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
--					  join task.TblWorkflowInstance on task.TblWorkflowInstance.WorkflowInstanceID = Task.TblWorkflowActivityInstance.WokflowInstanceID

--WHERE     (Task.TblWorkflowActivityInstance.ActivityID = 5301958918738439373)
--and Task.TblTask.TaskStatusID in(1,6)
--ORDER BY Task.TblTask.TaskID desc


