--********************INSERT******************
--INSERT INTO table_name
--	VALUES (value1,value2,value3,...);

--INSERT INTO table_name (column1,column2,column3,...)
--	VALUES (value1,value2,value3,...);
use Session04
go

create table Test(Code int ,Name varchar(50))
Go
insert into Test(code,Name)
		Values (1,'reza')
Go
insert into Test(Name,code)
Values ('ali',2)
Go
insert into Test
Values (3,'Saeed')
Go
-- Not Corrrect 
insert into Test
Values ('Saeed',3)
Go

alter table test
	add LName varchar(50)
Go
select * from test
Go
insert into Test(code,LName)
Values (4,'Karimi')
Go
/*
--SQL DEFAULT Constraint on ALTER TABLE
-- To create a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:
ALTER TABLE Persons
ALTER COLUMN City SET DEFAULT 'SANDNES'
go
*/


insert into Test
Values (9,default,'hasan')
go
use [SofiaCarRental_v2.2]
create table Amount(make varchar(50),days int)
go
--Insert into select
insert into Amount(make,days)
	select make,sum(days)
	 from  RentalOrders right join cars
		on RentalOrders.CarRef=Cars.CarID
		group by make 
go
delete from Amount
select * from Amount
--******************UPDATE**********************
UPDATE table_name
	SET column1=value1,column2=value2,...
	WHERE some_column=some_value;

	update titles set price=10 where type='Business'
	update titles set price=20 where price=15

--******************DELETE***************************
--Note: Be very careful when deleting records. You cannot undo this statement!

--DELETE FROM table_name
--	WHERE some_column=some_value;

--DELETE FROM Customers
--	WHERE CustomerName='Alfreds Futterkiste'	
--		  AND ContactName='Maria Anders';


--Delete All Data:
	--DELETE FROM table_name;

