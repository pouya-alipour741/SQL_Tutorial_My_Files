﻿EXEC Sp_Cu_GetHierarchy_Users 1909512,1,0  --sp فرآیند

select top 1000 adsPath,* from Tbl_CU_ActiveDirectoryOUList
where adsPath like N'%اداره پشتیبانی شبکه فروش%'

select top 1000 PropValue,* from Tbl_CU_AD_User_Properties
where PropName = 'adspath'
and ActiveDirectoryUserName = 'm.darvishi'

--unitid = ouchart
exec Sp_Cu_GetUserProfileInfoByUserName_PublicServiceDesk 'm.darvishi', 'b683f64d-52bb-4bb2-89af-4bade5ebcf17'  --sp سطح فرم


select col_5183947771732858935 [username],Col_4995533338641167379 [guiiid],* from Tbl_frm243
where frm243Id in(select PKFormID from task.TblFormInstance where WorkflowInstanceId = 1909512)


---درج در فرم سلسله مراتب
--insert into Tbl_CU_ActiveDirectoryOUList(OUID,OUName,ParentID,OUGUID,adsPath,GUID)
--values(
--	(select max(ouid) + 1 from Tbl_CU_ActiveDirectoryOUList),
--		'مدیریت ریسک',
--		315,
--		newid(),
--	'LDAP://saman.com/OU=مدیریت ریسک,OU=حوزه مديريت عامل,OU=هیات مدیره,OU=مجمع عمومی,OU=Chart,DC=saman,DC=com',
--	'fb26af29-a948-4421-b454-144a8fc04ab9'
--)