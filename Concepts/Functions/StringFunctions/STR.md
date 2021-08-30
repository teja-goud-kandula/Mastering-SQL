# STR

Returns character data converted from numeric data. The character data is right-justified, with a specified length and decimal precision.

Syntax:
```SQL
STR ( float_expression [ , length [ , decimal ] ] )
```

# Usage:

## Only float_expression is specified, length and decimal are not specified.

Here the length and decimal precision are not specified, it returns only the integer part, i.e. the precision for decimal is taken as `0` and length is used for the integer part of the `float_expression`.

SQL:
```SQL
Select STR(123.45)
```

Output:
```

----------
       123

(1 row affected)
```

## float_expression and length are specified, decimal is not specified

The function takes the default decimal precision as zero and rounds off the `float_expression` to the nearest integer. Here, `123.55` is rounded off to `124`.

SQL:
```SQL
Select STR(123.55,8)
```

Output:
```

----------
       124

(1 row affected)
```


## float_expression and length are specified, decimal is not specified, but expression exceeds the length

If the length specified is less than the length of the expression the function returns `**`. The number of `*` depends on the length value.
SQL:
```SQL
Select STR(123.55,2)
```

Output:
```

----
**

(1 row affected)
```

## float_expression, length and decimal are specified

Here, the `.` is also counted under the length, so by counting the `.` we are left with only one numeric value after the `.`.  So the output is rounded off to one decimal point even though we have specified 2 decimal points in the `STR` function.

SQL:
```SQL
Select STR(123.55,5,2)
```

Output:
```

-----
123.6

(1 row affected)
```

## float_expression, length and decimal are specified

Now, the result rounded of to 2 decimal places. 

SQL:
```SQL
Select STR(123.55,6,2)
```

Output:
```

------
123.55

(1 row affected)
```
