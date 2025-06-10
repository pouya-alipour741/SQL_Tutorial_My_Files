create or alter PROC [dbo].[SP_CU_EnglishTest_LinkedText]
AS
BEGIN
	SELECT CONCAT('در صورت بروز هرگونه مشکل، از طریق بخش ', '<a href="https://sajad.saorg.ir/fa/Account/Error">پشتیبانی سامانه سجاد</a>', ' اقدام نمایید') AS SajadSupport_text;
END