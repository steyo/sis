SELECT
	[i].[ItemCode],
	[Warehouse] = [g].[warehouse],
	[Location] = [g].[warehouse_location],
	[Quantity] = SUM([g].[aantal])
FROM
	[gbkmut] AS [g]
INNER JOIN
	[Items] AS [i]
	ON ([g].[artcode] = [i].[ItemCode] AND [g].[reknr] = [i].[GLAccountDistribution])
WHERE
	([g].[transtype] = 'N')
	AND NOT
	([g].[warehouse] IS NULL)
	AND
	([i].[IsStockItem] = 1)
GROUP BY
	[i].[ItemCode],
	[g].[warehouse],
	[g].[warehouse_location]
