create PROCEDURE [dbo].[Sp_Cu_advancedSearch_frm41608]
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
if (@Status = 2  or @Status = 1)    
begin
	with cte as(
		select 
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
				when IsAutomat = 1 then a.Name + ' '+ a.LastName
				else  u.UserName
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
			join Tbl_Cu_ApplierProfile a on a.UserPortalID = q.PortalUserID
			join users.TblUsers u on u.UserId = q.RegisteredUserId
		where
			(@MainSubject = -1 or MainSubjectID = @MainSubject)
			and (@WFNumber <= 0 or wfid = @WFNumber)
			and (@FollowUpCode = -1 or FollowUpCode = @FollowUpCode)
			and (@FromDate = '' or RegisteredDate >= @FromDate)
			and (@ToDate = '' or RegisteredDate <= @ToDate)
			and (@WFStep = -1  or StatusID = @WFStep)
			and (WorkflowInstanceStatusID = 2 or WorkflowInstanceStatusID = 1)   
			--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
			and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
			and isnull(WFID, 0) != 0
			and StatusID in( 998, 1507, 1560, 1561, 1021, 1918 )  --   خاتمه فرآیندهاو بررسی کاربر مشاهده کننده
			--and IsAutomat is null
	)
	select
		*
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
