use archive
go

with cte as(
select 
	submission_date, hacker_id
	,1 as lvl
	,cast(hacker_id as nvarchar) path
from	
	submissions
where
	submission_date = (select min(submission_date) from submissions)
union all
select 
	s.submission_date, s.hacker_id
	, lvl+1 as lvl
	,cast(cte.path + '->' + cast(s.hacker_id as nvarchar) as nvarchar) path
from	
	submissions s
	join cte on cte.hacker_id = s.hacker_id
where
	s.submission_date = (DATEADD(day,1, cte.submission_date))
) 
select * from cte order by submission_date

--,unique_hackers as(
--	select submission_date, count(*) no_of_unique_hackers
--	from cte
--	group by submission_date
--)
--select * from unique_hackers













--create table submissions ( submission_date date, submission_id int, hacker_id int, score int );

--insert into submissions values 
--	('2016-03-01',  8494, 20703, 0), 
--	('2016-03-01', 22403, 53473, 15), 
--	('2016-03-01', 23965, 79722, 60), 
--	('2016-03-01', 30173, 36396, 70), 
--	('2016-03-02', 34928, 20703, 0), 
--	('2016-03-02', 38740, 15758, 60), 
--	('2016-03-02', 42769, 79722, 25), 
--	('2016-03-02', 44364, 79722, 60), 
--	('2016-03-03', 45440, 20703, 0), 
--	('2016-03-03', 49050, 36396, 70), 
--	('2016-03-03', 50273, 79722, 5), 
--	('2016-03-04', 50344, 20703, 0), 
--	('2016-03-04', 51360, 44065, 90), 
--	('2016-03-04', 54404, 53473, 65), 
--	('2016-03-04', 61533, 79722, 45), 
--	('2016-03-05', 72852, 20703, 0), 
--	('2016-03-05', 74546, 38289, 0), 
--	('2016-03-05', 76487, 62529, 0), 
--	('2016-03-05', 82439, 36396, 10), 
--	('2016-03-05',  9006, 36396, 40), 
--	('2016-03-06', 90404, 20703, 0); 

--create table hackers ( hacker_id int, name varchar(255) ); 

--insert into hackers values (15758, 'Rose'), (20703, 'Angela'), (36396, 'Frank'), (38289, 'Patrick'), (44065, 'Lisa'), (53473, 'Kimberly'), (62529, 'Bonnie'), (79722, 'Michael');

--Sample Output:

--2016-03-01 4 20703 Angela
--2016-03-02 2 79722 Michael
--2016-03-03 2 20703 Angela
--2016-03-04 2 20703 Angela
--2016-03-05 1 36396 Frank
--2016-03-06 1 20703 Angela

