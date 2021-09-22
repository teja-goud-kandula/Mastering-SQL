# Intersect

Intersect operator retrieves the common records from both the left and the right query of the Intersect operator.

For Intersect operator to work it must satisfy the following conditions:

* The number of the columns and the order of the columns must be same in both the queries
* The data types must be same or at least compatible


SQL Script to create the tables and populate with test data:
```SQL
Create Table TableA
(
    Id int,
    Name nvarchar(50),
    Gender nvarchar(10)
)
Go

Insert into TableA values (1, 'Mark', 'Male')
Insert into TableA values (2, 'Mary', 'Female')
Insert into TableA values (3, 'Steve', 'Male')
Go

Create Table TableB
(
    Id int,
    Name nvarchar(50),
    Gender nvarchar(10)
)
Go

Insert into TableB values (2, 'Mary', 'Female')
Insert into TableB values (3, 'Steve', 'Male')
Go
```

Retrieving the common records from the tables using `Intersect` operator.
i.e. Retrieving the common records from both the left and the right query of the Intersect operator.

```SQL
select Id, Name, Gender from TableA
Intersect
select Id, Name, Gender from TableB
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
2           Mary                                               Female
3           Steve                                              Male

(2 rows affected)
```

Achieving the same using `INNER JOIN`:

```SQL
Select TableA.Id, TableA.Name, TableA.Gender
From TableA Inner Join TableB
On TableA.Id = TableB.Id
```

# Difference between Intersect and INNER JOIN

1. INTERSECT filters duplicates and returns only DISTINCT rows that are common between the LEFT and Right Query, where as INNER JOIN does not filter the duplicates.

To understand this difference, insert the following row into TableA
```SQL
Insert into TableA values (2, 'Mary', 'Female')
```

Now execute the following INTERSECT query. Notice that we get only the DISTINCT rows.

```SQL
Select Id, Name, Gender from TableA
Intersect
Select Id, Name, Gender from TableB
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
2           Mary                                               Female
3           Steve                                              Male

(2 rows affected)
```

Now execute the following INNER JOIN query. Notice that the duplicate rows are not filtered.
```SQL
Select TableA.Id, TableA.Name, TableA.Gender
From TableA Inner Join TableB
On TableA.Id = TableB.Id
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
2           Mary                                               Female
3           Steve                                              Male
2           Mary                                               Female
```
To make the `INNER JOIN` behave like `INTERSECT` operator by using the `DISTINCT` operator

```SQL
Select DISTINCT TableA.Id, TableA.Name, TableA.Gender
From TableA Inner Join TableB
On TableA.Id = TableB.Id
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
2           Mary                                               Female
3           Steve                                              Male

(2 rows affected)
```


2. INNER JOIN treats two NULLS as two different values

So if you are joining two tables based on a nullable column and if both tables have NULLs in that joining column then, INNER JOIN will not include those rows in the result-set, where as INTERSECT treats those two NULLs as a same value and it returns all matching rows.

To understand this difference, execute the following 2 insert statements
```SQL
Insert into TableA values(NULL, 'Pam', 'Female')
Insert into TableB values(NULL, 'Pam', 'Female')
```

* INTERSECT query
```SQL
Select Id, Name, Gender from TableA
Intersect
Select Id, Name, Gender from TableB
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
NULL        Pam                                                Female
2           Mary                                               Female
3           Steve                                              Male

(3 rows affected)

```

* INNER JOIN query

```SQL
Select TableA.Id, TableA.Name, TableA.Gender
From TableA Inner Join TableB
On TableA.Id = TableB.Id
```

Output:
```
Id          Name                                               Gender
----------- -------------------------------------------------- ----------
2           Mary                                               Female
3           Steve                                              Male
2           Mary                                               Female

(3 rows affected)
```
