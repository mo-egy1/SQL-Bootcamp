DELETE FROM person_order
WHERE order_date = '2022-02-25'
AND menu_id = (SELECT id FROM menu WHERE pizza_name = 'greek pizza');


-- DELETE 18 

-------------------------------------------------------------------------------

-- To check (you will see emtyp tables)

--SELECT * FROM person_order
--WHERE order_date = '2022-02-25'
--AND menu_id = (SELECT id FROM menu WHERE pizza_name = 'greek pizza');
