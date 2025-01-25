select * from Workflow.TblWorkflow
where Name like N'%بورس%'

--آپدیت وضعیت داشبورد بورس دولت های خارجی 
--update StatusID for dashboard description
with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate, WorkflowInstanceStatusID
		,(select WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId = 80--2000045   بورس دولت هاي خارجي
		and WorkflowInstanceStatusID != 2  --درخواست پشتیبانی بی پاسخ
	),
	cte2 as(
		select
			*
		from cte
		where CreateDate < '1403/09/09'
	) 
		update Tbl_CU_CountriesScholarship_LOG 	
		set StatusID = 639  --639, 641, 645, 648, 694, 662, 663, 671, 673, 656,1021    
		from  cte2
		where cte2.WorkflowinstanceID = Tbl_CU_CountriesScholarship_LOG.WFID
		and Tbl_CU_CountriesScholarship_LOG.PortalUserID = 15883
	
	
	--,Update_Dashboard as(		  
	--				select 
	--					* 
	--				from
	--					--Tbl_CU_QuestionAnswer q
	--					Tbl_CU_CountriesScholarship_LOG AS SN
	--					join cte2 on cte2.WorkflowinstanceID = sn.wfid
		
	--					where SN.PortalUserID = 15883
	--					)
	--select * from Update_Dashboard
	

select * from Tbl_CU_CountriesScholarship_LOG
where PortalUserID = 15883


---update WorkflowInstanceStatusID for dashboard wfStatus
with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate
		,(select WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId = 80--2000045
		and WorkflowInstanceStatusID != 2  --درخواست پشتیبانی بی پاسخ
	),
	cte2 as(
		select
			*
		from cte
		where CreateDate < '1403/09/09'
	) 
		--update Task.TblWorkflowInstance 
		--set WorkflowInstanceStatusID = 3 
		--from  cte2
		--where cte2.WorkflowinstanceID = Task.TblWorkflowInstance.WorkflowInstanceID

	,Update_Dashboard as(		
			select 
				i.*
			from
				Task.TblWorkflowInstance  i
				join cte2 on cte2.WorkflowinstanceID = i.WorkflowInstanceID
				)			
	select * from Update_Dashboard 
	

--select top 1000 * from Tbl_CU_QuestionAnswer


		

