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

To find these 2 files, go to the object explorer, right click on the database, properties > Files tab.
There you can see two files, under Database files:
That path provides the location for the .MDF and .LDF files

To alter the database once it's created:
```
Alter database DatabaseName Modify Name = NewDatabaseName
```

Alternatively, you can also use system stored procedure
```
Execute sp_renameDB 'OldDatabaseName','NewDatabaseName'
```

To delete or Drop a database
```
Drop Database DatabaseThatYouWantToDrop
```

Dropping a database, deletes the LDF and MDF files.

You can't drop a database, if it is in currently in use. You get an error :
```
Cannot drop database "DatabaseName" because it is currently in use.
```

So, if other users are connected, you need to put the database in single user mode and the drop the database.
Query to do that:
```
Alter database DatabaseName Set SINGLE_USER With Rollback Immediate
```

With Rollback Immediate option, will rollback all incomplete transactions and closes the connection to the database.

**Note: System databases cannot be dropped.**
