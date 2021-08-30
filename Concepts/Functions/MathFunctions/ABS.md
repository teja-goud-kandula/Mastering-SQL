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
