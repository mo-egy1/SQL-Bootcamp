
INSERT INTO menu (id, pizza_name, price, pizzeria_id)
VALUES (
    (SELECT COALESCE(MAX(id), 0) + 1 FROM menu), -- Calculate new ID
    'sicilian pizza',                            -- Pizza name
    900,                                         -- Price
    (SELECT id FROM pizzeria WHERE name = 'Dominos') -- Pizzeria ID for "Dominos"
);



--  INSERT 0 1

--  Query returned successfully in 64 msec.
---------------------------------------------------------------------------------------------------------------------



-- check script 

--select count(*)=1 as check
--from menu
--where id = 20 and pizzeria_id=2 and pizza_name = 'sicilian pizza' and price=900

--  true