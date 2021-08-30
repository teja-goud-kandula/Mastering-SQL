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
`nvarchar` takes 2 bytes to store each character.

Codepage incompatabilities are a pain, and Unicode is the cure for codepage problems. With cheap disk and memory nowadays, there is really no reason to waste time mucking around with code pages anymore.

All modern operating systems and development platforms use Unicode internally. By using nvarchar rather than varchar, you can avoid doing encoding conversions every time you read from or write to the database. Conversions take time, and are prone to errors. And recovery from conversion errors is a non-trivial problem.

If you are interfacing with an application that uses only ASCII, I would still recommend using Unicode in the database. The OS and database collation algorithms will work better with Unicode. Unicode avoids conversion problems when interfacing with other systems. And you will be preparing for the future. And you can always validate that your data is restricted to 7-bit ASCII for whatever legacy system you're having to maintain, even while enjoying some of the benefits of full Unicode storage.

Conclusion:

Use `nvarchar`, as it uses Unicode and there will be no compatibility issues, and it provides the benefits of the Unicode storage.
