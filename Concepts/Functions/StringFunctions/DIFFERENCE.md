# DIFFERENCE

This function returns an integer value measuring the difference between the [SOUNDEX()](/Concepts/Functions/StringFunctions//SOUNDEX.md) values of two different character expressions.

Syntax:
```SQL
DIFFERENCE ( character_expression , character_expression )
```

## Arguments
*character_expression*
An alphanumeric expression of character data. character_expression can be a constant, variable, or column.

## Return Types
int


For the DIFFERENCE function two `character_expression` are being passed as inputs. It first calculates the SOUNDEX() values for these 2 `character_expression`s and then based on that the `DIFFERENCE` function returns the degree to which the `SOUNDEX` values match, on a scale of 0 to 4. A value of 0 means weak or no similarity between the SOUNDEX values; 4 indicates strongly similar, or even identically matching, SOUNDEX values.

`DIFFERENCE` and `SOUNDEX` have collation sensitivity.

## Example 1:
Compare the `SOUNDEX` values of two very similar strings. For a Latin1_General collation, `DIFFERENCE` returns a value of `4`.

SQL:
```SQL
-- Returns a DIFFERENCE value of 4, the least possible difference.  
SELECT SOUNDEX('Green'), SOUNDEX('Greene'), DIFFERENCE('Green','Greene');  
GO  
```
Output:
```

----- ----- -----------
G650  G650  4

(1 row affected)
```

## Example 2:

compares the `SOUNDEX` values for two very different strings, and for a Latin1_General collation, `DIFFERENCE` returns a value of `0`.

SQL:
```SQL
-- Returns a DIFFERENCE value of 0, the highest possible difference.  
SELECT SOUNDEX('Blotchet-Halls'), SOUNDEX('Greene'), DIFFERENCE('Blotchet-Halls', 'Greene');  
GO  
```

Output:
```

----- ----- -----------
B432  G650  0

(1 row affected)
```
