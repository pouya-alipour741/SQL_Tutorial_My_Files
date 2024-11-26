use Session03
go
select * from Parent
go
select * from Child
go
--Q!:نام فرزند و نانم والد آن فرزند به شرطی که فرزند وارای والد باشد.
select Child.Name,Parent.Name as ParenrName
from Child inner join Parent
on Child.ParentRef=Parent.Id
go
--Q2: نام همه فرزندان و والد آنها
select Child.Name,Parent.Name as ParenrName
from Child left join Parent
on Child.ParentRef=Parent.Id
go
--Q3:نام همه والدها و فرزند آنها
select Child.Name,Parent.Name as ParenrName
from Child right join Parent
on Child.ParentRef=Parent.Id
go

--Q4:همه والد و همه فرزندان
select Child.Name,Parent.Name as ParenrName
from Child full join Parent
on Child.ParentRef=Parent.Id
go

--Q5:ضرب دکارتی دو جدول والد و فرزند
select Child.Name,Parent.Name as ParenrName
from Child cross join Parent
-- on Child.ParentRef=Parent.Id
go