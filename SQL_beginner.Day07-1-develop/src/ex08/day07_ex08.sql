select address, p.name, count(*)
    from person_order inner join menu m on person_order.menu_id = m.id
        inner join pizzeria p on m.pizzeria_id = p.id
        inner join person p1 on p1.id = person_order.person_id
    group by address, p.name
    order by 1,2;             