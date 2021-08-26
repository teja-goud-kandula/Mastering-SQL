select Distinct(Email) from
(
Select Email, ROW_NUMBER() OVER (Partition by Email order by Email) as RNUM from Person
) t where RNUM > 1

--Solution 2 :

select Email
--, Count(Email)
from Person
group by Email
having Count(Email) > 1
