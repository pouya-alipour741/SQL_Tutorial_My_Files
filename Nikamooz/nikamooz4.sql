--Query1
SELECT
	*,
	SUM(OrderQty) OVER( PARTITION BY productid
				   ORDER BY productid ) AS Total
FROM production.WorkOrder
GO

/*
تمرین کلاسی
. و با هر روش دلخواه بنویسید Framing را بدون استفاده از Query1
*/
----with sub
select *,
(select sum(OrderQty) from production.WorkOrder w2 where w2.ProductID=w1.ProductID) total
from production.WorkOrder w1
order by ProductID desc


--Query2
SELECT
	*,
	SUM(OrderQty) OVER( PARTITION BY productid
				   ORDER BY startdate ) AS Total
FROM production.WorkOrder
where ProductID=999
GO
--with sub
select *,
(select sum(OrderQty) from production.WorkOrder w2 where w2.ProductID=w1.ProductID and w2.StartDate<=w1.StartDate) total
from production.WorkOrder w1
where ProductID=999
order by total

