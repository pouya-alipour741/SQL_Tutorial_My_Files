select * from INFORMATION_SCHEMA.SCHEMATA

select * from INFORMATION_SCHEMA.COLUMNS

create table t1(f1 int,f2 int)
create table t2(f3 int)

insert into t1 values (1,1),(1,2),(1,3),(2,1),(2,2)
insert into t2 values (1),(2),(3)

select *from t1
select *from t2

select * from t1 cross join t2

select * from t1,t2