--create proc sp_tbl_cu_log @WFID
--as
--begin
--	insert into tbl_cu_log
--	select
--		frm32,
--		@WFID bigint,
--		col_4323489 as [],
--		GETDATE() regDate,
--		col_87439857 regUser

--	from
--		tbl.frm...  f
--		join task.tblforminstance i 
--	where 
--		frm in (select pk from task.tblforminstance where formid = 2 and workflowinstanceid = @WFID)
--end


--4662565262858573721





--alter proc sp_extract_from_Tbl_frm41595 @WfID bigint
--as
--begin
--	insert into archive.dbo.extract_from_Tbl_frm41595
--	select
--		frm41595Id,
--		@WfID WFID,   --
--		Col_5495806091242693244 is_in_agreement,
--		Col_5114004911691428366 Name,
--		Col_4781317539296606537 [Last Name],
--		Col_5571986187381571337 [National ID],
--		Col_4667595628833565733 Mobile,
--		Col_5049068304688018065 Email,
--		Col_5510230528290457568 [Complaint description] ,
--		Col_5154626302134564841 [Millitary Service Type],
--		Col_5374241705952202396 [Complaint Topic],
--		Col_5427101089299435783 attached,
--		col_4736537888083015687 RegUser,  --
--		getdate() RegDate,
--		col_5404865765632682158 RegTime
--	--into
--	--	archive.dbo.extract_from_Tbl_frm41595
--	from
--		Tbl_frm41595 f
--	where
--		frm41595Id in (select PkformID from  task.TblFormInstance where formid = 41595 and WorkflowInstanceId = @WfID)	 --
--end



select
	frm41599Id,
	@WFID
from
	tbl_frm41599 f
where
	frm41599Id in(select PKFormID from task.TblFormInstance where FormID = 41599 and WorkflowInstanceId = 4031559)



create table tbl_cu_CertificateRequest
(
	frm int
)




select *
from task.TblFormInstance
where FormID = 41599



