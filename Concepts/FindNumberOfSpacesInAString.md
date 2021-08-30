# Find Number Of Spaces In a String

For a given string find number of spaces present in it.

SQL:
```SQL
DECLARE @str NVARCHAR(100), @len1 INT, @len2 INT;
SET @str = N'This is a sentence with spaces in it.';
SET @len1 = LEN(@str);
SET @str = REPLACE(@str, N' ', N'');
SET @len2 = LEN(@str);
SELECT N'Number of spaces in the string: ' + CONVERT(NVARCHAR(20), @len1 - @len2);

GO
```

Output:
```

----------------------------------------------------
Number of spaces in the string: 7

(1 row affected)
```

The logic is that, first we find the length of the given string. Then replace eliminate all the spaces from the given string using the `REPLACE` function. Then find the length of the new string. Then calculate the difference between the two lengths, this will give us the number of spaces present in a given string.


Another similar example:
SQL:
```SQL
Declare @Str nvarchar(100), @len1 INT, @len2 INT;
Set @Str = 'Welcome to the world of Data Engineering';
-- Finding the length of the given string
Set @len1 = LEN(@Str);
-- Replace all the spaces with nothing in the given string, i.e. eliminate all the spaces from a given string
Set @Str = REPLACE(@str,N' ',N'');
-- Finding the length of the new string
Set @len2 = LEN(@Str);
Select N'The number of spaces is: ' + CONVERT(nvarchar(20), @len1 - @len2)
GO
```

Output:
```
---------------------------------------------
The number of spaces is: 6

(1 row affected)

```
