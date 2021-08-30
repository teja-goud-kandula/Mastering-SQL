# ABS

A mathematical function that returns the absolute (positive) value of the specified numeric expression. (`ABS` changes negative values to positive values. `ABS` has no effect on zero or positive values.)

## Syntax:
```SQL
ABS ( numeric_expression )
```
## Usage
SQL:
```SQL
SELECT ABS(-1.0), ABS(0.0), ABS(1.0);
```

Output:
```
---- ---- ----  
1.0  0.0  1.0
```

## Note

For example, the int data type has a value range from `-2,147,483,648` to `2,147,483,647`. Computing the absolute value for the signed integer `-2,147,483,648` will cause an overflow error because its absolute value exceeds the positive range limit for the int data type.
