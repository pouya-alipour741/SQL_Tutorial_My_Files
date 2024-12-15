select top 1000 * from [TBSFileServerDB].[dbo].[TblFilesStream]
where id >= 67932


alter proc sp_cu_ck_CommitmentCancelataionFileFRM41607 
@CommitmentFile nvarchar(100)
as
	begin
		if isnull(@CommitmentFile, '') != ''
			begin
				declare @file_id int = (select substring(@CommitmentFile,1,charindex('#', @CommitmentFile)-1))
			end
		--simulation
			declare @size bigint
			declare @type nvarchar(1000)
			select @size=FileSize, @type = FileContentType from [TBSFileServerDB].[dbo].[TblFilesStream]
			where id = @file_id

			if @size >= 300000 and @type != 'jpg' and @type != 'image/jpeg'
				select cast(1 as bit) sizeRes,
					   cast(1 as bit) typeRes
			else if @size >= 300000 
				select cast(1 as bit) sizeRes,
					   cast(0 as bit) typeRes	
			else if @type != 'jpg' and @type != 'image/jpeg'
				select cast(1 as bit) sizeRes,
					   cast(0 as bit) typeRes
			else
				select cast(0 as bit) sizeRes,
					   cast(0 as bit) typeRes				
	end


exec sp_cu_ck_CommitmentCancelataionFileFRM41607 '67932#660kb.jpg'

--select * from [TBSFileServerDB].[dbo].[TblFilesStream]
--where id = 67932
----where FileContentType like '%jpeg%'