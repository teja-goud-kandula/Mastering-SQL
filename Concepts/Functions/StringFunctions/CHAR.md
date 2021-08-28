# CHAR

Returns the single-byte character with the specified integer code, as defined by the character set and encoding of the default collation of the current database.

Syntax:
```SQL
CHAR ( integer_expression )
```

An integer from 0 through 255. `CHAR` returns a `NULL` value for integer expressions outside this input range or not representing a complete character. `CHAR` also returns a `NULL` value when the character exceeds the length of the return type. Many common character sets share ASCII as a sub-set and will return the same character for integer values in the range 0 through 127.
