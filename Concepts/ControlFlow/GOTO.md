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
