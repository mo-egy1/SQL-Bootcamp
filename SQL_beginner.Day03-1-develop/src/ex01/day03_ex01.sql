SELECT id AS menu_id
FROM menu
WHERE id NOT IN (SELECT DISTINCT menu_id FROM person_order)
ORDER BY id;


--   5
--  10
--  11
--  12
--  15