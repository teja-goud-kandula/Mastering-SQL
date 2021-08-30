# RIGHT

Returns the right part of a character string with the specified number of characters.

## Syntax:
```SQL
RIGHT ( character_expression , integer_expression )
```

## Using RIGHT with a character string
SQL:
```sql
SELECT RIGHT('abcdefg', 2);
```

Output:
```
----
fg

(1 row affected)
```

## Using RIGHT with a column
SQL:
```
SELECT RIGHT(FirstName, 5) AS 'First Name'  
FROM Person.Person  
WHERE BusinessEntityID < 5  
ORDER BY FirstName;  
GO
```
