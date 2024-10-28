insert into person_visits(id, person_id, pizzeria_id, visit_date)
values ((select max(id) + 1 from person_visits),
        (select id from person where name = 'Denis'),
        (select id from pizzeria where name = 'Dominos'),
        '2022-02-24'),
       ((select max(id) + 2 from person_visits),
        (select id from person where name = 'Irina'),
        (select id from pizzeria where name = 'Dominos'),
        '2022-02-24');

---------------------------------------------------------------------------------------------------------------------------------------------

--  check script.

--        select count(*)=2 as check
--        from person_visits
--        where visit_date = '2022-02-24' and person_id in (6,4) and pizzeria_id=2;

--        true