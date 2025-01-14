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

--select top 1000 WorkflowInstanceID,*
--from Workflow.TblWorkflow w
--join task.TblWorkflowInstance i on i.WorkflowID = w.WorkflowId
--where Name like N'%فرآیند درخواست پشتیبانی سامانه سجاد%'
-------------------
alter PROCEDURE [dbo].[Sp_Cu_chkFollowUpCodeIfInRelatedWFID_frm21041]
@MainSubject int,
@FollowUpCode nvarchar(50),
@ProblemType int
AS
BEGIN
	if @ProblemType = 6
		begin
			if (select WorkflowID
				from Tbl_CU_FollowUpCode f
					join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
				where FollowUpCode = @FollowUpCode) = @MainSubject

				select cast(1 as bit) res
			else
				select cast(0 as bit) res
		end
	else
		select cast(1 as bit) res
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

alter PROCEDURE [dbo].[Sp_Cu_TaskName_SaoSupport] @WFID AS BIGINT  
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

	declare @regUsername nvarchar(50) = (
											select
												top 1 UserName --top 1 case when UserName is not null then UserName else groupname end as Name
												
											from
												Tbl_CU_QuestionAnswer l
												join users.TblUsers p on l.RegisteredUserId = p.UserId
												--join users.tblgroups g on l.   = g.groupid
											where
												WFID = @WFID
										)

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

--select top 1000 * from [Tbl_CU_QuestionAnswer]
--where wfid = 154


alter proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041  --check again
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



/*در صورت انتخاب گزینه ارجاع به دانشگاه ها ، در فیلد "نوع دانشگاه" و "نام دانشگاه" ،
تمامی دانشگاه های دیگر به جز دانشگاه فعلی که در حال بررسی درخواست است ، قابل انتخاب باشد */ 
create proc Sp_Cu_Select_university_By_institudeID_FRM21041     
@wfid bigint,
@institudeID int
as
begin
	declare @UniversityID int = (select top 1 University from Tbl_CU_QuestionAnswer where WFID = @wfid)
	if (select top 1 ReferralToUni from Tbl_CU_QuestionAnswer where WFID = @wfid) = 1
	begin
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID and UniversityID not in(@UniversityID)
	end
	else
		SELECT UniversityID,UniversityName
		FROM dbo.Tbl_CU_University
		WHERE InstituteID = @institudeID 
end


--/*در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ،
--فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت . */
--select * from Tbl_Cu_Institute
--where InstituteID in (6,8,9,2,3,1)


--create proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
--@InstitudeID int
--as
--begin
--	 if @InstitudeID in(select InstituteID from Tbl_Cu_Institute where InstituteID in (3,2,1,9))
--		select cast(1 as bit) res
--	 else
--		select cast(0 as bit) res

--end


/* در صورت انتخاب گزینه عدم ارجاع و اعلام نتیجه اعلام نتیجه به متقاضیکاربر در صورت انتخاب گزینه ارجاع به دانشگاه ها ،
دانشگاه  مورد نظر (یکی دیگر از دانشگاه ها) را انتخاب می نماید و توضیحات خود را در فیلد توضیحات درج و سپس نسبت به تایید اقدام می نماید.
(در صورت انتخاب یکی از مقادیر علمی کاربردی ، پیام نور ، فرهنگیان و فنی و حرفه ای ، امکان انتخاب نام دانشگاه وجود نخواهد داشت .)     */

alter proc Sp_Cu_chkIfInCertainUniversities_FRM21041     
@InstitudeID int,@UniReferral bit
as
begin
	 if (@InstitudeID not in(select InstituteID from Tbl_Cu_Institute where InstituteID in (3,2,1,9))
		and @UniReferral = 1)
		select cast(1 as bit) res
	 else
		select cast(0 as bit) res
end


go

ALTER PROCEDURE [dbo].[Sp_cu_SelectObservors_SaoSupport]
@WFID AS BIGINT
AS
BEGIN

		declare @ObservorUserID as bigint,
				@ObservorGroupID bigint



		declare @FollowUpCode nvarchar(100) = (select top 1 UserChosenFollowUpCode from Tbl_CU_QuestionAnswer where WFID = @WFID) 


		select
			@ObservorUserID=isnull(t.UserID,0), 
			@ObservorGroupID=isnull(t.GroupID,0) 
		from
			task.TblWorkflowActivityInstance a
			join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
		where
			a.WokflowInstanceID = (select WFID from Tbl_CU_FollowUpCode where FollowUpCode= @FollowUpCode)
			and a.ActivityType = 'TZHumanActivity'
		
		select @ObservorUserID as ObservorID, @ObservorGroupID as ObservorGroupID

END;


go

-----------------
ALTER proc [dbo].[sp_cu_getStatusFromDashboard_frm31548]
@PortalUserID bigint,
@FollowUpCode nvarchar(10)
as
begin
	select (
		SELECT CASE
					WHEN T.WorkflowInstanceStatusID = 1 THEN
						':وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي'
					ELSE
						':وضعیت درخواست شما به شرح زیر میباشد
						خاتمه يافته است'
				END
		FROM Task.TblWorkflowInstance AS T
		WHERE WorkflowInstanceID = SN.WFID
	) AS WFStatus
	FROM Tbl_CU_CountriesScholarship_LOG AS SN
	WHERE CountriesScholarshipID IN (
										select MAX(CountriesScholarshipID) 
										FROM Tbl_CU_CountriesScholarship_LOG
										WHERE PortalUserID = @PortalUserID
										GROUP BY WFID
									)
			and PortalUserID = @PortalUserID
			and wfid = (select WorkflowID
						from Tbl_CU_FollowUpCode f
						join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
						where FollowUpCode = @FollowUpCode)
	union all
	select (
		SELECT CASE
					WHEN T.WorkflowInstanceStatusID = 1 THEN
						'<p class="schecking">:وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي</p>'
					WHEN a.StatusID = 1560 THEN
						'<p class="schecking">:وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي</p>'
					ELSE
						'<p class="sclosed">:وضعیت درخواست شما به شرح زیر میباشد
						خاتمه يافته است</p>'
				END
		FROM Task.TblWorkflowInstance AS T
		WHERE WorkflowInstanceID = a.WFID
	) AS WFStatus
	FROM [dbo].[Tbl_CU_QuestionAnswer] a
	WHERE
		PortalUserID = @PortalUserID
		AND a.StatusID <> 1021
		and wfid = (select WorkflowID
					from Tbl_CU_FollowUpCode f
					join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
					where FollowUpCode = @FollowUpCode)
end





create proc [dbo].[Sp_cu_IsInStudentCartable]
@PortalUserID bigint,
@FollowUpCode nvarchar(10)
AS
BEGIN
	declare @wfid bigint = (select wfid
							from Tbl_CU_FollowUpCode 
							where FollowUpCode = @FollowUpCode)
	
	if exists(select
					1
				from
					task.TblWorkflowActivityInstance a
					join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
				where
					a.WokflowInstanceID = @wfid
					a.activityid = 
					and t.userid = @PortalUserID)

-				select cast(1 as bit)
	else
				select cast(0 as bit)
		
END;