INSERT INTO menu (id, pizza_name, price, pizzeria_id)
VALUES (19, 'greek pizza', 800, 2);

-- Answer
-- INSERT 0 1
--Query returned successfully in 50 msec.
------------------------------------------------------------------------------------------------------
---   To check
--select count(*)=1 as check    from menu
--where id = 19 and pizzeria_id=2 and pizza_name = 'greek pizza' and price=800
-------------------------------------------------------------------------------------------------------------


---   To Detele
-- DELETE FROM menu
-- WHERE pizza_name = 'greek pizza' AND price = 800 AND pizzeria_id = 2;