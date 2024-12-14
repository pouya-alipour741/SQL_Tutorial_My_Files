USE [SAODB]
GO
/****** Object:  StoredProcedure [dbo].[SP_CU_CheckCommitmentCancellationFile_FRm31557]    Script Date: 12/14/2024 4:44:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_CU_CheckCommitmentCancellationFile_FRm31557] 
@CommitmentCancellationFile nvarchar(100)
as
begin
declare @FileID bigint
if isnull(@CommitmentCancellationFile,'')<>''
begin
set @FileID=(select substring(@CommitmentCancellationFile, 1,CHARINDEX('#',@CommitmentCancellationFile)-1))
end
declare @size bigint
declare @ContentType nvarchar(1000)
--simulation
select @size=FileSize,
       @ContentType=FileContentType
from [TBSFileServerDB].[dbo].[TblFilesStream]
where id=@FileID
------54
--select @size=FileSize,
--       @ContentType=FileContentType
--from [172.50.0.95].[TBSFileServerDB].[dbo].[TblFilesStream]
--where id=@FileID

if @size>300000 and  @ContentType<>'jpg' and @ContentType<>'image/jpeg'
select cast(1 as bit) as SizeRes,
       cast(1 as bit) as ContentType

else if @size>300000 
select cast(1 as bit) as SizeRes,
       cast(0 as bit) as ContentType

else if @ContentType<>'jpg' and @ContentType<>'image/jpeg'
select cast(0 as bit) as SizeRes,
       cast(1 as bit) as ContentType

else 
select cast(0 as bit) as SizeRes,
       cast(0 as bit) as ContentType
end

