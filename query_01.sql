-- CSY1065 AS2 Group 4: Query
-- Done By Junyo, Natnael, Warren, Yameen

/* Command List:
-- Describe Table Structure
DESC table_name;

-- List All Tables
SELECT TNAME FROM TAB;

-- Show All Constraints
SELECT CONSTRAINT_NAME, TABLE_NAME
FROM USER_CONSTRAINT;

-- Show All Sequences
SELECT SEQUENCE_NAME
FROM USER_SEQUENCES;

-- Drop Table
DROP TABLE table_name;
*/

-- Formatting

SET LINESIZE 150;
SET WRAP OFF;

-- Query, Projection

SELECT branch_name 
FROM branches;

-- Table Alias / Column Alias

SELECT t.test_name "Test Name"
FROM tests t;

-- Restriction & Predicate

SELECT treatment_name, treatment_description
FROM treatments
WHERE treatment_name = 'MEDICATION';

SELECT *
FROM appointments
WHERE fee > 50;

SELECT * 
FROM appointments
WHERE NOT fee = 85;

SELECT * 
FROM appointments
WHERE fee = 85 OR fee = 50;

SELECT *
FROM animals
WHERE animal_weight BETWEEN 30 AND 40;

SELECT * 
FROM animals 
WHERE animal_weight < 35 AND animal_weight > 10;

SELECT *
FROM branches
WHERE branch_name IN ('BEDFORD', 'LONDON', 'LUTON');

SELECT *
FROM vets
WHERE last_name LIKE 'JEA%';

SELECT *
FROM vets
WHERE last_name NOT LIKE 'JEA%';

SELECT *
FROM vets
WHERE first_name LIKE 'D____N';

SELECT *
FROM animals
WHERE breed IS NULL;

-- Joins

SELECT animal_name, appointment_date
FROM animals
JOIN appointments ON animals.pet_number = appointments.pet_number;

-- Multi Joins

SELECT animal_name , appointment_date, first_name
FROM animals
JOIN appointments ON animals.pet_number = appointments.pet_number
JOIN vets ON appointments.vet_id = vets.vet_id;

-- Complex Queries

SELECT a.animal_name, t.test_name, r.outcome
FROM animals a
JOIN results r ON a.pet_number = r.pet_number
JOIN tests t ON r.test_id = t.test_id
WHERE r.outcome = 'NORMAL' AND a.animal_weight > 25;

-- Cartesian Product

SELECT outcome, test_name
FROM results, tests;

-- Committing

COMMIT;
