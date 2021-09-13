
SELECT id
FROM (
    SELECT id,
        Temperature,
        LAG(Temperature) OVER (ORDER BY recordDate) prev_temp,
        recordDate AS current_dt,
        LAG(recordDate) OVER (ORDER BY recordDate) prev_date
    FROM Weather ) AS t
WHERE Temperature > prev_temp
AND DATEDIFF(DD, t.prev_date,t.current_dt) = 1
