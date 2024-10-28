INSERT INTO person_order
VALUES ((SELECT MAX(id) + 1 FROM person_order),
        (SELECT id FROM person WHERE name = 'Denis'),
        20, '2022-02-24'),
       ((SELECT MAX(id) + 2 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Irina'),
        20, '2022-02-24');

----------------------------------------------------------------------------

-- To check 

-- select count(*)=2 as check
--        from person_order
--        where order_date = '2022-02-24' and person_id in (6,4) and
--         menu_id=(select id from menu where pizza_name = 'sicilian pizza')