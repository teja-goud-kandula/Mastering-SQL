# BREAK

To exit the current iteration of a `WHILE` loop, you use the BREAK statement.

Syntax of `BREAK`:
```SQL
WHILE Boolean_expression
BEGIN
    -- statements
   IF condition
        BREAK;
    -- other statements    
END
```

In this syntax, the `BREAK` statement exit the `WHILE` loop immediately once the condition  specified in the `IF` statement is met. All the statements between the `BREAK` and `END` keywords are skipped.

Suppose we have a `WHILE` loop nested inside another `WHILE` loop:
```SQL
WHILE Boolean_expression1
BEGIN
    -- statement
    WHILE Boolean_expression2
    BEGIN
        IF condition
            BREAK;
    END
END
```
In this case, the `BREAK` statement only exits the innermost loop in the `WHILE` statement.

Note that the `BREAK` statement can be used only inside the `WHILE` loop. The `IF` statement is often used with the `BREAK` statement but it is not required.

SQL Server Break Statement Example :
```SQL
DECLARE @counter INT = 0;

WHILE @counter <= 5
BEGIN
    SET @counter = @counter + 1;
    IF @counter = 4
        BREAK;
    PRINT @counter;
END
```

Output:
```
1
2
3
```
