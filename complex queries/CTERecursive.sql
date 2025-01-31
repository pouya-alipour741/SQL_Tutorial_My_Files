create table #batch_table
(batch_id nvarchar(50),
quantity int);

create table #order_table
(
	ordeR_number nvarchar(50),
	quantity int
)


insert into #batch_table
values
	('B1', 5),
	('B2', 12),
	('B3',8);

insert into #order_table
values
	('o1', 2),
	('o2', 8),
	('o3',2),
	('o4',5),
	('o5',9),
	('o6',25)

select * from #batch_table;
select * from #order_table;



with BatchCte as(
	select batch_id, 1 as quantity
	from #batch_table
	union all
	select t.batch_id , (BatchCte.quantity + 1) quantity
	from #batch_table t
	join BatchCte on BatchCte.batch_id = t.batch_id and BatchCte.quantity < t.quantity)
,OrderCte as(
	select 
		ordeR_number, 1 as quantity
	from
		#order_table
	union all
	select
		o.ordeR_number, OrderCte.quantity+1
	from
		#order_table o
		join OrderCte on o.ordeR_number = OrderCte.ordeR_number and OrderCte.quantity < o.quantity
)
select *,  ROW_NUMBER() over (order by ordeR_number) rn
from OrderCte


--alternative
select batch_id,1 as quantity,row_number () OVER (order by batch_id) as rn from #batch_table  CROSS JOIN  generate_series(1,quantity,1)



