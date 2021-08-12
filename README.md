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

## How to drop a database that is in use?

You can't drop a database, if it is in currently in use. You get an error :
```
Cannot drop database "DatabaseName" because it is currently in use.
```

If other users are connected, you need to put the database in single user mode and then drop the database. The same can be achieved in 2 ways:
1. Using GUI
2. Using query

Using GUI > Object explorer > Right click on the database > Delete > In the delete object window > Check Close existing connections > Click OK

Using query >

```
Alter database DatabaseName Set SINGLE_USER With Rollback Immediate
```
The above query puts the database in single user mode. After that run the query to drop the database.

With Rollback Immediate option, will rollback all incomplete transactions and closes the connection to the database.

By default databases are in multi user mode, so, if other users are connected, you need to put the database in single user mode and then drop the database.


**Note: System databases cannot be dropped.**
There are 5 system databases. They are:
1. Master Database -> Records all the system-level information for an instance of SQL Server.
2. Model Database -> Is used as the template for all databases created on the instance of SQL Server. Modifications made to the model database, such as database size, collation, recovery model, and other database options, are applied to any databases created afterward.
3. msdb Database -> Is used by SQL Server Agent for scheduling alerts and jobs.
4. tempdb Database -> Is a workspace for holding temporary objects or intermediate result sets.
5. Resource Database -> Is a read-only database that contains system objects that are included with SQL Server. System objects are physically persisted in the Resource database, but they logically appear in the sys schema of every database.
