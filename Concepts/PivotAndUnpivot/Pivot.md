# Pivot

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
