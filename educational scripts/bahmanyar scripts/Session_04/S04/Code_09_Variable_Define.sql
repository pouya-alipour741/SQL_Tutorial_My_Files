--Declare Var_name DataType [=defaultValue] [, Varname Datatype]
Declare @T int, @x Money
Declare @Z decimal(5,2) , @y varchar(50)
Set @T=12
Set @T=@T *0.6+5
print @T
print 'T='+convert(varchar(50),@T)

Set @X=123.4567

Set @Z=999.99
Set @Y='Reza'
print @Y
Set @T= select count(*)from Cars
Set @x +=1


Set @y *=2
	
--*****************************[ IF ]***********************
--If condition
--Begin
--…
--End
--[Else
--Begin
--…
------End]






--*****************************[ While ]***********************
--While condition
--Begin
--If condition1
--Break
--If condition2
--Continue
--End
--…

--**************************** print 1 to 20 *******************
declare @Counter int
set @Counter =1
while(@Counter<=20)
begin
print @Counter
set @counter +=1
end

declare @Counter int
set @Counter =1
while(@Counter<=20)
begin
set @counter +=1
print @Counter

if(@Counter = 15)
break
if(@Counter = 10)
print 'Hello1'


end