# IF ELSE

Syntax :
```SQL
IF Boolean_expression
  BEGIN
      -- Statement block executes when the Boolean expression is TRUE
  END
ELSE
  BEGIN
      -- Statement block executes when the Boolean expression is FALSE
  END
```

If the `Boolean_expression` is `TRUE` then the code inside the `BEGIN` immediately after the `IF` is executed else the code in the `BEGIN` after the `ELSE` statement is executed.

Example :
```SQL
Declare @i INT ;
Set @i = 1;
IF @i = 1
	BEGIN
		print('If block is executed')
	END
ELSE
	BEGIN
		print('Else block is executed')
	END
```
