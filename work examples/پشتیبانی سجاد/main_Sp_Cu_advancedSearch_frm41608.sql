/*فقط درخواست پشتیبانی های ثبت شده توسط هر کاربر (جهت پیگیری) به همراه درخواست پشتیبانی هایی که
از طریق پیگیری پاسخ برای کاربر ارسال شده در این بخش قابل مشاهده خواهد بود */

--[Sp_Cu_advancedSearch_frm41608] -1, -1, '',-1,-1,-1,-1,'','',-1


alter PROCEDURE [dbo].[Sp_Cu_advancedSearch_frm41608]   --به جای Sp_Cu_SearchQuestionAnswer
@MainSubject int,
@UserID bigint,
@PersonName nvarchar(100),
@Status int,  --وضعیت فرآیند
@WFStep int,  --مرحله فرآیند
@WFNumber bigint,
@FollowUpCode bigint,
@FromDate nvarchar(10),
@ToDate nvarchar(10),
@ExpertUserID bigint
AS
BEGIN

DECLARE @CountWFDoing AS INT;
DECLARE @CountWFDone AS INT;

IF @ExpertUserID <> -1
  BEGIN
      SET @CountWFDoing = (SELECT Count(*)
                           FROM   (SELECT
                                  --(
                                  --    SELECT TOP 1
                                  --           Task.TblTask.UserID
                                  --    FROM Task.TblTask
                                  --        INNER JOIN Task.TblWorkflowActivityInstance
                                  --            ON Task.TblTask.WorkflowActivityInstaceID = Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
                                  --    WHERE WokflowInstanceID = WFID
                                  --          AND UserID = @ExpertUserID
                                  --          AND TaskStatusID IN ( 1, 6 )
                                  --          AND ActivityID IN ( 5215090122552527259, 5325114414053339885 )
                                  --) ExpertUserID,
                                  Q.sajadexpertuserid,
                                  statusid
                                   FROM   dbo.tbl_cu_questionanswer Q
                                          INNER JOIN task.tblworkflowinstance B
                                                  ON
                                          Q.wfid = B.workflowinstanceid
                                   WHERE   Q.statusid IN ( 1500, 1501, 1502, 1503, 1511, 1571) 
                                          AND ( @MainSubject = -1
                                                 OR Q.mainsubjectid =
                                                    @MainSubject
                                              )
                                          AND Q.regdate >= @FromDate
                                          AND Q.regdate <= @ToDate
                                          AND ( Q.wfid = @WFNumber
                                                 OR @WFNumber <= 0 )
                                          AND ( Q.followupcode = @FollowUpCode
                                                 OR @FollowUpCode LIKE '' )
                                          -- AND (Q.IsAutomat = 1)
                                          AND Isnull(wfid, 0) <> 0
                                          AND statusid <> 1021
                                          AND ( @Status = -1
                                                 OR B.workflowinstancestatusid =
                                                    @Status )) t
                           WHERE  ( @ExpertUserID = -1
                                     OR t.sajadexpertuserid = @ExpertUserID )
                                  AND ( @WFStep = -1
                                         OR t.statusid = @WFStep ));
      SET @CountWFDone = (SELECT Count(*)
                          FROM   (SELECT
                                 --(
                                 --    SELECT TOP 1
                                 --           Task.TblTask.UserID
                                 --    FROM Task.TblTask
                                 --        INNER JOIN Task.TblWorkflowActivityInstance
                                 --            ON Task.TblTask.WorkflowActivityInstaceID =Task.TblWorkflowActivityInstance.WorkflowActivityInstanceID
                                 --    WHERE WokflowInstanceID = WFID
                                 --          AND UserID = @ExpertUserID
                                 --          AND TaskStatusID = 2
                                 --          AND ActivityID IN ( 5215090122552527259, 5325114414053339885 )
                                 --) ExpertUserID,
                                 Q.sajadexpertuserid,
                                 statusid
                                  FROM   dbo.tbl_cu_questionanswer Q
                                         INNER JOIN task.tblworkflowinstance B
                                                 ON
                                         Q.wfid = B.workflowinstanceid
                                  WHERE  ( Q.statusid IN ( 1507, 1560, 1561 ) )
                                         AND ( @MainSubject = -1
                                                OR Q.mainsubjectid =
                                                   @MainSubject
                                             )
                                         AND Q.regdate >= @FromDate
                                         AND Q.regdate <= @ToDate
                                         AND ( Q.wfid = @WFNumber
                                                OR @WFNumber <= 0 )
                                         AND ( Q.followupcode = @FollowUpCode
                                                OR @FollowUpCode LIKE '' )
                                         --   AND (Q.IsAutomat = 1)
                                         AND Isnull(wfid, 0) <> 0
                                         AND statusid <> 1021
                                         AND ( @Status = -1
                                                OR B.workflowinstancestatusid =
                                                   @Status )) t
                          WHERE  ( @ExpertUserID = -1
                                    OR t.sajadexpertuserid = @ExpertUserID )
                                 AND ( @WFStep = -1
                                        OR t.statusid = @WFStep ));
  END; 
if @Status = -1      
	begin
		with cte as(
			select distinct
				ROW_NUMBER() over(order by id desc) RowNumber,
				Id,
				WFID,
				case
					when @MainSubject != 0 then (select top 1 Name from Workflow.TblWorkflow where WorkflowId = MainSubjectID) 
					else 'فراموشی رمز عبور'
				end as MainSubject,
				ProblemType,
				RegisteredDate,
				RegisteredTime,
				case
					when IsAutomat = 1 then (select top 1 a.Name + ' '+ a.LastName from Tbl_Cu_ApplierProfile a where a.UserPortalID = q.PortalUserID) 
					else  (select top 1 u.UserName from users.TblUsers u where u.UserId = q.RegisteredUserId)
				end as PersonName,
				q.NationalCode,
				(select top 1 attachment from Tbl_CU_QuestionAnswer_Attachment a where a.WFID = q.WFID) attachment,
				(select top 1
					case
						when charindex('#', FileAttach) > 0 then SUBSTRING(FileAttach, 1, CHARINDEX('#', FileAttach) - 1)
						else FileAttach
					end 
				from Tbl_CU_Attachments a 
				where a.Guid = q.GUID) FileID,
				Mobile,
				q.Email,
				FinalDesc,
				(select top 1 LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = q.StatusID) LogStatusTitle
				,(select top 1 WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s
					where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
		
			from
				Tbl_CU_QuestionAnswer q
				join task.TblWorkflowInstance i on q.WFID = i.WorkflowInstanceID
				--join Tbl_Cu_ApplierProfile a on a.UserPortalID = q.PortalUserID
				--join users.TblUsers u on u.UserId = q.RegisteredUserId
			where
				(@MainSubject = -1 or MainSubjectID = @MainSubject)
				and (@WFNumber = 0 or wfid = @WFNumber)
				and (@FollowUpCode = 0 or FollowUpCode = @FollowUpCode)
				and (@FromDate = '' or RegisteredDate >= @FromDate)
				and (@ToDate = '' or RegisteredDate <= @ToDate)
				and (@WFStep = -1  or StatusID = @WFStep)
				and (WorkflowInstanceStatusID = 2 or WorkflowInstanceStatusID = 1)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				and StatusID in( 998, 1507, 1560, 1561, 1021, 1918 )   --    بررسی کاربر مشاهده کننده
				--and IsAutomat is null
		)
		select
			*, @CountWFDoing as CountWFDoing, @CountWFDone as CountWFDone
		from
			cte
		where
			(@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
		order by
			Id desc
	end

else if @Status = 1      
	begin
		with cte as(
			select  distinct
				ROW_NUMBER() over(order by id desc) RowNumber,
				Id,
				WFID,
				case
					when @MainSubject != 0 then (select top 1 Name from Workflow.TblWorkflow where WorkflowId = MainSubjectID) 
					else 'فراموشی رمز عبور'
				end as MainSubject,
				ProblemType,
				RegisteredDate,
				RegisteredTime,
				case
					when IsAutomat = 1 then (select top 1 a.Name + ' '+ a.LastName from Tbl_Cu_ApplierProfile a where a.UserPortalID = q.PortalUserID) 
					else  (select top 1 u.UserName from users.TblUsers u where u.UserId = q.RegisteredUserId)
				end as PersonName,
				q.NationalCode,
				(select top 1 attachment from Tbl_CU_QuestionAnswer_Attachment a where a.WFID = q.WFID) attachment,
				(select top 1
					case
						when charindex('#', FileAttach) > 0 then SUBSTRING(FileAttach, 1, CHARINDEX('#', FileAttach) - 1)
						else FileAttach
					end 
				from Tbl_CU_Attachments a 
				where a.Guid = q.GUID) FileID,
				Mobile,
				q.Email,
				FinalDesc,
				(select top 1 LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = q.StatusID) LogStatusTitle
				,(select top 1 WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s
					where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
		
			from
				Tbl_CU_QuestionAnswer q
				join task.TblWorkflowInstance i on q.WFID = i.WorkflowInstanceID
				--join Tbl_Cu_ApplierProfile a on a.UserPortalID = q.PortalUserID
				--join users.TblUsers u on u.UserId = q.RegisteredUserId
			where
				(@MainSubject = -1 or MainSubjectID = @MainSubject)
				and (@WFNumber <= 0 or wfid = @WFNumber)
				and (@FollowUpCode = 0 or FollowUpCode = @FollowUpCode)
				and (@FromDate = '' or RegisteredDate >= @FromDate)
				and (@ToDate = '' or RegisteredDate <= @ToDate)
				and (@WFStep = -1  or StatusID = @WFStep)
				and (WorkflowInstanceStatusID = 1)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				and StatusID = 1918   --    بررسی کاربر مشاهده کننده
				--and IsAutomat is null
		)
		select
			*, @CountWFDoing as CountWFDoing, @CountWFDone as CountWFDone
		from
			cte
		where
			(@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
		order by
			Id desc
	end

else if @Status = 2      
	begin
		with cte as(
			select  distinct
				ROW_NUMBER() over(order by id desc) RowNumber,
				Id,
				WFID,
				case
					when @MainSubject != 0 then (select top 1 Name from Workflow.TblWorkflow where WorkflowId = MainSubjectID) 
					else 'فراموشی رمز عبور'
				end as MainSubject,
				ProblemType,
				RegisteredDate,
				RegisteredTime,
				case
					when IsAutomat = 1 then (select top 1 a.Name + ' '+ a.LastName from Tbl_Cu_ApplierProfile a where a.UserPortalID = q.PortalUserID) 
					else  (select top 1 u.UserName from users.TblUsers u where u.UserId = q.RegisteredUserId)
				end as PersonName,
				q.NationalCode,
				(select top 1 attachment from Tbl_CU_QuestionAnswer_Attachment a where a.WFID = q.WFID) attachment,
				(select top 1
					case
						when charindex('#', FileAttach) > 0 then SUBSTRING(FileAttach, 1, CHARINDEX('#', FileAttach) - 1)
						else FileAttach
					end 
				from Tbl_CU_Attachments a 
				where a.Guid = q.GUID) FileID,
				Mobile,
				q.Email,
				FinalDesc,
				(select top 1 LogStatusTitle from Tbl_CU_LogStatus where LogStatusID = q.StatusID) LogStatusTitle
				,(select top 1 WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s
					where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
		
			from
				Tbl_CU_QuestionAnswer q
				join task.TblWorkflowInstance i on q.WFID = i.WorkflowInstanceID
				--join Tbl_Cu_ApplierProfile a on a.UserPortalID = q.PortalUserID
				--join users.TblUsers u on u.UserId = q.RegisteredUserId
			where
				(@MainSubject = -1 or MainSubjectID = @MainSubject)
				and (@WFNumber <= 0 or wfid = @WFNumber)
				and (@FollowUpCode = 0 or FollowUpCode = @FollowUpCode)
				and (@FromDate = '' or RegisteredDate >= @FromDate)
				and (@ToDate = '' or RegisteredDate <= @ToDate)
				and (@WFStep = -1  or StatusID = @WFStep)
				and (WorkflowInstanceStatusID = 2)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				and StatusID in( 998, 1507, 1560, 1561, 1021 )  --   خاتمه فرآیندها
				--and IsAutomat is null
		)
		select
			*, @CountWFDoing as CountWFDoing, @CountWFDone as CountWFDone
		from
			cte
		where
			(@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
		order by
			Id desc
	end

END;



--select * from Tbl_CU_QuestionAnswer

--select * from Tbl_CU_Attachments

--select * from Tbl_CU_QuestionAnswer_Attachment
