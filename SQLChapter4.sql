select *
from Customers c join Orders o
on c.CustomerID = o.CustomerID

--for each column value define workflow instance name and number of instances. highest priority only and no empty column value
use TBSSimNew

select s.ColumnValue, i.WorkflowInstanceName,year(i.createdate) as [year created],DATEDIFF(day,i.createdate,i.EndDate) as [day(s) taken] ,count(s.WorkflowInstanceID) as instance_count
from task.TblWorkflowInstanceSummary s join task.TblWorkflowInstance i
on s.WorkflowInstanceId=i.WorkflowInstanceID
where s.Priority>3 and s.ColumnValue is not null and s.ColumnValue != ''
group by s.ColumnValue, i.WorkflowInstanceName,year(i.createdate),DATEDIFF(day,i.createdate,i.EndDate)
order by s.ColumnValue,DATEDIFF(day,i.createdate,i.EndDate) desc,instance_count desc

