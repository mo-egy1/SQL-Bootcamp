CREATE UNIQUE INDEX IF NOT EXISTS idx_1 ON pizzeria (rating);

SET enable_seqscan = OFF;
EXPLAIN ANALYSE

SELECT pizza_name AS pizza_name,
       max(rating)
       OVER (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM menu
         INNER JOIN pizzeria ON pizzeria_id = pizzeria.id
ORDER BY 1, 2;