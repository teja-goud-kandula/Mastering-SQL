select Distinct(Email) from
(
Select Email, ROW_NUMBER() OVER (Partition by Email order by Email) as RNUM from Person
) t where RNUM > 1
