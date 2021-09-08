# FULL OUTER JOIN

Data for the question:

SQL:
```SQL
create table tableA
(
	id int
)

create table tableB
(
	id int
)


insert into tableA values (1),(1),(3),(5)
insert into tableB values (1),(2),(NULL),(3)

```

## Question:
What will be the output of the following query?
```SQL
select
* from tableA  A
FULL OUTER JOIN tableB B
on A.id = B.id
```

## Answer

Find the answer by thinking, if you still need an answer run this query against a database of your preference and find the answer.
