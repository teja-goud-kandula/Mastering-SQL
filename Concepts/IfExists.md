# IF EXISTS

The following code does the below things for us:

* First, it executes the select statement inside the IF Exists
* If the select statement returns a value that condition is TRUE for IF Exists
* It starts the code inside a begin statement and prints the message

```SQL
IF EXISTS
(
  Select 1
)
  BEGIN
    Print(1)
END;
```

First the select block inside the `IF EXISTS` is executed. If there are one or more records returned from the select block of code, then it means it is `TRUE`. Then the code inside the `BEGIN` block gets executed.

Usage of *IF EXISTS*:
Drop a database only if it exists:

```SQL
IF EXISTS
(
	select [name] from sys.databases where name = 'DropDB'
)
	BEGIN
		DROP Database DropDB
END;
```
