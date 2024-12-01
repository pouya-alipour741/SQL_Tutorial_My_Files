select * from Tbl_frm41595

select top 1000 * from task.TblFormInstance


alter proc sp_extract_from_Tbl_frm41595 @WfID bigint
as
begin
	insert into archive.dbo.extract_from_Tbl_frm41595
	select
		frm41595Id,
		@WfID WFID,
		Col_5495806091242693244 is_in_agreement,
		Col_5114004911691428366 Name,
		Col_4781317539296606537 [Last Name],
		Col_5571986187381571337 [National ID],
		Col_4667595628833565733 Mobile,
		Col_5049068304688018065 Email,
		Col_5510230528290457568 [Complaint description] ,
		Col_5154626302134564841 [Millitary Service Type],
		Col_5374241705952202396 [Complaint Topic],
		Col_5427101089299435783 attached,
		col_4736537888083015687 RegUser,
		getdate() RegDate
	--into
	--	archive.dbo.extract_from_Tbl_frm41595
	from
		Tbl_frm41595 f
	where
		frm41595Id in (select PkformID from  task.TblFormInstance where formid = 41595 and WorkflowInstanceId = @WfID)	
end

--set identity_insert archive.dbo.extract_from_Tbl_frm41595 on
--insert into archive.dbo.extract_from_Tbl_frm41595
--select *
--from archive.dbo.extract_from_Tbl_frm41595
--drop table archive.dbo.extract_from_Tbl_frm41595

select * from archive.dbo.extract_from_Tbl_frm41595
-------
create table archive.dbo.extract_from_Tbl_frm41595
(	
	frm int,
	WFID bigint,
	is_in_agreement bit,
	Name nvarchar(20),
	[Last Name] nvarchar(20),
	[National ID] nvarchar(10),
	Mobile varchar(12),
	Email varchar(20),
	[Complaint description] nvarchar(500),
	[Millitary Service Type] nvarchar(20),
	[Complaint Topic] nvarchar(20),
	attached nvarchar(20),
	RegUser int,
	RegDate datetime
)


select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Tbl_frm41595'