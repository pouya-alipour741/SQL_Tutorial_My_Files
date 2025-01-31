select * from submissions

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'submissions'
----
begin tran
declare @submission_date date, @score int, @new_score int, @submission_ID int

declare ScoreCursor cursor for
select submission_date, score, submission_ID
from  submissions

open ScoreCursor

fetch next from ScoreCursor into @submission_date, @score, @submission_ID

while @@FETCH_STATUS = 0
	begin
		set @new_score = case
							when @submission_date < '2016-03-03' then @score + 10
							else @score + 1000
						end

		update submissions
		set score = @new_score
		where submission_id = @submission_ID

		fetch next from ScoreCursor into @submission_date, @score, @submission_ID
	end

close ScoreCursor
deallocate ScoreCursor
---

rollback


