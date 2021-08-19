# IF

Syntax for IF block:
```SQL
IF boolean_expression   
BEGIN
    { statement_block }
END
```

If the `boolean_expression` evaluates to `TRUE` then the code inside the `BEGIN` block is executed.

Example:

```SQL
Declare @i INT ;
Set @i = 1;
IF @i = 1
	BEGIN
		Print('If block is executed')
	END
```
