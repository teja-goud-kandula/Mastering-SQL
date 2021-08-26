select
score, DENSE_RANK() OVER (ORDER BY Score desc) as [Rank]
from Scores
