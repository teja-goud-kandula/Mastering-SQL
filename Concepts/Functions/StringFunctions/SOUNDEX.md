# SOUNDEX

Returns a four-character (SOUNDEX) code to evaluate the similarity of two strings.

[Further Reference on the SOUNDEX system.](https://www.archives.gov/research/census/soundex.html)

Syntax:
```SQL
SOUNDEX ( character_expression )
```

Example:
SQL:
```SQL
-- Using SOUNDEX  
SELECT SOUNDEX ('Smith'), SOUNDEX ('Smythe');
```

Output:
```

----- -----
S530  S530

(1 row affected)
```
