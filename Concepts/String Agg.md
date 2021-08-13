# Let's learn about String Aggregate in SQL Server

Sample code :
```
create table catTest
(
 str1 varchar(15),
);

insert into catTest (str1)
values ('Sydney'), ('Melb'), ('Bris')
```

Query to get the string Aggregate:

```
select  STRING_AGG(str1, ', ') WITHIN GROUP (order by str1)
    from catTest
```

![String Aggregate Ouput](http://url/to/img.png)
