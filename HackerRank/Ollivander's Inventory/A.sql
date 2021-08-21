WITH cte AS
(
  SELECT W.ID,
         WP.age,
         W.coins_needed,
         MIN(W.coins_needed) OVER (PARTITION BY wp.code,w.power) AS Min_Coins_Required,
         W.power
  FROM Wands W
    JOIN Wands_Property WP ON W.Code = WP.Code
  WHERE WP.is_evil = 0
)
SELECT Id,
       Age,
       coins_needed,
       Power
FROM cte
WHERE coins_needed = Min_Coins_Required
ORDER BY power DESC,
         age DESC
