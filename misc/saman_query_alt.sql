DECLARE @Table Table (
	WorkflowID Bigint,
	Countt int,
	LastUseDate nvarchar(10),
	Baz Bigint,
	darhaleAnjam bigint
)

insert into @Table (WorkflowID , Countt)
select WorkflowID , Count(WorkflowID) from task.TblWorkflowInstance twfi
GROUP BY WorkflowID  



UPDATE A
Set Baz = T.CountBaz
FROM @Table A
INNER JOIN (select WorkflowID , Count(WorkflowID) as CountBaz
from task.TblWorkflowActivityInstance ai
INNER Join Task.TblTask tt
	ON Ai.WorkflowActivityInstanceID = tt.WorkflowActivityInstaceID
INNER JOIN task.TblWorkflowInstance twfi
On twfi.WorkflowInstanceID = ai.WokflowInstanceID
Where ActivityType = 'TZHumanActivity'
And TaskStatusID In (1)
GROUP BY WorkflowID ) T
ON t.WorkflowID = A.WorkflowID;


DECLARE @Table2 Table (
	WorkflowID Bigint,
	Countt int,
	LastUseDate nvarchar(10),
	Baz Bigint,
	darhaleAnjam bigint
)
insert into @Table2 
select * from @Table

UPDATE A
Set darhaleAnjam = T.CountDarhaleAnjam
FROM @Table2 A
INNER JOIN (select WorkflowID , Count(WorkflowID) as CountDarhaleAnjam
from task.TblWorkflowActivityInstance ai
INNER Join Task.TblTask tt
	ON Ai.WorkflowActivityInstanceID = tt.WorkflowActivityInstaceID
INNER JOIN task.TblWorkflowInstance twfi
On twfi.WorkflowInstanceID = ai.WokflowInstanceID
Where ActivityType = 'TZHumanActivity'
And TaskStatusID In (6)
GROUP BY WorkflowID ) T
ON t.WorkflowID = A.WorkflowID;


DECLARE @Table3 Table (
	WorkflowID Bigint,
	Countt int,
	LastUseDate datetime,
	Baz Bigint,
	darhaleAnjam bigint
)
insert into @Table3
select * from @Table2


UPDATE A
Set LastUseDate = T.LastUseDate
FROM @Table3 A
INNER JOIN (select WorkflowID , Max(CreateDate) as LastUseDate from Task.TblWorkflowInstance
group by WorkflowID  ) T
ON t.WorkflowID = A.WorkflowID;

select 
	wf.Name , 
	t3.Countt, 
	t3.LastUseDate , 
	ISNULL(t3.darhaleAnjam , 0) as darhaleAnjam,
	ISNULL(t3.Baz , 0) as Baz
from @Table3 t3
Inner join workflow.TblWorkflow wf
ON wf.WorkflowId = t3.WorkflowID
