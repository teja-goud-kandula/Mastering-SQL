# Date and Time data types

The data type we need depends on the usage of the application. Suppose we need to store only the date of birth of a person then `date` data type is sufficient.

```SQL
create table Persons
(
	Name nvarchar(20),
	dob date
);

insert into Persons values ('Teja','1995-01-17');
```

Here the date is stored in the format of 'YYYY-MM-DD'. If we pass the value of `MM` or `DD` beyond the range possible then it throws an error.

Example:
```SQL
insert into Persons values ('Avi','1995-17-01'); -- Month is 17
insert into Persons values ('Avi','1995-01-34'); -- Day is 34
insert into Persons values ('Avi','1995-01- -1'); -- Day is -1
```
