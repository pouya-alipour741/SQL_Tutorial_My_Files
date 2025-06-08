create or alter proc sp_cu_chk_NoRepeatedReqestPerUser_frm21041  
@userID int,
@mainSubject int,
@NationalCode nvarchar(10)
as
begin
	if isnull(@userID, 10000000) != 10000000 
	begin
		if exists(
			select 1
				from [Tbl_CU_QuestionAnswer] q		
			where 
				MainSubjectID = @mainSubject
				and ISNULL(FinalDesc , '') = ''
				and PortalUserID = @userID
				and statusID not in(1021, 1920) --غیر از ابطالی ها
				)
			begin
				select cast(1 as bit) res
			end
		else
			select cast(0 as bit) res
	end
	else
		if exists(
			select 1
				from [Tbl_CU_QuestionAnswer] q		
			where 
				MainSubjectID = @mainSubject
				and ISNULL(FinalDesc , '') = ''
				and NationalCode = @NationalCode 
				and statusID not in(1021, 1920) --غیر از ابطالی ها
				)
			begin
				select cast(1 as bit) res
			end
		else
			select cast(0 as bit) res
end



