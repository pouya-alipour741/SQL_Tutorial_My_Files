use [SofiaCarRental_v2.2]
go

select * from cars

select make,model	from cars where Mp3Player>0

select make ,model from cars where DVDPlayer>0

select make,model	from cars where Mp3Player>0
union
select make ,model from cars where DVDPlayer>0

select make,model	from cars where Mp3Player>0
union all
select make ,model from cars where DVDPlayer>0


select make,model	from cars where Mp3Player>0
intersect
select make ,model from cars where DVDPlayer>0


select make,model	from cars where Mp3Player>0
except
select make ,model from cars where DVDPlayer>0
select make,model	from cars where Mp3Player>0
select make ,model from cars where DVDPlayer>0