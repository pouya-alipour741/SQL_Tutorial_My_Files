--آپدیت توضیحات داشبورد درخواست پشتیبانی 
--update StatusID for dashboard description - SAO_SupportRequest
with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate, WorkflowInstanceStatusID
		,(select WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId = 2000045   
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
		update Tbl_CU_QuestionAnswer 	
		set StatusID = 1279   --WHEN a.StatusID IN ( 1279, 1021 ,1882) THEN  'خاتمه یافته'
		from  cte2
		where cte2.WorkflowinstanceID = Tbl_CU_QuestionAnswer.WFID
		and Tbl_CU_QuestionAnswer.PortalUserID = 15883   --برای یک کاربر خاص

	--,Update_Dashboard as(		   
	--				select 
	--					* 
	--				from
	--					Tbl_CU_QuestionAnswer q
	--					join cte2 on cte2.WorkflowinstanceID = q.wfid	
	--					where q.PortalUserID = 15883
	--					)
	--select * from Update_Dashboard
	




		

