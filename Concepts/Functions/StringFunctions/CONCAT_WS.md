# CONCAT_WS

This function returns a string resulting from the concatenation, or joining, of two or more string values in an end-to-end manner. It separates those concatenated string values with the delimiter specified in the first function argument. (CONCAT_WS indicates *concatenate with separator*.)

Syntax:
```SQL
CONCAT_WS ( separator, argument1, argument2 [, argumentN]... )
```

## Arguments
separator An expression of any character type (char, nchar, nvarchar, or varchar).

*argument1, argument2, argumentN* An expression of any type. The CONCAT_WS function requires at least two arguments (excluding the separator), and no more than 254 arguments.

## Return types
A string value whose length and type depend on the input.


## Concatenating values with separator

SQL:
```SQL
Select CONCAT_WS('-','A','B','C')
```
Output:
```
-----
A-B-C

(1 row affected)
```

## Skipping NULL values
SQL:
```SQL
Select CONCAT_WS('-','A','B','C',NULL,'D')
```
Output:
```

--------
A-B-C-D

(1 row affected)
```

## Generating CSV file from table

Here in the SQL query, the separator is `,` and char(13) means a new line character.

SQL:
```SQL
SELECT
STRING_AGG(CONCAT_WS( ',', database_id, recovery_model_desc, containment_desc), char(13)) AS DatabaseInfo
FROM sys.databases
```

Output:
```
DatabaseInfo
------------   
1,SIMPLE,NONE
2,SIMPLE,NONE
3,FULL,NONE
4,SIMPLE,NONE
```

CONCAT_WS ignores NULL values in the columns. Wrap a nullable column with the ISNULL function, and provide a default value.

If a column contains a `NULL` value that will be entirely skipped by the `CONCAT_WS` while generating the CSV file.

See this example for more:

```SQL
SELECT
STRING_AGG(CONCAT_WS( ',', database_id, ISNULL(recovery_model_desc,''), ISNULL(containment_desc,'N/A')), char(13)) AS DatabaseInfo
FROM sys.databases;
```
