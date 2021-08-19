# WHILE

The syntax of the WHILE loop in SQL looks like as follows:
```SQL
WHILE condition
BEGIN
   {...statements...}
END
```

Example:
```SQL
Declare @i INT ;
Set @i = 1;

while (@i <= 5)
	BEGIN
		print('The value of i is: '+ convert(Varchar,@i))
		set @i = @i + 1
	END
```
Output :
```
The value of i is: 1
The value of i is: 2
The value of i is: 3
The value of i is: 4
The value of i is: 5
```
