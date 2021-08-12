# Mastering-SQL
##

This repo is built one step at a time and helps one Master SQL.

A SQL Server database can be created, altered and dropped in 2 ways.
1. Graphically using SQL Server Management Studio(SSMS) or
2. Using a query

To Create the database using a query:
```
Create database DatabaseName
```

Whether, you create a database graphically using the designer or, using a query, the following 2 files get generated:
1. .MDF file - Data file (Contains actual data)
2. .LDF file - Transactional Log file (Used to recover the database)

To alter the database once it's created:
```
Alter database DatabaseName Modify Name = NewDatabaseName
```

Alternatively, you can also use system stored procedure
```
Execute sp_renameDB 'OldDatabaseName','NewDatabaseName'
```
