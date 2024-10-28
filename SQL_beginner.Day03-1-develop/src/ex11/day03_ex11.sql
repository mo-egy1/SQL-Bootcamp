-- Update the price of "greek pizza" to be 10% less
UPDATE menu
SET price = price * 0.9
WHERE pizza_name = 'greek pizza';



-- UPDATE 1

--  Query returned successfully in 45 msec.

-----------------------------------------------------------------------------

	-- check 
SELECT * FROM menu WHERE pizza_name = 'greek pizza';
	
--  19	2	"greek pizza"	900.0