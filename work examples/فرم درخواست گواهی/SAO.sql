--select * from policy.TblProperty
--select * 
--from Tbl_CU_ForeignCertificateStudent_LOG

select * from Tbl_CU_LogStatus


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
										@name varchar(20), @last nvarchar(20), @WfID int, @national_code nvarchar(10)
as
begin
	with cte as(
		select
			wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) RegDate , RegTime ,
			NationalCode , a.Name, a.LastName, s.LogStatusTitle 
		from
			Tbl_CU_ForeignCertificateStudent_LOG l
			join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
			join Tbl_CU_LogStatus s on s.LogStatusID = StatusID
			)
		select * from cte
			where
				(RegDate >= @FromDate or @FromDate = '')
				and (RegDate <= @ToDate or @ToDate = '')
				and (FollowUpCode = @tracking_Code or @tracking_Code = '')
				and (Name = @name or @name='')
				and (LastName = @last or @last='')
				and (NationalCode = @national_code or @national_code= '')
				and (WFID  = @WfID or @WfID = '')	
end
go
exec sp_sao_certificate_request @FromDate=N'1399/11/01',
								@ToDate=N'',
								@tracking_Code=N'',
								@name=N'',
								@last=N'غبرانژاد',
								@WfID='',
								@national_code=N'0012360422'


--select [dbo].[MiladiToShamsi](N'2021')

--select [dbo].[MiladiToShamsi](getdate()) date_shamsi

-------------------------
--select
--		wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) date_shamsi , RegTime ,
--		NationalCode , a.Name, a.LastName, StatusID 
--	from
--		Tbl_CU_ForeignCertificateStudent_LOG l
--		join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
--	where
--		Name = N'سحر'

------------------------------
--select * from Tbl_CU_ForeignCertificateStudent_LOG

--select top 1000 * from Tbl_Cu_ApplierProfile

-----------------------
--select * from INFORMATION_SCHEMA.COLUMNS
--where column_name = 'FollowUpCode'  --nvarchar 50
--and TABLE_NAME = 'Tbl_CU_ForeignCertificateStudent_LOG'


--select * from INFORMATION_SCHEMA.COLUMNS
--where TABLE_NAME = 'Tbl_Cu_ApplierProfile'
--and column_name = 'NationalCode'   --nvarchar 50



--select
--		wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) RegDate , RegTime ,
--		NationalCode , a.Name, a.LastName, StatusID 
--	from
--		Tbl_CU_ForeignCertificateStudent_LOG l
--		join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
--	where
--		((select [dbo].[MiladiToShamsi](RegDate)) >= '1398')
--		and ((select [dbo].[MiladiToShamsi](RegDate)) <= '1405')


create proc sp_sao_certificate_request_test @FromDate nvarchar(10), @ToDate nvarchar(10), @tracking_Code nvarchar(10),
										@name varchar(20), @last nvarchar(20), @WfID int, @national_code nvarchar(10)
as
begin
	declare @flag int
	if @FromDate < GETDATE()
	begin
		set @flag = 1
	end
	with cte as(
		select
			wfid , FollowUpCode , (select [dbo].[MiladiToShamsi](RegDate)) RegDate , RegTime ,
			NationalCode , a.Name, a.LastName, s.LogStatusTitle 
		from
			Tbl_CU_ForeignCertificateStudent_LOG l
			join Tbl_Cu_ApplierProfile a on a.UserPortalID = l.PortalUserID
			join Tbl_CU_LogStatus s on s.LogStatusID = StatusID
			)
		select * from cte
			where
				(RegDate >= @FromDate or @FromDate = '')
				and (RegDate <= @ToDate or @ToDate = '')
				and (FollowUpCode = @tracking_Code or @tracking_Code = '')
				and (Name = @name or @name='')
				and (LastName = @last or @last='')
				and (NationalCode = @national_code or @national_code= '')
				and (WFID  = @WfID or @WfID = '')	
end

go

exec sp_sao_certificate_request_test @FromDate=N'1399/11/01',
								@ToDate=N'',
								@tracking_Code=N'',
								@name=N'',
								@last=N'غبرانژاد',
								@WfID='',
								@national_code=N'0012360422'

	
