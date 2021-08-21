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


Usage:

* Write an SQL query to display the text ```CAPONE``` as :
```
C
A
P
O
N
E
```
->	Solution:
```SQL
Declare @str nvarchar(10) = 'CAPONE';
Declare @i INT = 1;

WHILE @i <= LEN(@str)
BEGIN
	PRINT(SUBSTRING(@str,@i,1));
	SET @i = @i + 1;
END
```
