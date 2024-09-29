use BLACKLIST;

create table companies(
	VAT int PRIMARY KEY,
	Company_Name varchar(30) NOT NULL,
	Reason varchar(40)
);

insert into companies(VAT, Company_Name,Reason)
values
	(45345, 'subphoto', 'didnt pay'),
	(85695, 'mightstam', 'didnt pay'),
	(13209, 'lebipost', 'didnt pay');

update companies
set Reason='rude behavior'
where VAT=85695

select * from companies
where Reason='didnt pay'

