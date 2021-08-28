# LEFT

Returns the left part of a character string with the specified number of characters.

Syntax:
```
LEFT ( character_expression , integer_expression )
```

## Return Types
* Returns varchar when character_expression is a non-Unicode character data type.
* Returns nvarchar when character_expression is a Unicode character data type.


## Using LEFT with a character string

The following example uses `LEFT` to return the two leftmost characters of the character string `abcdefg`.
Instead of the character string `abcdefg` one can also a column from a table. 

SQL:
```SQL
SELECT LEFT('abcdefg',2);  
GO
```

Output:
```
--   
ab   

(1 row(s) affected)
```
