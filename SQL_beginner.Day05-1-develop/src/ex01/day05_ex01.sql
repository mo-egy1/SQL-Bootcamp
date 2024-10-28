SET enable_seqscan = OFF;
SET max_parallel_workers_per_gather = 0;

EXPLAIN (ANALYZE, TIMING OFF)
SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id;
