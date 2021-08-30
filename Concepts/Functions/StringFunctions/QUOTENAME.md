# QUOTENAME

Returns a Unicode string with the delimiters added to make the input string a valid SQL Server delimited identifier.

Syntax:
```SQL
QUOTENAME ( 'character_string' [ , 'quote_character' ] )
```

Simple Usage:
```SQL
Select QUOTENAME('ab cd')

Select QUOTENAME('ab')

SELECT QUOTENAME('abc[]def');
```

Output:
```
------------
[ab cd]

(1 row affected)


-----
[ab]

(1 row affected)


------------
[abc[]]def]

(1 row affected)
```


SQL
```SQL
SELECT QUOTENAME('abc def');
```

Output:
```
----------
[abc def]

(1 row affected)
```
