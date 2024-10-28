SELECT
    p.name AS person_name,
    m.pizza_name,
    m.price AS price,
    ROUND(m.price * (1 - COALESCE(pd.discount, 0) / 100), 2) AS discount_price,
    pi.name AS pizzeria_name
FROM
    person_order po
JOIN
    person p ON po.person_id = p.id
JOIN
    menu m ON po.menu_id = m.id
JOIN
    pizzeria pi ON m.pizzeria_id = pi.id
LEFT JOIN
    person_discounts pd ON po.person_id = pd.person_id AND m.pizzeria_id = pd.pizzeria_id
ORDER BY
    p.name,
    m.pizza_name;
