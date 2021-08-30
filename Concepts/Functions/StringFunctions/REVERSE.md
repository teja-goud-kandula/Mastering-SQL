# REVERSE

## Syntax:
```SQL
REVERSE ( string_expression )
```

## Return Types:
varchar or nvarchar

## Remarks:
*string_expression* must be of a data type that is implicitly convertible to varchar. Otherwise, use `CAST` to explicitly convert *string_expression*.

## Application:
* Reverse can be applied on columns, to reverse the value of the column
```SQL
SELECT FirstName, REVERSE(FirstName) AS Reverse  
FROM Person.Person  
WHERE BusinessEntityID < 5  
ORDER BY FirstName;  
GO
```

* Reverse the characters in a variable.
```SQL
DECLARE @myvar VARCHAR(10);  
SET @myvar = 'sdrawkcaB';  
SELECT REVERSE(@myvar) AS Reversed ;  
GO
```

* Reverse an INT, this example makes an implicit conversion from an int data type into varchar data type and then reverses the result.
```SQL
SELECT REVERSE(1234) AS Reversed ;  
GO
```
