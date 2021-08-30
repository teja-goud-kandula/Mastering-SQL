# Handling NULLS

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
## ISNULL
Using ISNULL()
```SQL
select
  Employee,
  ISNULL(Manager, 'No Manager') as ManagerName
from
  EmployeeManager;
```

## CASE
Using CASE
```SQL
select
  Employee,
  CASE WHEN Manager IS NULL THEN 'No Manager' ELSE Manager END as ManagerName
from
  EmployeeManager;
```

## COALESCE
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
