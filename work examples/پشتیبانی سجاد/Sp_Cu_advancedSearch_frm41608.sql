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

if @ExpertUserID != -1
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
		q.SajadExpertUserID,
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
		and (@Status = -1 or WorkflowInstanceStatusID = @Status)   
		--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
		and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
		and isnull(WFID, 0) != 0
		and StatusID != 1021
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
else if @UserID = 1 --کاربر پورتال
begin
	if @Status = -1
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
				q.SajadExpertUserID,
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
				--and (@Status = -1)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				and StatusID != 1021
				and IsAutomat = 1
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

	else if @Status = 1  --در حال بررسی
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
			q.SajadExpertUserID,
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
			and (WorkflowInstanceStatusID = 1)   
			--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
			and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
			and isnull(WFID, 0) != 0
			and StatusID not in( 998, 1507, 1560, 1561, 1021)  --غیر از خاتمه فرآیندها
			and IsAutomat = 1
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
	else if @Status = 2  --خاتمه فرآیند
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
				q.SajadExpertUserID,
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
				and (WorkflowInstanceStatusID = 2)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				and StatusID in( 998, 1507, 1560, 1561, 1021)  -- خاتمه فرآیندها
				and IsAutomat = 1
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
	else if @Status = 3  --خاتمه/ابطال فرآیند
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
				q.SajadExpertUserID,
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
				and (WorkflowInstanceStatusID = 3)   
				--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
				and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
				and isnull(WFID, 0) != 0
				--and StatusID in( 998, 1507, 1560, 1561, 1021)  -- خاتمه فرآیندها
				and IsAutomat = 1
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
end
else if @UserID = 2  --کاربر سامانه
	begin
		if @Status = -1  --خاتمه/ابطال فرآیند
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
						when IsAutomat = 1 then a.Name + ' ' + a.LastName
						else  u.UserName
					end as PersonName,
					q.SajadExpertUserID,
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
					and (@Status = -1)   
					--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
					and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
					and isnull(WFID, 0) != 0
					and StatusID != 1021  -- غیر از ابطال
					and IsAutomat is null
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
		else if @Status = 1  --بررسی فرآیند
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
					q.SajadExpertUserID,
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
					and (WorkflowInstanceStatusID = 1)   
					--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
					and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
					and isnull(WFID, 0) != 0
					and StatusID not in( 998, 1507, 1560, 1561, 1021 )  -- غیر از خاتمه فرآیندها
					and IsAutomat is null
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
		else if @Status = 2  --خاتمه فرآیند
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
					q.SajadExpertUserID,
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
					and (WorkflowInstanceStatusID = 2)   
					--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
					and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
					and isnull(WFID, 0) != 0
					and StatusID in( 998, 1507, 1560, 1561, 1021 )  --  خاتمه فرآیندها
					and IsAutomat is null
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
		else if @Status = 3  --خاتمه/ابطال فرآیند
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
					q.SajadExpertUserID,
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
					and (WorkflowInstanceStatusID = 3)   
					--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
					and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
					and isnull(WFID, 0) != 0
					--and StatusID in( 998, 1507, 1560, 1561, 1021 )  --  خاتمه فرآیندها
					and IsAutomat is null
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
	end
if @UserID = -1 and @ExpertUserID = -1  --هر دو خالی
	begin
		if @Status = -1
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
						q.SajadExpertUserID,
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
						and (@Status = -1)   
						--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
						and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
						and isnull(WFID, 0) != 0
						and StatusID != 1021   --  ابطال شده نباشد
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
			else if @Status = 1
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
						q.SajadExpertUserID,
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
						and (WorkflowInstanceStatusID = 1)   
						--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
						and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
						and isnull(WFID, 0) != 0
						and StatusID not in(998, 1507, 1560, 1561, 1021)   --   خاتمه یافته نباشد
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
			else if @Status = 2
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
						q.SajadExpertUserID,
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
						and (WorkflowInstanceStatusID = 2)   
						--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
						and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
						and isnull(WFID, 0) != 0
						and StatusID in(998, 1507, 1560, 1561, 1021)   --   خاتمه یافته باشد
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
			else if @Status = 3
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
						q.SajadExpertUserID,
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
						and (WorkflowInstanceStatusID = 3)   
						--and (@PersonName = '' or PersonName like quotename('%' + @PersonName + '%', '''') )
						and (@ExpertUserID = -1 or SajadExpertUserID = @ExpertUserID)
						and isnull(WFID, 0) != 0
						--and StatusID in(998, 1507, 1560, 1561, 1021)   --   خاتمه یافته باشد
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
	end

END;



--select * from Tbl_CU_QuestionAnswer

--select * from Tbl_CU_Attachments

--select * from Tbl_CU_QuestionAnswer_Attachment
