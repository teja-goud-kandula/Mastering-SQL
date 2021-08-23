SELECT --S.ID,
       CASE
         WHEN S.Marks < 70 THEN NULL
         ELSE S.Name
       END AS Name,
       G.Grade,
       S.Marks
--,G.Min_Mark,
       --G.Max_Mark
       FROM Students S
  INNER JOIN Grades G
          ON S.Marks BETWEEN G.Min_Mark
         AND G.Max_Mark
ORDER BY g.grade DESC,
         s.name,
         s.marks

/*
  The trick here is that the answer requires to use the join condition based on BETWEEN clause

  We can't use UNION here because that would require 2 select clauses and order by should be used on the each of the select clauses.
  When using UNION / UNION ALL one should use order by only on the last select clause, so we can't achieve the required output using UNION and 2 select clauses.
*/
