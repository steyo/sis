SELECT
	[ItemCode],
	[NewCode] = 'X' + [ItemCode]
FROM
	[Items]
WHERE
	([ItemCode] BETWEEN 'BON0001' AND 'BON0010')
