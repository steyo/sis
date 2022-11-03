SELECT
	[ItemCode] = [artcode],
	[Warehouse] = [magcode],
	[Location] = [maglok],
	[Quantity] = 0 /* Reset to 0 */
FROM
	[voorrd] AS [v]
WHERE
	([artcode] BETWEEN 'MAC0000' AND 'MAC9999')
