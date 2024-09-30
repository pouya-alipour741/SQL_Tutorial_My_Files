select * from dbo.FoodItem;

select left(FoodPrice,5) as 'قیمت غذا' from dbo.FoodItem;

--function
create function fn_test(@unitprice money)
returns money
as
begin
return (@unitprice*2)
end

select ID, FactorID, FoodPrice, dbo.fn_test(FoodPrice) as 'double food price' from dbo.FoodItem;

--CASE
select ID, FactorID, FoodPrice, dbo.fn_test(FoodPrice) as 'double food price',
case 
when FoodPrice<50000 then 'cheap'
when FoodPrice>=50000 and FoodPrice<=350000 then 'normal'
when FoodPrice is NULL then NULL
else 'expensive'
end as 'price range'
from dbo.FoodItem;


select * from Log.TblEventLog;

select count(Parameters) from Log.TblEventLog;

select count(distinct Parameters) from Log.TblEventLog;

select date from Log.TblEventLog
where year(date)=2016 and month(date)=07 and day(date)=01 and hour(date)=13;

select top 50 date,ApplicationId from Log.TblEventLog
where year(date)=2019
order by date desc, ApplicationId desc;

select top 1 percent date,ApplicationId from Log.TblEventLog
where year(date)=2021
order by date desc, ApplicationId desc;


--server name
select @@servername

select * from [DBSVR-PRJGRP\SQL2017].TBSSimNew.dbo.approvals;
