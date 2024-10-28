CREATE INDEX idx_menu_unique
    ON menu (pizzeria_id, pizza_name);

SET enable_seqscan = OFF;

EXPLAIN (ANALYSE, TIMING OFF)
SELECT *
FROM menu
WHERE pizzeria_id = 1
  AND pizza_name = 'pepperoni pizza';
