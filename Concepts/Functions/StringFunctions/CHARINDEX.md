# CHARINDEX

This function searches for one character expression inside a second character expression, returning the starting position of the first expression if found.

Syntax:
```SQL
CHARINDEX ( expressionToFind , expressionToSearch [ , start_location ] )
```

[start_location] is optional. If [start_location] is not speciified then it will search from the index 1. Indexes in SQL Server begin from 1. (Not like programming languages where it begins from 1)


## Returning the starting position of an expression
Simple usage Example 1:
```
Select CHARINDEX('a','Teja') as [Index of a]
```

Output:
```
Index of a
----------
4
```

Example 2:
This example searches for `bicycle` in the searched string value variable `@document`.
```
DECLARE @document VARCHAR(64);  
SELECT @document = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('bicycle', @document) as [Location of bicycle];  
GO
```
The result set:
```
Location of bicycle
-------------------
48
```



## Searching from a specific position


```SQL
Select CHARINDEX('a','Teja',2) as [Index of a]
```

Output:
```
Index of a
-----------
4
```

Location of the word `safety` without using the start position, i.e. the `CHARINDEX` returns the resultant position by searching from the Index = 1, i.e. the default value of the `start_location` is 1.
```SQL
DECLARE @document VARCHAR(64);  

SELECT @document = 'Safety: Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('Safety', @document) as [Location of Safety from start];  
GO
```
Output:
```
Location of Safety from start
-----------------------------
1
```

This example uses the optional *start_location* parameter to start the search for `Safety` at the fifth character of the searched string value variable `@document`.

```SQL
DECLARE @document VARCHAR(64);  

SELECT @document = 'Safety: Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('Safety', @document,5) as [Location of Safety after location 5];  
GO
```

Output:
```
Location of Safety after location 5
-----------------------------------
30
```

## Searching for a nonexistent expression

This example shows the result set when CHARINDEX does not find *expressionToFind* within *expressionToSearch*.
When there is no result set, then the CHARINDEX function returns `0`.

```SQL
SELECT CHARINDEX('3','Teja') as [Location of 3]
```

Output:
```
Location of 3
-------------
0

(1 row affected)
```


```SQL
DECLARE @document VARCHAR(64);  

SELECT @document = 'Reflectors are vital safety' +  
                   ' components of your bicycle.';  
SELECT CHARINDEX('bike', @document);  
GO
```

Output:
```
-----------
0

(1 row affected)

```

## Performing a case-sensitive search

The concept here is to use the `COLLATE Latin1_General_CS_AS` along with the string to be searched.
This example shows a case-sensitive search for the string `'TEST'` in searched string `'This is a Test'`.

```SQL
USE tempdb;  
GO  
--perform a case sensitive search  
SELECT CHARINDEX ( 'TEST',  
       'This is a Test'  
       COLLATE Latin1_General_CS_AS);
```

Output:
```

-----------
0

(1 row affected)
```

This example shows a case-sensitive search for the string `'Test'` in searched string `'This is a Test'`.
```SQL
USE tempdb;  
GO  
--perform a case sensitive search  
SELECT CHARINDEX ( 'Test',  
       'This is a Test'  
       COLLATE Latin1_General_CS_AS);
```

Output:
```

-----------
11

(1 row affected)
```

## Performing a case-insensitive search

The concept here is to use the `COLLATE Latin1_General_CI_AS` along with the string to be searched.
This example shows a case-insensitive search for the string `'TEST'` in searched string `'This is a Test'`.
```SQL
USE tempdb;  
GO  
--perform a case insensitive search  
SELECT CHARINDEX ( 'TEST',  
       'This is a Test'  
       COLLATE Latin1_General_CI_AS);
```


Output:
```
-----------
11

(1 row affected)
```
