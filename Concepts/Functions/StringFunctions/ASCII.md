# ASCII

* ASCII stands for American Standard Code for Information Interchange. It serves as a character encoding standard for modern computers.
*	ASCII is a 7-bit character set. Extended ASCII or High ASCII is an 8-bit character set that is not handled by the ASCII function.
### Syntax:
ASCII ( character_expression )
character_expression is an expression of type char or varchar.
### Return type :
int
SQL:
```SQL
SELECT ASCII('A')
```
Here is the result set:
```
A         
-----------
65    
```



```SQL
SELECT ASCII('P') AS [ASCII], ASCII('æ') AS [Extended_ASCII];
```
Output:
```
 ASCII       Extended_ASCII
 ----------- --------------
 80          195
```
To verify if the results above map to the correct character code point, use the output values with the CHAR or NCHAR function:
```
SELECT NCHAR(80) AS [CHARACTER], NCHAR(195) AS [CHARACTER];
```
Here is the result set:
```
 CHARACTER CHARACTER
 --------- ---------
 P         Ã
```
From the above result, we can notice that for code point 195 is *Ã* and not *æ*. This is because the ASCII function is capable of reading the first 7-bit stream, but not the extra bit. The correct code point for *æ* can be found using the ```UNICODE``` function, which is capable or returning the correct code point.
SQL:
```SQL
SELECT UNICODE('æ') AS [Extended_ASCII], NCHAR(230) AS [CHARACTER];
```
Here is the result set.
```
Extended_ASCII CHARACTER
-------------- ---------
230            æ
```
