WITH data AS
(
  SELECT C.hacker_id AS id,
         H.name,
         COUNT(C.challenge_id) AS counter
  FROM Challenges C
    JOIN Hackers H ON C.Hacker_id = H.Hacker_id
  GROUP BY C.hacker_id,
           H.name
)
SELECT *
FROM data
WHERE counter = (SELECT MAX(counter) FROM data)
OR    counter IN (SELECT counter
                  FROM data
                  GROUP BY counter
                  HAVING COUNT(Counter) = 1)
ORDER BY counter desc,
         id


/*
The trick here is to understand how to filter out the rows as mentioned by the condition.
So the counter can be equal to max counter OR the count of counter should be 1 only
*/
