--آپدیت وضعیت داشبورد درخواست پشتیبانی 
---update WorkflowInstanceStatusID for dashboard wfStatus - SAO_SupportRequest
with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate
		,(select WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId in( 2000045, 157)
		and WorkflowInstanceStatusID != 2  --درخواست پشتیبانی بی پاسخ
	),
	cte2 as(
		select
			*
		from
			cte
		where
			CreateDate < '1403/09/09'
	) 
		update Task.TblWorkflowInstance 
		set WorkflowInstanceStatusID = 3 
		from  cte2
		where cte2.WorkflowinstanceID = Task.TblWorkflowInstance.WorkflowInstanceID

--	,Update_Dashboard as(		  
--			select 
--				i.*
--			from
--				Task.TblWorkflowInstance  i
--				join cte2 on cte2.WorkflowinstanceID = i.WorkflowInstanceID
--				)			
--	select * from Update_Dashboard 
	

--select top 1000 * from Tbl_CU_QuestionAnswer