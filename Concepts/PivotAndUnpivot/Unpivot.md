# Unpivot

PIVOT operator turns ROWS into COLUMNS, where as UNPIVOT turns COLUMNS into ROWS.

DDL and insert code for the table:
```SQL
Create Table tblProductSales
(
 SalesAgent nvarchar(50),
 India int,
 US int,
 UK int
)
Go

Insert into tblProductSales values ('David', 960, 520, 360)
Insert into tblProductSales values ('John', 970, 540, 800)
Go
```

The data in the table:

|SalesAgent|	India|	US|	UK|
|----------|-------|----|---|
|David|	960|	520|	360|
|John|	970|	540|	800|


Write a query to convert rows to columns?

```SQL
SELECT SalesAgent, Country, SalesAmount
FROM tblProductSales
UNPIVOT
(
       SalesAmount
       FOR Country IN (India, US ,UK)
) AS UnpivotExample
```

Output:
|SalesAgent|	Country|	SalesAmount|
|----------|---------|-------------|
|David|	India|	960|
|David|	US|	520|
|David|	UK|	360|
|John|	India|	970|
|John|	US|	540|
|John|	UK|	800|
