# CONTINUE

Syntax :
```SQL
WHILE Boolean_expression
BEGIN
    -- code to be executed
    IF condition
        CONTINUE;
    -- code will be skipped if the condition is met
END
```

Any statements after the CONTINUE keyword are ignored.

Once the `IF` condition evaluates to `TRUE` the `CONTINUE` keyword is reached, then the entire code after the `CONTINUE` keyword till the `END` keyword is skipped and control moves to the start of the `WHILE` loop. The `WHILE` loop runs until the `Boolean_expression` evaluates to `TRUE`

Similar to the `BREAK` statement the `CONTINUE` statement is often used in conjunction with an `IF` statement. Note that this is not mandatory though.

Usage :
```SQL
DECLARE @counter INT = 0;

WHILE @counter < 5
BEGIN
    SET @counter = @counter + 1;
    IF @counter = 3
        CONTINUE;
    PRINT @counter;
END
```

Output:
```
1
2
4
5
```
