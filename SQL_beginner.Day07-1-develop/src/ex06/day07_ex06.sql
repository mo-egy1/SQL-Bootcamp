SELECT pizzeria.name, agg.count_of_orders, agg.average_price, agg.max_price, agg.min_price
FROM (SELECT pizzeria_id, COUNT(*) AS count_of_orders, ROUND(AVG(menu.price), 2) AS average_price,
             MAX(menu.price) AS max_price, MIN(menu.price) AS min_price
        FROM person_order
        JOIN menu
          ON menu_id = menu.id
    GROUP BY menu.pizzeria_id) AS agg
        JOIN pizzeria
          ON pizzeria.id = agg.pizzeria_id
ORDER BY pizzeria.name;