select
--P1.Salary,F.Id,
S.Name
--,F.Friend_ID, P2.Salary as [Friends_Salary]
from Friends F
JOIN Packages P1
ON F.ID = P1.ID
JOIN Packages P2
ON P2.ID = F.Friend_ID
JOIN Students S
ON F.ID = S.ID
where P2.Salary > P1.Salary
order by P2.Salary
