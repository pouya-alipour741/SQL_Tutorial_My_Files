--SELECT 
--     top 1000 *
--FROM
--	[SAODB].[dbo].[Tbl_frm3]

--select top 1000 * from task.TblFormInstance


--select
--	top 1000 TaskID,PKFormID,WorkflowInstanceId,*
--from
--	Tbl_frm3 fr
--	join task.TblFormInstance fi on fi.FormID=fr.frm3Id


-----------
drop table if exists #temp
go
select
	TaskID,PKFormID,fi.WorkflowInstanceId,TaskStatusName,CreateDate,
	Col_5338836346070025786 as نام,
	Col_4831715151043286283 as [نام خانوادگی],
	Col_5478291579279155821 as [کد ملی],
	Col_5068032127295122493 as [مدرک تحصیلی],
	Col_5024530047953533796 as [مقطع تحصیلی],
	Col_4918489555772954608 as [مدرک تحصیلی به انگلیسی],
	Col_4626312268388471633 as [وضعیت نظام وظیفه],
	Col_5451640542520605619 as [اسم دانشگاه],
	Col_4874174205707707899 as جنسیت
into 
	#temp
from
	Tbl_frm3 fr
	join task.TblFormInstance fi on fi.FormID=fr.frm3Id
	join task.TblWorkflowInstance i on i.WorkflowInstanceID=fi.WorkflowInstanceId
	join task.TblTaskStatus s on s.TaskStatusID = i.WorkflowInstanceStatusID
go
select * from #temp
------------------



