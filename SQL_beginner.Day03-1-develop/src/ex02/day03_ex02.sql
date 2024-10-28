SELECT 
    m.pizza_name,
    m.price,
    pz.name AS pizzeria_name
FROM 
    menu m,
    pizzeria pz
WHERE 
    m.pizzeria_id = pz.id
    AND m.id NOT IN (
        SELECT 
            po.menu_id
        FROM 
            person_order po
    )
ORDER BY 
    m.pizza_name, 
    m.price;


--    "cheese pizza"	700	  "Papa Johns"
--    "cheese pizza"	780	  "DoDo Pizza"
--    "cheese pizza"	950	  "DinoPizza"
--    "sausage pizza"	950	  "Papa Johns"
--    "supreme pizza"	850	  "DoDo Pizza"