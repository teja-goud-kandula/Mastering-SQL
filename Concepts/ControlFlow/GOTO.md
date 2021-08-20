# GOTO

Syntax:
```SQL
Define the label:   
label:   
Alter the execution:  
GOTO label
```



Usage Example:
```SQL
DECLARE @iterator INT;
SET @iterator = 0;

WHILE @iterator <= 10
BEGIN

   IF @iterator = 3
      GOTO LastBlock;
	print @iterator
   SET @iterator = @iterator + 1;

END;

LastBlock:
   PRINT 'Reached the last block';

GO
```

Output:
```
0
1
2
Reached the last block
```

Another example using GOTO :
```SQL
declare @test int;
set @test = 1;
goto tests

common:
	print 'common bit'

tests:
	if @test = 1 print '1';
	if @test = 2 print '2';
	if @test = 3 print '3';

set @test = @test + 1;

if @test <= 3
	goto common

print 'finished ' + cast(@test as varchar(5))
go  -- goto can not be used past go!

```

Output:
```
1
common bit
2
common bit
3
finished 4
```

GOTO statements can't be used beyond `GO`
