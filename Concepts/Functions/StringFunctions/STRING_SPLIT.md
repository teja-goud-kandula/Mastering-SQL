# STRING_SPLIT

*STRING_SPLIT* inputs a string that has delimited substrings, and inputs one character to use as the delimiter or separator. STRING_SPLIT outputs a single-column table whose rows contain the substrings. The name of the output column is *value*.

## Usage:

Here the seperator is a space. The input is split based on that.

SQL:

```SQL
SELECT value FROM STRING_SPLIT('Lorem ipsum dolor sit amet.', ' ');
```

Output:
```
value
---------------------------
Lorem
ipsum
dolor
sit
amet.

(5 rows affected)
```
