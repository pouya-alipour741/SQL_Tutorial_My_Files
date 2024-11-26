CREATE TABLE PartGroup
	(
		Id int primary key not null identity(1,1),
		Code int ,
		Name varchar(50),
	)

CREATE TABLE PartType
	(
		Id int primary key not null identity(1,1),
		PartGroupRef int foreign key references partgroup (Id) not null,
		Code int ,
		Name varchar(50),
	)


CREATE TABLE PartModel
	(
		Id int primary key not null identity(1,1),
		PartTypeRef int foreign key references parttype (Id) not null,
		Code int ,
		Name varchar(50),
		Price money,
		Amount smallmoney,
		StackSerialNumber int 
	)
		

insert into PartGroup(code,Name)
	select CarID,Make from Cars

insert into PartGroup(Code)
	select id from PartGroup
	where code is null


delete from PartGroup
drop table PartGroup
select * from Cars
select * from partgroup

insert into PartType(PartGroupRef,Name)
	select carid,model from cars

alter table parttype
 drop constraint fk