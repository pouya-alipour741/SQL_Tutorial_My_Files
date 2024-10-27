/*
Ordering

: توجه شود Framing در کوئری زیر به‌مقدار پیش‌فرض
RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
*/

select 
	*,FIRST_VALUE(storeid) over(order by storeid
	rows between 2 preceding and current row) f_value
from sales.Customer
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


