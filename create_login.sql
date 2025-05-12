-- CSY1065 AS2 Group 4: Create Login
-- Done By Junyo, Natnael, Warren, Yameen

/* Command List:
-- Describe Table Structure
DESC table_name;

-- List All Tables
SELECT TNAME FROM TAB;

-- Show All Constraints
SELECT CONSTRAINT_NAME, TABLENAME
FROM USER_CONSTRAINT;

-- Show All Sequences
SELECT SEQUENCE_NAME
FROM USER_SEQUENCES;

-- Drop Table
DROP TABLE table_name;
*/

-- Creating Tables


-- Branches table
CREATE TABLE branches (
branch_id NUMBER(3),
branch_name VARCHAR(25),
house VARCHAR(25),
street VARCHAR(20),
postcode VARCHAR(8),
rating CHAR(1) DEFAULT 'D'
);

-- Surgeries table
CREATE TABLE surgeries (
surgery_id NUMBER(5),
surgery_date DATE NOT NULL,
surgery_type VARCHAR(14),
branch_id NUMBER(3) NOT NULL
);

-- Vets table
CREATE TABLE vets (
vet_id NUMBER(3),
job_role VARCHAR(12),
title VARCHAR(15),
first_name VARCHAR(16),
last_name VARCHAR(20),
phone_number VARCHAR(13),
surgery_id NUMBER(5) NOT NULL
);

-- Animals table

CREATE TABLE animals (
pet_number NUMBER(5),
breed VARCHAR(20),
species VARCHAR(20),
date_of_birth DATE,
gender CHAR(1),
animal_weight NUMBER(5,2),
animal_name VARCHAR(15)
);

-- Appointments table

CREATE TABLE appointments (
vet_id NUMBER(3),
pet_number NUMBER(5),
appointment_date DATE,
fee NUMBER(6,2)
);

-- Treatments table

CREATE TABLE treatments (
treatment_id NUMBER(5),
treatment_name VARCHAR(20),
treatment_description VARCHAR(40),
appointment_date DATE,
duration NUMBER(4),
vet_id NUMBER(3),
pet_number NUMBER(5)
);

-- Tests table
CREATE TABLE tests (
test_id NUMBER(5),
test_name VARCHAR(20),
category VARCHAR(20),
test_type VARCHAR(10)
);

-- Results table

CREATE TABLE results (
test_id NUMBER(5),
vet_id NUMBER(3),
pet_number NUMBER(5),
result_date DATE,
outcome VARCHAR(20) DEFAULT 'NO ACTION'
);

-- Medications table
CREATE TABLE medications (
medication_id NUMBER(5),
medication_name VARCHAR(20),
medication_description VARCHAR(40)
);

-- Prescriptions table
CREATE TABLE prescriptions (
medication_id NUMBER(5),
pet_number NUMBER(5),
quantity NUMBER(3),
dosage VARCHAR(20)
);

-- Creating Sequences

-- Branches Sequence
CREATE SEQUENCE seq_branches
INCREMENT BY 1
START WITH 1;

-- Surgeries Sequence
CREATE SEQUENCE seq_surgeries
INCREMENT BY 1
START WITH 1;

-- Vets Sequence
CREATE SEQUENCE seq_vets
INCREMENT BY 1
START WITH 1;

-- Animals Sequence
CREATE SEQUENCE seq_animals
INCREMENT BY 1
START WITH 1;

-- Treatments Sequence
CREATE SEQUENCE seq_treatments
INCREMENT BY 1
START WITH 1;

-- Tests Sequence
CREATE SEQUENCE seq_tests
INCREMENT BY 1
START WITH 1;

-- Medication Sequence
CREATE SEQUENCE seq_medications
INCREMENT BY 1
START WITH 1;

SELECT TNAME FROM TAB;
-- Committing

COMMIT;
