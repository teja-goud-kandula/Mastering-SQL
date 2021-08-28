# CONCAT

This function returns a string resulting from the concatenation, or joining, of two or more string values in an end-to-end manner.

Syntax:
```SQL
CONCAT ( string_value1, string_value2 [, string_valueN ] )
```

Return Type:
*string_value*
A string value whose length and type depend on the input.

## Using CONCAT
SQL:
```SQL
Select CONCAT ('Happy ', 'Coding ' , 'to ', 'the ', 'Data ' ,'Engineeers') as Result
```

Output:
```
Result
-----------------------------------
Happy Coding to the Data Engineeers

(1 row affected)
```

## Using CONCAT with NULL values
SQL:
```SQL
Select CONCAT ('Happy ', 'Coding ' , 'to ', 'the ', NULL ,'Engineeers') as Result
```
Output:
```
Result
------------------------------
Happy Coding to the Engineeers

(1 row affected)
```
