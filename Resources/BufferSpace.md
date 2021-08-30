# COLLATAION

SQL Server collation refers to a set of character and character encoding rules, and influences how information is stored according to the order in the data page, how data is matched by comparing two columns, and how information is arranged in the T-SQL query statement.

SQL to find the current collation of SQL Server:
```SQL
SELECT SERVERPROPERTY('collation')
```

To know more details about the collation:
```SQL
SELECT * FROM sys.fn_helpcollations() where name = 'SQL_Latin1_General_CP1_CI_AS';
```

The name value is the output from the first query.

Collation can be defined at server level or at the database level or at the column-level or at the expression level.

A simple read on collations:
https://www.geeksforgeeks.org/sql-server-collation/

A detailed read on the collations :
https://docs.microsoft.com/en-us/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver15
