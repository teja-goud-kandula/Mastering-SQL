# LTRIM

Returns a character expression after it removes *leading blanks* (leading blanks means blanks that are present on the left of the character expression).

Syntax:
```SQL
LTRIM ( character_expression )
```
## Example:

It removes only the blanks that are present on the left side of the character expression.

SQL:
```SQL
Select LTRIM(' Data Engineer')
```

Output:
```
--------------
Data Engineer

(1 row affected)
```
