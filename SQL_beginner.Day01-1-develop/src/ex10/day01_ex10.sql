select 
	   p.name       as person_name,
       m.pizza_name as pizza_name,
       pz.name      as pizzeria_name
FROM 
    person p
JOIN 
    person_order po ON p.id = po.person_id
JOIN 
    menu m on po.menu_id = m.id
JOIN 
    pizzeria pz on m.pizzeria_id = pz.id

ORDER BY 
    person_name,
    pizza_name,  
    pizzeria_name 

--    "Andrey"	"cheese pizza"	"Dominos"
--    "Andrey"	"mushroom pizza"	"Dominos"
--    "Anna"	"cheese pizza"	"Pizza Hut"
--    "Anna"	"pepperoni pizza"	"Pizza Hut"
--    "Denis"	"cheese pizza"	"Best Pizza"
--    "Denis"	"pepperoni pizza"	"Best Pizza"
--    "Denis"	"pepperoni pizza"	"DinoPizza"
--    "Denis"	"sausage pizza"	"DinoPizza"
--    "Denis"	"supreme pizza"	"Best Pizza"
--    "Dmitriy"	"pepperoni pizza"	"DinoPizza"
--    "Dmitriy"	"supreme pizza"	"Best Pizza"
--    "Elvira"	"pepperoni pizza"	"DinoPizza"
--    "Elvira"	"sausage pizza"	"DinoPizza"
--    "Irina"	"mushroom pizza"	"Papa Johns"
--    "Kate"	"cheese pizza"	"Best Pizza"
---   "Nataly"	"cheese pizza"	"Dominos"
--    "Nataly"	"pepperoni pizza"	"Papa Johns"
--    "Peter"	"mushroom pizza"	"Dominos"
--    "Peter"	"sausage pizza"	"Pizza Hut"
--    "Peter"	"supreme pizza"	"Pizza Hut"