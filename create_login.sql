CREATE TABLE branches (
branch_id NUMBER(3),
branch_name VARCHAR(25),
house VARCHAR(25),
street VARCHAR(20),
postcode VARCHAR(7),
rating CHAR(1) DEFAULT 'D'
);

CREATE TABLE surgeries (
surgery_id NUMBER(5),
surgery_date DATE NOT NULL,
surgery_type VARCHAR(8),
branch_id NUMBER(3) NOT NULL
);

CREATE TABLE vets (
vet_id NUMBER(3),
job_role VARCHAR(12),
title VARCHAR(15),
first_name VARCHAR(16),
last_name VARCHAR(20),
phone_number VARCHAR(13),
surgery_id NUMBER(5) NOT NULL
);

CREATE TABLE animals (
pet_number NUMBER(5),
breed VARCHAR(20),
species VARCHAR(20),
date_of_birth DATE,
gender CHAR(1),
animal_weight NUMBER(5,2),
animal_name VARCHAR(15)
);

CREATE TABLE appointments (
vet_id NUMBER(3),
pet_number NUMBER(5),
appointment_date DATE,
fee NUMBER(6,2)
);

CREATE TABLE treatments (
treatment_id NUMBER(5),
treatment_name VARCHAR(20),
treatment_description VARCHAR(40),
appointment_date DATE,
duration NUMBER(4),
vet_id NUMBER(3),
pet_number NUMBER(5)
);

CREATE TABLE tests (
test_id NUMBER(5),
test_name VARCHAR(20),
category VARCHAR(20),
test_type VARCHAR(10)
);

CREATE TABLE results (
test_id NUMBER(5),
vet_id NUMBER(3),
pet_number NUMBER(5),
result_date DATE,
outcome VARCHAR(20) DEFAULT 'NO ACTION'
);

CREATE TABLE medications (
medication_id NUMBER(5),
medication_name VARCHAR(20),
medication_description VARCHAR(40)
);

CREATE TABLE prescriptions (
medication_id NUMBER(5),
pet_number NUMBER(5),
quantity NUMBER(3),
dosage VARCHAR(20)
);

COMMIT;

/*
Command:

--Describes the table structure
DESC table_name;

--Lists all tables
SELECT TNAME FROM TAB;

--Shows all constraints
SELECT CONSTRAINT_NAME, TABLENAME
FROM USER_CONSTRAINT;

--Deletes the table
DROP TABLE table_name;
*/