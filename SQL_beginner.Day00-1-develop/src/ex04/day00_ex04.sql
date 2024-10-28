SELECT concat(name, ' (age:', age, ',gender:''', gender, ''',address:''', address, ''')') AS person_information
FROM person
ORDER BY person_information;



-- The  answer 

--         Andrey (age:21,gender:'male',address:'Moscow')
--         Anna (age:16,gender:'female',address:'Moscow')
--         Denis (age:13,gender:'male',address:'Kazan')
--         Dmitriy (age:18,gender:'male',address:'Samara')
--         Elvira (age:45,gender:'female',address:'Kazan')
--         Irina (age:21,gender:'female',address:'Saint-Petersburg')
--         Kate (age:33,gender:'female',address:'Kazan')
--         Nataly (age:30,gender:'female',address:'Novosibirsk')
--         Peter (age:24,gender:'male',address:'Saint-Petersburg')
