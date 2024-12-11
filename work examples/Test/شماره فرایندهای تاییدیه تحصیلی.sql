--SELECT 
--            top 1000 *
--        FROM dbo.Tbl_Cu_PortalReceiveLog X

--WHERE X.WorkFlowInstanceID = 133


--  SELECT top 1 1
--        FROM Tbl_CU_PortalRequestStatus
--        WHERE WorkFlowInstanceID = @WFID
    

--select top 1000 * from workflow.TblWorkflow 
--where name like N'%تحصیلی%'

--2000569

--شماره فرایندها
select top 1000 * 
from
	task.TblWorkflowInstance
where
	WorkflowId = 2000569
order by
	WorkflowInstanceID


--مشخصات فرایند
select top 100
	i.WorkflowInstanceID, 
	t.TaskName,
	(select dbo.fn_CU_MiladiToShamsi(t.CreateDate) + ' ' + cast(cast(t.CreateDate as time) as nvarchar(5))) CreateDate
	,( select dbo.MiladiToShamsi(t.EndDate) + ' ' + cast(cast(t.EndDate as time) as nvarchar(5)) ) EndDate
	--,t.createdate
	,(select p.FullName from users.TblProfiles p where p.UserId = t.UserID) FullName
	,(select TaskStatusName from task.TblTaskStatus s where t.TaskStatusID = s.TaskStatusID) TaskName
from
	task.TblWorkflowInstance i
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID = i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID = a.WorkflowActivityInstanceID
where
	WorkflowInstanceID = 4031541
	--and t.UserID != 2
--order by
--	WorkflowInstanceID


--select dbo.MiladiToShamsi('2024/06/15') + ' 12:14'

--select concat(dbo.MiladiToShamsi('2024/06/15'), ' 12:14') date

--declare @str nvarchar(19)=
--(select  dbo.MiladiToShamsi('2024/06/15') + ' ' +
--cast(cast('2024-08-17 12:11:10.077' as time) as nvarchar(10))
--)
--select @str
--select substring(@str, 1, 19) 




--select substring('123456789', 1, 4)

--exec Sp_Cu_Read_Grade_Frm31557  1, 2, 1

--exec Sp_Cu_Read_Grade_Frm31557 @cmbEducationPlace=N'-1',@ReqGradeID=N'1',@GUID=N'1'  --no data is returning


alter proc SP_CU_Select_UniversityName_FRM41607  
@EducationPlace bigint,
@LastInstitude bigint,
@LastCountry bigint
as
	begin
		if @EducationPlace = 1
		begin
			select UniversityID,UniversityName
			from Tbl_CU_University
			where InstituteID = @LastInstitude
		end
		else if @EducationPlace = 2
			begin
				select ForeignInstituteID as UniversityID
				, ForeignInstituteName as UniversityName
				from Tbl_Cu_ForeignInstitute
				where CountrySchoolingPlaceID = @LastCountry
			end
		else
			select '' as UniversityID,
			'' as UniversityName
	end


exec SP_CU_Select_UniversityName_FRM41607 2,5,4

select top 1000 * from Tbl_CU_University

select top 1000 * from Tbl_Cu_ForeignInstitute


--exec SP_CU_Read_Tbl_Cu_CountrySchoolingPlace_ElectedStudent

exec Sp_Cu_Insert_Tbl_CU_StudentGetCertificateCodeAttachment_LOG_New 1


