SELECT
	[OrderNr] = [k].[ordernr],
	[Warehouse] = [k].[magcode],
	[LineId] = [s].[id],
	[Quantity] = [s].[esr_aantal]
FROM
	[orsrg] AS [s]
INNER JOIN
	[orkrg] AS [k]
	ON ([s].[ordernr] = [k].[ordernr])
WHERE
	([k].[ord_soort] = 'V')
	AND
	([k].[afgehandld] = 0)
	AND
	([s].[uitgifte] = 0)
	AND
	([s].[ar_soort] <> 'P')

	/* For testing: Limit to a specific sales order */
	AND
	([s].[ordernr] = '   20061')
