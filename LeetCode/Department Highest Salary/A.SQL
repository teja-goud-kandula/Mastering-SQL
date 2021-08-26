Select Department , Employee, Salary from(
select
D.Name as Department , E.Name as Employee, E.Salary, E.DepartmentId
,DENSE_RANK() OVER (Partition by D.Id order by E.Salary desc) as DRank
from
Employee E JOIN Department D
ON E.DepartmentId = D.Id
    )  t
    where DRank = 1 
