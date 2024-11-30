select * from policy.tblproperty

select * 
from Tbl_CU_ForeignCertificateStudent_LOG

select * from Users.TblUsers
	
select * from users.TblProfiles

select * from task.TblTaskStatus

/*
notes:
users.TblProfiles has no relation
null values for NationalCode , FirstName , LastName
can't connect to tbs
*/
-------------
select
	wfid "شماره فرایند", FollowUpCode as "کد پیگیری", RegDate "تاریخ ثبت", RegTime "ساعت ثبت",
	NationalCode "کد ملی",
	--p.FirstName "نام", p.LastName "نام خانوادگی",p.fullname ,	
	(select SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) )) "نام",
	(select SUBSTRING(FullName, CHARINDEX(' ', FullName) , LEN(FullName))) "نام خانوادگی",
	TaskStatusName "وضعیت"
	--,(case when FullName="کاربر سیستم" then fullname else (select SUBSTRING(FullName, 1, CHARINDEX(' ', FullName) )) end) "نام کامل"
from
	Tbl_CU_ForeignCertificateStudent_LOG l
	join task.TblWorkflowInstance i on i.WorkflowInstanceID = l.WFID
	--join users.tblusers u on u.UserId=i.StarterUserID
	join users.TblProfiles p on p.UserId=i.StarterUserID
	join task.TblWorkflowActivityInstance a on a.WokflowInstanceID=i.WorkflowInstanceID
	join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
	join task.TblTaskStatus s on s.TaskStatusID=t.TaskStatusID
where
	s.TaskStatusID = 1
	--s.TaskStatusID = 3 --no data
	--s.TaskStatusID = 2  --takes too long
	--s.TaskStatusID = 4  --no data
	--s.TaskStatusID = 5 --no data
	--s.TaskStatusID = 6 -- takes too long
	

first = select SUBSTRING(@FullName, 1, CHARINDEX(' ', @FullName) - 1)

last = select SUBSTRING(@FullName, CHARINDEX(' ', @FullName) + 1, LEN(@FullName));