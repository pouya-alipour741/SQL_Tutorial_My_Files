--آپدیت توضیحات داشبورد درخواست پشتیبانی 
--update StatusID for dashboard description - SAO_SupportRequest
with cte as (
	select
		WorkflowInstanceID,WorkflowInstanceName, dbo.MiladiToShamsi(CreateDate) CreateDate, WorkflowInstanceStatusID
		,(select WorkflowInstanceStatusName from task.TblWorkflowInstanceStatus s where s.WorkflowInstanceStatusID = i.WorkflowInstanceStatusID) WorkflowInstanceStatusName	
	from
		task.TblWorkflowInstance i
	where
		WorkflowId In( 2000045, 157)   
		and WorkflowInstanceStatusID != 2  --درخواست پشتیبانی بی پاسخ
	),
	cte2 as(
		select
			*
		from
			cte
		where
			CreateDate < '1403/09/09'   --2024/11/29
	) 
		update Tbl_CU_QuestionAnswer 	
		set StatusID = 1921   --when a.StatusID = 1921 then 'چنانچه هنوز مشکل شما حل نشده است لطفا مجددا درخواست پشتیبانی ثبت نمایید.'
		from  cte2
		where cte2.WorkflowinstanceID = Tbl_CU_QuestionAnswer.WFID
		--and Tbl_CU_QuestionAnswer.PortalUserID = 15883   --برای یک کاربر خاص

	--,Update_Dashboard as(		   
	--				select 
	--					* 
	--				from
	--					Tbl_CU_QuestionAnswer q
	--					join cte2 on cte2.WorkflowinstanceID = q.wfid	
	--					where q.PortalUserID = 15883
	--					)
	--select * from Update_Dashboard

--select StatusID from Tbl_CU_QuestionAnswer  --همگی 1921
--where WFID in (select WorkflowInstanceID from task.TblWorkflowInstance where WorkflowID = 2000045
--and dbo.MiladiToShamsi(CreateDate) < '1403/09/09' and WorkflowInstanceStatusID != 2)
	

--update
update
	Tbl_CU_QuestionAnswer
set
	StatusID = 1920
where
	RegDate <= 1403/09/09
	and ISNULL(FinalDesc, '') = ''


with cte as(
	select
		*
	from 
		task.TblWorkflowInstance i 
		join Tbl_CU_QuestionAnswer q on q.WFID = i.WorkflowInstanceID
	where
		ISNULL(FinalDesc, '') = ''
		and RegisteredDate <= '1403/09/09'
	)
	update
		task.TblWorkflowInstance
	set
		WorkflowInstanceStatusID = 3
	from cte
	where
		cte.WFID = task.TblWorkflowInstance.WorkflowInstanceID




		

