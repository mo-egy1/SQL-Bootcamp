CREATE INDEX idx_menu_pizzeria_id
    ON menu(pizzeria_id);

CREATE INDEX idx_person_order_person_id
    ON person_order(person_id);

CREATE INDEX idx_person_order_menu_id
    ON person_order(menu_id);

CREATE INDEX idx_person_visits_person_id
    ON person_visits(person_id);

CREATE INDEX idx_person_visits_pizzeria_id
    ON person_visits(pizzeria_id);


-- To checkout 

/*DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'idx_menu_pizzeria_id') AND
       EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'idx_person_order_person_id') AND
       EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'idx_person_order_menu_id') AND
       EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'idx_person_visits_person_id') AND
       EXISTS (SELECT 1 FROM pg_indexes WHERE indexname = 'idx_person_visits_pizzeria_id') THEN
        RAISE NOTICE 'true';
    ELSE
        RAISE NOTICE 'false';
    END IF;
END $$;*/
