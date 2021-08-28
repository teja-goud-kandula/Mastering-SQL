-- Partial Solution

WITH cte1
AS
(SELECT T.Request_at,
       COUNT(Status) AS Total_Trips_Per_Day
FROM Trips T
  JOIN Users U ON T.Client_Id = U.Users_Id
WHERE U.Banned = 'No'
GROUP BY T.Request_at),
         cte2 AS (SELECT T.Request_at,
                         COUNT(Status) AS Total_Cancelled_Trips_Per_Day
                  FROM Trips T
                    JOIN Users U ON T.Client_Id = U.Users_Id
                  WHERE U.Banned = 'No'
                  AND   T.status LIKE '%cancelled%'
                  GROUP BY T.Request_at)
SELECT cte1.Request_at AS [Day],
       CAST(CAST(ISNULL (cte2.Total_Cancelled_Trips_Per_Day,0) AS DECIMAL(10,2)) / CAST(cte1.Total_Trips_Per_Day AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS[Cancellation Rate]
FROM cte1
  LEFT JOIN cte2 ON cte1.Request_at = cte2.Request_at
