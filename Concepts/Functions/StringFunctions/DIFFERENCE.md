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


For the DIFFERENCE function two `character_expression` are being passed as inputs. It first calculates the SOUNDEX() values for these 2 `character_expression`s and then based on that the `DIFFERENCE` function returns and integer between 0 to 4. Where 0 means they are almost similar and 4 means highly dis-similar.
