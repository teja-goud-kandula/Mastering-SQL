# Reverser PIVOT table in SQL Server

**Is it always possible to reverse what PIVOT operator has done using UNPIVOT operator.**

No, not always. If the PIVOT operator has not aggregated the data, you can get your original data back using the UNPIVOT operator but not if the data is aggregated.
