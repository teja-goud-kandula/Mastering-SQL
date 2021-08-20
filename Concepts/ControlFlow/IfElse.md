# IF ELSE

Syntax :
```SQL
IF Boolean_expression   
     { sql_statement | statement_block }   
ELSE   
     { sql_statement | statement_block }
```

If the `Boolean_expression` is `TRUE` then the code inside the `BEGIN` immediately after the `IF` is executed else the code in the `BEGIN` after the `ELSE` statement is executed.

Example :
```SQL
Declare @i INT ;
Set @i = 1;
IF @i = 1
	BEGIN
		print('If block is executed')
	END
ELSE
	BEGIN
		print('Else block is executed')
	END
```

## Using a simple Boolean Expression :

```SQL
IF 1 = 1
  PRINT 'Boolean_expression is true.'  
ELSE
  PRINT 'Boolean_expression is false.' ;
```

```SQL
IF 1 = 2
  PRINT 'Boolean_expression is true.'  
ELSE
  PRINT 'Boolean_expression is false.' ;  
GO
```

## Using a query as part of a Boolean expression

```SQL
USE AdventureWorks  
GO  
IF   ( (SELECT COUNT(*) FROM Production.Product WHERE Name LIKE 'Touring-3000%' ) > 5  )
	PRINT 'There are more than 5 Touring-3000 bicycles.'  
ELSE
	PRINT 'There are 5 or less Touring-3000 bicycles.' ;  
GO
```



## Using nested IF...ELSE statements
```SQL
DECLARE @Number INT;  
SET @Number = 50;  
IF @Number > 100  
   PRINT 'The number is large.';  
ELSE   
   BEGIN  
      IF @Number < 10  
        PRINT 'The number is small.';  
      ELSE  
        PRINT 'The number is medium.';  
   END ;  
-- End of Else block
GO
```
