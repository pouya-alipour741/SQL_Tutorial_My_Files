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

----test

--select top 1000 FollowUpCode,* from Tbl_CU_QuestionAnswer order by wfid desc

--select top 1000 WFID,* from Tbl_CU_FollowUpCode
--where  FollowUpCode = '6452642'

--select distinct MainSubjectID from  Tbl_CU_QuestionAnswer

select top 1000 WorkflowInstanceID,*
from Workflow.TblWorkflow w
join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
where Name like N'%فرآیند درخواست پشتیبانی سامانه سجاد%'
-------------------
alter PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode int
AS
BEGIN
	if @FollowUpCode = ''  or @MainSubject = -1
		select '' as  res
	else if @FollowUpCode in(select FollowUpCode from Tbl_CU_QuestionAnswer where MainSubjectID=@MainSubject)
		select cast(1 as bit) res
	else
		select cast(0 as bit) res
END;

--exec Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041  154,6452646

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

create PROCEDURE [dbo].[Sp_Cu_TaskName_SaoSupport] @WFID AS BIGINT  --هنوز اجرا نکردم
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

	declare @regUsername nvarchar(50) = (select top 1 UserName
							from Tbl_CU_QuestionAnswer l
							join users.TblUsers p on l.RegisteredUserId = p.UserId      
							where WFID = @WFID)

    SELECT CAST('پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') + '-'+isnull(@MainSubject,'') AS TASKNAME1,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME2,
           CAST('پشتیبانی ارجاع شده' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME3,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME4,
           CAST('مشاهده نتیجه نهایی پشتیبانی' AS NVARCHAR(MAX))+ '-' + isnull(@regUsername,'') +'-'+isnull(@MainSubject,'') AS TASKNAME5;

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

select top 1000 * from [Tbl_CU_QuestionAnswer]
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



/*در صورت انتخاب گزینه ارجاع به سایر ادارات ارجاع به دانشگاه ها ، در فیلد "نوع دانشگاه" و "نام دانشگاه" ،
تمامی دانشگاه های دیگر به جز دانشگاه فعلی که در حال بررسی درخواست است ، قابل انتخاب باشد */ 
create proc Sp_Cu_Select_university_By_institudeID_FRM21041    --برای کمبوباکس نام دانشگاه است ولی هنوز کد را اجرا نکردم 
@wfid bigint,
@institudeID int
as
begin
	declare @UniversityID int = (select top 1 University from Tbl_CU_QuestionAnswer where WFID = @wfid)
	if (select top 1 ReferralToUni from Tbl_CU_QuestionAnswer where WFID = @wfid) = 1
	begin
		SELECT * FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID and UniversityID not in(@UniversityID)
	end
	else
		SELECT * FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID 
end


/*در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ،
فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت . */
select * from Tbl_Cu_Institute
where InstituteID in (6,8,9,2,3,1)


create proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
@InstitudeID int
as
begin
	 if @InstitudeID in(select InstituteID from Tbl_Cu_Institute where InstituteID in (3,2,1,9))
		select cast(1 as bit) res
	 else
		select cast(0 as bit) res

end


