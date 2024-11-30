select * from policy.tblproperty

select * 
from Tbl_CU_ForeignCertificateStudent_LOG

--select 
--	*,
--	(case when FullName = N'مدیرسیستم' then 'null value' when FullName is not null then FullName end)
--from
--	users.TblProfiles

/*
notes:
users.TblProfiles has no relation
null values for NationalCode , FirstName , LastName
can't connect to tbs
*/
-------------
--select
--	wfid "شماره فرایند", FollowUpCode as "کد پیگیری", RegDate "تاریخ ثبت", RegTime "ساعت ثبت",
--	NationalCode "کد ملی",
--	--p.FirstName "نام", p.LastName "نام خانوادگی",p.fullname ,	
--	(select SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) )) "نام",
--	(select SUBSTRING(FullName, CHARINDEX(' ', FullName) , LEN(FullName))) "نام خانوادگی",
--	TaskStatusName "وضعیت"
--from
--	Tbl_CU_ForeignCertificateStudent_LOG l
--	join task.TblWorkflowInstance i on i.WorkflowInstanceID = l.WFID
--	--join users.tblusers u on u.UserId=i.StarterUserID
--	join users.TblProfiles p on p.UserId=i.StarterUserID
--	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID=i.WorkflowInstanceID
--	join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
--	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
--where
--	s.TaskStatusID = 1
-----------------------------------------
alter proc sp_sao_certificate_request @FromDate nvarchar(10), @ToDate nvarchar(10), @tracking_Code nvarchar(10),
										@name nvarchar(20), @last nvarchar(20), @WfID int, @national_code nvarchar(10)
as
begin
	select
		wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) date_shamsi , RegTime ,
		NationalCode , a.Name, a.LastName, StatusID 
	from
		Tbl_CU_ForeignCertificateStudent_LOG l
		join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
	where
		(select [dbo].[MiladiToShamsi](RegDate)) >= @FromDate or @FromDate = ''
		and ((select [dbo].[MiladiToShamsi](RegDate)) <= @ToDate or @ToDate = '')
		and (FollowUpCode = @tracking_Code or @tracking_Code = '')
		and (a.Name = @name or @name = '')
		and (a.LastName = @last or @last='')
		and (NationalCode = @national_code or @national_code= '')
		and (WFID  = @WfID or @WfID =-1)
		
end

select [dbo].[MiladiToShamsi](getdate()) date_shamsi
exec sp_sao_certificate_request @FromDate=N'',@ToDate=N'',@tracking_Code=N'',@name=N'سحر',@last=N'',@WfID=N'0',@national_code=N''



select
		wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) date_shamsi , RegTime ,
		NationalCode , a.Name, a.LastName, StatusID 
	from
		Tbl_CU_ForeignCertificateStudent_LOG l
		join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
	where
		Name = N'سحر'


select * from Tbl_CU_ForeignCertificateStudent_LOG

select top 1000 * from Tbl_Cu_ApplierProfile

--
create proc sp_sao_certificate_request_wfid 
as
begin
	select
		wfid 
	from
		Tbl_CU_ForeignCertificateStudent_LOG l
		join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
		
end

exec sp_sao_certificate_request_wfid



select * from Tbl_Cu_ApplierProfile


select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Tbl_Cu_ApplierProfile'
and COL_NAME = nationa

