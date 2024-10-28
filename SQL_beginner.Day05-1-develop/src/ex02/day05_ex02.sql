CREATE INDEX idx_person_name
    ON person (UPPER(name));

SET enable_seqscan = OFF;

EXPLAIN (ANALYSE, TIMING OFF)
SELECT * FROM person
         WHERE UPPER(name) = 'ANDREY';
