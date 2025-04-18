USE [SAODB]
GO
---------------------------------------
ALTER proc [dbo].[sp_cu_getStatusFromDashboard_frm31548]
@PortalUserID bigint,
@FollowUpCode nvarchar(10)
as
begin
	select (
		SELECT CASE
					WHEN T.WorkflowInstanceStatusID = 1 THEN
						':وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي'
					ELSE
						':وضعیت درخواست شما به شرح زیر میباشد
						خاتمه يافته است'
				END
		FROM Task.TblWorkflowInstance AS T
		WHERE WorkflowInstanceID = SN.WFID
	) AS WFStatus
	FROM Tbl_CU_CountriesScholarship_LOG AS SN
	WHERE CountriesScholarshipID IN (
										select MAX(CountriesScholarshipID) 
										FROM Tbl_CU_CountriesScholarship_LOG
										WHERE PortalUserID = @PortalUserID
										GROUP BY WFID
									)
			and PortalUserID = @PortalUserID
			and wfid = (select WorkflowID
						from Tbl_CU_FollowUpCode f
						join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
						where FollowUpCode = @FollowUpCode)
	union all
	select (
		SELECT CASE
					WHEN T.WorkflowInstanceStatusID = 1 THEN
						'<p class="schecking">:وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي</p>'
					WHEN a.StatusID = 1560 THEN
						'<p class="schecking">:وضعیت درخواست شما به شرح زیر میباشد
						در حال بررسي</p>'
					ELSE
						'<p class="sclosed">:وضعیت درخواست شما به شرح زیر میباشد
						خاتمه يافته است</p>'
				END
		FROM Task.TblWorkflowInstance AS T
		WHERE WorkflowInstanceID = a.WFID
	) AS WFStatus
	FROM [dbo].[Tbl_CU_QuestionAnswer] a
	WHERE
		PortalUserID = @PortalUserID
		AND a.StatusID <> 1021
		and wfid = (select WorkflowID
					from Tbl_CU_FollowUpCode f
					join task.TblWorkflowInstance i on i.WorkflowInstanceID= f.WFID
					where FollowUpCode = @FollowUpCode)
end
---------------------------------------




/****** Object:  StoredProcedure [dbo].[sp_cu_getStatusFromDashboard_frm31548]    Script Date: 24/10/1403 10:57:35 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 ALTER proc [dbo].[sp_cu_getStatusFromDashboard_frm31548]
 @PortalUserID bigint,
 @wfid bigint
 as
 begin
	 with cte as(
	 SELECT '' as GUIDID,SN.CountriesScholarshipID,
					   'بورس دولت های خارجی' AS WorkFlowName,
					   WFID,
					   FollowUpCode AS FollowCode,
					   (
						   SELECT CASE
									  WHEN T.WorkflowInstanceStatusID = 1 THEN
										  'در حال بررسي'
									  ELSE
										  'خاتمه يافته است'
								  END
						   FROM Task.TblWorkflowInstance AS T
						   WHERE WorkflowInstanceID = SN.WFID
					   ) AS WFStatus,
					   (CASE
							WHEN StatusID = 639 THEN
								'درخواست شما مورد تایید نمی باشد' + '  ' + SN.rdbExplainUniRay + ' '
							WHEN StatusID = 638 THEN
								'درخواست شما نیاز به بازبینی دارد' + '  ' + SN.rdbExplainUniRay + ' '
							WHEN StatusID IN ( 643, 652, 644, 655 ) THEN
								'متقاضي گرامي زمان مصاحبه شما در تاريخ' + ' ' + SN.psdInterviewDate + ' ' + 'و ساعت' + ' '
								+ SN.psdInterviewHour + ' ' + ' مي باشد'
							WHEN StatusID = 648 THEN
								'درخواست شما مورد تایید نمی باشد' + '  ' + SN.txtEzamExplain + ' '
								WHEN StatusID = 1736 THEN
								'درخواست شما مورد تایید می باشد و خاتمه فرآیند' + '  ' + SN.txtEzamExplain + ' '
							WHEN StatusID = 649 THEN
								'درخواست شما نیاز به بازبینی دارد' + '  ' + SN.txtEzamExplain + ' '
							WHEN StatusID IN ( 660 ) THEN
								'درخواست شما مورد تایید نمی باشد' + '  ' + SN.rdbShoraExplain + ' '
							WHEN StatusID IN ( 672, 671 ) THEN
								'درخواست شما مورد تایید نمی باشد' + '  ' + SN.rdbMinisityExplain + ' '
							WHEN StatusID IN ( 694 ) THEN
								'درخواست شما مورد تایید نمی باشد' + '  ' + SN.rdbShoraExplain + ' '
							WHEN StatusID = 663 THEN
								'درخواست تجدید نظر شما مورد تایید نمی باشد' + '  ' + SN.txtReviewExplain + ' '
							WHEN StatusID IN ( 645, 656 ) THEN
								'فرآیند به دلیل غیبت غیر موجه شما در مصاحبه خاتمه یافته است'
							WHEN StatusID IN ( 673, 1042 ) THEN
								'متقاضی گرامی درخواست شما با موفقیت انجام شد'
							WHEN StatusID IN ( 639, 641, 645, 648, 694, 662, 663, 671, 673, 656,1021 ) THEN
								'فرآيند خاتمه يافته است '
							ELSE
								'در حال بررسي'
						END
					   ) AS Desciption,
					   (
						   SELECT CASE
									  WHEN T.WorkflowInstanceStatusID = 1
										   AND StatusID IN ( 638, 649, 660, 672 ) THEN
										  'Editable'
									  ELSE
										  'Readonly'
								  END
						   FROM Task.TblWorkflowInstance AS T
						   WHERE WorkflowInstanceID = SN.WFID
					   ) AS WFMode,
					   125 AS PortalFormID,
					   3826612 AS PageID,
					   CAST([PortalEntryID] AS NVARCHAR(50)) AS EntryID,
					   '' AS ShowFRM,
					   StatusID,
					   ISNULL(IsNewPortal , 0) AS IsNewPortal,
						ISNULL(ActivityId , -1) AS ActivityId
				   
				FROM Tbl_CU_CountriesScholarship_LOG AS SN
				WHERE CountriesScholarshipID IN (
													select MAX(CountriesScholarshipID) 
													FROM Tbl_CU_CountriesScholarship_LOG
													WHERE PortalUserID = @PortalUserID
													GROUP BY WFID
												) and PortalUserID = @PortalUserID


				 UNION ALL
				SELECT 
				'' AS GUIDID,
					   Id, ---------------------فرآیند ثبت پرسش و پاسخ
					   'فرآیند درخواست پشتیبانی سامانه سجاد' AS WorkFlowName,
					   a.WFID,
					   FollowUpCode AS FollowCode,
					   (
						   SELECT CASE
									  WHEN T.WorkflowInstanceStatusID = 1 THEN
										  '<p class="schecking">در حال بررسي</p>'
									  WHEN a.StatusID = 1560 THEN
										  '<p class="schecking">در حال بررسي</p>'
									  ELSE
										  '<p class="sclosed">خاتمه يافته است</p>'
								  END
						   FROM Task.TblWorkflowInstance AS T
						   WHERE WorkflowInstanceID = a.WFID
					   ) AS WFStatus,
					   (CASE
							WHEN a.StatusID IN ( 998, 1507, 1504, 1561 ) THEN
								'<h6 style="color:red;text-align: center;">پرسش</h6>' +
								(
									SELECT [dbo].[udf_StripHTML](a.Descript)
								)
								--a.Descript
								+ '<hr >' + '<h6 style="color:red;text-align: center;">پاسخ سازمان</h6>'
								+ 'متقاضی گرامی درخواست شما بررسی گردید نتیجه درخواست برابر است با:' + '  ' + FinalDesc
								+ ' '
								 WHEN a.StatusID IN ( 1279, 1021 ,1882) THEN
								'خاتمه یافته'
							WHEN a.StatusID IN ( 1503, 1502 ) THEN
								'درخواست پشتیبانی شما در تاریخ ' + ' ' +
								(
									SELECT TOP 1
										   ISNULL(q.RegisteredDate, '')
									FROM Tbl_CU_QuestionRefer q
									WHERE q.WFID = a.WFID
									ORDER BY Id DESC
								) + ' ' + 'به' + ' ' +
								(
									SELECT TOP 1
										   ISNULL(
										   (
											   SELECT GroupName FROM Users.TblGroups WHERE GroupId = Q.GroupId
										   ),
										   ''
												 )
									FROM Tbl_CU_QuestionRefer Q
									WHERE Q.WFID = a.WFID
									ORDER BY Id DESC
								) + ' ' + 'ارجاع داده شد'
                   
							WHEN a.StatusID = 1571 THEN
								'درخواست پشتیبانی شما در تاریخ ' + ' ' +
								(
									SELECT TOP 1
										   ISNULL(q.RegisteredDate, '')
									FROM Tbl_CU_QuestionRefer q
									WHERE q.WFID = a.WFID
									ORDER BY Id DESC
								) + ' ' + 'به' + ' ' +
								(
									SELECT TOP 1
										   ISNULL(
										   (
											   SELECT GroupName
											   FROM Users.TblGroups
											   WHERE GroupId = Q.col_5214184851893828049
										   ),
										   ''
												 )
									FROM Tbl_frm31116 Q
									WHERE Q.Col_5227702600587259876 = a.WFID
									ORDER BY frm31116Id DESC
								) + ' ' + 'ارجاع داده شد'
							ELSE
								'<h6 style="color:red;text-align: center;">پرسش</h6>' +
								(
									SELECT [dbo].[udf_StripHTML](a.Descript)
								) + '<hr >'
						END
					   ) AS Desciption,
					   'Readonly' AS WFMode,
					   466 AS PortalFormID,
					   17987 AS PageID,
					   CAST(a.[EntryID] AS NVARCHAR(50)) AS EntryID,
					   '' AS ShowFRM,
					   a.StatusID,0 AS IsNewPortal,-1 AS ActivityId
				FROM [dbo].[Tbl_CU_QuestionAnswer] a
				WHERE
					   PortalUserID = @PortalUserID
					  AND a.StatusID <> 1021				  
	
	)
	select wfstatus from cte
	where wfid = @wfid
end
