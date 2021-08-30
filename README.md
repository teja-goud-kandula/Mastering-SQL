# Mastering-SQL
##

This repo is built one step at a time and helps one Master SQL.

# Creating altering and dropping a database
A SQL Server database can be created, altered and dropped in 2 ways.
1. Graphically using SQL Server Management Studio(SSMS) or
2. Using a query

To Create the database using a query:
```SQL
Create database DatabaseName
```

Whether, you create a database graphically using the designer or, using a query, the following 2 files get generated:
1. .MDF file - Data file (Contains actual data)
2. .LDF file - Transactional Log file (Used to recover the database)

To find these 2 files, go to the object explorer, right click on the database, properties > Files tab.
There you can see two files, under Database files:
That path provides the location for the .MDF and .LDF files

To alter the database once it's created:
```SQL
Alter database DatabaseName Modify Name = NewDatabaseName
```

Alternatively, you can also use system stored procedure
```SQL
Execute sp_renameDB 'OldDatabaseName','NewDatabaseName'
```

To delete or Drop a database
```SQL
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

```SQL
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


# Creating and working with tables






# Different ways to replace NULLS in SQL Server
Three ways to replace NULL values
1. ISNULL() function
2. CASE statement
3. COALESCE() statement

Code for the table :
```SQL

create Table EmployeeManager
(
	Employee nvarchar(30),
	Manager nvarchar(30)
);

Insert into EmployeeManager values
('Mike','Todd'),
('Rob','Mike'),
('Todd',NULL),
('Ben','Mike'),
('Sam','Mike')

```

Using ISNULL()
```SQL
select
  Employee,
  ISNULL(Manager, 'No Manager') as ManagerName
from
  EmployeeManager;
```
Using CASE
```SQL
select
  Employee,
  CASE WHEN Manager IS NULL THEN 'No Manager' ELSE Manager END as ManagerName
from
  EmployeeManager;
```
Using COALESCE
```SQL
select
  Employee,
  COALESCE(Manager, 'No Manager') as ManagerName
from
  EmployeeManager;
```
## More about COALESCE function
COALESCE function returns the first Non NULL value.
Ex :
```SQL
Select COALESCE(FirstName, MiddleName, LastName) as Name from Employee;
```
The above query returns:
*  FirstName if FirstName is NOT NULL
*  MiddleName if FirstName is NULL and MiddleName is NOT NULL
*  LastName if both FirstName and MiddleName are NULL and LastName is NOT NULL

If all the above 3 values are NULL then it will throw an error like this:
```
At least one of the arguments to COALESCE must be an expression that is not the NULL constant.
```
# Control Flow in SQL Server

* [BEGIN...END](/Concepts/ControlFlow/BEGIN...END.md)
* [BREAK](/Concepts/ControlFlow/BREAK.md)
* [CONTINUE](/Concepts/ControlFlow/CONTINUE.md)
* [ELSE (IF..ELSE)](/Concepts/ControlFlow/IfElse.md)
* [END](/Concepts/ControlFlow/End.md)
* [GOTO](/Concepts/ControlFlow/GOTO.md)
* [RETURN](/Concepts/ControlFlow/RETURN.md)
* [THROW](/Concepts/ControlFlow/THROW.md)
* [TRY...CATCH](/Concepts/ControlFlow/TRY...CATCH.md)
* [IF EXISTS](/Concepts/ControlFlow/IfExists.md)
* [IF](/Concepts/ControlFlow/If.md)
* [WAITFOR](/Concepts/ControlFlow/WaitFor.md)
* [WHILE](/Concepts/ControlFlow/While.md)

# System variables

* [@@ROWCOUNT](/Concepts/SystemVariables/RowCount.md)

# Aggregate Functions in SQL Server
* AVG
* MIN
* MAX
* SUM
* COUNT
* [STRING_AGG](/Concepts/Functions/StringFunctions/StringAgg.md)

# Built in FUNCTIONS in SQL Server

## Mathematical functions in SQL Server

## String functions in SQL Server
* [ASCII](/Concepts/Functions/StringFunctions/ASCII.md)
* [CHAR](/Concepts/Functions/StringFunctions/CHAR.md)
* [CHARINDEX](/Concepts/Functions/StringFunctions/CHARINDEX.md)
* [CONCAT](/Concepts/Functions/StringFunctions/CONCAT.md)
* [CONCAT_WS](/Concepts/Functions/StringFunctions/CONCAT_WS.md)
* [DIFFERENCE](/Concepts/Functions/StringFunctions/DIFFERENCE.md)
* [FORMAT](/Concepts/Functions/StringFunctions/FORMAT.md)
* [LEFT](/Concepts/Functions/StringFunctions/LEFT.md)
* [LEN](/Concepts/Functions/StringFunctions/LEN.md)
* DATALENGTH
* [LOWER](/Concepts/Functions/StringFunctions/LOWER.md)
* [LTRIM](/Concepts/Functions/StringFunctions/LTRIM.md)
* [NCHAR](/Concepts/Functions/StringFunctions/NCHAR.md)
* [PATINDEX](/Concepts/Functions/StringFunctions/PATINDEX.md)
* [QUOTENAME](/Concepts/Functions/StringFunctions/QUOTENAME.md)
* REPLACE
* REPLICATE
* REVERSE
* RIGHT
* RTRIM
* [SOUNDEX](/Concepts/Functions/StringFunctions/SOUNDEX.md)
* SPACE
* STR
* STRING_ESCAPE
* STRING_SPLIT
* STUFF
* SUBSTRING
* TRANSLATE
* TRIM
* UNICODE
* UPPER

## Other functions in SQL Server
* [HOST_Name()](/Concepts/Functions/OtherFunctions/HOST_Name.md)


# Questions and answers
* [Difference between varchar and nvarchar in SQL Server?] (/Concepts/VarcharVsNvarchar.md)

## Hacker Rank
* [The Report](/HackerRank/The Report/)
The concept required to solve this question is that the JOIN condition is to be applied using `BETWEEN` clause.

* [Placements](/HackerRank/Placements/)
The concept required to solve this question is that we need to use the same table twice in order to `JOIN` in 2 instances. Table `Placements` is used as `P1` and `P2`, this will create 2 different instances of the same table.
