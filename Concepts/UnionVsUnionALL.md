# Differences between UNION and UNION ALL

*UNION removes duplicate* rows, where as *UNION ALL does not*. When using UNION, to remove the duplicate rows, SQL server has to do a distinct sort, which is time consuming. For this reason, UNION ALL is much faster than UNION.

If you want to see the cost of DISTINCT SORT, you can turn on the estimated query execution plan using CTRL + L.

For UNION and UNION ALL to work, the Number, Data types, and the order of the columns in the select statements should be same.

If you want to sort, the results of UNION or UNION ALL, the ORDER BY clause should be used on the last SELECT statement as shown below.
