/*
Ordering

: توجه شود Framing در کوئری زیر به‌مقدار پیش‌فرض
RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
*/

select 
	*,FIRST_VALUE(storeid) over(order by storeid
	rows between 2 preceding and current row) f_value
from		sales.Customer
where storeid is not null

--find duplicate
select * from(
select 
	*,ROW_NUMBER() over(partition by storeid order by (select null)) rn
from sales.Customer
where StoreID is not null) x
where rn>1


/*
تمرین کلاسی

کوئری‌ای بنویسید که  LAST_VALUE و FIRST_VALUE با استفاده از
.جلو هر سطر، اولین و آخرین مبلغ سفارش هر مشتری را نمایش دهد

custid    orderdate    orderid      val     F_Val     L_Val
-------  -----------  ---------  --------  --------  --------
  1       2017-08-25   10643      814.50    814.50    933.50
  1       2017-10-03   10692      878.00    814.50    933.50
  1       2017-10-13   10702      330.00    814.50    933.50
  1       2018-01-15   10835      845.80    814.50    933.50
  1       2018-03-16   10952      471.20    814.50    933.50
  1       2018-04-09   11011      933.50    814.50    933.50

*/

select top 1000 * from Task.TblTask
select top 1000 * from  Users.TblUsers
select top 1000 * from  Users.TblProfiles
select top 1000 * from  Task.TblTaskStatus
select top 1000 * from  Task.TblWorkflowInstance
select top 1000 * from  Workflow. TblWorkflow


select u.UserId,UserName,cast(CreateDate as date) CreateDate,WorkflowID,WorkflowInstanceName,
FIRST_VALUE(cast(CreateDate as date)) over(partition by username order by CreateDate ) f_val,
LAST_VALUE(cast(CreateDate as date)) over(partition by username order by CreateDate range between current row and unbounded following) l_val
from  Users.TblUsers u join task.TblWorkflowInstance i
on i.StarterUserID=u.UserId
where UserName='abbasnejad'
order by CreateDate 



/*
در ادامه کوئری بالا را به‌گونه‌ای تغییر دهید
که جلو هر سطر اختلاف میان مبلغ جاری با 
.اولین و آخرین مبلغ سفارش هر مشتری محاسبه شود
*/

with cte as(
select u.UserId,UserName,cast(CreateDate as date) CreateDate,WorkflowID,WorkflowInstanceName,
FIRST_VALUE(cast(CreateDate as date)) over(partition by username order by CreateDate ) f_val,
LAST_VALUE(cast(CreateDate as date)) over(partition by username order by CreateDate range between current row and unbounded following) l_val
from  Users.TblUsers u join task.TblWorkflowInstance i
on i.StarterUserID=u.UserId
where UserName='abbasnejad')
select *,datediff(MONTH,f_val,CreateDate) f_wf_diff,
concat_ws('/',datediff(MONTH,l_val,CreateDate),'m',datediff(day,l_val,CreateDate),'d')  l_wf_dif
from cte

--cume dist
with cte as(
select WorkflowInstanceID,
count(StarterUserID) over(partition by cast(createdate as date)) cnt
from task.TblWorkflowInstance)
select *,CUME_DIST() over(order by cnt) cum_dis
from cte

--says the weight compared to highest
create table #test_cum_dis(
id int,
cnt int)

select *,cume_dist() over(order by cnt) c_dist
from #test_cum_dis

truncate table #test_cum_dis

insert into #test_cum_dis
values (1,9),
		(2,6),
		(3,4),
		(4,12),
		(5,8)
--percent rank
select *,PERCENT_RANK() over(order by cnt) c_prank
from #test_cum_dis


--percentile disc
select *,PERCENTile_disc(0.2) within group(order by id) over(partition by cnt) c_percentile_rank
from #test_cum_dis


with cte as(
select WorkflowInstanceID,
count(StarterUserID) over(partition by cast(createdate as date)) cnt
from task.TblWorkflowInstance)
select *,PERCENTILE_DISC(0.3) within group(order by cnt) over(partition by WorkflowInstanceID) cum_dis
from cte


--first 3 orders
with cte as(
select top 1000 WorkflowInstanceID,i.WorkflowInstanceName,count(TaskID) task_count
from task.TblWorkflowInstance i 
join task.TblWorkflowActivityInstance a on a.WokflowInstanceID=i.WorkflowInstanceID
join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
group by WorkflowInstanceID,i.WorkflowInstanceName),
cte2 as(
select *,ROW_NUMBER() over(partition by task_count order by WorkflowInstanceID) rn from cte)
select * from cte2
where rn<=2

--wip
with cte as(
select top 1000 WorkflowInstanceID,i.WorkflowInstanceName,count(TaskID) task_count
from task.TblWorkflowInstance i 
join task.TblWorkflowActivityInstance a on a.WokflowInstanceID=i.WorkflowInstanceID
join task.TblTask t on t.WorkflowActivityInstaceID=a.WorkflowActivityInstanceID
group by WorkflowInstanceID,i.WorkflowInstanceName)
select *,lead(task_count) over(order by WorkflowInstanceID) nxt from cte


--first 3 orders for each customer
with cte as(
select o.CustomerID,OrderID,OrderDate,
ROW_NUMBER() over(partition by o.customerid order by orderid) rn
from Customers c join orders o on c.CustomerID=o.CustomerID)
select * from cte
where rn<=3;

--lead alt method for first 3 orders for each customer
with cte as(
select o.CustomerID,OrderID,OrderDate,
LEAD(OrderID,3,0) over(partition by o.customerid order by orderid) nxt
from Customers c join orders o on c.CustomerID=o.CustomerID),
cte2 as(
select CustomerID,OrderID,OrderDate from cte
where OrderID not in(select nxt from cte)
)
select * from cte2
order by customerid,orderid

--cross apply and top 3

--create view v_cust_order
--as
--select o.CustomerID,OrderID,OrderDate
--from customers c1 join orders o on c1.CustomerID=o.CustomerID

--drop view v_cust_order


select CustomerID,tmp.* from Customers c
cross apply
(select top 3 OrderID,OrderDate from orders o
where c.CustomerID=o.CustomerID
) as tmp
order by CustomerID

--offset and fetch
select CustomerID,tmp.* from Customers c
cross apply
(select OrderID,OrderDate from orders o
where c.CustomerID=o.CustomerID
order by OrderID,OrderDate
offset 0 rows fetch first 3 rows only
) as tmp
order by CustomerID


select * from Employees
select * from region


select region.*,tmp.*
from region
cross apply
(select top 2 EmployeeID,LastName
from Employees
order by EmployeeID
) tmp