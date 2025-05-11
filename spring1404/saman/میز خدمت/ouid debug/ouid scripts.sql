--select * from form.TblFormPersist
--where name = 'Tbl_Cu_Base_HierarchicalPublicService'

--select * from form.TblSearchFormAccessPermission
--where FormID = 168

--select * from form.TblForm
--where Resource like N'%Tbl_Cu_Base_HierarchicalPublicService%'

select * from Tbl_Cu_ServingTableSecondPhase_Log
where OrganizationUnit = '1371' and OUChart =445
order by WFID desc

select * from Tbl_Cu_ServingTableSecondPhase_Log
where OrganizationUnit = '1371' and FullName like N'%حسين پور رحمان%'
order by WFID desc


EXEC Sp_Cu_GetHierarchy_Users 1909582,1,0

--update task.TblTask
--set UserID = 77
--where taskid = 30904755

select top 1000 * from Tbl_Cu_Base_HierarchicalPublicService
where UnitID = 0


select col_5183947771732858935 [username],Col_4995533338641167379 [guiiid],* from Tbl_frm243
where frm243Id in(select PKFormID from task.TblFormInstance where WorkflowInstanceId = 1909582)


exec Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk 'm.jafari', '11bfb712-6f62-4e41-91ff-af0b1dad9e2f'  --sp سطح فرم


select * from dbo.Tbl_CU_ActiveDirectoryOUList
--where ouid = 464
where adsPath like N'%1371%'

SELECT TOP 1          
			PropValue
        FROM [dbo].[Tbl_CU_AD_User_Properties]
        WHERE [GUID] = 'a6041735-4536-4ccf-b224-54548ba8a594'
              AND [PropName] = 'adspath'

--begin tran
--update Tbl_Cu_ServingTableSecondPhase_Log
--set OUChart = 464
--where OrganizationUnit = '1371' and OUChart = 0 

--commit

select * from Tbl_Cu_ServingTableSecondPhase_Log
where OrganizationUnit = '1371' and OUChart = 0
order by WFID desc 

select * from Tbl_Cu_ServingTableSecondPhase_Log
where wfid = 1909582

select * from task.TblWorkflowInstance
where WorkflowInstanceID = 1909594

--update task.TblWorkflowInstance
--set WorkflowInstanceStatusID = 1
--where WorkflowInstanceID = 1909594

--update task.TblTask
--set TaskStatusID = 6
--where TaskID = 30904578