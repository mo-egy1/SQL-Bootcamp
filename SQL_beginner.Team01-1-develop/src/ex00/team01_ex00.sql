WITH cte_last_rate AS (
	SELECT c.id AS currency_id,
	c.name AS currency_name,
	c.rate_to_usd AS last_rate_to_usd
	FROM currency c
	INNER JOIN (
		SELECT id AS currency_id,
			MAX(updated) AS max_updated
		FROM currency
		GROUP BY id
	) last
	ON c.id = last.currency_id AND c.updated = last.max_updated
)
	
SELECT COALESCE(u.name, 'not defined') AS name,
	COALESCE(u.lastname, 'not defined') AS lastname,
	b.type,
	SUM(COALESCE(b.money, 0)) AS volume,
	COALESCE(lr.currency_name, 'not defined') AS currency_name,
	COALESCE(lr.last_rate_to_usd, 1) AS last_rate_to_usd,
	SUM(COALESCE(b.money, 0)) * COALESCE(lr.last_rate_to_usd, 1) AS total_volume_in_usd
FROM "user" u
FULL JOIN balance b
	ON b.user_id = u.id
FULL JOIN cte_last_rate lr
	ON lr.currency_id = b.currency_id
GROUP BY(u.id, b.type, lr.currency_id, lr.currency_name, lr.last_rate_to_usd)
ORDER BY 1 DESC, 2 ASC, 3 ASC;
