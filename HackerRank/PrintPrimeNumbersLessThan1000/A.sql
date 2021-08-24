Declare @i int;
Declare @j int;
Declare @count int;
Set @count = 0;
Set @i = 2;
Set @j = 2;
Declare @output nvarchar(1000);
Set @output = ''
while @i <= 1000
	BEGIN
		set @j = 1
		set @count = 0

		while @j <= @i
			BEGIN
				if @i % @j = 0
					set @count = @count + 1
				set @j = @j + 1
			END
		if @count = 2
			BEGIN
				--print(@i)
				Set @output = @output + '&' + CAST(@i AS VARCHAR(10))
			END
		set @i = @i + 1
	END


print SUBSTRING(@output,2,Len(@output))
