SELECT
	[AccountCode] = LTRIM([cmp_code]),
	[NewCode] = '0' + LTRIM([cmp_code]),
	[IsMerge] = CAST(0 AS BIT)
FROM
	[cicmpy]
WHERE
	([cmp_code] BETWEEN '               60092' AND '               60094')
