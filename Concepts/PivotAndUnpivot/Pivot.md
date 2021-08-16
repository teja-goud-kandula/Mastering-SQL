# Pivot

Pivot is a sql server operator that can be used to turn unique values from one column, into multiple columns in the output, there by effectively rotating a table

-> Rotate rows to columns

When working with **PIVOT** one must need two columns:
1. pivot_column
2. value_column

Syntax of the Pivot :
```SQL
SELECT <non-pivoted column>,  
    [first pivoted column] AS <column name>,  
    [second pivoted column] AS <column name>,  
    ...  
    [last pivoted column] AS <column name>  
FROM  
    (<SELECT query that produces the data>)   
    AS <alias for the source query>  
PIVOT  
(  
    <aggregation function>(<column being aggregated>)  
FOR   
[<column that contains the values that will become column headers>]   
    IN ( [first pivoted column], [second pivoted column],  
    ... [last pivoted column])  
) AS <alias for the pivot table>  
<optional ORDER BY clause>;
```

Code to create the table:
```SQL
Create Table tblProductSales
(
 SalesAgent nvarchar(50),
 SalesCountry nvarchar(50),
 SalesAmount int
)

GO

Insert into tblProductSales values('Tom', 'UK', 200)
Insert into tblProductSales values('John', 'US', 180)
Insert into tblProductSales values('John', 'UK', 260)
Insert into tblProductSales values('David', 'India', 450)
Insert into tblProductSales values('Tom', 'India', 350)
Insert into tblProductSales values('David', 'US', 200)
Insert into tblProductSales values('Tom', 'US', 130)
Insert into tblProductSales values('John', 'India', 540)
Insert into tblProductSales values('John', 'UK', 120)
Insert into tblProductSales values('David', 'UK', 220)
Insert into tblProductSales values('John', 'UK', 420)
Insert into tblProductSales values('David', 'US', 320)
Insert into tblProductSales values('Tom', 'US', 340)
Insert into tblProductSales values('Tom', 'UK', 660)
Insert into tblProductSales values('John', 'India', 430)
Insert into tblProductSales values('David', 'India', 230)
Insert into tblProductSales values('David', 'India', 280)
Insert into tblProductSales values('Tom', 'UK', 480)
Insert into tblProductSales values('John', 'US', 360)
Insert into tblProductSales values('David', 'UK', 140)

```

Data in the table  :
```SQL
Select * from tblProductSales
```

|SalesAgent|	SalesCountry|	SalesAmount|
|----------|--------------|------------|
|Tom|	UK|	200|
|John|	US|	180|
|John|	UK|	260|
|David|	India|	450|
|Tom|	India|	350|
|David|	US|	200|
|Tom|	US|	130|
|John|	India|	540|
|John|	UK|	120|
|David|	UK|	220|
|John|	UK|	420|
|David|	US|	320|
|Tom|	US|	340|
|Tom|	UK|	660|
|John|	India|	430|
|David|	India|	230|
|David|	India|	280|
|Tom|	UK|	480|
|John|	US|	360|
|David|	UK|	140|

The data here contains 3 SalesAgent (David,John,Tom) and their sales in 3 countries(India,UK,US).


Let's write a query which returns Total Sales grouped by SalesAgent, SalesCountry.
It would look like this:
```SQL
select SalesAgent, SalesCountry,
SUM(SalesAmount) as [Total]
from tblProductSales
Group by SalesAgent, SalesCountry
order by SalesAgent, SalesCountry;
```

|SalesAgent|	SalesCountry|	Total|
|----------|--------------|------|
|David|	India|	960|
|David|	UK|	360|
|David|	US|	520|
|John|	India|	970|
|John|	UK|	800|
|John|	US|	540|
|Tom|	India|	350|
|Tom|	UK|	1340|
|Tom|	US|	470|

But the same data can be better represented in a cross tab format using a PIVOT.
```SQL
--Query using pivot
Select SalesAgent, India, US, UK
from tblProductSales
Pivot
(
   SUM(SalesAmount)
   FOR SalesCountry in ([India],[US],[UK])
) as PivotTable
```
Output:

|Name|	Occupation|
|----|------------|
|Jane|	Actor|
|Julia|	Actor|
|Maria|	Actor|
|Jenny|	Doctor|
|Samantha|	Doctor|
|Ashley|	Professor|
|Christeen|	Professor|
|Ketty|	Professor|
|Meera|	Singer|
|Priya|	Singer|


The situaion when we have extra columns on the source table, then we need to get rid of the extra columns using Derived tables. An example for the same:

Code to create the table:
```SQL
Create Table tblProductsSale
(
   Id int primary key,
   SalesAgent nvarchar(50),
   SalesCountry nvarchar(50),
   SalesAmount int
)
GO

Insert into tblProductsSale values(1, 'Tom', 'UK', 200)
Insert into tblProductsSale values(2, 'John', 'US', 180)
Insert into tblProductsSale values(3, 'John', 'UK', 260)
Insert into tblProductsSale values(4, 'David', 'India', 450)
Insert into tblProductsSale values(5, 'Tom', 'India', 350)
Insert into tblProductsSale values(6, 'David', 'US', 200)
Insert into tblProductsSale values(7, 'Tom', 'US', 130)
Insert into tblProductsSale values(8, 'John', 'India', 540)
Insert into tblProductsSale values(9, 'John', 'UK', 120)
Insert into tblProductsSale values(10, 'David', 'UK', 220)
Insert into tblProductsSale values(11, 'John', 'UK', 420)
Insert into tblProductsSale values(12, 'David', 'US', 320)
Insert into tblProductsSale values(13, 'Tom', 'US', 340)
Insert into tblProductsSale values(14, 'Tom', 'UK', 660)
Insert into tblProductsSale values(15, 'John', 'India', 430)
Insert into tblProductsSale values(16, 'David', 'India', 230)
Insert into tblProductsSale values(17, 'David', 'India', 280)
Insert into tblProductsSale values(18, 'Tom', 'UK', 480)
Insert into tblProductsSale values(19, 'John', 'US', 360)
Insert into tblProductsSale values(20, 'David', 'UK', 140)
```

Data from the table:
```SQL
select * from tblProductsSale
```

|Id|	SalesAgent|	SalesCountry|	SalesAmount|
|--|------------|-------------|------------|
|1|	Tom|	UK|	200|
|2|	John|	US|	180|
|3|	John|	UK|	260|
|4|	David|	India|	450|
|5|	Tom|	India|	350|
|6|	David|	US|	200|
|7|	Tom|	US|	130|
|8|	John|	India|	540|
|9|	John|	UK|	120|
|10|	David|	UK|	220|
|11|	John|	UK|	420|
|12|	David|	US|	320|
|13|	Tom|	US|	340|
|14|	Tom|	UK|	660|
|15|	John|	India|	430|
|16|	David|	India|	230|
|17|	David|	India|	280|
|18|	Tom|	UK|	480|
|19|	John|	US|	360|
|20|	David|	UK|	140|

For the second use case we are using **tblProductsSale** table instead of the **tblProductsSales** table.

Applying **PIVOT** on the second table similar to what we did in the first case:
```SQL
Select SalesAgent, India, US, UK
from tblProductsSale
Pivot
(
   Sum(SalesAmount) for SalesCountry in ([India],[US],[UK])
)
as PivotTable
```

The output is:
|SalesAgent|	India|	US|	UK|
|----------|-------|----|---|
|Tom|	NULL|	NULL|	200|
|John|	NULL|	180|	NULL|
|John|	NULL|	NULL|	260|
|David|	450|	NULL|	NULL|
|Tom|	350|	NULL|	NULL|
|David|	NULL|	200|	NULL|
|Tom|	NULL|	130|	NULL|
|John|	540|	NULL|	NULL|
|John|	NULL|	NULL|	120|
|David|	NULL|	NULL|	220|
|John|	NULL|	NULL|	420|
|David|	NULL|	320|	NULL|
|Tom|	NULL|	340|	NULL|
|Tom|	NULL|	NULL|	660|
|John|	430|	NULL|	NULL|
|David|	230|	NULL|	NULL|
|David|	280|	NULL|	NULL|
|Tom|	NULL|	NULL|	480|
|John|	NULL|	360|	NULL|
|David|	NULL|	NULL|	140|

This isn't the output that we expected. This is because of the presence of the **ID** column, which is also considered when performing pivoting and group by. To eliminate this from the calculations, we have used derived table, which only selects, **SALESAGENT**, **SALESCOUNTRY**, and **SALESAMOUNT**. The rest of the query is very similar to what we have already seen.


So the SQL query is :
```SQL
Select SalesAgent, India, US, UK
from
(
   Select SalesAgent, SalesCountry, SalesAmount from tblProductsSale
) as SourceTable
Pivot
(
 Sum(SalesAmount) for SalesCountry in (India, US, UK)
) as PivotTable
```

The output is :
|SalesAgent|	India|	US|	UK|
|----------|-------|----|---|
|David|	960|	520|	360|
|John|	970|	540|	800|
|Tom|	350|	470|	1340|
