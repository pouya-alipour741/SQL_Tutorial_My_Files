select *
from Customers c join Orders o
on c.CustomerID = o.CustomerID


--summarizing what I learned till now
/*for each column value define workflow instance name and number of instances, days taken. highest priority only and no empty column value.
if less than a day taken we pretend it took a day*/
use TBSSimNew

select s.ColumnValue, i.WorkflowInstanceName,year(i.createdate) as [year created],count(s.WorkflowInstanceID) as instance_count,
case
when DATEDIFF(DAY,i.createdate,i.EndDate)=0 then 1
else DATEDIFF(DAY,i.createdate,i.EndDate)
end as days_taken
from task.TblWorkflowInstanceSummary s join task.TblWorkflowInstance i
on s.WorkflowInstanceId=i.WorkflowInstanceID
where s.Priority>3 and s.ColumnValue is not null and s.ColumnValue != ''
group by s.ColumnValue, i.WorkflowInstanceName,year(i.createdate),
case
when DATEDIFF(DAY,i.createdate,i.EndDate)=0 then 1
else DATEDIFF(DAY,i.createdate,i.EndDate)
end
order by case
when DATEDIFF(DAY,i.createdate,i.EndDate)=0 then 1
else DATEDIFF(DAY,i.createdate,i.EndDate)
end desc,
s.ColumnValue,instance_count desc


--query designer
SELECT        s.ColumnValue, COUNT(s.WorkflowInstanceId) AS instance_count, i.CreateDate, i.EndDate, i.WorkflowInstanceName
FROM            Task.TblWorkflowInstanceSummary AS s INNER JOIN
                         Task.TblWorkflowInstance AS i ON s.WorkflowInstanceId = i.WorkflowInstanceID
WHERE        (s.Priority > 3)
GROUP BY s.ColumnValue, i.CreateDate, i.EndDate, i.WorkflowInstanceName
ORDER BY i.WorkflowInstanceName, instance_count DESC

--JOIN ON 3 
--chain masters
select top 1000 f.WorkflowId,s.WorkflowSummaryId,i.PkFormId,count(i.Priority) as priority_count,
sum(PkFormId) as formID_sum
from Workflow.TblWorkflow f 
join Workflow.TblWorkflowSummary s 
on f.WorkflowId=s.WorkflowId
join task.TblWorkflowInstanceSummary i
on s.WorkflowSummaryId=i.WorkflowSummaryId
where f.WorkflowId < 200
group by f.WorkflowId,s.WorkflowSummaryId,i.PkFormId
;
--compare
select sum(task.TblWorkflowInstanceSummary.PkFormId) from task.TblWorkflowInstanceSummary



select top 500 f.WorkflowId,s.WorkflowSummaryId,i.PkFormId
from Workflow.TblWorkflow f 
join Workflow.TblWorkflowSummary s 
on f.WorkflowId=s.WorkflowId
join task.TblWorkflowInstanceSummary i
on s.WorkflowSummaryId=i.WorkflowSummaryId
where f.WorkflowId < 200


--2 master 1 detail
SELECT        s.WorkflowId, COUNT([is].Priority) AS priority_count, SUM([is].PkFormId) AS Pk_sum, SUM(i.WorkflowID) AS flow_id_sum
FROM            Workflow.TblWorkflowSummary AS s INNER JOIN
                         Task.TblWorkflowInstanceSummary AS [is] ON s.WorkflowSummaryId = [is].WorkflowSummaryId INNER JOIN
                         Task.TblWorkflowInstance AS i ON [is].WorkflowInstanceId = i.WorkflowInstanceID
GROUP BY s.WorkflowId

select isnull(null,10)

