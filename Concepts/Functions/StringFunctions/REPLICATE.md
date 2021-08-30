# REPLICATE

Repeats a string value a specified number of times.

Syntax:
```SQL
REPLICATE ( string_expression , integer_expression )
```

## Just Replicate

SQL:
```SQL
Select REPLICATE('A',5)
```

Output:
```
-----
AAAAA

(1 row affected)
```

## Using REPLICATE and DATALENGTH

The following example left pads numbers to a specified length as they are converted from a numeric data type to character or Unicode.

SQL:
```SQL
IF EXISTS(SELECT name FROM sys.tables  
      WHERE name = 't1')  
   DROP TABLE t1;  
GO  
CREATE TABLE t1   
(  
 c1 varchar(3),  
 c2 char(3)  
);  
GO  
INSERT INTO t1 VALUES ('2', '2'), ('37', '37'),('597', '597');  
GO  
SELECT REPLICATE('0', 3 - DATALENGTH(c1)) + c1 AS 'Varchar Column',  
       REPLICATE('0', 3 - DATALENGTH(c2)) + c2 AS 'Char Column'  
FROM t1;  
GO
```

Output:
```
Varchar Column        Char Column
--------------------	--------------------
002	                   2  
037	                   37 
597	                   597
```
