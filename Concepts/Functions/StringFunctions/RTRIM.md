# RTRIM

Returns a character string after truncating all trailing spaces (trailing spaces means spaces that are to the right of the character string) .

Syntax:
```sql
RTRIM ( character_expression )
```

## Simple Example

Remove spaces at the end of the sentence, and return the string without the spaces at the end of the sentence.

SQL:
```SQL
SELECT RTRIM('Removes trailing spaces.   ');
```

Output:
```

---------------------------
Removes trailing spaces.

(1 row affected)
```

## Simple Example

Remove trailing spaces from the first string and concatenate that with the second string. 

SQL:
```SQL
SELECT RTRIM('Four spaces are after the period in this sentence.    ') + 'Next string.';
```

## Using RTRIM with a variable
SQL:
```SQL
DECLARE @string_to_trim VARCHAR(60);  
SET @string_to_trim = 'Four spaces are after the period in this sentence.    ';  
SELECT @string_to_trim + ' Next string.';  
SELECT RTRIM(@string_to_trim) + ' Next string.';  
GO
```
