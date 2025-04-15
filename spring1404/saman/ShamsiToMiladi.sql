USE [CallCenter]
GO
/****** Object:  UserDefinedFunction [dbo].[ShamsiToMiladi]    Script Date: 16/01/1404 01:09:34 �.� ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER  FUNCTION [dbo].[ShamsiToMiladi](@DateStr varchar(10))
RETURNS DATETIME
AS 
BEGIN 
declare @YYear int
declare @MMonth int
declare @DDay int
declare @epbase int
declare @epyear int
declare @mdays int
declare @persian_jdn int
declare @i int
declare @j int
declare @l int
declare @n int
declare @TMPRESULT varchar(10)
declare @IsValideDate int
declare @TempStr varchar(20)
DECLARE @TmpDateStr varchar(10)

SET @i=charindex('/',@DateStr)

IF LEN(@DateStr) - CHARINDEX('/', @DateStr,CHARINDEX('/', @DateStr,1)+1) = 4
BEGIN
SET @TmpDateStr = dbo.ReversDate(@DateStr)
IF ( ISDATE(@TmpDateStr) =1 ) 
RETURN @TmpDateStr
ELSE
RETURN NULL
END
ELSE
SET @TmpDateStr = @DateStr

IF ((@i<>0) and
(dbo.SubStrCount('/', @TmpDateStr)=2) and
(ISNUMERIC(REPLACE(@TmpDateStr,'/',''))=1) and 
(charindex('.',@TmpDateStr)=0)
)
BEGIN
SET @YYear=CAST(SUBSTRING(@TmpDateStr,1,@i-1) AS INT)
IF ( @YYear< 1300 )
SET @YYear =@YYear + 1300
IF @YYear > 9999
RETURN NULL

SET @TempStr= SUBSTRING(@TmpDateStr,@i+1,Len(@TmpDateStr))

SET @i=charindex('/',@TempStr)
SET @MMonth=CAST(SUBSTRING(@TempStr,1,@i-1) AS INT)
SET @MMonth=@MMonth

SET @TempStr= SUBSTRING(@TempStr,@i+1,Len(@TempStr)) 

SET @DDay=CAST(@TempStr AS INT)
SET @DDay=@DDay

IF ( @YYear >= 0 )
SET @epbase = @YYear - 474
Else
SET @epbase = @YYear - 473
SET @epyear = 474 + (@epbase % 2820)

IF (@MMonth <= 7 )
SET @mdays = ((@MMonth) - 1) * 31
Else
SET @mdays = ((@MMonth) - 1) * 30 + 6

SET @persian_jdn =(@DDay) + @mdays + CAST((((@epyear * 682) - 110) / 2816) as int) + (@epyear - 1) * 365 + CAST((@epbase / 2820) as int ) * 1029983 + (1948321 - 1)

if @YYear in (1404,1437,1470,1532,1565,1569,1598,1631,1660,1664)
SET @persian_jdn = @persian_jdn + 1

IF (@persian_jdn > 2299160) 
BEGIN
SET @l = @persian_jdn + 68569
SET @n = CAST(((4 * @l) / 146097) as int)
SET @l = @l - CAST(((146097 * @n + 3) / 4) as int)
SET @i = CAST(((4000 * (@l + 1)) / 1461001) as int)
SET @l = @l - CAST( ((1461 * @i) / 4) as int) + 31
SET @j = CAST(((80 * @l) / 2447) as int)
SET @DDay = @l - CAST( ((2447 * @j) / 80) as int)
SET @l = CAST((@j / 11) as int)
SET @MMonth = @j + 2 - 12 * @l
SET @YYear = 100 * (@n - 49) + @i + @l
END

SET @TMPRESULT=Cast(@MMonth as varchar(2))+'/'+CAST(@DDay as Varchar(2))+'/'+CAST(@YYear as varchar(4)) 
RETURN Cast(@TMPRESULT as Datetime)

END
RETURN NULL 

END
