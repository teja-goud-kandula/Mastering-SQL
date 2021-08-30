#  REPLACE

Replaces all occurrences of a specified string value with another string value.

Syntax:
```SQL
REPLACE ( string_expression , string_pattern , string_replacement )
```

Usage Example:
In the string `abcd` we are replacing the `a` with `b`.
SQL:
```SQL
Select REPLACE ( 'abcd' , 'a' , 'b' )
```

Output:
```
------
bbcd

(1 row affected)
```
