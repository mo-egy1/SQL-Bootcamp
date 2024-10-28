INSERT INTO person_order
SELECT (SELECT MAX(id) + gs.id FROM person_order group by gs.id),
       gs.id, (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       '2022-02-25'
FROM generate_series(1, (SELECT COUNT(id) FROM person)) AS gs(id);


--  INSERT 0 9

--  Query returned successfully in 46 msec.
----------------------

--           To see the orders 

-- Select the new orders to verify
--  SELECT * FROM person_order WHERE menu_id = (SELECT id FROM menu WHERE pizza_name = 'greek pizza');


--    21	1	19	"2022-02-25"
--    22	2	19	"2022-02-25"
--    23	3	19	"2022-02-25"
--    24	4	19	"2022-02-25"
--    25	5	19	"2022-02-25"
--    26	6	19	"2022-02-25"
--    27	7	19	"2022-02-25"
--    28	8	19	"2022-02-25"
--    29	9	19	"2022-02-25"
