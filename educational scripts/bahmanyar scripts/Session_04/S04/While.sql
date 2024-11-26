Declare @x Int , @y BigInt
Set @x = 0
Set @y = 1
WHILE(  @x < 10  )
	BEGIN
		Set @x = @x + 1
		Set @y = @y * @x
	END
print @x
print @y
Go
--use break
Declare @x Int , @y BigInt
Set @x = 0
Set @y = 1
WHILE( 1=1 ) --Endless while
	BEGIN
		Set @x = @x + 1
		--IF @x>= 10 Break   --inline if
		IF( @x>=10 )
			BEGIN
				set @y=1000000
				 break
			END
		Set @y = @y * @x
	END
print @x
print @y
