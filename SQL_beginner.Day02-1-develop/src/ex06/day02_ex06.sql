SELECT 
    menu.pizza_name, 
    pizzeria.name AS pizzeria_name
FROM 
    person_order
JOIN 
    person ON person.id = person_order.person_id
JOIN 
    menu ON menu.id = person_order.menu_id
JOIN 
    pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE 
    person.name IN ('Denis', 'Anna')
ORDER BY 
    menu.pizza_name, pizzeria.name;



--    "cheese pizza"	"Best Pizza"
--    "cheese pizza"	"Pizza Hut"
--    "pepperoni pizza"	"Best Pizza"
--    "pepperoni pizza"	"DinoPizza"
--    "pepperoni pizza"	"Pizza Hut"
--    "sausage pizza"	"DinoPizza"
--    "supreme pizza"	"Best Pizza"