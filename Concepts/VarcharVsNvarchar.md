# Difference between varchar and nvarchar

```SQL
Declare @nvarchar_Var nvarchar(20);
Declare @varchar_Var varchar(20);

Set @nvarchar_Var = 'Tejas';
Set @varchar_Var = 'Tejas';

Select DATALENGTH(@nvarchar_Var) as [nvarchar_Var Len]
Select DATALENGTH(@varchar_Var) as [varchar_Var Len]
```

Output:
```
nvarchar_Var Len
----------------
10

(1 row affected)

varchar_Var Len
---------------
5

(1 row affected)
```

* `nvarchar` can store any Unicode data.
* A `varchar` column is restricted to an 8-bit codepage.
`nvarchar` takes 2 bytes to store
