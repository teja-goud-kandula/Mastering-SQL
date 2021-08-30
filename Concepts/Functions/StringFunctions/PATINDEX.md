# PATINDEX

Returns the starting position of the first occurrence of a pattern in a specified expression, or zeros if the pattern is not found, on all valid text and character data types.

Syntax:
```SQL
PATINDEX ( '%pattern%' , expression )
```

## Simple PATINDEX example

The following example checks a short character string (`interesting data`) for the starting location of the characters `ter`.

SQL:
```SQL
SELECT position = PATINDEX('%ter%', 'interesting data');
```

Output:
```
position
--------
3
```
