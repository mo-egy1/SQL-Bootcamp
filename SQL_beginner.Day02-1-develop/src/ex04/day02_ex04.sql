SELECT 
    menu.pizza_name AS pizza_name,
    pizzeria.name AS pizzeria_name,
    menu.price AS price
FROM 
    menu
JOIN 
    pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE 
    menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY 
    menu.pizza_name, pizzeria.name;


--  "mushroom pizza"	"Dominos"	    1100
--  "mushroom pizza"	"Papa Johns"	950
--  "pepperoni pizza"	"Best Pizza"	800
--  "pepperoni pizza"	"DinoPizza"	    800
--  "pepperoni pizza"	"Papa Johns"	1000
--  "pepperoni pizza"	"Pizza Hut"     1200
