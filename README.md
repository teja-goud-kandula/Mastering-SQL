# Mastering-SQL

This repo is built one step at a time and helps one Master SQL.

## How to use this repository

## SQL Server objects
* [Database](/Concepts/Databases.md)
* [Table](/Concepts/Tables.md)


## [Different ways to replace NULLS in SQL Server](/Concepts/HandlingNULLS.md)
Three ways to replace NULL values
1. ISNULL() function
2. CASE statement
3. COALESCE() statement

## Control Flow in SQL Server

* [BEGIN...END](/Concepts/ControlFlow/BEGIN...END.md)
* [BREAK](/Concepts/ControlFlow/BREAK.md)
* [CONTINUE](/Concepts/ControlFlow/CONTINUE.md)
* [ELSE (IF..ELSE)](/Concepts/ControlFlow/IfElse.md)
* [END](/Concepts/ControlFlow/End.md)
* [GOTO](/Concepts/ControlFlow/GOTO.md)
* [RETURN](/Concepts/ControlFlow/RETURN.md)
* [THROW](/Concepts/ControlFlow/THROW.md)
* [TRY...CATCH](/Concepts/ControlFlow/TRY...CATCH.md)
* [IF EXISTS](/Concepts/ControlFlow/IfExists.md)
* [IF](/Concepts/ControlFlow/If.md)
* [WAITFOR](/Concepts/ControlFlow/WaitFor.md)
* [WHILE](/Concepts/ControlFlow/While.md)

## System variables

* [@@ROWCOUNT](/Concepts/SystemVariables/RowCount.md)

# Data types
* [Date and Time data types](/Concepts/Datatypes/Datetypes.md)

# Built in FUNCTIONS in SQL Server

## Mathematical functions in SQL Server

* [ABS](/Concepts/Functions/MathFunctions/ABS.md)
## Date functions in SQL Server


## String functions in SQL Server
* [ASCII](/Concepts/Functions/StringFunctions/ASCII.md)
* [CHAR](/Concepts/Functions/StringFunctions/CHAR.md)
* [CHARINDEX](/Concepts/Functions/StringFunctions/CHARINDEX.md)
* [CONCAT](/Concepts/Functions/StringFunctions/CONCAT.md)
* [CONCAT_WS](/Concepts/Functions/StringFunctions/CONCAT_WS.md)
* [DIFFERENCE](/Concepts/Functions/StringFunctions/DIFFERENCE.md)
* [FORMAT](/Concepts/Functions/StringFunctions/FORMAT.md)
* [LEFT](/Concepts/Functions/StringFunctions/LEFT.md)
* [LEN](/Concepts/Functions/StringFunctions/LEN.md)
* DATALENGTH
* [LOWER](/Concepts/Functions/StringFunctions/LOWER.md)
* [LTRIM](/Concepts/Functions/StringFunctions/LTRIM.md)
* [NCHAR](/Concepts/Functions/StringFunctions/NCHAR.md)
* [PATINDEX](/Concepts/Functions/StringFunctions/PATINDEX.md)
* [QUOTENAME](/Concepts/Functions/StringFunctions/QUOTENAME.md)
* [REPLACE](/Concepts/Functions/StringFunctions/REPLACE.md)
* [REPLICATE](/Concepts/Functions/StringFunctions/REPLICATE.md)
* [REVERSE](/Concepts/Functions/StringFunctions/REVERSE.md)
* [RIGHT](/Concepts/Functions/StringFunctions/RIGHT.md)
* [RTRIM](/Concepts/Functions/StringFunctions/RTRIM.md)
* [SOUNDEX](/Concepts/Functions/StringFunctions/SOUNDEX.md)
* [SPACE](/Concepts/Functions/StringFunctions/SPACE.md)
* [STR](/Concepts/Functions/StringFunctions/STR.md)
* [STRING_AGG](/Concepts/Functions/StringFunctions/StringAgg.md)
* [STRING_ESCAPE](/Concepts/Functions/StringFunctions/STRING_ESCAPE.md)
* [STRING_SPLIT](/Concepts/Functions/StringFunctions/STRING_SPLIT.md)
* [STUFF](/Concepts/Functions/StringFunctions/STUFF.md)
* SUBSTRING
* TRANSLATE
* TRIM
* UNICODE
* [UPPER](/Concepts/Functions/StringFunctions/UPPER.md)

## Aggregate Functions in SQL Server
* AVG
* MIN
* MAX
* SUM
* COUNT


## CTE (Common Table Expression)

### Non-Recursive CTE
* Simple CTE
* Multiple CTE

### Recursive CTE
* Recursive CTE

## Other functions in SQL Server
* [HOST_Name()](/Concepts/Functions/OtherFunctions/HOST_Name.md)

## ERROR FUNCTIONS in SQL Server

* ERROR_NUMBER
* ERROR_STATE
* ERROR_SEVERITY
* ERROR_LINE
* ERROR_PROCEDURE
* ERROR_MESSAGE

## Intersect
* [Intersect operator in SQL Server](/Concepts/Intersect.md)

# Questions and answers
* [Difference between varchar and nvarchar in SQL Server?](/Concepts/VarcharVsNvarchar.md)
* [Find Number of Spaces in a String](/Concepts/FindNumberOfSpacesInAString.md)
* [Difference between JOIN and UNION](/Concepts/DiffBetweenJoinAndUnion.md)
* [UNION and UNION ALL in SQL Server](/Concepts/UnionVsUnionALL.md)


## Hacker Rank
* [The Report](/HackerRank/TheReport/)

The concept required to solve this question is that the JOIN condition is to be applied using `BETWEEN` clause.

* [Placements](/HackerRank/Placements/)

The concept required to solve this question is that we need to use the same table twice in order to `JOIN` in 2 instances. Table `Placements` is used as `P1` and `P2`, this will create 2 different instances of the same table.

## Interview Questions

* [Full Outer Join](/InterviewQuestions/FullOuterJoin.md)
