WITH order_count AS (
    SELECT person_order.person_id, menu.pizzeria_id, COUNT(*) AS count
      FROM person_order
      JOIN menu
        ON person_order.menu_id = menu.id
    GROUP BY person_order.person_id, menu.pizzeria_id)

INSERT INTO person_discounts
SELECT ROW_NUMBER() OVER (), order_count.person_id, order_count.pizzeria_id,
       CASE WHEN order_count.count = 1 THEN 10.5
            WHEN order_count.count = 2 THEN 22
            ELSE 30 END
FROM order_count;
