CREATE PROCEDURE usp_Insert 
   @StudentName varchar(50),
   @ClassName varchar(50),
   @Score int 
AS
begin
   insert into student(Name)
   values(@StudentName)

   declare @StId int
   set @StId=(select s.id from student s where s.name like @StudentName)

   insert into class(Name)
   values(@ClassName)

   declare @CId int
   set @CId=(select c.id from class c where c.name like @ClassName)

   insert into [dbo].[StudentClass]
   values(@CId,@StId,@score)

end
Go
usp_Insert 'Ali','C# Advance',100

select * from studentclass